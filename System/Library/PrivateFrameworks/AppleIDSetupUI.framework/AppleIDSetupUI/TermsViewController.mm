@interface TermsViewController
- (_TtC14AppleIDSetupUI19TermsViewController)init;
- (_TtC14AppleIDSetupUI19TermsViewController)initWithCoder:(id)a3;
- (_TtC14AppleIDSetupUI19TermsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)genericTermsRemoteUI:(id)a3 acceptedTermsInfo:(id)a4;
- (void)genericTermsRemoteUI:(id)a3 didFinishWithSuccess:(BOOL)a4;
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

- (_TtC14AppleIDSetupUI19TermsViewController)initWithCoder:(id)a3
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

- (void)genericTermsRemoteUI:(id)a3 didFinishWithSuccess:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_24097A698(a4);
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
  sub_24097A8DC(v6);
}

- (_TtC14AppleIDSetupUI19TermsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end