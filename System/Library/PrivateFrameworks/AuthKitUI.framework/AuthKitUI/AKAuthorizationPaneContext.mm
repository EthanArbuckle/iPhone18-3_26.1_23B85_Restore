@interface AKAuthorizationPaneContext
- (AKAuthorizationPaneContext)initWithPaneViewController:(id)controller stackView:(id)view;
- (AKAuthorizationPaneContext)initWithPaneViewController:(id)controller stackView:(id)view mutableConstraints:(id)constraints;
- (NSMutableArray)mutableConstraints;
- (void)addEmptyViewWithSpacing:(double)spacing;
- (void)addSubPane:(id)pane;
@end

@implementation AKAuthorizationPaneContext

- (AKAuthorizationPaneContext)initWithPaneViewController:(id)controller stackView:(id)view
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v9 = 0;
  objc_storeStrong(&v9, view);
  v4 = selfCopy;
  selfCopy = 0;
  v8.receiver = v4;
  v8.super_class = AKAuthorizationPaneContext;
  selfCopy = [(AKAuthorizationPaneContext *)&v8 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_paneViewController, location[0]);
    objc_storeStrong(&selfCopy->_stackView, v9);
  }

  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (AKAuthorizationPaneContext)initWithPaneViewController:(id)controller stackView:(id)view mutableConstraints:(id)constraints
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v11 = 0;
  objc_storeStrong(&v11, view);
  v10 = 0;
  objc_storeStrong(&v10, constraints);
  v5 = selfCopy;
  selfCopy = 0;
  selfCopy = [(AKAuthorizationPaneContext *)v5 initWithPaneViewController:location[0] stackView:v11];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_internalMutableConstraints, v10);
  }

  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (NSMutableArray)mutableConstraints
{
  internalMutableConstraints = [(AKAuthorizationPaneContext *)self internalMutableConstraints];
  v7 = 0;
  v5 = 0;
  if (internalMutableConstraints)
  {
    v2 = MEMORY[0x277D82BE0](internalMutableConstraints);
  }

  else
  {
    paneViewController = [(AKAuthorizationPaneContext *)self paneViewController];
    v7 = 1;
    mutableConstraints = [(AKAuthorizationPaneViewController *)paneViewController mutableConstraints];
    v5 = 1;
    v2 = MEMORY[0x277D82BE0](mutableConstraints);
  }

  v10 = v2;
  if (v5)
  {
    MEMORY[0x277D82BD8](mutableConstraints);
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](paneViewController);
  }

  MEMORY[0x277D82BD8](internalMutableConstraints);

  return v10;
}

- (void)addSubPane:(id)pane
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, pane);
  v4 = location[0];
  stackView = [(AKAuthorizationPaneContext *)selfCopy stackView];
  [v4 addToStackView:? context:?];
  *&v3 = MEMORY[0x277D82BD8](stackView).n128_u64[0];
  v6 = location[0];
  mutableConstraints = [(AKAuthorizationPaneContext *)selfCopy mutableConstraints];
  [v6 addToConstraints:? context:?];
  MEMORY[0x277D82BD8](mutableConstraints);
  objc_storeStrong(location, 0);
}

- (void)addEmptyViewWithSpacing:(double)spacing
{
  selfCopy = self;
  v8 = a2;
  spacingCopy = spacing;
  v6 = objc_alloc_init(MEMORY[0x277D75D18]);
  stackView = [(AKAuthorizationPaneContext *)selfCopy stackView];
  [(UIStackView *)stackView addArrangedSubview:v6];
  *&v3 = MEMORY[0x277D82BD8](stackView).n128_u64[0];
  stackView2 = [(AKAuthorizationPaneContext *)selfCopy stackView];
  [(UIStackView *)stackView2 setCustomSpacing:v6 afterView:spacingCopy];
  MEMORY[0x277D82BD8](stackView2);
  objc_storeStrong(&v6, 0);
}

@end