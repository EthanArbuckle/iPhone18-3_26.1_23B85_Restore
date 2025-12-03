@interface HomePodPrivacyConsentViewController
- (_TtC14HDSViewService35HomePodPrivacyConsentViewController)initWithCoder:(id)coder;
- (_TtC14HDSViewService35HomePodPrivacyConsentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation HomePodPrivacyConsentViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000699F4();
}

- (_TtC14HDSViewService35HomePodPrivacyConsentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.isa + OBJC_IVAR____TtC14HDSViewService35HomePodPrivacyConsentViewController_consentView) = 0;
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtC14HDSViewService35HomePodPrivacyConsentViewController_consentView) = 0;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for HomePodPrivacyConsentViewController();
  v9 = [(HomePodPrivacyConsentViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC14HDSViewService35HomePodPrivacyConsentViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14HDSViewService35HomePodPrivacyConsentViewController_consentView) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for HomePodPrivacyConsentViewController();
  coderCopy = coder;
  v5 = [(HomePodPrivacyConsentViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end