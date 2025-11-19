@interface HMMutableCHIPHome
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMMutableCHIPHome

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMCHIPHome allocWithZone:a3];
  v5 = [(HMCHIPHome *)self identifier];
  v6 = [(HMCHIPHome *)self index];
  v7 = [(HMCHIPHome *)self name];
  v8 = [(HMCHIPHome *)self ecosystem];
  v9 = [(HMCHIPHome *)v4 initWithIdentifier:v5 index:v6 name:v7 ecosystem:v8];

  return v9;
}

@end