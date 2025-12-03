@interface MonogramPosterBackgroundViewController
- (_TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation MonogramPosterBackgroundViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000036AC();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100005060();
}

- (_TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_100026A20();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_10000486C(v5, v7, bundle);
}

@end