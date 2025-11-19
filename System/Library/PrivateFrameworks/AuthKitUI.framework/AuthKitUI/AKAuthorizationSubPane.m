@interface AKAuthorizationSubPane
- (AKAuthorizationSubPane)initWithView:(id)a3;
- (AKAuthorizationSubPane)initWithViewController:(id)a3;
- (UIView)view;
- (void)addToConstraints:(id)a3 context:(id)a4;
- (void)addToStackView:(id)a3 context:(id)a4;
- (void)setCustomSpacingAfter:(double)a3;
@end

@implementation AKAuthorizationSubPane

- (AKAuthorizationSubPane)initWithViewController:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = AKAuthorizationSubPane;
  v8 = [(AKAuthorizationSubPane *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    objc_storeStrong(&v8->_viewController, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (AKAuthorizationSubPane)initWithView:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = AKAuthorizationSubPane;
  v8 = [(AKAuthorizationSubPane *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    objc_storeStrong(&v8->_internalView, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (UIView)view
{
  v4 = [(AKAuthorizationSubPane *)self viewController];
  v9 = 0;
  v7 = 0;
  v5 = 0;
  if (v4)
  {
    v10 = [(AKAuthorizationSubPane *)self viewController];
    v9 = 1;
    v8 = [(UIViewController *)v10 view];
    v7 = 1;
    v2 = MEMORY[0x277D82BE0](v8);
  }

  else
  {
    v6 = [(AKAuthorizationSubPane *)self internalView];
    v5 = 1;
    v2 = MEMORY[0x277D82BE0](v6);
  }

  v12 = v2;
  if (v5)
  {
    MEMORY[0x277D82BD8](v6);
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](v10);
  }

  MEMORY[0x277D82BD8](v4);

  return v12;
}

- (void)addToStackView:(id)a3 context:(id)a4
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16 = [(AKAuthorizationSubPane *)v19 viewController];
  *&v4 = MEMORY[0x277D82BD8](v16).n128_u64[0];
  if (v16)
  {
    v10 = [v17 paneViewController];
    v9 = [(AKAuthorizationSubPane *)v19 viewController];
    [v10 addChildViewController:?];
    MEMORY[0x277D82BD8](v9);
    *&v5 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    v11 = location[0];
    v12 = [(AKAuthorizationSubPane *)v19 view];
    [v11 addArrangedSubview:?];
    *&v6 = MEMORY[0x277D82BD8](v12).n128_u64[0];
    v14 = [(AKAuthorizationSubPane *)v19 viewController];
    v13 = [v17 paneViewController];
    [(UIViewController *)v14 didMoveToParentViewController:?];
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
  }

  else
  {
    v7 = location[0];
    v8 = [(AKAuthorizationSubPane *)v19 view];
    [v7 addArrangedSubview:?];
    MEMORY[0x277D82BD8](v8);
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)addToConstraints:(id)a3 context:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)setCustomSpacingAfter:(double)a3
{
  [(AKAuthorizationSubPane *)self setInternalCustomSpacingAfter:a3];
  v8 = [(AKAuthorizationSubPane *)self view];
  v7 = [(UIView *)v8 superview];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  MEMORY[0x277D82BD8](v7);
  *&v3 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  if (isKindOfClass)
  {
    v6 = [(AKAuthorizationSubPane *)self view];
    v5 = [(UIView *)v6 superview];
    v4 = [(AKAuthorizationSubPane *)self view];
    [(UIView *)v5 setCustomSpacing:a3 afterView:?];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
  }
}

@end