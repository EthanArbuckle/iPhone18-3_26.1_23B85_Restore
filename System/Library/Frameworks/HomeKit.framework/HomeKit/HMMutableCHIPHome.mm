@interface HMMutableCHIPHome
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMMutableCHIPHome

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMCHIPHome allocWithZone:zone];
  identifier = [(HMCHIPHome *)self identifier];
  index = [(HMCHIPHome *)self index];
  name = [(HMCHIPHome *)self name];
  ecosystem = [(HMCHIPHome *)self ecosystem];
  v9 = [(HMCHIPHome *)v4 initWithIdentifier:identifier index:index name:name ecosystem:ecosystem];

  return v9;
}

@end