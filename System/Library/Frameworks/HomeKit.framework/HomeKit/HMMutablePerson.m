@interface HMMutablePerson
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMMutablePerson

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMPerson allocWithZone:a3];
  v5 = [(HMPerson *)self UUID];
  v6 = [(HMPerson *)self name];
  v7 = [(HMPerson *)self personLinks];
  v8 = [(HMPerson *)self externalPersonUUID];
  v9 = [(HMPerson *)v4 initWithUUID:v5 name:v6 personLinks:v7 externalPersonUUID:v8];

  return v9;
}

@end