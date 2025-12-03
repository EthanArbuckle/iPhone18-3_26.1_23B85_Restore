@interface SLNetworkReachabilityWarning
- (SLNetworkReachabilityWarning)initWithServiceType:(id)type;
@end

@implementation SLNetworkReachabilityWarning

- (SLNetworkReachabilityWarning)initWithServiceType:(id)type
{
  v4.receiver = self;
  v4.super_class = SLNetworkReachabilityWarning;
  return [(SLNetworkReachabilityWarning *)&v4 init];
}

@end