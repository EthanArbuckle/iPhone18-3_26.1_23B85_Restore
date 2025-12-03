@interface MPMRAVOutputContextWrapper
- (void)unwrappedValue;
@end

@implementation MPMRAVOutputContextWrapper

- (void)unwrappedValue
{
  selfCopy = self;

  return [(MPCFWrapper *)selfCopy refValue];
}

@end