@interface InvalidatableWrapper
- (void)px_invalidate;
@end

@implementation InvalidatableWrapper

- (void)px_invalidate
{
  v2 = self;
  sub_100007514();
}

@end