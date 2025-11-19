@interface AKAuthorizationContainerViewControllerAnimator
- (AKAuthorizationContainerViewControllerAnimator)init;
- (AKAuthorizationContainerViewControllerAnimator)initWithPresenting:(BOOL)a3;
- (double)transitionDuration:(id)a3;
- (id)_viewControllerForTransitionContext:(id)a3;
- (void)animateTransition:(id)a3;
@end

@implementation AKAuthorizationContainerViewControllerAnimator

- (AKAuthorizationContainerViewControllerAnimator)init
{
  v4 = 0;
  v4 = [(AKAuthorizationContainerViewControllerAnimator *)self initWithPresenting:1];
  v3 = MEMORY[0x277D82BE0](v4);
  objc_storeStrong(&v4, 0);
  return v3;
}

- (AKAuthorizationContainerViewControllerAnimator)initWithPresenting:(BOOL)a3
{
  v7 = a2;
  v6 = a3;
  v8 = 0;
  v5.receiver = self;
  v5.super_class = AKAuthorizationContainerViewControllerAnimator;
  v8 = [(AKAuthorizationContainerViewControllerAnimator *)&v5 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    v8->_presenting = v6;
  }

  v4 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(&v8, 0);
  return v4;
}

- (id)_viewControllerForTransitionContext:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(AKAuthorizationContainerViewControllerAnimator *)v6 isPresenting])
  {
    v7 = [location[0] viewControllerForKey:*MEMORY[0x277D77240]];
  }

  else
  {
    v7 = [location[0] viewControllerForKey:*MEMORY[0x277D77230]];
  }

  objc_storeStrong(location, 0);
  v3 = v7;

  return v3;
}

- (void)animateTransition:(id)a3
{
  v34[4] = *MEMORY[0x277D85DE8];
  v33 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v31 = [(AKAuthorizationContainerViewControllerAnimator *)v33 _viewControllerForTransitionContext:location[0]];
  v30 = [v31 view];
  v29 = [location[0] containerView];
  [v29 addSubview:v30];
  [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = MEMORY[0x277CCAAD0];
  v16 = [v30 leadingAnchor];
  v15 = [v29 leadingAnchor];
  v14 = [v16 constraintEqualToAnchor:?];
  v34[0] = v14;
  v13 = [v30 trailingAnchor];
  v12 = [v29 trailingAnchor];
  v11 = [v13 constraintEqualToAnchor:?];
  v34[1] = v11;
  v10 = [v30 topAnchor];
  v9 = [v29 topAnchor];
  v8 = [v10 constraintEqualToAnchor:?];
  v34[2] = v8;
  v7 = [v30 bottomAnchor];
  v6 = [v29 bottomAnchor];
  v5 = [v7 constraintEqualToAnchor:?];
  v34[3] = v5;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
  [v3 activateConstraints:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  v17 = MEMORY[0x277D75D18];
  v23[1] = MEMORY[0x277D85DD0];
  v24 = -1073741824;
  v25 = 0;
  v26 = __68__AKAuthorizationContainerViewControllerAnimator_animateTransition___block_invoke;
  v27 = &unk_2784A5C90;
  v28 = MEMORY[0x277D82BE0](v30);
  [v17 performWithoutAnimation:?];
  v18 = MEMORY[0x277D75D18];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __68__AKAuthorizationContainerViewControllerAnimator_animateTransition___block_invoke_3;
  v22 = &unk_2784A62B8;
  v23[0] = MEMORY[0x277D82BE0](location[0]);
  [v18 _animateUsingDefaultTimingWithOptions:134 animations:&__block_literal_global_1 completion:?];
  objc_storeStrong(v23, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (double)transitionDuration:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 0.35;
}

@end