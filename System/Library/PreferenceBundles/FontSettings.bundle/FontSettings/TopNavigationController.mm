@interface TopNavigationController
- (TopNavigationController)initWithCoder:(id)coder;
- (TopNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation TopNavigationController

- (void)viewDidAppear:(BOOL)appear
{
  sub_7D184();
  sub_7D174();
  sub_7D154();
  sub_7D6C4();
  self;
  v3 = sub_7BD44();
  sub_7A340(v3 & 1);
}

- (void)viewDidLoad
{
  sub_7D184();
  sub_7D174();
  sub_7D154();
  sub_7D6C4();
  self;
  sub_7A4B4();
}

- (TopNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  sub_7D184();
  sub_7D174();
  sub_7D154();
  sub_7D6C4();
  name;
  bundle;
  if (name)
  {
    v7 = sub_7CF14();
    v8 = v4;

    v9 = v7;
    v10 = v8;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v6 = sub_7B1E0(v9, v10, bundle);

  return v6;
}

- (TopNavigationController)initWithCoder:(id)coder
{
  sub_7D184();
  sub_7D174();
  sub_7D154();
  sub_7D6C4();
  coder;
  v5 = sub_7B460(coder);

  return v5;
}

@end