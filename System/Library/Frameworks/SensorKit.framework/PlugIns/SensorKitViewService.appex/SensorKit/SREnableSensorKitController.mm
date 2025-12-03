@interface SREnableSensorKitController
+ (void)initialize;
- (void)cancelPrompt;
- (void)dealloc;
- (void)openSettings:(id)settings;
- (void)postFollowUpWithCompletionHandler:(id)handler;
- (void)prerequesiteNotificationReceived;
- (void)registerForPrerequisitesUpdated;
- (void)unregisterForPrerequisitesUpdated;
- (void)viewDidLoad;
@end

@implementation SREnableSensorKitController

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_100015F28 = os_log_create("com.apple.SensorKit", "SREnableSensorKitController");
  }
}

- (void)dealloc
{
  [(SREnableSensorKitController *)self unregisterForPrerequisitesUpdated];

  [(SREnableSensorKitController *)self setAuthStore:0];
  v3.receiver = self;
  v3.super_class = SREnableSensorKitController;
  [(SREnableSensorKitController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = SREnableSensorKitController;
  [(SREnableSensorKitController *)&v4 viewDidLoad];
  [-[SREnableSensorKitController navigationItem](self "navigationItem")];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100003034;
  v3[3] = &unk_100010458;
  v3[4] = self;
  [(SREnableSensorKitController *)self postFollowUpWithCompletionHandler:v3];
}

- (void)postFollowUpWithCompletionHandler:(id)handler
{
  v5 = objc_alloc_init(FLFollowUpItem);
  [v5 setUniqueIdentifier:SRFollowUpEnableSKIdentifier];
  [v5 setGroupIdentifier:FLGroupIdentifierDevice];
  [v5 setTargetBundleIdentifier:FLFollowUpPreferencesBundleIdentifier];
  [v5 setTitle:{+[NSString srui_localizedStringForCode:](NSString, "srui_localizedStringForCode:", 68)}];
  [v5 setInformativeText:{+[NSString srui_localizedStringForCode:](NSString, "srui_localizedStringForCode:", 69)}];
  v13 = @"bundlePath";
  bundlePath = [(NSBundle *)[(SREnableSensorKitController *)self appBundle] bundlePath];
  [v5 setUserInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &bundlePath, &v13, 1)}];
  v6 = qword_100015F28;
  if (os_log_type_enabled(qword_100015F28, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    bundlePath2 = [(NSBundle *)[(SREnableSensorKitController *)self appBundle] bundlePath];
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Posting follow up for bundle path %{public}@", buf, 0xCu);
  }

  v10 = [FLFollowUpAction actionWithLabel:[NSString srui_localizedStringForCode:70] url:sub_100001474()];
  [v5 setActions:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v10, 1)}];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003388;
  v7[3] = &unk_100010480;
  v8 = objc_alloc_init(SRFollowUp);
  handlerCopy = handler;
  [v8 postFollowUpItem:v5 completion:v7];
}

- (void)openSettings:(id)settings
{
  [(SREnableSensorKitController *)self registerForPrerequisitesUpdated];
  v5 = 0;
  [+[LSApplicationWorkspace defaultWorkspace](LSApplicationWorkspace "defaultWorkspace")];
  v3 = v5;
  if (v5)
  {
    v4 = qword_100015F28;
    if (os_log_type_enabled(qword_100015F28, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v7 = v3;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Failed to open settings because %{public}@", buf, 0xCu);
    }
  }
}

- (void)cancelPrompt
{
  delegate = [(SREnableSensorKitController *)self delegate];
  [(SRAuthorizationTableDelegate *)delegate authorizationTable:0 foundIssueWithApp:[NSError errorWithDomain:SRErrorDomain code:8196 userInfo:0]];

  [(SRAuthorizationTableDelegate *)delegate authorizationTableCompletedPromptSuccessfully:0];
}

- (void)registerForPrerequisitesUpdated
{
  v3 = qword_100015F28;
  if (os_log_type_enabled(qword_100015F28, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Registering for prerequisites notification", buf, 2u);
  }

  objc_initWeak(&location, self);
  self->_registrationToken = -1;
  uTF8String = [SRNotificationPreqUpdated UTF8String];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000037EC;
  v8[3] = &unk_1000104A8;
  objc_copyWeak(&v9, &location);
  v5 = notify_register_dispatch(uTF8String, &self->_registrationToken, &_dispatch_main_q, v8);
  if (v5 || self->_registrationToken == -1)
  {
    v6 = qword_100015F28;
    if (os_log_type_enabled(qword_100015F28, OS_LOG_TYPE_ERROR))
    {
      registrationToken = self->_registrationToken;
      *buf = 67240448;
      v12 = v5;
      v13 = 1026;
      v14 = registrationToken;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to register for prerequisites notification status %{public}d, registration token %{public}d", buf, 0xEu);
    }
  }

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)prerequesiteNotificationReceived
{
  dataCollectionEnabled = [+[SRAuthorizationClient sharedInstance](SRAuthorizationClient dataCollectionEnabled];
  skEnabled = self->_skEnabled;
  self->_skEnabled = dataCollectionEnabled;
  v5 = qword_100015F28;
  if (os_log_type_enabled(qword_100015F28, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67240192;
    v7[1] = dataCollectionEnabled;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Got prerequisite notification. Data Collection Enabled: %{public, BOOL}d", v7, 8u);
  }

  if (dataCollectionEnabled)
  {
    [(SREnableSensorKitController *)self unregisterForPrerequisitesUpdated];
    if (self->_skEnabled != skEnabled)
    {
      v6 = [[SRAuthorizationTable alloc] initWithServices:[(SREnableSensorKitController *)self services] appBundle:[(SREnableSensorKitController *)self appBundle] authStore:[(SREnableSensorKitController *)self authStore] migrationMode:[(SREnableSensorKitController *)self migrationMode]];
      [(SRAuthorizationTable *)v6 setDelegate:[(SREnableSensorKitController *)self delegate]];
      [-[SRAuthorizationTable navigationItem](v6 "navigationItem")];
      [-[SREnableSensorKitController navigationController](self "navigationController")];
    }
  }
}

- (void)unregisterForPrerequisitesUpdated
{
  registrationToken = self->_registrationToken;
  if (registrationToken != -1)
  {
    v4 = qword_100015F28;
    if (os_log_type_enabled(qword_100015F28, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v7[0]) = 0;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Unregistering for prerequisites notification", v7, 2u);
      registrationToken = self->_registrationToken;
    }

    if (notify_cancel(registrationToken))
    {
      v5 = qword_100015F28;
      if (os_log_type_enabled(qword_100015F28, OS_LOG_TYPE_ERROR))
      {
        v6 = self->_registrationToken;
        v7[0] = 67240192;
        v7[1] = v6;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to cancel notification status %{public}d", v7, 8u);
      }
    }

    self->_registrationToken = -1;
  }
}

@end