@interface STKPrewarmingViewController
- (STKPrewarmingViewController)initWithCoder:(id)coder;
- (STKPrewarmingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation STKPrewarmingViewController

- (STKPrewarmingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    sub_19A7AB014();
    *(&self->super.super.super.isa + OBJC_IVAR___STKPrewarmingViewController_assertion) = 0;
    *(&self->super.super.super.isa + OBJC_IVAR___STKPrewarmingViewController_processHandle) = 0;
    bundleCopy = bundle;
    name = sub_19A7AAFE4();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR___STKPrewarmingViewController_assertion) = 0;
    *(&self->super.super.super.isa + OBJC_IVAR___STKPrewarmingViewController_processHandle) = 0;
    bundleCopy2 = bundle;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(STKPrewarmingViewController *)&v12 initWithNibName:name bundle:bundle];

  return v10;
}

- (void)viewDidLoad
{
  selfCopy = self;
  PrewarmingViewController.viewDidLoad()();
}

- (STKPrewarmingViewController)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR___STKPrewarmingViewController_assertion) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___STKPrewarmingViewController_processHandle) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(STKPrewarmingViewController *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end