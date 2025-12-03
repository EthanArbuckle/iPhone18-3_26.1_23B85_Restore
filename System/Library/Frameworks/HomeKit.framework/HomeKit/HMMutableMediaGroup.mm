@interface HMMutableMediaGroup
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMMutableMediaGroup

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMMediaGroup alloc];
  identifier = [(HMMediaGroup *)self identifier];
  parentIdentifier = [(HMMediaGroup *)self parentIdentifier];
  name = [(HMMediaGroup *)self name];
  isDefaultName = [(HMMediaGroup *)self isDefaultName];
  destinationUniqueIdentifiers = [(HMMediaGroup *)self destinationUniqueIdentifiers];
  associatedGroupIdentifier = [(HMMediaGroup *)self associatedGroupIdentifier];
  v11 = [(HMMediaGroup *)v4 initWithIdentifier:identifier parentIdentifier:parentIdentifier name:name defaultName:isDefaultName destinationIdentifiers:destinationUniqueIdentifiers associatedGroupIdentifier:associatedGroupIdentifier];

  return v11;
}

@end