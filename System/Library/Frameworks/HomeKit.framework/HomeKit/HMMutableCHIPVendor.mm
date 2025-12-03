@interface HMMutableCHIPVendor
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMMutableCHIPVendor

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMCHIPVendor allocWithZone:zone];
  identifier = [(HMCHIPVendor *)self identifier];
  name = [(HMCHIPVendor *)self name];
  v7 = [(HMCHIPVendor *)v4 initWithIdentifier:identifier name:name];

  [(HMCHIPVendor *)v7 setAppleVendor:[(HMCHIPVendor *)self isAppleVendor]];
  [(HMCHIPVendor *)v7 setSystemCommissionerVendor:[(HMCHIPVendor *)self isSystemCommissionerVendor]];
  return v7;
}

@end