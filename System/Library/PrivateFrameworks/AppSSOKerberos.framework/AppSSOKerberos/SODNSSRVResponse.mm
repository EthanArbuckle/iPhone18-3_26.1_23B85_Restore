@interface SODNSSRVResponse
- (SODNSSRVResponse)init;
- (id)description;
@end

@implementation SODNSSRVResponse

- (SODNSSRVResponse)init
{
  v3.receiver = self;
  v3.super_class = SODNSSRVResponse;
  return [(SODNSSRVResponse *)&v3 init];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SODNSSRVResponse *)self host];
  v5 = [v3 stringWithFormat:@"host: %@, port: %d", v4, -[SODNSSRVResponse port](self, "port")];

  return v5;
}

@end