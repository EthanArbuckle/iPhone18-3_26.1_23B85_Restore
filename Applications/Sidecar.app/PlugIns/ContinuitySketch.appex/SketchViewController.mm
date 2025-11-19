@interface SketchViewController
- (SketchViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (UINavigationItem)navigationItem;
- (void)viewDidAppear:(BOOL)a3;
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
  v2 = self;
  sub_1000013D8();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1000018A0(a3);
}

- (SketchViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_1000033DC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_10000212C(v5, v7, a4);
}

@end