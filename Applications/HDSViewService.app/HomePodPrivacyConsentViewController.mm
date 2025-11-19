@interface HomePodPrivacyConsentViewController
- (_TtC14HDSViewService35HomePodPrivacyConsentViewController)initWithCoder:(id)a3;
- (_TtC14HDSViewService35HomePodPrivacyConsentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation HomePodPrivacyConsentViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1000699F4();
}

- (_TtC14HDSViewService35HomePodPrivacyConsentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.isa + OBJC_IVAR____TtC14HDSViewService35HomePodPrivacyConsentViewController_consentView) = 0;
    v6 = a4;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtC14HDSViewService35HomePodPrivacyConsentViewController_consentView) = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for HomePodPrivacyConsentViewController();
  v9 = [(HomePodPrivacyConsentViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC14HDSViewService35HomePodPrivacyConsentViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14HDSViewService35HomePodPrivacyConsentViewController_consentView) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for HomePodPrivacyConsentViewController();
  v4 = a3;
  v5 = [(HomePodPrivacyConsentViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end