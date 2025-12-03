@interface MPMRAVEndpointWrapper
- (void)unwrappedValue;
@end

@implementation MPMRAVEndpointWrapper

- (void)unwrappedValue
{
  selfCopy = self;

  return [(MPCFWrapper *)selfCopy refValue];
}

@end