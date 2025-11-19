@interface AudioTraitDisclosureViewController.HeaderSymbolViewController
- (_TtCC5Music34AudioTraitDisclosureViewControllerP33_B18012DE9244B542B3AC7DEA702FBC9726HeaderSymbolViewController)initWithCoder:(id)a3;
- (_TtCC5Music34AudioTraitDisclosureViewControllerP33_B18012DE9244B542B3AC7DEA702FBC9726HeaderSymbolViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
@end

@implementation AudioTraitDisclosureViewController.HeaderSymbolViewController

- (void)loadView
{
  v2 = self;
  sub_10053B7EC();
}

- (_TtCC5Music34AudioTraitDisclosureViewControllerP33_B18012DE9244B542B3AC7DEA702FBC9726HeaderSymbolViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music34AudioTraitDisclosureViewControllerP33_B18012DE9244B542B3AC7DEA702FBC9726HeaderSymbolViewController_image) = 0;
    v6 = a4;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music34AudioTraitDisclosureViewControllerP33_B18012DE9244B542B3AC7DEA702FBC9726HeaderSymbolViewController_image) = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for AudioTraitDisclosureViewController.HeaderSymbolViewController();
  v9 = [(AudioTraitDisclosureViewController.HeaderSymbolViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtCC5Music34AudioTraitDisclosureViewControllerP33_B18012DE9244B542B3AC7DEA702FBC9726HeaderSymbolViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music34AudioTraitDisclosureViewControllerP33_B18012DE9244B542B3AC7DEA702FBC9726HeaderSymbolViewController_image) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AudioTraitDisclosureViewController.HeaderSymbolViewController();
  v4 = a3;
  v5 = [(AudioTraitDisclosureViewController.HeaderSymbolViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end