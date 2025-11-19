@interface SLNetworkReachabilityWarning
- (SLNetworkReachabilityWarning)initWithServiceType:(id)a3;
@end

@implementation SLNetworkReachabilityWarning

- (SLNetworkReachabilityWarning)initWithServiceType:(id)a3
{
  v4.receiver = self;
  v4.super_class = SLNetworkReachabilityWarning;
  return [(SLNetworkReachabilityWarning *)&v4 init];
}

@end