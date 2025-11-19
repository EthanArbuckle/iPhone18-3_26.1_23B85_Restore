@interface AKAuthorizationNavigationController
- (void)_updateStyleIfNeeded;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation AKAuthorizationNavigationController

- (void)viewDidLoad
{
  v27 = self;
  v26 = a2;
  v25.receiver = self;
  v25.super_class = AKAuthorizationNavigationController;
  [(AKAuthorizationNavigationController *)&v25 viewDidLoad];
  [(AKAuthorizationNavigationController *)v27 _setBuiltinTransitionStyle:1];
  v22 = [MEMORY[0x277CF0228] sharedManager];
  v23 = [v22 isAuthKitSolariumFeatureEnabled];
  *&v2 = MEMORY[0x277D82BD8](v22).n128_u64[0];
  if (!v23)
  {
    v24 = objc_alloc_init(MEMORY[0x277D755B8]);
    v20 = [(AKAuthorizationNavigationController *)v27 navigationBar];
    [v20 setBackgroundImage:v24 forBarMetrics:0];
    *&v3 = MEMORY[0x277D82BD8](v20).n128_u64[0];
    v21 = [(AKAuthorizationNavigationController *)v27 navigationBar];
    [v21 setTranslucent:1];
    MEMORY[0x277D82BD8](v21);
    objc_storeStrong(&v24, 0);
  }

  [(AKAuthorizationNavigationController *)v27 _updateStyleIfNeeded];
  v17 = [MEMORY[0x277D75348] clearColor];
  v16 = [(AKAuthorizationNavigationController *)v27 view];
  [v16 setBackgroundColor:v17];
  MEMORY[0x277D82BD8](v16);
  v18 = [MEMORY[0x277CF0228] sharedManager];
  v19 = [v18 isLisbonAvailable];
  *&v4 = MEMORY[0x277D82BD8](v18).n128_u64[0];
  if (v19)
  {
    +[AKAuthorizationPaneMetrics paneCornerRadius];
    v11 = v5;
    v13 = [(AKAuthorizationNavigationController *)v27 view];
    v12 = [v13 layer];
    [v12 setCornerRadius:v11];
    MEMORY[0x277D82BD8](v12);
    *&v6 = MEMORY[0x277D82BD8](v13).n128_u64[0];
    v15 = [(AKAuthorizationNavigationController *)v27 view];
    v14 = [v15 layer];
    [v14 setMaskedCorners:3];
    MEMORY[0x277D82BD8](v14);
    +[AKAuthorizationPaneMetrics paneAdditionSafeAreaInsets];
    [(AKAuthorizationNavigationController *)v27 setAdditionalSafeAreaInsets:v7, v8, v9, v10];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = AKAuthorizationNavigationController;
  [(AKAuthorizationNavigationController *)&v3 traitCollectionDidChange:location[0]];
  [(AKAuthorizationNavigationController *)v5 _updateStyleIfNeeded];
  objc_storeStrong(location, 0);
}

- (void)_updateStyleIfNeeded
{
  v31 = self;
  v30 = a2;
  v25 = [MEMORY[0x277CF0228] sharedManager];
  v26 = [v25 isAuthKitSolariumFeatureEnabled];
  *&v2 = MEMORY[0x277D82BD8](v25).n128_u64[0];
  if (!v26)
  {
    v23 = [(AKAuthorizationNavigationController *)v31 traitCollection];
    v24 = [v23 userInterfaceStyle];
    *&v3 = MEMORY[0x277D82BD8](v23).n128_u64[0];
    v29 = v24;
    if (v24 != v31->_currentStyle)
    {
      v31->_currentStyle = v29;
      [(_UIBackdropView *)v31->_backdropView removeFromSuperview];
      v21 = [MEMORY[0x277CF0228] sharedManager];
      v4 = [v21 isLisbonAvailable];
      v5 = 2020;
      if ((v4 & 1) == 0)
      {
        v5 = 2010;
      }

      v22 = v5;
      *&v6 = MEMORY[0x277D82BD8](v21).n128_u64[0];
      v28 = v22;
      if (v29 == 2)
      {
        v20 = 2030;
      }

      else
      {
        v20 = v28;
      }

      v27[1] = v20;
      v27[0] = [MEMORY[0x277D75DF0] settingsForPrivateStyle:{v20, v6}];
      v16 = +[AKAuthorizationAppearance paneBackgroundColor];
      [v27[0] setColorTint:?];
      MEMORY[0x277D82BD8](v16);
      v7 = objc_alloc(MEMORY[0x277D75DE8]);
      v8 = [v7 initWithFrame:v27[0] settings:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      backdropView = v31->_backdropView;
      v31->_backdropView = v8;
      *&v10 = MEMORY[0x277D82BD8](backdropView).n128_u64[0];
      v17 = v31->_backdropView;
      v18 = [(AKAuthorizationNavigationController *)v31 view];
      [v18 bounds];
      [(_UIBackdropView *)v17 setFrame:v11, v12, v13, v14];
      *&v15 = MEMORY[0x277D82BD8](v18).n128_u64[0];
      v19 = [(AKAuthorizationNavigationController *)v31 view];
      [v19 insertSubview:v31->_backdropView atIndex:0];
      MEMORY[0x277D82BD8](v19);
      objc_storeStrong(v27, 0);
    }
  }
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];
  MEMORY[0x277D82BD8](v3);
  if (v4 != 1)
  {
    [(AKAuthorizationNavigationController *)v7 setPreferredContentSize:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
    v5.receiver = v7;
    v5.super_class = AKAuthorizationNavigationController;
    [(AKAuthorizationNavigationController *)&v5 preferredContentSizeDidChangeForChildContentContainer:location[0]];
  }

  objc_storeStrong(location, 0);
}

@end