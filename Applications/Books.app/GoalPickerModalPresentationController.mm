@interface GoalPickerModalPresentationController
- (CGRect)frameOfPresentedViewInContainerView;
- (_TtC5Books37GoalPickerModalPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
@end

@implementation GoalPickerModalPresentationController

- (_TtC5Books37GoalPickerModalPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  v12.receiver = self;
  v12.super_class = swift_getObjectType();
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v8 = [(GoalPickerModalPresentationController *)&v12 initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];
  sub_100640918();
  v9 = v8;
  isa = sub_1007A3134(0.0, 0.0, 0.0, 0.49818).super.isa;
  [(GoalPickerModalPresentationController *)v9 setDimmingViewBackgroundColor:isa, v12.receiver, v12.super_class];

  return v9;
}

- (CGRect)frameOfPresentedViewInContainerView
{
  selfCopy = self;
  v3 = sub_1006DECCC();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = v9;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

@end