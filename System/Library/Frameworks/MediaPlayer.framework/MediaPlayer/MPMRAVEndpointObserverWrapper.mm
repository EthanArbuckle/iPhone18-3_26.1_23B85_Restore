@interface MPMRAVEndpointObserverWrapper
- (void)unwrappedValue;
@end

@implementation MPMRAVEndpointObserverWrapper

- (void)unwrappedValue
{
  selfCopy = self;

  return [(MPCFWrapper *)selfCopy refValue];
}

@end