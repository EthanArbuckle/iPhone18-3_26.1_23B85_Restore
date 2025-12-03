@interface AFibBurdenLifeFactorsTileViewController
- (NSString)title;
- (_TtC5Heart39AFibBurdenLifeFactorsTileViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
@end

@implementation AFibBurdenLifeFactorsTileViewController

- (_TtC5Heart39AFibBurdenLifeFactorsTileViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_29D939D68();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_29D8D6338(v5, v7, bundle);
}

- (void)loadView
{
  selfCopy = self;
  sub_29D8D6508();
}

- (NSString)title
{
  v2 = qword_2A17B0D48;
  selfCopy = self;
  if (v2 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();

  v4 = sub_29D939D28();

  return v4;
}

@end