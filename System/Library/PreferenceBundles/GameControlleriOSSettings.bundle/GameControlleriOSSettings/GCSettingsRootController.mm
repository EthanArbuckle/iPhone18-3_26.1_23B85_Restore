@interface GCSettingsRootController
- (GCSettingsRootController)init;
- (void)displayContentController:(id)controller;
- (void)hideContentController:(id)controller;
- (void)viewDidLoad;
@end

@implementation GCSettingsRootController

- (GCSettingsRootController)init
{
  v6.receiver = self;
  v6.super_class = GCSettingsRootController;
  v2 = [(GCSettingsRootController *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    activeConstraints = v2->_activeConstraints;
    v2->_activeConstraints = v3;
  }

  return v2;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = GCSettingsRootController;
  [(GCSettingsRootController *)&v4 viewDidLoad];
  v3 = +[_TtC25GameControlleriOSSettings18SwiftUIViewFactory makeSwiftUIView];
  [(GCSettingsRootController *)self displayContentController:v3];
}

- (void)displayContentController:(id)controller
{
  controllerCopy = controller;
  [(GCSettingsRootController *)self addChildViewController:controllerCopy];
  view = [controllerCopy view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(GCSettingsRootController *)self view];
  view3 = [controllerCopy view];
  [view2 addSubview:view3];

  view4 = [controllerCopy view];
  view5 = [(GCSettingsRootController *)self view];
  v19 = [NSLayoutConstraint constraintWithItem:view4 attribute:3 relatedBy:0 toItem:view5 attribute:3 multiplier:1.0 constant:0.0];
  v22[0] = v19;
  view6 = [controllerCopy view];
  view7 = [(GCSettingsRootController *)self view];
  v8 = [NSLayoutConstraint constraintWithItem:view6 attribute:5 relatedBy:0 toItem:view7 attribute:5 multiplier:1.0 constant:0.0];
  v22[1] = v8;
  view8 = [(GCSettingsRootController *)self view];
  view9 = [controllerCopy view];
  v11 = [NSLayoutConstraint constraintWithItem:view8 attribute:4 relatedBy:0 toItem:view9 attribute:4 multiplier:1.0 constant:0.0];
  v22[2] = v11;
  view10 = [(GCSettingsRootController *)self view];
  view11 = [controllerCopy view];
  v14 = [NSLayoutConstraint constraintWithItem:view10 attribute:6 relatedBy:0 toItem:view11 attribute:6 multiplier:1.0 constant:0.0];
  v22[3] = v14;
  v15 = [NSArray arrayWithObjects:v22 count:4];
  activeConstraints = self->_activeConstraints;
  self->_activeConstraints = v15;

  [NSLayoutConstraint activateConstraints:self->_activeConstraints];
  [controllerCopy didMoveToParentViewController:self];
}

- (void)hideContentController:(id)controller
{
  activeConstraints = self->_activeConstraints;
  controllerCopy = controller;
  [NSLayoutConstraint deactivateConstraints:activeConstraints];
  [controllerCopy willMoveToParentViewController:0];
  view = [controllerCopy view];
  [view removeFromSuperview];

  [controllerCopy removeFromParentViewController];
}

@end