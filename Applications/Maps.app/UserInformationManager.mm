@interface UserInformationManager
+ (id)sharedInstance;
- (AAUIProfilePictureStore)profilePictureStore;
- (BOOL)loggedIn;
- (GEOObserverHashTable)observers;
- (NSPersonNameComponentsFormatter)nameFormatter;
- (NSString)userEmail;
- (NSString)userGivenName;
- (NSString)userName;
- (UIImage)loggedOutIcon;
- (UserInformationManager)init;
- (id)userIconAllowingFallback:(BOOL)fallback;
- (void)_handleProfilePictureStoreDidChangeNotification:(id)notification;
- (void)_retrieveUserProfilePicture;
- (void)_retrieveUserProfilePictureWithImageCreationCompletion:(id)completion;
- (void)_throttledProfilePictureTimerUpdate:(id)update;
- (void)_updateAndNotifyObservers:(BOOL)observers;
- (void)dealloc;
- (void)retrieveAddressForLocationWithCompletion:(id)completion;
@end

@implementation UserInformationManager

+ (id)sharedInstance
{
  if (qword_10195E5B8 != -1)
  {
    dispatch_once(&qword_10195E5B8, &stru_1016378D0);
  }

  v3 = qword_10195E5B0;

  return v3;
}

- (UserInformationManager)init
{
  v9.receiver = self;
  v9.super_class = UserInformationManager;
  v2 = [(UserInformationManager *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, -1);

    v5 = dispatch_queue_create("com.apple.Maps.UserProfile.ProfilePicture", v4);
    profilePictureQueue = v2->_profilePictureQueue;
    v2->_profilePictureQueue = v5;

    [(UserInformationManager *)v2 _retrieveUserProfilePicture];
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"_handleProfilePictureStoreDidChangeNotification:" name:AAUIProfilePictureStoreDidChangeNotification object:0];
  }

  return v2;
}

- (void)_retrieveUserProfilePicture
{
  objc_initWeak(&location, self);
  profilePictureQueue = self->_profilePictureQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100017ACC;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  dispatch_async(profilePictureQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (BOOL)loggedIn
{
  account = [(UserInformationManager *)self account];
  v3 = account != 0;

  return v3;
}

- (GEOObserverHashTable)observers
{
  observers = self->_observers;
  if (!observers)
  {
    v4 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___UserDataProvidingObserver queue:0];
    v5 = self->_observers;
    self->_observers = v4;

    observers = self->_observers;
  }

  return observers;
}

- (UIImage)loggedOutIcon
{
  loggedOutIcon = self->_loggedOutIcon;
  if (!loggedOutIcon)
  {
    v4 = [UIImage systemImageNamed:@"person.crop.circle"];
    v5 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:36.0];
    v6 = [v4 imageWithSymbolConfiguration:v5];

    v7 = +[UIColor systemGrayColor];
    v8 = [v6 imageWithTintColor:v7];
    v9 = self->_loggedOutIcon;
    self->_loggedOutIcon = v8;

    loggedOutIcon = self->_loggedOutIcon;
  }

  return loggedOutIcon;
}

- (void)_throttledProfilePictureTimerUpdate:(id)update
{
  self->_hasCalledReloadProfilePictureInLast10Seconds = 0;
  v3 = sub_100026868();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Reset the flag _hasCalledReloadProfilePicture to NO", v4, 2u);
  }
}

- (void)_handleProfilePictureStoreDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100026868();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Received notification that profile picture has changed", buf, 2u);
  }

  objc_initWeak(buf, self);
  v6 = +[_TtC8MapsSync15MapsSyncService shared];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100AE74F0;
  v7[3] = &unk_101637948;
  objc_copyWeak(&v8, buf);
  [v6 cloudKitSyncAllowedWithCompletionHandler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

- (void)_updateAndNotifyObservers:(BOOL)observers
{
  if (observers)
  {
    [(GEOObserverHashTable *)self->_observers userDataDidUpdate];
  }
}

- (void)retrieveAddressForLocationWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[MKLocationManager sharedLocationManager];
  lastLocation = [v4 lastLocation];

  if (lastLocation)
  {
    v6 = +[MKMapService sharedService];
    v7 = [v6 ticketForReverseGeocodeLocation:lastLocation];

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100AE7818;
    v8[3] = &unk_10165EB78;
    v9 = completionCopy;
    [v7 submitWithHandler:v8 networkActivity:0];
  }
}

- (void)_retrieveUserProfilePictureWithImageCreationCompletion:(id)completion
{
  completionCopy = completion;
  if ([(UserInformationManager *)self loggedIn])
  {
    profilePictureStore = [(UserInformationManager *)self profilePictureStore];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100AE79E0;
    v11[3] = &unk_101637920;
    v6 = &v12;
    v12 = completionCopy;
    v7 = completionCopy;
    [profilePictureStore fetchProfilePictureForAccountOwner:v11];
  }

  else
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100AE7AB8;
    v9[3] = &unk_101661760;
    v6 = &v10;
    v10 = completionCopy;
    v8 = completionCopy;
    dispatch_async(&_dispatch_main_q, v9);
  }
}

- (id)userIconAllowingFallback:(BOOL)fallback
{
  userIcon = self->_userIcon;
  if (userIcon)
  {
    v4 = 1;
  }

  else
  {
    v4 = !fallback;
  }

  if (v4)
  {
    loggedOutIcon = userIcon;
  }

  else
  {
    loggedOutIcon = [(UserInformationManager *)self loggedOutIcon];
  }

  return loggedOutIcon;
}

- (NSString)userEmail
{
  account = [(UserInformationManager *)self account];
  v4 = account;
  userEmail = self->_userEmail;
  if (userEmail)
  {
    v6 = 1;
  }

  else
  {
    v6 = account == 0;
  }

  if (!v6)
  {
    aa_primaryEmail = [account aa_primaryEmail];
    if ([aa_primaryEmail length])
    {
      aa_isPrimaryEmailVerified = [v4 aa_isPrimaryEmailVerified];

      if (!aa_isPrimaryEmailVerified)
      {
        v9 = 0;
        goto LABEL_11;
      }

      aa_primaryEmail = [v4 aa_primaryEmail];
      v9 = [aa_primaryEmail copy];
    }

    else
    {
      v9 = 0;
    }

LABEL_11:
    v10 = self->_userEmail;
    self->_userEmail = v9;

    userEmail = self->_userEmail;
  }

  v11 = userEmail;

  return userEmail;
}

- (NSString)userGivenName
{
  account = [(UserInformationManager *)self account];
  v4 = account;
  userGivenName = self->_userGivenName;
  if (userGivenName)
  {
    v6 = 1;
  }

  else
  {
    v6 = account == 0;
  }

  if (!v6)
  {
    v7 = objc_alloc_init(NSPersonNameComponents);
    aa_firstName = [v4 aa_firstName];
    [v7 setGivenName:aa_firstName];

    aa_middleName = [v4 aa_middleName];
    [v7 setMiddleName:aa_middleName];

    aa_lastName = [v4 aa_lastName];
    [v7 setFamilyName:aa_lastName];

    v11 = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:v7 style:1 options:0];
    v12 = self->_userGivenName;
    self->_userGivenName = v11;

    userGivenName = self->_userGivenName;
  }

  v13 = userGivenName;

  return userGivenName;
}

- (NSString)userName
{
  account = [(UserInformationManager *)self account];
  v4 = account;
  userName = self->_userName;
  if (userName)
  {
    v6 = 1;
  }

  else
  {
    v6 = account == 0;
  }

  if (!v6)
  {
    v7 = objc_alloc_init(NSPersonNameComponents);
    aa_firstName = [v4 aa_firstName];
    [v7 setGivenName:aa_firstName];

    aa_middleName = [v4 aa_middleName];
    [v7 setMiddleName:aa_middleName];

    aa_lastName = [v4 aa_lastName];
    [v7 setFamilyName:aa_lastName];

    nameFormatter = [(UserInformationManager *)self nameFormatter];
    v12 = [nameFormatter stringFromPersonNameComponents:v7];
    v13 = self->_userName;
    self->_userName = v12;

    userName = self->_userName;
  }

  v14 = userName;

  return userName;
}

- (NSPersonNameComponentsFormatter)nameFormatter
{
  nameFormatter = self->_nameFormatter;
  if (!nameFormatter)
  {
    v4 = objc_alloc_init(NSPersonNameComponentsFormatter);
    v5 = self->_nameFormatter;
    self->_nameFormatter = v4;

    [(NSPersonNameComponentsFormatter *)self->_nameFormatter setStyle:2];
    nameFormatter = self->_nameFormatter;
  }

  return nameFormatter;
}

- (AAUIProfilePictureStore)profilePictureStore
{
  account = [(UserInformationManager *)self account];
  v4 = account;
  profilePictureStore = self->_profilePictureStore;
  if (profilePictureStore)
  {
    v6 = 1;
  }

  else
  {
    v6 = account == 0;
  }

  if (!v6)
  {
    v7 = objc_alloc_init(ACAccountStore);
    v8 = [[AAUIProfilePictureStore alloc] initWithAppleAccount:v4 store:v7];
    v9 = self->_profilePictureStore;
    self->_profilePictureStore = v8;

    profilePictureStore = self->_profilePictureStore;
  }

  v10 = profilePictureStore;

  return profilePictureStore;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:AAUIProfilePictureStoreDidChangeNotification object:0];

  [(NSTimer *)self->_profilePictureReloadThrottleTimer invalidate];
  v4.receiver = self;
  v4.super_class = UserInformationManager;
  [(UserInformationManager *)&v4 dealloc];
}

@end