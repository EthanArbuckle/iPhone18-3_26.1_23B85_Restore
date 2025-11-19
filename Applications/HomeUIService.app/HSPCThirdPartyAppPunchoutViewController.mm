@interface HSPCThirdPartyAppPunchoutViewController
- (HSPCThirdPartyAppPunchoutViewController)initWithSetupAccessoryDescription:(id)a3;
- (id)_lookUpSoftwareAndUpdateUI;
- (void)viewDidLoad;
@end

@implementation HSPCThirdPartyAppPunchoutViewController

- (HSPCThirdPartyAppPunchoutViewController)initWithSetupAccessoryDescription:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HSPCThirdPartyAppPunchoutViewController;
  v6 = [(HSPCThirdPartyAppPunchoutViewController *)&v11 initWithContentView:0];
  if (v6)
  {
    v7 = HFLocalizedString();
    [(HSPCThirdPartyAppPunchoutViewController *)v6 setTitle:v7];

    v8 = HFLocalizedString();
    [(HSPCThirdPartyAppPunchoutViewController *)v6 setSubtitle:v8];

    objc_storeStrong(&v6->_setupAccessoryDescription, a3);
    linkedApplicationItem = v6->_linkedApplicationItem;
    v6->_linkedApplicationItem = 0;

    [(HSPCThirdPartyAppPunchoutViewController *)v6 setDismissalType:1];
  }

  return v6;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = HSPCThirdPartyAppPunchoutViewController;
  [(HSPCThirdPartyAppPunchoutViewController *)&v4 viewDidLoad];
  v3 = [(HSPCThirdPartyAppPunchoutViewController *)self _lookUpSoftwareAndUpdateUI];
}

- (id)_lookUpSoftwareAndUpdateUI
{
  v3 = [(HSPCThirdPartyAppPunchoutViewController *)self setupAccessoryDescription];
  v4 = [v3 bundleID];

  v5 = [(HSPCThirdPartyAppPunchoutViewController *)self setupAccessoryDescription];
  v6 = [v5 storeID];

  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = v4;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Attempting to resolve linked application for bundleID %@ storeID %@", buf, 0x16u);
  }

  v8 = [[HUSoftwareLibraryLookupRequest alloc] initWithBundleID:v4 storeID:v6];
  v9 = [NSSet setWithObject:v8];
  v10 = [HUSoftwareLibraryLookupResult resultForRequests:v9];

  objc_initWeak(buf, self);
  v11 = +[NAScheduler mainThreadScheduler];
  v12 = [v10 reschedule:v11];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100010144;
  v17[3] = &unk_1000C5CF0;
  v17[4] = self;
  v13 = v6;
  v18 = v13;
  v14 = v4;
  v19 = v14;
  objc_copyWeak(&v20, buf);
  v15 = [v12 flatMap:v17];
  objc_destroyWeak(&v20);

  objc_destroyWeak(buf);

  return v15;
}

@end