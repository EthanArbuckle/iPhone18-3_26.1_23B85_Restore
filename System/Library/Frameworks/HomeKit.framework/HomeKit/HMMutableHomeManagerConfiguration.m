@interface HMMutableHomeManagerConfiguration
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMMutableHomeManagerConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[HMHomeManagerConfiguration allocWithZone:?]cachePolicy:"initWithOptions:cachePolicy:", [(HMHomeManagerConfiguration *)self options], [(HMHomeManagerConfiguration *)self cachePolicy]];
  [(HMHomeManagerConfiguration *)v4 setDiscretionary:[(HMHomeManagerConfiguration *)self isDiscretionary]];
  [(HMHomeManagerConfiguration *)v4 setInactiveUpdatingLevel:[(HMHomeManagerConfiguration *)self inactiveUpdatingLevel]];
  v5 = [(HMHomeManagerConfiguration *)self delegateQueue];
  [(HMHomeManagerConfiguration *)v4 setDelegateQueue:v5];

  v6 = [(HMHomeManagerConfiguration *)self locationAuthorization];
  [(HMHomeManagerConfiguration *)v4 setLocationAuthorization:v6];

  return v4;
}

@end