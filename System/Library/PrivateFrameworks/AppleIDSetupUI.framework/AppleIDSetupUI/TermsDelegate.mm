@interface TermsDelegate
- (_TtC14AppleIDSetupUI13TermsDelegate)init;
- (void)genericTermsRemoteUI:(id)i acceptedTermsInfo:(id)info;
- (void)genericTermsRemoteUI:(id)i didFinishWithSuccess:(BOOL)success;
@end

@implementation TermsDelegate

- (void)genericTermsRemoteUI:(id)i didFinishWithSuccess:(BOOL)success
{
  iCopy = i;
  selfCopy = self;
  sub_240A268A8(success);
}

- (void)genericTermsRemoteUI:(id)i acceptedTermsInfo:(id)info
{
  if (info)
  {
    v6 = sub_240A2BEBC();
  }

  else
  {
    v6 = 0;
  }

  iCopy = i;
  selfCopy = self;
  sub_240A26A50(v6);
}

- (_TtC14AppleIDSetupUI13TermsDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end