@interface MobilePhoneApplication
- (BOOL)_isIPad;
- (BOOL)contentViewCanRotate;
- (BOOL)notificationCategoryIsAllowed:(id)allowed;
- (BOOL)shouldShowReceptionistOnboarding;
- (BOOL)showsFaceTimeAudioRecents;
- (BOOL)showsFaceTimeVideoRecents;
- (MobilePhoneApplication)init;
- (id)_extendLaunchTest;
- (id)recentsController;
- (id)rootViewController;
- (int)defaultAction;
- (void)addNewContactShortcutIfNecessary;
- (void)addShortcutIfNecessary:(id)necessary;
- (void)addVoicemailShortcutIfNecessary;
- (void)applicationDidFinishLaunching:(id)launching;
- (void)dealloc;
- (void)refreshDynamicApplicationShortcuts;
- (void)removeShortcutOfType:(id)type;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler;
@end

@implementation MobilePhoneApplication

- (BOOL)_isIPad
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom] == 1;

  return v3;
}

- (void)applicationDidFinishLaunching:(id)launching
{
  v15.receiver = self;
  v15.super_class = MobilePhoneApplication;
  [(PhoneApplication *)&v15 applicationDidFinishLaunching:launching];
  phoneRecentsController = objc_opt_new();
  if (![phoneRecentsController callExperiencePhoneAppEnabled])
  {
    goto LABEL_4;
  }

  v5 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v5 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v7 = objc_alloc_init(_TtC11MobilePhone26PhoneRecentsViewController);
    phoneRecentsController = self->_phoneRecentsController;
    self->_phoneRecentsController = v7;
LABEL_4:
  }

  v8 = +[UNUserNotificationCenter currentNotificationCenter];
  [(MobilePhoneApplication *)self setNotificationCenter:v8];

  notificationCenter = [(MobilePhoneApplication *)self notificationCenter];
  [notificationCenter setDelegate:self];

  objc_initWeak(&location, self);
  v10 = dispatch_time(0, 1000000000);
  v11 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __56__MobilePhoneApplication_applicationDidFinishLaunching___block_invoke;
  block[3] = &unk_100285B68;
  block[4] = self;
  objc_copyWeak(&v13, &location);
  dispatch_after(v10, v11, block);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __56__MobilePhoneApplication_applicationDidFinishLaunching___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(IMNicknameProvider);
  [*(a1 + 32) setPrewarmProvider:v2];

  v3 = +[(PHApplicationServices *)MPApplicationServices];
  v4 = [v3 accountManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __56__MobilePhoneApplication_applicationDidFinishLaunching___block_invoke_2;
  v6[3] = &unk_100285148;
  objc_copyWeak(&v7, (a1 + 40));
  v5 = [v4 listenForChangesWithHandler:v6];
  [*(a1 + 32) setSubscriptionStatusListener:v5];

  [*(a1 + 32) refreshDynamicApplicationShortcuts];
  objc_destroyWeak(&v7);
}

void __56__MobilePhoneApplication_applicationDidFinishLaunching___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = PHDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MobilePhoneApplication - handling account manager updates %@", &v8, 0xCu);
    }

    v6 = +[MPVoicemailAccountManagerUpdate subscriptionStatus];
    v7 = [v3 contains:v6];

    if (v7)
    {
      [WeakRetained refreshDynamicApplicationShortcuts];
    }
  }
}

- (MobilePhoneApplication)init
{
  v5.receiver = self;
  v5.super_class = MobilePhoneApplication;
  v2 = [(PhoneApplication *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MobilePhoneApplication *)v2 setDelegate:v2];
  }

  return v3;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  [NSObject cancelPreviousPerformRequestsWithTarget:self];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = MobilePhoneApplication;
  [(PhoneApplication *)&v5 dealloc];
}

- (id)recentsController
{
  recentsController = self->_recentsController;
  if (!recentsController)
  {
    v4 = +[(PHApplicationServices *)MPApplicationServices];
    v5 = [PHRecentsController alloc];
    callHistoryController = [(PhoneApplication *)self callHistoryController];
    callProviderManager = [v4 callProviderManager];
    contactStore = [v4 contactStore];
    suggestedContactStore = [v4 suggestedContactStore];
    metadataCache = [v4 metadataCache];
    v11 = [(PHRecentsController *)v5 initWithCallHistoryController:callHistoryController callProviderManager:callProviderManager contactStore:contactStore suggestedContactStore:suggestedContactStore metadataCache:metadataCache];
    v12 = self->_recentsController;
    self->_recentsController = v11;

    recentsController = self->_recentsController;
  }

  return recentsController;
}

- (id)rootViewController
{
  rootController = self->super._rootController;
  if (!rootController)
  {
    v4 = objc_alloc_init(MPRootViewController);
    v5 = self->super._rootController;
    self->super._rootController = &v4->super;

    [(PhoneRootViewController *)self->super._rootController setPhoneRecentsController:self->_phoneRecentsController];
    rootController = self->super._rootController;
  }

  return rootController;
}

- (BOOL)contentViewCanRotate
{
  v2 = objc_opt_new();
  if ([v2 phoneLargeFormatUIEnabled])
  {
    v3 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v3 userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

- (int)defaultAction
{
  if ([UIApp isDeviceCapableOfTelephonyCalls])
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

- (BOOL)showsFaceTimeAudioRecents
{
  v2 = +[IDSServiceAvailabilityController sharedInstance];
  v3 = [v2 availabilityForListenerID:@"com.apple.mobilephone.FTCServiceAvailabilityListenerID" forService:IDSServiceNameCalling];

  result = [UIApp isDeviceCapableOfFaceTimeAudio];
  if (v3 != 1)
  {
    return 0;
  }

  return result;
}

- (BOOL)showsFaceTimeVideoRecents
{
  v2 = +[IDSServiceAvailabilityController sharedInstance];
  v3 = [v2 availabilityForListenerID:@"com.apple.mobilephone.FTCServiceAvailabilityListenerID" forService:IDSServiceNameFaceTime];

  result = [UIApp isDeviceCapableOfFaceTimeVideo];
  if (v3 != 1)
  {
    return 0;
  }

  return result;
}

- (BOOL)shouldShowReceptionistOnboarding
{
  isOpenedFromReceptionistOnboardingNotification = [(MobilePhoneApplication *)self isOpenedFromReceptionistOnboardingNotification];
  [(MobilePhoneApplication *)self setIsOpenedFromReceptionistOnboardingNotification:0];
  return isOpenedFromReceptionistOnboardingNotification;
}

- (void)refreshDynamicApplicationShortcuts
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __60__MobilePhoneApplication_refreshDynamicApplicationShortcuts__block_invoke;
  block[3] = &unk_100284FD0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

id __60__MobilePhoneApplication_refreshDynamicApplicationShortcuts__block_invoke(uint64_t a1)
{
  [*(a1 + 32) addNewContactShortcutIfNecessary];
  v2 = *(a1 + 32);

  return [v2 addVoicemailShortcutIfNecessary];
}

- (void)addNewContactShortcutIfNecessary
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (![(MobilePhoneApplication *)self _isIPad])
  {
    v3 = [UIMutableApplicationShortcutItem alloc];
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"CREATE_NEW_CONTACT" value:&stru_10028F310 table:@"InfoPlist"];
    v6 = [UIApplicationShortcutIcon iconWithSystemImageName:@"plus"];
    v7 = [v3 initWithType:@"com.apple.mobilephone.contacts.create" localizedTitle:v5 localizedSubtitle:0 icon:v6 userInfo:0];

    [(MobilePhoneApplication *)self addShortcutIfNecessary:v7];
  }
}

- (void)addVoicemailShortcutIfNecessary
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __57__MobilePhoneApplication_addVoicemailShortcutIfNecessary__block_invoke;
  v3[3] = &unk_100286790;
  objc_copyWeak(&v4, &location);
  PHHasEnhancedVoicemailAsync(v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __57__MobilePhoneApplication_addVoicemailShortcutIfNecessary__block_invoke(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __57__MobilePhoneApplication_addVoicemailShortcutIfNecessary__block_invoke_2;
  v3[3] = &unk_100285D68;
  objc_copyWeak(&v4, (a1 + 32));
  v5 = a2;
  dispatch_async(&_dispatch_main_q, v3);
  objc_destroyWeak(&v4);
}

void __57__MobilePhoneApplication_addVoicemailShortcutIfNecessary__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    if (*(a1 + 40) == 1)
    {
      v3 = [UIMutableApplicationShortcutItem alloc];
      v4 = +[NSBundle mainBundle];
      v5 = [v4 localizedStringForKey:@"OPEN_VOICEMAIL" value:&stru_10028F310 table:@"InfoPlist"];
      v6 = [UIApplicationShortcutIcon iconWithTemplateImageName:@"VoicemailShortcutIcon"];
      v7 = [v3 initWithType:@"com.apple.mobilephone.voicemail" localizedTitle:v5 localizedSubtitle:0 icon:v6 userInfo:0];

      [v8 addShortcutIfNecessary:v7];
    }

    else
    {
      [WeakRetained removeShortcutOfType:@"com.apple.mobilephone.voicemail"];
    }

    WeakRetained = v8;
  }
}

- (void)addShortcutIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v4 = +[UIApplication sharedApplication];
  shortcutItems = [v4 shortcutItems];

  type = [necessaryCopy type];
  v7 = [NSPredicate predicateWithFormat:@"type == %@", type];

  v8 = [shortcutItems filteredArrayUsingPredicate:v7];
  v9 = [v8 count];

  v10 = PHDefaultLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v9)
  {
    if (v11)
    {
      type2 = [necessaryCopy type];
      *buf = 138412290;
      v15 = type2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Adding shortCutItem of type %@", buf, 0xCu);
    }

    v10 = [shortcutItems mutableCopy];
    [v10 addObject:necessaryCopy];
    type3 = +[UIApplication sharedApplication];
    [type3 setShortcutItems:v10];
    goto LABEL_7;
  }

  if (v11)
  {
    type3 = [necessaryCopy type];
    *buf = 138412290;
    v15 = type3;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "shortCutItem of type %@ already exists, not adding", buf, 0xCu);
LABEL_7:
  }
}

- (void)removeShortcutOfType:(id)type
{
  typeCopy = type;
  v4 = +[UIApplication sharedApplication];
  shortcutItems = [v4 shortcutItems];

  typeCopy = [NSPredicate predicateWithFormat:@"type == %@", typeCopy];
  v7 = [shortcutItems filteredArrayUsingPredicate:typeCopy];
  v8 = [v7 count];

  v9 = PHDefaultLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 138412290;
      v14 = typeCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Removing shortCutItem of type %@", buf, 0xCu);
    }

    v9 = [shortcutItems mutableCopy];
    v11 = [v9 filteredArrayUsingPredicate:typeCopy];
    [v9 removeObjectsInArray:v11];

    v12 = +[UIApplication sharedApplication];
    [v12 setShortcutItems:v9];
  }

  else if (v10)
  {
    *buf = 138412290;
    v14 = typeCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "shortCutItem of type %@ does not exist, no need to remove", buf, 0xCu);
  }
}

- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  request = [notification request];
  content = [request content];
  categoryIdentifier = [content categoryIdentifier];
  [(MobilePhoneApplication *)self notificationCategoryIsAllowed:categoryIdentifier];

  handlerCopy[2]();
}

- (BOOL)notificationCategoryIsAllowed:(id)allowed
{
  allowedCopy = allowed;
  if ([allowedCopy isEqualToString:TUNotificationCategoryIdentifierNewVoicemailNoVisualVoicemail])
  {
    v4 = 1;
  }

  else
  {
    v4 = [allowedCopy isEqualToString:TUNotificationCategoryIdentifierCallRecording];
  }

  v5 = [allowedCopy length] != 0;

  return v5 & v4;
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  notification = [response notification];
  request = [notification request];
  content = [request content];
  categoryIdentifier = [content categoryIdentifier];
  v11 = [categoryIdentifier isEqualToString:@"ReceptionistOnboardingNotification"];

  if (v11)
  {
    [(MobilePhoneApplication *)self setIsOpenedFromReceptionistOnboardingNotification:1];
  }

  handlerCopy[2]();
}

- (id)_extendLaunchTest
{
  v2 = PHPreferencesGetValueInDomain();
  v3 = v2;

  if (v3 == 2)
  {
    return @"ExtendedLaunchTest";
  }

  else
  {
    return 0;
  }
}

@end