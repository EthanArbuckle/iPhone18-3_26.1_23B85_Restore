@interface FamilyRootViewController
- (void)_presentAsChildViewController:(id)controller;
@end

@implementation FamilyRootViewController

- (void)_presentAsChildViewController:(id)controller
{
  controllerCopy = controller;
  [(FamilyRootViewController *)self addChildViewController:controllerCopy];
  view = [(FamilyRootViewController *)self view];
  view2 = [controllerCopy view];
  [view addSubview:view2];

  view3 = [controllerCopy view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  view4 = [controllerCopy view];
  topAnchor = [view4 topAnchor];
  view5 = [(FamilyRootViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v11 setActive:1];

  view6 = [controllerCopy view];
  bottomAnchor = [view6 bottomAnchor];
  view7 = [(FamilyRootViewController *)self view];
  bottomAnchor2 = [view7 bottomAnchor];
  v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v16 setActive:1];

  view8 = [controllerCopy view];
  leftAnchor = [view8 leftAnchor];
  view9 = [(FamilyRootViewController *)self view];
  leftAnchor2 = [view9 leftAnchor];
  v21 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v21 setActive:1];

  view10 = [controllerCopy view];
  rightAnchor = [view10 rightAnchor];
  view11 = [(FamilyRootViewController *)self view];
  rightAnchor2 = [view11 rightAnchor];
  v26 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v26 setActive:1];

  [controllerCopy didMoveToParentViewController:self];
}

@end