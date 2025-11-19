@interface HSPCRouterProtectionAutoViewController
- (BOOL)_hasNetworkCustomizableAccessories;
- (HSPCRouterProtectionAutoViewController)initWithCoordinator:(id)a3 configurationDelegate:(id)a4;
- (HUConfigurationViewControllerDelegate)delegate;
- (void)_updateNetworkProtection:(int64_t)a3 andFinishWithActionResult:(unint64_t)a4;
@end

@implementation HSPCRouterProtectionAutoViewController

- (HSPCRouterProtectionAutoViewController)initWithCoordinator:(id)a3 configurationDelegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [UIImageView alloc];
  v10 = HUImageNamed();
  v11 = [v9 initWithImage:v10];

  [v11 setContentMode:1];
  v12 = [v11 image];
  [v12 size];
  v14 = v13;
  v15 = [v11 image];
  [v15 size];
  v17 = v14 / v16;

  v39.receiver = self;
  v39.super_class = HSPCRouterProtectionAutoViewController;
  v18 = [(HSPCFixedSizeCenterContentViewController *)&v39 initWithCenterContentView:v11 size:160.0, v17 * 160.0];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_coordinator, a3);
    objc_storeWeak(&v19->_delegate, v8);
    v20 = HULocalizedString();
    [(HSPCRouterProtectionAutoViewController *)v19 setTitle:v20];

    v21 = HULocalizedString();
    [(HSPCRouterProtectionAutoViewController *)v19 setSubtitle:v21];

    v22 = +[NSURL hf_learnAboutNetworkProtectionURL];
    [(HSPCRouterProtectionAutoViewController *)v19 addLearnMoreButtonWithURL:v22];

    v23 = HULocalizedString();
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100045EEC;
    v37[3] = &unk_1000C5CA0;
    v24 = v19;
    v38 = v24;
    v25 = [PRXAction actionWithTitle:v23 style:0 handler:v37];
    v26 = [(HSPCRouterProtectionAutoViewController *)v24 addAction:v25];

    v27 = HULocalizedString();
    v32 = _NSConcreteStackBlock;
    v33 = 3221225472;
    v34 = sub_100045EFC;
    v35 = &unk_1000C5CA0;
    v28 = v24;
    v36 = v28;
    v29 = [PRXAction actionWithTitle:v27 style:1 handler:&v32];
    v30 = [(HSPCRouterProtectionAutoViewController *)v28 addAction:v29, v32, v33, v34, v35];
  }

  return v19;
}

- (BOOL)_hasNetworkCustomizableAccessories
{
  v2 = [(HSPCRouterProtectionAutoViewController *)self coordinator];
  v3 = [v2 activeTuple];
  v4 = [v3 configuration];
  v5 = [v4 home];

  v6 = [v5 accessoryProtectionGroups];
  if ([v6 count])
  {
    v7 = [v5 hf_isNetworkProtectionSupportedForAccessories];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_updateNetworkProtection:(int64_t)a3 andFinishWithActionResult:(unint64_t)a4
{
  v7 = [(HSPCRouterProtectionAutoViewController *)self coordinator];
  v8 = [v7 activeTuple];
  v9 = [v8 configuration];
  v10 = [v9 home];

  [(HSPCRouterProtectionAutoViewController *)self showActivityIndicatorWithStatus:&stru_1000C89F8];
  objc_initWeak(&location, self);
  v11 = [v10 hf_updateNetworkProtection:a3];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10004615C;
  v13[3] = &unk_1000C7600;
  objc_copyWeak(v14, &location);
  v14[1] = a4;
  v12 = [v11 addCompletionBlock:v13];

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end