@interface MPMRAVOutputContextWrapper
- (void)unwrappedValue;
@end

@implementation MPMRAVOutputContextWrapper

- (void)unwrappedValue
{
  v2 = self;

  return [(MPCFWrapper *)v2 refValue];
}

@end