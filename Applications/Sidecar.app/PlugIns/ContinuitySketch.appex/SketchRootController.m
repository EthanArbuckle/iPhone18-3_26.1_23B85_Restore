@interface SketchRootController
- (SketchRootController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation SketchRootController

- (void)viewDidLoad
{
  v2 = self;
  sub_100002C1C();
}

- (SketchRootController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_100002FA0(v5, v7, a4);
}

@end