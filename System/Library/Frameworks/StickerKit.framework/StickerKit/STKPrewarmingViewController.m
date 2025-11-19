@interface STKPrewarmingViewController
- (STKPrewarmingViewController)initWithCoder:(id)a3;
- (STKPrewarmingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation STKPrewarmingViewController

- (STKPrewarmingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_19A7AB014();
    *(&self->super.super.super.isa + OBJC_IVAR___STKPrewarmingViewController_assertion) = 0;
    *(&self->super.super.super.isa + OBJC_IVAR___STKPrewarmingViewController_processHandle) = 0;
    v8 = a4;
    a3 = sub_19A7AAFE4();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR___STKPrewarmingViewController_assertion) = 0;
    *(&self->super.super.super.isa + OBJC_IVAR___STKPrewarmingViewController_processHandle) = 0;
    v9 = a4;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(STKPrewarmingViewController *)&v12 initWithNibName:a3 bundle:a4];

  return v10;
}

- (void)viewDidLoad
{
  v2 = self;
  PrewarmingViewController.viewDidLoad()();
}

- (STKPrewarmingViewController)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR___STKPrewarmingViewController_assertion) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___STKPrewarmingViewController_processHandle) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(STKPrewarmingViewController *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end