@interface AKAuthorizationContainerViewControllerAnimator
- (AKAuthorizationContainerViewControllerAnimator)init;
- (AKAuthorizationContainerViewControllerAnimator)initWithPresenting:(BOOL)presenting;
- (double)transitionDuration:(id)duration;
- (id)_viewControllerForTransitionContext:(id)context;
- (void)animateTransition:(id)transition;
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

- (AKAuthorizationContainerViewControllerAnimator)initWithPresenting:(BOOL)presenting
{
  v7 = a2;
  presentingCopy = presenting;
  v8 = 0;
  v5.receiver = self;
  v5.super_class = AKAuthorizationContainerViewControllerAnimator;
  v8 = [(AKAuthorizationContainerViewControllerAnimator *)&v5 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    v8->_presenting = presentingCopy;
  }

  v4 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(&v8, 0);
  return v4;
}

- (id)_viewControllerForTransitionContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  if ([(AKAuthorizationContainerViewControllerAnimator *)selfCopy isPresenting])
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

- (void)animateTransition:(id)transition
{
  v34[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, transition);
  v31 = [(AKAuthorizationContainerViewControllerAnimator *)selfCopy _viewControllerForTransitionContext:location[0]];
  view = [v31 view];
  containerView = [location[0] containerView];
  [containerView addSubview:view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = MEMORY[0x277CCAAD0];
  leadingAnchor = [view leadingAnchor];
  leadingAnchor2 = [containerView leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:?];
  v34[0] = v14;
  trailingAnchor = [view trailingAnchor];
  trailingAnchor2 = [containerView trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:?];
  v34[1] = v11;
  topAnchor = [view topAnchor];
  topAnchor2 = [containerView topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:?];
  v34[2] = v8;
  bottomAnchor = [view bottomAnchor];
  bottomAnchor2 = [containerView bottomAnchor];
  v5 = [bottomAnchor constraintEqualToAnchor:?];
  v34[3] = v5;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
  [v3 activateConstraints:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](topAnchor);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](trailingAnchor2);
  MEMORY[0x277D82BD8](trailingAnchor);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](leadingAnchor2);
  MEMORY[0x277D82BD8](leadingAnchor);
  v17 = MEMORY[0x277D75D18];
  v23[1] = MEMORY[0x277D85DD0];
  v24 = -1073741824;
  v25 = 0;
  v26 = __68__AKAuthorizationContainerViewControllerAnimator_animateTransition___block_invoke;
  v27 = &unk_2784A5C90;
  v28 = MEMORY[0x277D82BE0](view);
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
  objc_storeStrong(&containerView, 0);
  objc_storeStrong(&view, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (double)transitionDuration:(id)duration
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, duration);
  objc_storeStrong(location, 0);
  return 0.35;
}

@end