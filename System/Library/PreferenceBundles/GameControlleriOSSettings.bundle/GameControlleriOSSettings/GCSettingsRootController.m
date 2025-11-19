@interface GCSettingsRootController
- (GCSettingsRootController)init;
- (void)displayContentController:(id)a3;
- (void)hideContentController:(id)a3;
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

- (void)displayContentController:(id)a3
{
  v4 = a3;
  [(GCSettingsRootController *)self addChildViewController:v4];
  v5 = [v4 view];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(GCSettingsRootController *)self view];
  v7 = [v4 view];
  [v6 addSubview:v7];

  v21 = [v4 view];
  v20 = [(GCSettingsRootController *)self view];
  v19 = [NSLayoutConstraint constraintWithItem:v21 attribute:3 relatedBy:0 toItem:v20 attribute:3 multiplier:1.0 constant:0.0];
  v22[0] = v19;
  v18 = [v4 view];
  v17 = [(GCSettingsRootController *)self view];
  v8 = [NSLayoutConstraint constraintWithItem:v18 attribute:5 relatedBy:0 toItem:v17 attribute:5 multiplier:1.0 constant:0.0];
  v22[1] = v8;
  v9 = [(GCSettingsRootController *)self view];
  v10 = [v4 view];
  v11 = [NSLayoutConstraint constraintWithItem:v9 attribute:4 relatedBy:0 toItem:v10 attribute:4 multiplier:1.0 constant:0.0];
  v22[2] = v11;
  v12 = [(GCSettingsRootController *)self view];
  v13 = [v4 view];
  v14 = [NSLayoutConstraint constraintWithItem:v12 attribute:6 relatedBy:0 toItem:v13 attribute:6 multiplier:1.0 constant:0.0];
  v22[3] = v14;
  v15 = [NSArray arrayWithObjects:v22 count:4];
  activeConstraints = self->_activeConstraints;
  self->_activeConstraints = v15;

  [NSLayoutConstraint activateConstraints:self->_activeConstraints];
  [v4 didMoveToParentViewController:self];
}

- (void)hideContentController:(id)a3
{
  activeConstraints = self->_activeConstraints;
  v5 = a3;
  [NSLayoutConstraint deactivateConstraints:activeConstraints];
  [v5 willMoveToParentViewController:0];
  v4 = [v5 view];
  [v4 removeFromSuperview];

  [v5 removeFromParentViewController];
}

@end