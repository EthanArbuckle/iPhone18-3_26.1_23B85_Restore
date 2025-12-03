@interface SketchViewController
- (SketchViewController)initWithNibName:(id)name bundle:(id)bundle;
- (UINavigationItem)navigationItem;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation SketchViewController

- (UINavigationItem)navigationItem
{
  v2 = sub_1000013C8();

  return v2;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000013D8();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000018A0(appear);
}

- (SketchViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1000033DC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_10000212C(v5, v7, bundle);
}

@end