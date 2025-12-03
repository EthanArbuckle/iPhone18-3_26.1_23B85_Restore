@interface SketchRootController
- (SketchRootController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation SketchRootController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100002C1C();
}

- (SketchRootController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_100002FA0(v5, v7, bundle);
}

@end