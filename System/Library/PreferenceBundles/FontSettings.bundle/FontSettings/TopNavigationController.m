@interface TopNavigationController
- (TopNavigationController)initWithCoder:(id)a3;
- (TopNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation TopNavigationController

- (void)viewDidAppear:(BOOL)a3
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

- (TopNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  sub_7D184();
  sub_7D174();
  sub_7D154();
  sub_7D6C4();
  a3;
  a4;
  if (a3)
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

  v6 = sub_7B1E0(v9, v10, a4);

  return v6;
}

- (TopNavigationController)initWithCoder:(id)a3
{
  sub_7D184();
  sub_7D174();
  sub_7D154();
  sub_7D6C4();
  a3;
  v5 = sub_7B460(a3);

  return v5;
}

@end