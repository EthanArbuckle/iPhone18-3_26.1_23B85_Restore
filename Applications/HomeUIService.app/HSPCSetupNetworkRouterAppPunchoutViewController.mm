@interface HSPCSetupNetworkRouterAppPunchoutViewController
- (HFSetupPairingPopupDelegate)popupDelegate;
- (HSPCSetupNetworkRouterAppPunchoutViewController)initWithPopupDelegate:(id)delegate setupAccessoryDescription:(id)description;
- (id)_lookUpSoftwareAndUpdateUI;
- (void)_cancelPressed:(id)pressed;
- (void)viewDidLoad;
@end

@implementation HSPCSetupNetworkRouterAppPunchoutViewController

- (HSPCSetupNetworkRouterAppPunchoutViewController)initWithPopupDelegate:(id)delegate setupAccessoryDescription:(id)description
{
  delegateCopy = delegate;
  descriptionCopy = description;
  v19.receiver = self;
  v19.super_class = HSPCSetupNetworkRouterAppPunchoutViewController;
  v8 = [(HSPCSetupNetworkRouterAppPunchoutViewController *)&v19 initWithContentView:0];
  if (v8)
  {
    v9 = HULocalizedWiFiString();
    [(HSPCSetupNetworkRouterAppPunchoutViewController *)v8 setTitle:v9];

    v10 = HULocalizedString();
    [(HSPCSetupNetworkRouterAppPunchoutViewController *)v8 setSubtitle:v10];

    objc_storeWeak(&v8->_popupDelegate, delegateCopy);
    objc_storeStrong(&v8->_setupAccessoryDescription, description);
    linkedApplicationItem = v8->_linkedApplicationItem;
    v8->_linkedApplicationItem = 0;

    if (delegateCopy)
    {
      [(HSPCSetupNetworkRouterAppPunchoutViewController *)v8 setDismissalType:1];
    }

    else
    {
      v12 = HULocalizedString();
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10002F724;
      v17[3] = &unk_1000C5CA0;
      v13 = v8;
      v18 = v13;
      v14 = [PRXAction actionWithTitle:v12 style:0 handler:v17];
      v15 = [(HSPCSetupNetworkRouterAppPunchoutViewController *)v13 addAction:v14];
    }
  }

  return v8;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = HSPCSetupNetworkRouterAppPunchoutViewController;
  [(HSPCSetupNetworkRouterAppPunchoutViewController *)&v4 viewDidLoad];
  _lookUpSoftwareAndUpdateUI = [(HSPCSetupNetworkRouterAppPunchoutViewController *)self _lookUpSoftwareAndUpdateUI];
}

- (id)_lookUpSoftwareAndUpdateUI
{
  setupAccessoryDescription = [(HSPCSetupNetworkRouterAppPunchoutViewController *)self setupAccessoryDescription];
  bundleID = [setupAccessoryDescription bundleID];

  setupAccessoryDescription2 = [(HSPCSetupNetworkRouterAppPunchoutViewController *)self setupAccessoryDescription];
  storeID = [setupAccessoryDescription2 storeID];

  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = bundleID;
    v23 = 2112;
    v24 = storeID;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Attempting to resolve linked application for bundleID %@ storeID %@", buf, 0x16u);
  }

  v8 = [[HUSoftwareLibraryLookupRequest alloc] initWithBundleID:bundleID storeID:storeID];
  v9 = [NSSet setWithObject:v8];
  v10 = [HUSoftwareLibraryLookupResult resultForRequests:v9];

  objc_initWeak(buf, self);
  v11 = +[NAScheduler mainThreadScheduler];
  v12 = [v10 reschedule:v11];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10002FA18;
  v17[3] = &unk_1000C5CF0;
  v17[4] = self;
  v13 = storeID;
  v18 = v13;
  v14 = bundleID;
  v19 = v14;
  objc_copyWeak(&v20, buf);
  v15 = [v12 flatMap:v17];
  objc_destroyWeak(&v20);

  objc_destroyWeak(buf);

  return v15;
}

- (void)_cancelPressed:(id)pressed
{
  popupDelegate = [(HSPCSetupNetworkRouterAppPunchoutViewController *)self popupDelegate];
  [popupDelegate pairingPopupDidCancel:self];
}

- (HFSetupPairingPopupDelegate)popupDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_popupDelegate);

  return WeakRetained;
}

@end