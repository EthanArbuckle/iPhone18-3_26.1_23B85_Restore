@interface HMMutableMediaGroup
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMMutableMediaGroup

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMMediaGroup alloc];
  v5 = [(HMMediaGroup *)self identifier];
  v6 = [(HMMediaGroup *)self parentIdentifier];
  v7 = [(HMMediaGroup *)self name];
  v8 = [(HMMediaGroup *)self isDefaultName];
  v9 = [(HMMediaGroup *)self destinationUniqueIdentifiers];
  v10 = [(HMMediaGroup *)self associatedGroupIdentifier];
  v11 = [(HMMediaGroup *)v4 initWithIdentifier:v5 parentIdentifier:v6 name:v7 defaultName:v8 destinationIdentifiers:v9 associatedGroupIdentifier:v10];

  return v11;
}

@end