@interface MonogramPosterBackgroundViewController
- (_TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation MonogramPosterBackgroundViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1000036AC();
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100005060();
}

- (_TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_100026A20();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_10000486C(v5, v7, a4);
}

@end