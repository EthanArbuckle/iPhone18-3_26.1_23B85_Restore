@interface MPMRAVEndpointObserverWrapper
- (void)unwrappedValue;
@end

@implementation MPMRAVEndpointObserverWrapper

- (void)unwrappedValue
{
  v2 = self;

  return [(MPCFWrapper *)v2 refValue];
}

@end