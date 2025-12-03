@interface NSData(Hash)
- (id)SHA1;
- (id)SHA256;
- (id)SHA256_16;
@end

@implementation NSData(Hash)

- (id)SHA1
{
  v5 = *MEMORY[0x277D85DE8];
  memset(v4, 170, 20);
  CC_SHA1([self bytes], objc_msgSend(self, "length"), v4);
  v1 = [MEMORY[0x277CBEA90] dataWithBytes:v4 length:20];
  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

- (id)SHA256_16
{
  v6 = *MEMORY[0x277D85DE8];
  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v5[0] = v1;
  v5[1] = v1;
  CC_SHA256([self bytes], objc_msgSend(self, "length"), v5);
  v2 = [MEMORY[0x277CBEA90] dataWithBytes:v5 length:16];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)SHA256
{
  v6 = *MEMORY[0x277D85DE8];
  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v5[0] = v1;
  v5[1] = v1;
  CC_SHA256([self bytes], objc_msgSend(self, "length"), v5);
  v2 = [MEMORY[0x277CBEA90] dataWithBytes:v5 length:32];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end