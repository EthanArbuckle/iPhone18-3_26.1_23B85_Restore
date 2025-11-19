@interface MPMRAVEndpointWrapper
- (void)unwrappedValue;
@end

@implementation MPMRAVEndpointWrapper

- (void)unwrappedValue
{
  v2 = self;

  return [(MPCFWrapper *)v2 refValue];
}

@end