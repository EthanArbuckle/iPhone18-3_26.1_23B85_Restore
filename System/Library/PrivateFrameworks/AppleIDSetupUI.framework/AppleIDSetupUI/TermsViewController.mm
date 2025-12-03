@interface TermsViewController
- (_TtC14AppleIDSetupUI19TermsViewController)init;
- (_TtC14AppleIDSetupUI19TermsViewController)initWithCoder:(id)coder;
- (_TtC14AppleIDSetupUI19TermsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)genericTermsRemoteUI:(id)i acceptedTermsInfo:(id)info;
- (void)genericTermsRemoteUI:(id)i didFinishWithSuccess:(BOOL)success;
@end

@implementation TermsViewController

- (_TtC14AppleIDSetupUI19TermsViewController)init
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC14AppleIDSetupUI19TermsViewController_termsInfoHandler);
  *v3 = 0;
  v3[1] = 0;
  v4 = (self + OBJC_IVAR____TtC14AppleIDSetupUI19TermsViewController_termsContext);
  v5 = type metadata accessor for TermsViewController();
  *v4 = 0u;
  v4[1] = 0u;
  v7.receiver = self;
  v7.super_class = v5;
  return [(TermsViewController *)&v7 initWithNibName:0 bundle:0];
}

- (_TtC14AppleIDSetupUI19TermsViewController)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC14AppleIDSetupUI19TermsViewController_termsInfoHandler);
  *v3 = 0;
  v3[1] = 0;
  v4 = (self + OBJC_IVAR____TtC14AppleIDSetupUI19TermsViewController_termsContext);
  *v4 = 0u;
  v4[1] = 0u;
  result = sub_240A2C58C();
  __break(1u);
  return result;
}

- (void)genericTermsRemoteUI:(id)i didFinishWithSuccess:(BOOL)success
{
  iCopy = i;
  selfCopy = self;
  sub_24097A698(success);
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
  sub_24097A8DC(v6);
}

- (_TtC14AppleIDSetupUI19TermsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end