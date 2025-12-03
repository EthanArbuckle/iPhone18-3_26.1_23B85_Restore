@interface HMMutableMediaSystemData
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMMutableMediaSystemData

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMMediaSystemData alloc];
  identifier = [(HMMediaGroup *)self identifier];
  parentIdentifier = [(HMMediaGroup *)self parentIdentifier];
  name = [(HMMediaGroup *)self name];
  isDefaultName = [(HMMediaGroup *)self isDefaultName];
  associatedGroupIdentifier = [(HMMediaGroup *)self associatedGroupIdentifier];
  leftDestinationIdentifier = [(HMMediaSystemData *)self leftDestinationIdentifier];
  rightDestinationIdentifier = [(HMMediaSystemData *)self rightDestinationIdentifier];
  v12 = [(HMMediaSystemData *)v4 initWithIdentifier:identifier parentIdentifier:parentIdentifier name:name defaultName:isDefaultName associatedGroupIdentifier:associatedGroupIdentifier leftDestinationIdentifier:leftDestinationIdentifier rightDestinationIdentifier:rightDestinationIdentifier];

  return v12;
}

@end