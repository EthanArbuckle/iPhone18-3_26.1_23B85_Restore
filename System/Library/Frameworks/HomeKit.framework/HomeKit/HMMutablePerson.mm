@interface HMMutablePerson
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMMutablePerson

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMPerson allocWithZone:zone];
  uUID = [(HMPerson *)self UUID];
  name = [(HMPerson *)self name];
  personLinks = [(HMPerson *)self personLinks];
  externalPersonUUID = [(HMPerson *)self externalPersonUUID];
  v9 = [(HMPerson *)v4 initWithUUID:uUID name:name personLinks:personLinks externalPersonUUID:externalPersonUUID];

  return v9;
}

@end