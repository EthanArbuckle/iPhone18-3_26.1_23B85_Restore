@interface AKAuthorizationNavigationController
- (void)_updateStyleIfNeeded;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation AKAuthorizationNavigationController

- (void)viewDidLoad
{
  selfCopy = self;
  v26 = a2;
  v25.receiver = self;
  v25.super_class = AKAuthorizationNavigationController;
  [(AKAuthorizationNavigationController *)&v25 viewDidLoad];
  [(AKAuthorizationNavigationController *)selfCopy _setBuiltinTransitionStyle:1];
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
  *&v2 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if (!isAuthKitSolariumFeatureEnabled)
  {
    v24 = objc_alloc_init(MEMORY[0x277D755B8]);
    navigationBar = [(AKAuthorizationNavigationController *)selfCopy navigationBar];
    [navigationBar setBackgroundImage:v24 forBarMetrics:0];
    *&v3 = MEMORY[0x277D82BD8](navigationBar).n128_u64[0];
    navigationBar2 = [(AKAuthorizationNavigationController *)selfCopy navigationBar];
    [navigationBar2 setTranslucent:1];
    MEMORY[0x277D82BD8](navigationBar2);
    objc_storeStrong(&v24, 0);
  }

  [(AKAuthorizationNavigationController *)selfCopy _updateStyleIfNeeded];
  clearColor = [MEMORY[0x277D75348] clearColor];
  view = [(AKAuthorizationNavigationController *)selfCopy view];
  [view setBackgroundColor:clearColor];
  MEMORY[0x277D82BD8](view);
  mEMORY[0x277CF0228]2 = [MEMORY[0x277CF0228] sharedManager];
  isLisbonAvailable = [mEMORY[0x277CF0228]2 isLisbonAvailable];
  *&v4 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]2).n128_u64[0];
  if (isLisbonAvailable)
  {
    +[AKAuthorizationPaneMetrics paneCornerRadius];
    v11 = v5;
    view2 = [(AKAuthorizationNavigationController *)selfCopy view];
    layer = [view2 layer];
    [layer setCornerRadius:v11];
    MEMORY[0x277D82BD8](layer);
    *&v6 = MEMORY[0x277D82BD8](view2).n128_u64[0];
    view3 = [(AKAuthorizationNavigationController *)selfCopy view];
    layer2 = [view3 layer];
    [layer2 setMaskedCorners:3];
    MEMORY[0x277D82BD8](layer2);
    +[AKAuthorizationPaneMetrics paneAdditionSafeAreaInsets];
    [(AKAuthorizationNavigationController *)selfCopy setAdditionalSafeAreaInsets:v7, v8, v9, v10];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v3.receiver = selfCopy;
  v3.super_class = AKAuthorizationNavigationController;
  [(AKAuthorizationNavigationController *)&v3 traitCollectionDidChange:location[0]];
  [(AKAuthorizationNavigationController *)selfCopy _updateStyleIfNeeded];
  objc_storeStrong(location, 0);
}

- (void)_updateStyleIfNeeded
{
  selfCopy = self;
  v30 = a2;
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
  *&v2 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if (!isAuthKitSolariumFeatureEnabled)
  {
    traitCollection = [(AKAuthorizationNavigationController *)selfCopy traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];
    *&v3 = MEMORY[0x277D82BD8](traitCollection).n128_u64[0];
    v29 = userInterfaceStyle;
    if (userInterfaceStyle != selfCopy->_currentStyle)
    {
      selfCopy->_currentStyle = v29;
      [(_UIBackdropView *)selfCopy->_backdropView removeFromSuperview];
      mEMORY[0x277CF0228]2 = [MEMORY[0x277CF0228] sharedManager];
      isLisbonAvailable = [mEMORY[0x277CF0228]2 isLisbonAvailable];
      v5 = 2020;
      if ((isLisbonAvailable & 1) == 0)
      {
        v5 = 2010;
      }

      v22 = v5;
      *&v6 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]2).n128_u64[0];
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
      backdropView = selfCopy->_backdropView;
      selfCopy->_backdropView = v8;
      *&v10 = MEMORY[0x277D82BD8](backdropView).n128_u64[0];
      v17 = selfCopy->_backdropView;
      view = [(AKAuthorizationNavigationController *)selfCopy view];
      [view bounds];
      [(_UIBackdropView *)v17 setFrame:v11, v12, v13, v14];
      *&v15 = MEMORY[0x277D82BD8](view).n128_u64[0];
      view2 = [(AKAuthorizationNavigationController *)selfCopy view];
      [view2 insertSubview:selfCopy->_backdropView atIndex:0];
      MEMORY[0x277D82BD8](view2);
      objc_storeStrong(v27, 0);
    }
  }
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, container);
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];
  MEMORY[0x277D82BD8](currentDevice);
  if (userInterfaceIdiom != 1)
  {
    [(AKAuthorizationNavigationController *)selfCopy setPreferredContentSize:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
    v5.receiver = selfCopy;
    v5.super_class = AKAuthorizationNavigationController;
    [(AKAuthorizationNavigationController *)&v5 preferredContentSizeDidChangeForChildContentContainer:location[0]];
  }

  objc_storeStrong(location, 0);
}

@end