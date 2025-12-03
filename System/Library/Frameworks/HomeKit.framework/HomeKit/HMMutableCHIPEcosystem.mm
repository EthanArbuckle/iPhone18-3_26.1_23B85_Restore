@interface HMMutableCHIPEcosystem
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMMutableCHIPEcosystem

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMCHIPEcosystem allocWithZone:zone];
  rootPublicKey = [(HMCHIPEcosystem *)self rootPublicKey];
  vendor = [(HMCHIPEcosystem *)self vendor];
  v7 = [(HMCHIPEcosystem *)v4 initWithRootPublicKey:rootPublicKey vendor:vendor];

  return v7;
}

@end