@interface HMMutableCHIPVendor
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMMutableCHIPVendor

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMCHIPVendor allocWithZone:a3];
  v5 = [(HMCHIPVendor *)self identifier];
  v6 = [(HMCHIPVendor *)self name];
  v7 = [(HMCHIPVendor *)v4 initWithIdentifier:v5 name:v6];

  [(HMCHIPVendor *)v7 setAppleVendor:[(HMCHIPVendor *)self isAppleVendor]];
  [(HMCHIPVendor *)v7 setSystemCommissionerVendor:[(HMCHIPVendor *)self isSystemCommissionerVendor]];
  return v7;
}

@end