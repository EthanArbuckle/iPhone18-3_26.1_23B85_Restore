@interface AttestationManager.URLDelegate
- (_TtCC17AppAttestInternal18AttestationManagerP33_6A9676F167D55AEBDBB586D6DBA1125411URLDelegate)init;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
@end

@implementation AttestationManager.URLDelegate

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  sessionCopy = session;
  challengeCopy = challenge;
  selfCopy = self;
  sub_2261DA004(challengeCopy, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (_TtCC17AppAttestInternal18AttestationManagerP33_6A9676F167D55AEBDBB586D6DBA1125411URLDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end