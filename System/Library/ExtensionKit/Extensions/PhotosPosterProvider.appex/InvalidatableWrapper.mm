@interface InvalidatableWrapper
- (void)px_invalidate;
@end

@implementation InvalidatableWrapper

- (void)px_invalidate
{
  selfCopy = self;
  sub_100007514();
}

@end