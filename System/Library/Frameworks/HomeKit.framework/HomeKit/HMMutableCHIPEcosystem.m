@interface HMMutableCHIPEcosystem
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMMutableCHIPEcosystem

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMCHIPEcosystem allocWithZone:a3];
  v5 = [(HMCHIPEcosystem *)self rootPublicKey];
  v6 = [(HMCHIPEcosystem *)self vendor];
  v7 = [(HMCHIPEcosystem *)v4 initWithRootPublicKey:v5 vendor:v6];

  return v7;
}

@end