@interface HMMutableMediaSystemData
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMMutableMediaSystemData

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMMediaSystemData alloc];
  v5 = [(HMMediaGroup *)self identifier];
  v6 = [(HMMediaGroup *)self parentIdentifier];
  v7 = [(HMMediaGroup *)self name];
  v8 = [(HMMediaGroup *)self isDefaultName];
  v9 = [(HMMediaGroup *)self associatedGroupIdentifier];
  v10 = [(HMMediaSystemData *)self leftDestinationIdentifier];
  v11 = [(HMMediaSystemData *)self rightDestinationIdentifier];
  v12 = [(HMMediaSystemData *)v4 initWithIdentifier:v5 parentIdentifier:v6 name:v7 defaultName:v8 associatedGroupIdentifier:v9 leftDestinationIdentifier:v10 rightDestinationIdentifier:v11];

  return v12;
}

@end