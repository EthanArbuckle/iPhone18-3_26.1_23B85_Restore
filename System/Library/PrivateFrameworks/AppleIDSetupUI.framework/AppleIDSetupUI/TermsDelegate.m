@interface TermsDelegate
- (_TtC14AppleIDSetupUI13TermsDelegate)init;
- (void)genericTermsRemoteUI:(id)a3 acceptedTermsInfo:(id)a4;
- (void)genericTermsRemoteUI:(id)a3 didFinishWithSuccess:(BOOL)a4;
@end

@implementation TermsDelegate

- (void)genericTermsRemoteUI:(id)a3 didFinishWithSuccess:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_240A268A8(a4);
}

- (void)genericTermsRemoteUI:(id)a3 acceptedTermsInfo:(id)a4
{
  if (a4)
  {
    v6 = sub_240A2BEBC();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v8 = self;
  sub_240A26A50(v6);
}

- (_TtC14AppleIDSetupUI13TermsDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end