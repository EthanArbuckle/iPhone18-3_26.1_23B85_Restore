@interface AudioTraitDisclosureViewController.HeaderSymbolViewController
- (_TtCC16MusicApplication34AudioTraitDisclosureViewControllerP33_6498FC44AD81D431952734329910828A26HeaderSymbolViewController)initWithCoder:(id)coder;
- (_TtCC16MusicApplication34AudioTraitDisclosureViewControllerP33_6498FC44AD81D431952734329910828A26HeaderSymbolViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
@end

@implementation AudioTraitDisclosureViewController.HeaderSymbolViewController

- (void)loadView
{
  selfCopy = self;
  sub_2B5550();
}

- (_TtCC16MusicApplication34AudioTraitDisclosureViewControllerP33_6498FC44AD81D431952734329910828A26HeaderSymbolViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_AB92A0();
    *(&self->super.super.super.isa + OBJC_IVAR____TtCC16MusicApplication34AudioTraitDisclosureViewControllerP33_6498FC44AD81D431952734329910828A26HeaderSymbolViewController_image) = 0;
    bundleCopy = bundle;
    v7 = sub_AB9260();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtCC16MusicApplication34AudioTraitDisclosureViewControllerP33_6498FC44AD81D431952734329910828A26HeaderSymbolViewController_image) = 0;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for AudioTraitDisclosureViewController.HeaderSymbolViewController();
  v9 = [(AudioTraitDisclosureViewController.HeaderSymbolViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtCC16MusicApplication34AudioTraitDisclosureViewControllerP33_6498FC44AD81D431952734329910828A26HeaderSymbolViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC16MusicApplication34AudioTraitDisclosureViewControllerP33_6498FC44AD81D431952734329910828A26HeaderSymbolViewController_image) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AudioTraitDisclosureViewController.HeaderSymbolViewController();
  coderCopy = coder;
  v5 = [(AudioTraitDisclosureViewController.HeaderSymbolViewController *)&v7 initWithCoder:coderCopy];

  return v5;
}

@end