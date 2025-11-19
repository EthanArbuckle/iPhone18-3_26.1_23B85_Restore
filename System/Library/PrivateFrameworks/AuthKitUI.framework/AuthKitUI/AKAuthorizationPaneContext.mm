@interface AKAuthorizationPaneContext
- (AKAuthorizationPaneContext)initWithPaneViewController:(id)a3 stackView:(id)a4;
- (AKAuthorizationPaneContext)initWithPaneViewController:(id)a3 stackView:(id)a4 mutableConstraints:(id)a5;
- (NSMutableArray)mutableConstraints;
- (void)addEmptyViewWithSpacing:(double)a3;
- (void)addSubPane:(id)a3;
@end

@implementation AKAuthorizationPaneContext

- (AKAuthorizationPaneContext)initWithPaneViewController:(id)a3 stackView:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v4 = v11;
  v11 = 0;
  v8.receiver = v4;
  v8.super_class = AKAuthorizationPaneContext;
  v11 = [(AKAuthorizationPaneContext *)&v8 init];
  objc_storeStrong(&v11, v11);
  if (v11)
  {
    objc_storeStrong(&v11->_paneViewController, location[0]);
    objc_storeStrong(&v11->_stackView, v9);
  }

  v6 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v6;
}

- (AKAuthorizationPaneContext)initWithPaneViewController:(id)a3 stackView:(id)a4 mutableConstraints:(id)a5
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = 0;
  objc_storeStrong(&v10, a5);
  v5 = v13;
  v13 = 0;
  v13 = [(AKAuthorizationPaneContext *)v5 initWithPaneViewController:location[0] stackView:v11];
  objc_storeStrong(&v13, v13);
  if (v13)
  {
    objc_storeStrong(&v13->_internalMutableConstraints, v10);
  }

  v7 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v13, 0);
  return v7;
}

- (NSMutableArray)mutableConstraints
{
  v4 = [(AKAuthorizationPaneContext *)self internalMutableConstraints];
  v7 = 0;
  v5 = 0;
  if (v4)
  {
    v2 = MEMORY[0x277D82BE0](v4);
  }

  else
  {
    v8 = [(AKAuthorizationPaneContext *)self paneViewController];
    v7 = 1;
    v6 = [(AKAuthorizationPaneViewController *)v8 mutableConstraints];
    v5 = 1;
    v2 = MEMORY[0x277D82BE0](v6);
  }

  v10 = v2;
  if (v5)
  {
    MEMORY[0x277D82BD8](v6);
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  MEMORY[0x277D82BD8](v4);

  return v10;
}

- (void)addSubPane:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = location[0];
  v5 = [(AKAuthorizationPaneContext *)v9 stackView];
  [v4 addToStackView:? context:?];
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  v6 = location[0];
  v7 = [(AKAuthorizationPaneContext *)v9 mutableConstraints];
  [v6 addToConstraints:? context:?];
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(location, 0);
}

- (void)addEmptyViewWithSpacing:(double)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v6 = objc_alloc_init(MEMORY[0x277D75D18]);
  v4 = [(AKAuthorizationPaneContext *)v9 stackView];
  [(UIStackView *)v4 addArrangedSubview:v6];
  *&v3 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  v5 = [(AKAuthorizationPaneContext *)v9 stackView];
  [(UIStackView *)v5 setCustomSpacing:v6 afterView:v7];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v6, 0);
}

@end