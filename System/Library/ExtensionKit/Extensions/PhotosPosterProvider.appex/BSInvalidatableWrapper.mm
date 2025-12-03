@interface BSInvalidatableWrapper
- (void)px_invalidate;
@end

@implementation BSInvalidatableWrapper

- (void)px_invalidate
{
  selfCopy = self;
  sub_10000D2A8();
}

@end