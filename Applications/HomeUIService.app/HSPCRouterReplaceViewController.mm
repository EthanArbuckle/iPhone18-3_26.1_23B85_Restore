@interface HSPCRouterReplaceViewController
- (HSPCRouterReplaceViewController)initWithCoordinator:(id)coordinator;
@end

@implementation HSPCRouterReplaceViewController

- (HSPCRouterReplaceViewController)initWithCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v6 = [[HUIconView alloc] initWithFrame:1 contentMode:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v6 setIconSize:5];
  activeTuple = [coordinatorCopy activeTuple];
  accessoryCategoryOrPrimaryServiceType = [activeTuple accessoryCategoryOrPrimaryServiceType];
  v9 = [HFServiceIconFactory iconDescriptorForAccessoryCategoryOrServiceType:accessoryCategoryOrPrimaryServiceType];

  [v6 updateWithIconDescriptor:v9 displayStyle:1 animated:1];
  v34.receiver = self;
  v34.super_class = HSPCRouterReplaceViewController;
  v10 = [(HSPCFixedSizeCenterContentViewController *)&v34 initWithCenterContentView:v6];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_coordinator, coordinator);
    v12 = HULocalizedWiFiString();
    [(HSPCRouterReplaceViewController *)v11 setTitle:v12];

    v13 = HULocalizedString();
    [(HSPCRouterReplaceViewController *)v11 setSubtitle:v13];

    activeTuple2 = [coordinatorCopy activeTuple];
    configuration = [activeTuple2 configuration];
    home = [configuration home];

    setupAccessoryDescription = [coordinatorCopy setupAccessoryDescription];
    v18 = HULocalizedString();
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100006CC0;
    v30[3] = &unk_1000C57B8;
    v19 = home;
    v31 = v19;
    v20 = setupAccessoryDescription;
    v32 = v20;
    v21 = v11;
    v33 = v21;
    v22 = [PRXAction actionWithTitle:v18 style:0 handler:v30];
    v23 = [(HSPCRouterReplaceViewController *)v21 addAction:v22];

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100006D2C;
    v27[3] = &unk_1000C57E0;
    v28 = v19;
    v29 = v20;
    v24 = v20;
    v25 = v19;
    [(HSPCRouterReplaceViewController *)v21 addDismissButtonWithCoordinator:coordinatorCopy dismissAfterExecuting:v27];
  }

  return v11;
}

@end