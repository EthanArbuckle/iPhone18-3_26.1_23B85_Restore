@interface AMSURLSentry
- (void)isTrustedURL:(NSURL *)l completionHandler:(id)handler;
@end

@implementation AMSURLSentry

- (void)isTrustedURL:(NSURL *)l completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = l;
  v7[3] = v6;
  v7[4] = self;
  lCopy = l;
  selfCopy = self;

  sub_1928FB3BC(&unk_192FCF318, v7);
}

@end