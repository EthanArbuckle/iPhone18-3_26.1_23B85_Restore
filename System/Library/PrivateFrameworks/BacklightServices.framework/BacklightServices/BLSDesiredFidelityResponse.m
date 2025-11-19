@interface BLSDesiredFidelityResponse
- (BLSDesiredFidelityResponse)initWithDesiredFidelity:(int64_t)a3;
- (int64_t)desiredFidelity;
@end

@implementation BLSDesiredFidelityResponse

- (BLSDesiredFidelityResponse)initWithDesiredFidelity:(int64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CF0C80]);
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v5 setObject:v6 forSetting:1];

  v9.receiver = self;
  v9.super_class = BLSDesiredFidelityResponse;
  v7 = [(BLSDesiredFidelityResponse *)&v9 initWithInfo:v5 error:0];

  return v7;
}

- (int64_t)desiredFidelity
{
  v2 = [(BLSDesiredFidelityResponse *)self info];
  v3 = [v2 objectForSetting:1];

  v4 = [v3 integerValue];
  return v4;
}

@end