@interface COSSearchContainerViewController
- (COSSearchContainerViewController)initWithCoder:(id)a3;
- (COSSearchContainerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)presentController:(id)a3;
@end

@implementation COSSearchContainerViewController

- (void)presentController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100143294(v4);
}

- (COSSearchContainerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.isa + OBJC_IVAR___COSSearchContainerViewController_currentChildController) = 0;
    v6 = a4;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR___COSSearchContainerViewController_currentChildController) = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for SearchContainerViewController();
  v9 = [(COSSearchContainerViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (COSSearchContainerViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___COSSearchContainerViewController_currentChildController) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SearchContainerViewController();
  v4 = a3;
  v5 = [(COSSearchContainerViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end