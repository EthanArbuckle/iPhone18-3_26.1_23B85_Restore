@interface AKAuthorizationSubPane
- (AKAuthorizationSubPane)initWithView:(id)view;
- (AKAuthorizationSubPane)initWithViewController:(id)controller;
- (UIView)view;
- (void)addToConstraints:(id)constraints context:(id)context;
- (void)addToStackView:(id)view context:(id)context;
- (void)setCustomSpacingAfter:(double)after;
@end

@implementation AKAuthorizationSubPane

- (AKAuthorizationSubPane)initWithViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = AKAuthorizationSubPane;
  selfCopy = [(AKAuthorizationSubPane *)&v6 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_viewController, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (AKAuthorizationSubPane)initWithView:(id)view
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = AKAuthorizationSubPane;
  selfCopy = [(AKAuthorizationSubPane *)&v6 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_internalView, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (UIView)view
{
  viewController = [(AKAuthorizationSubPane *)self viewController];
  v9 = 0;
  v7 = 0;
  v5 = 0;
  if (viewController)
  {
    viewController2 = [(AKAuthorizationSubPane *)self viewController];
    v9 = 1;
    view = [(UIViewController *)viewController2 view];
    v7 = 1;
    v2 = MEMORY[0x277D82BE0](view);
  }

  else
  {
    internalView = [(AKAuthorizationSubPane *)self internalView];
    v5 = 1;
    v2 = MEMORY[0x277D82BE0](internalView);
  }

  v12 = v2;
  if (v5)
  {
    MEMORY[0x277D82BD8](internalView);
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](view);
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](viewController2);
  }

  MEMORY[0x277D82BD8](viewController);

  return v12;
}

- (void)addToStackView:(id)view context:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v17 = 0;
  objc_storeStrong(&v17, context);
  viewController = [(AKAuthorizationSubPane *)selfCopy viewController];
  *&v4 = MEMORY[0x277D82BD8](viewController).n128_u64[0];
  if (viewController)
  {
    paneViewController = [v17 paneViewController];
    viewController2 = [(AKAuthorizationSubPane *)selfCopy viewController];
    [paneViewController addChildViewController:?];
    MEMORY[0x277D82BD8](viewController2);
    *&v5 = MEMORY[0x277D82BD8](paneViewController).n128_u64[0];
    v11 = location[0];
    view = [(AKAuthorizationSubPane *)selfCopy view];
    [v11 addArrangedSubview:?];
    *&v6 = MEMORY[0x277D82BD8](view).n128_u64[0];
    viewController3 = [(AKAuthorizationSubPane *)selfCopy viewController];
    paneViewController2 = [v17 paneViewController];
    [(UIViewController *)viewController3 didMoveToParentViewController:?];
    MEMORY[0x277D82BD8](paneViewController2);
    MEMORY[0x277D82BD8](viewController3);
  }

  else
  {
    v7 = location[0];
    view2 = [(AKAuthorizationSubPane *)selfCopy view];
    [v7 addArrangedSubview:?];
    MEMORY[0x277D82BD8](view2);
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)addToConstraints:(id)constraints context:(id)context
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, constraints);
  v5 = 0;
  objc_storeStrong(&v5, context);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)setCustomSpacingAfter:(double)after
{
  [(AKAuthorizationSubPane *)self setInternalCustomSpacingAfter:after];
  view = [(AKAuthorizationSubPane *)self view];
  superview = [(UIView *)view superview];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  MEMORY[0x277D82BD8](superview);
  *&v3 = MEMORY[0x277D82BD8](view).n128_u64[0];
  if (isKindOfClass)
  {
    view2 = [(AKAuthorizationSubPane *)self view];
    superview2 = [(UIView *)view2 superview];
    view3 = [(AKAuthorizationSubPane *)self view];
    [(UIView *)superview2 setCustomSpacing:after afterView:?];
    MEMORY[0x277D82BD8](view3);
    MEMORY[0x277D82BD8](superview2);
    MEMORY[0x277D82BD8](view2);
  }
}

@end