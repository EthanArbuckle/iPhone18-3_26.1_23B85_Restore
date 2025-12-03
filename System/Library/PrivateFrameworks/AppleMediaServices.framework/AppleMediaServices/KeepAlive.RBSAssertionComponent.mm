@interface KeepAlive.RBSAssertionComponent
- (void)assertion:(id)assertion didInvalidateWithError:(id)error;
- (void)assertionWillInvalidate:(id)invalidate;
@end

@implementation KeepAlive.RBSAssertionComponent

- (void)assertionWillInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_192CBD178(invalidateCopy);
}

- (void)assertion:(id)assertion didInvalidateWithError:(id)error
{
  assertionCopy = assertion;
  selfCopy = self;
  errorCopy = error;
  sub_192CBD618(assertionCopy, error);
}

@end