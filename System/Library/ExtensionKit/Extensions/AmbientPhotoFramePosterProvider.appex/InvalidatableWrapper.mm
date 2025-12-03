@interface InvalidatableWrapper
- (void)px_invalidate;
@end

@implementation InvalidatableWrapper

- (void)px_invalidate
{
  selfCopy = self;
  sub_100005168();
}

@end