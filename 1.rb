require_relative "base58"

def bytes_to_base58(bytes)
  hex = bytes.pack("C*").unpack("H*").first
  Base58.encode(hex)
end

keypair_bytes = [102,48,249,215,139,194,134,107,88,71,77,62,54,4,147,231,83,159,243,9,85,178,86,172,240,218,229,67,142,239,105,166,187,97,53,129,157,211,237,42,10,44,125,7,32,245,13,83,211,73,30,138,81,68,246,9,38,1,119,94,130,46,120,156]
private_key_bytes = keypair_bytes[0, 32]
public_key_bytes = keypair_bytes[32..-1]

puts "Keypair:", bytes_to_base58(keypair_bytes)
puts "\nPublic Key:", bytes_to_base58(public_key_bytes)
puts "\nPrivate Key:", bytes_to_base58(private_key_bytes)