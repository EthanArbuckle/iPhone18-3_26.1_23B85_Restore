@interface AttestationManager.URLDelegate
- (_TtCC17AppAttestInternal18AttestationManagerP33_6A9676F167D55AEBDBB586D6DBA1125411URLDelegate)init;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
@end

@implementation AttestationManager.URLDelegate

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_2261DA004(v10, v11, v8);
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