@interface HMMutableHomeManagerConfiguration
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMMutableHomeManagerConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[HMHomeManagerConfiguration allocWithZone:?]cachePolicy:"initWithOptions:cachePolicy:", [(HMHomeManagerConfiguration *)self options], [(HMHomeManagerConfiguration *)self cachePolicy]];
  [(HMHomeManagerConfiguration *)v4 setDiscretionary:[(HMHomeManagerConfiguration *)self isDiscretionary]];
  [(HMHomeManagerConfiguration *)v4 setInactiveUpdatingLevel:[(HMHomeManagerConfiguration *)self inactiveUpdatingLevel]];
  delegateQueue = [(HMHomeManagerConfiguration *)self delegateQueue];
  [(HMHomeManagerConfiguration *)v4 setDelegateQueue:delegateQueue];

  locationAuthorization = [(HMHomeManagerConfiguration *)self locationAuthorization];
  [(HMHomeManagerConfiguration *)v4 setLocationAuthorization:locationAuthorization];

  return v4;
}

@end