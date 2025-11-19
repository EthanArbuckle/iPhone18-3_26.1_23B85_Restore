@interface GoalPickerModalPresentationController
- (CGRect)frameOfPresentedViewInContainerView;
- (_TtC5Books37GoalPickerModalPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4;
@end

@implementation GoalPickerModalPresentationController

- (_TtC5Books37GoalPickerModalPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4
{
  v12.receiver = self;
  v12.super_class = swift_getObjectType();
  v6 = a3;
  v7 = a4;
  v8 = [(GoalPickerModalPresentationController *)&v12 initWithPresentedViewController:v6 presentingViewController:v7];
  sub_100640918();
  v9 = v8;
  isa = sub_1007A3134(0.0, 0.0, 0.0, 0.49818).super.isa;
  [(GoalPickerModalPresentationController *)v9 setDimmingViewBackgroundColor:isa, v12.receiver, v12.super_class];

  return v9;
}

- (CGRect)frameOfPresentedViewInContainerView
{
  v2 = self;
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