@interface PHCallBlockingAndIdentificationSettingsBundleController
- (BOOL)isHidden;
- (BOOL)shouldInsert;
- (PHCallBlockingAndIdentificationSettingsBundleController)initWithParentListController:(id)controller;
- (PSListController)parentListController;
- (id)specifiersWithSpecifier:(id)specifier;
- (void)_updateExtensions;
- (void)didChangeServiceProvidersForCallBlockingServiceProviderController:(id)controller;
- (void)extensionsChangedForCallDirectoryExtensionManager:(id)manager;
- (void)updateParentListController;
@end

@implementation PHCallBlockingAndIdentificationSettingsBundleController

- (PHCallBlockingAndIdentificationSettingsBundleController)initWithParentListController:(id)controller
{
  v15.receiver = self;
  v15.super_class = PHCallBlockingAndIdentificationSettingsBundleController;
  v3 = [(PHCallBlockingAndIdentificationSettingsBundleController *)&v15 initWithParentListController:controller];
  if (v3)
  {
    v4 = objc_alloc_init(CXCallDirectoryExtensionManager);
    extensionManager = v3->_extensionManager;
    v3->_extensionManager = v4;

    [(CXCallDirectoryExtensionManager *)v3->_extensionManager setDelegate:v3 queue:0];
    [(CXCallDirectoryExtensionManager *)v3->_extensionManager beginObservingExtensions];
    [(PHCallBlockingAndIdentificationSettingsBundleController *)v3 _updateExtensions];
    v6 = objc_alloc_init(PHCallBlockingServiceProviderController);
    serviceProviderController = v3->_serviceProviderController;
    v3->_serviceProviderController = v6;

    [(PHCallBlockingServiceProviderController *)v3->_serviceProviderController setDelegate:v3];
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v9 = dispatch_queue_create("PHCallDirectorySettingsListControllerQueue", v8);
    v10 = [PHBusinessCallingController alloc];
    v11 = [[CoreTelephonyClient alloc] initWithQueue:v9];
    v12 = [v10 initWithCoreTelephonyClient:v11];
    businessCallingController = v3->_businessCallingController;
    v3->_businessCallingController = v12;
  }

  return v3;
}

- (id)specifiersWithSpecifier:(id)specifier
{
  callDirectorySpecifier = [(PHCallBlockingAndIdentificationSettingsBundleController *)self callDirectorySpecifier];

  if (!callDirectorySpecifier)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"CALL_DIRECTORY_NAV_TITLE" value:&stru_42C0 table:@"CallDirectorySettings"];
    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v7 setIdentifier:@"CALL_DIRECTORIES"];
    [(PHCallBlockingAndIdentificationSettingsBundleController *)self setCallDirectorySpecifier:v7];
  }

  if ([(PHCallBlockingAndIdentificationSettingsBundleController *)self isHidden])
  {
    v8 = 0;
  }

  else
  {
    callDirectorySpecifier2 = [(PHCallBlockingAndIdentificationSettingsBundleController *)self callDirectorySpecifier];
    v8 = [NSArray arrayWithObject:callDirectorySpecifier2];
  }

  v10 = [v8 copy];

  return v10;
}

- (BOOL)isHidden
{
  extensions = [(PHCallBlockingAndIdentificationSettingsBundleController *)self extensions];
  v4 = [extensions count];

  serviceProviderController = [(PHCallBlockingAndIdentificationSettingsBundleController *)self serviceProviderController];
  serviceProvidersSupportingSpamBlocking = [serviceProviderController serviceProvidersSupportingSpamBlocking];
  v7 = [serviceProvidersSupportingSpamBlocking count];

  businessCallingController = [(PHCallBlockingAndIdentificationSettingsBundleController *)self businessCallingController];
  specifiers = [businessCallingController specifiers];
  v10 = [specifiers count];

  llextensions = [(PHCallBlockingAndIdentificationSettingsBundleController *)self llextensions];
  v12 = [llextensions count];

  v13 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v13 userInterfaceIdiom];

  v15 = CallDirectoryLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 134219008;
    v18 = v4;
    v19 = 2048;
    v20 = v7;
    v21 = 2048;
    v22 = v10;
    v23 = 2048;
    v24 = v12;
    v25 = 1024;
    v26 = userInterfaceIdiom == &dword_0 + 1;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "shouldShow extensions=%ld service providers=%ld business calling specifiers=%ld liveLookupExtensionsCount=%ld deviceIsPad==%d", &v17, 0x30u);
  }

  return userInterfaceIdiom == &dword_0 + 1 || (v4 | v7 | v10 | v12) == 0;
}

- (void)_updateExtensions
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  extensionManager = [(PHCallBlockingAndIdentificationSettingsBundleController *)self extensionManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_12EC;
  v4[3] = &unk_4200;
  v4[4] = self;
  [extensionManager extensionsWithCompletionHandler:v4];
}

- (PSListController)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);

  return WeakRetained;
}

- (void)extensionsChangedForCallDirectoryExtensionManager:(id)manager
{
  v4 = CallDirectoryLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Call directory extensions have changed", v5, 2u);
  }

  [(PHCallBlockingAndIdentificationSettingsBundleController *)self _updateExtensions];
}

- (void)didChangeServiceProvidersForCallBlockingServiceProviderController:(id)controller
{
  v4 = CallDirectoryLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Call blocking service providers have changed", v5, 2u);
  }

  [(PHCallBlockingAndIdentificationSettingsBundleController *)self updateParentListController];
}

- (BOOL)shouldInsert
{
  parentListController = [(PHCallBlockingAndIdentificationSettingsBundleController *)self parentListController];
  parentListController2 = [(PHCallBlockingAndIdentificationSettingsBundleController *)self parentListController];
  specifierID = [parentListController2 specifierID];

  v6 = [parentListController specifierForID:@"CALL_DIRECTORIES"];

  if (!v6)
  {
    if ([specifierID isEqualToString:@"com.apple.preferences.phone"])
    {
      LOBYTE(v7) = 1;
      goto LABEL_7;
    }

    if ([specifierID isEqualToString:@"com.apple.preferences.facetime"])
    {
      v7 = +[TUCallCapabilities supportsPrimaryCalling]^ 1;
      goto LABEL_7;
    }
  }

  LOBYTE(v7) = 0;
LABEL_7:

  return v7;
}

- (void)updateParentListController
{
  parentListController = [(PHCallBlockingAndIdentificationSettingsBundleController *)self parentListController];
  [parentListController beginUpdates];
  if ([(PHCallBlockingAndIdentificationSettingsBundleController *)self isHidden])
  {
    [parentListController removeSpecifierID:@"CALL_DIRECTORIES"];
  }

  else if ([(PHCallBlockingAndIdentificationSettingsBundleController *)self shouldInsert])
  {
    callDirectorySpecifier = [(PHCallBlockingAndIdentificationSettingsBundleController *)self callDirectorySpecifier];
    [parentListController insertSpecifier:callDirectorySpecifier afterSpecifierID:@"FILTER_SPAM"];
  }

  [parentListController endUpdates];
}

@end