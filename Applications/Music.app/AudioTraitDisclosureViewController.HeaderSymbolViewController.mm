@interface AudioTraitDisclosureViewController.HeaderSymbolViewController
- (_TtCC5Music34AudioTraitDisclosureViewControllerP33_B18012DE9244B542B3AC7DEA702FBC9726HeaderSymbolViewController)initWithCoder:(id)coder;
- (_TtCC5Music34AudioTraitDisclosureViewControllerP33_B18012DE9244B542B3AC7DEA702FBC9726HeaderSymbolViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
@end

@implementation AudioTraitDisclosureViewController.HeaderSymbolViewController

- (void)loadView
{
  selfCopy = self;
  sub_10053B7EC();
}

- (_TtCC5Music34AudioTraitDisclosureViewControllerP33_B18012DE9244B542B3AC7DEA702FBC9726HeaderSymbolViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music34AudioTraitDisclosureViewControllerP33_B18012DE9244B542B3AC7DEA702FBC9726HeaderSymbolViewController_image) = 0;
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music34AudioTraitDisclosureViewControllerP33_B18012DE9244B542B3AC7DEA702FBC9726HeaderSymbolViewController_image) = 0;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for AudioTraitDisclosureViewController.HeaderSymbolViewController();
  v9 = [(AudioTraitDisclosureViewController.HeaderSymbolViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtCC5Music34AudioTraitDisclosureViewControllerP33_B18012DE9244B542B3AC7DEA702FBC9726HeaderSymbolViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music34AudioTraitDisclosureViewControllerP33_B18012DE9244B542B3AC7DEA702FBC9726HeaderSymbolViewController_image) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AudioTraitDisclosureViewController.HeaderSymbolViewController();
  coderCopy = coder;
  v5 = [(AudioTraitDisclosureViewController.HeaderSymbolViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end