@interface FamilyRootViewController
- (void)_presentAsChildViewController:(id)a3;
@end

@implementation FamilyRootViewController

- (void)_presentAsChildViewController:(id)a3
{
  v27 = a3;
  [(FamilyRootViewController *)self addChildViewController:v27];
  v4 = [(FamilyRootViewController *)self view];
  v5 = [v27 view];
  [v4 addSubview:v5];

  v6 = [v27 view];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [v27 view];
  v8 = [v7 topAnchor];
  v9 = [(FamilyRootViewController *)self view];
  v10 = [v9 topAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  [v11 setActive:1];

  v12 = [v27 view];
  v13 = [v12 bottomAnchor];
  v14 = [(FamilyRootViewController *)self view];
  v15 = [v14 bottomAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  [v16 setActive:1];

  v17 = [v27 view];
  v18 = [v17 leftAnchor];
  v19 = [(FamilyRootViewController *)self view];
  v20 = [v19 leftAnchor];
  v21 = [v18 constraintEqualToAnchor:v20];
  [v21 setActive:1];

  v22 = [v27 view];
  v23 = [v22 rightAnchor];
  v24 = [(FamilyRootViewController *)self view];
  v25 = [v24 rightAnchor];
  v26 = [v23 constraintEqualToAnchor:v25];
  [v26 setActive:1];

  [v27 didMoveToParentViewController:self];
}

@end