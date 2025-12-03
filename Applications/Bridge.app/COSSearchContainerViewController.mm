@interface COSSearchContainerViewController
- (COSSearchContainerViewController)initWithCoder:(id)coder;
- (COSSearchContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)presentController:(id)controller;
@end

@implementation COSSearchContainerViewController

- (void)presentController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_100143294(controllerCopy);
}

- (COSSearchContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.isa + OBJC_IVAR___COSSearchContainerViewController_currentChildController) = 0;
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR___COSSearchContainerViewController_currentChildController) = 0;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for SearchContainerViewController();
  v9 = [(COSSearchContainerViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (COSSearchContainerViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR___COSSearchContainerViewController_currentChildController) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SearchContainerViewController();
  coderCopy = coder;
  v5 = [(COSSearchContainerViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end