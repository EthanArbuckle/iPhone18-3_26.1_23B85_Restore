@interface InvalidatableWrapper
- (void)px_invalidate;
@end

@implementation InvalidatableWrapper

- (void)px_invalidate
{
  v2 = self;
  sub_100005168();
}

@end