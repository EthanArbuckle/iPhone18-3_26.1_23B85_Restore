@interface PHInCallUtilities
+ (__CFPhoneNumber)newPhoneNumberRefForDestinationID:(id)a3 useNetworkCountryCode:(BOOL)a4;
+ (id)contactStoreForCall:(id)a3;
+ (id)formattedPhoneNumberFromString:(id)a3;
+ (id)sharedInstance;
+ (void)performBlockWithSharedInstanceOverride:(id)a3 block:(id)a4;
- (BOOL)faceTimeAudioIsAvailable;
- (BOOL)faceTimeAudioIsSupported;
- (BOOL)faceTimeVideoIsAvailable;
- (BOOL)faceTimeVideoIsSupported;
- (BOOL)hasStatusBarSuppressionReasons;
- (BOOL)isIPadIdiom;
- (BOOL)isInLostMode;
- (BOOL)isLockScreenMessagingAllowed;
- (BOOL)isLockToEndCallEnabled;
- (BOOL)isSMSRestricted;
- (BOOL)isSetupAssistantRunning;
- (PHInCallUtilities)init;
- (void)dealloc;
- (void)requestPasscodeUnlockWithCompletion:(id)a3;
- (void)setRequestedVCPresentationWithStatusBar:(BOOL)a3 withReasonLog:(id)a4;
- (void)startAllowingRingingCallStatusIndicator;
- (void)startSuppressingInCallStatusBarForReason:(id)a3;
- (void)stopAllowingRingingCallStatusIndicator;
- (void)stopSuppressingInCallStatusBar;
- (void)stopSuppressingInCallStatusBarForReason:(id)a3;
- (void)updateInCallStatusBarSuppression;
@end

@implementation PHInCallUtilities

+ (id)sharedInstance
{
  if (qword_1003B0CC0 != -1)
  {
    sub_100254798();
  }

  if (qword_1003B0CB8)
  {
    v3 = qword_1003B0CB8;
  }

  else
  {
    v3 = qword_1003B0CB0;
  }

  return v3;
}

- (BOOL)isIPadIdiom
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom] == 1;

  return v3;
}

- (BOOL)faceTimeVideoIsAvailable
{
  if (![(PHInCallUtilities *)self faceTimeVideoIsSupported])
  {
    return 0;
  }

  v2 = +[FTCServiceAvailabilityCenter sharedInstance];
  v3 = [v2 availabilityForListenerID:@"com.apple.InCallService.FTCServiceAvailabilityListenerID" forService:0] == 1;

  return v3;
}

- (BOOL)faceTimeVideoIsSupported
{
  v2 = +[FTDeviceSupport sharedInstance];
  v3 = [v2 faceTimeSupported];

  return v3;
}

- (BOOL)isSetupAssistantRunning
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100071088;
  block[3] = &unk_100356988;
  block[4] = self;
  if (qword_1003B0CE0 != -1)
  {
    dispatch_once(&qword_1003B0CE0, block);
  }

  return byte_1003B0CE8;
}

- (BOOL)isInLostMode
{
  if ((byte_1003B0CD8 & 1) == 0)
  {
    v2 = [CUTWeakLinkClass() sharedInstance];
    byte_1003B0CD9 = [v2 lostModeIsActive];

    byte_1003B0CD8 = 1;
  }

  return byte_1003B0CD9;
}

- (BOOL)isSMSRestricted
{
  v2 = TUBundleIdentifierMessagesApplication;
  v9 = 0;
  v3 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v2 allowPlaceholder:0 error:&v9];
  v4 = v9;
  v5 = v4;
  if (v3)
  {
    v6 = [v3 applicationState];
    v7 = [v6 isRestricted];
  }

  else
  {
    if (!v4)
    {
      v7 = 0;
      goto LABEL_8;
    }

    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1002547D4(v2, v5, v6);
    }

    v7 = 0;
  }

LABEL_8:
  return v7;
}

+ (void)performBlockWithSharedInstanceOverride:(id)a3 block:(id)a4
{
  v6 = a4;
  [a1 setSharedInstanceOverride:a3];
  if (v6)
  {
    v6[2]();
  }

  [a1 unsetSharedInstanceOverride];
}

+ (__CFPhoneNumber)newPhoneNumberRefForDestinationID:(id)a3 useNetworkCountryCode:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([v5 destinationIdIsPhoneNumber])
  {
    if (v4 && (TUNetworkCountryCode(), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = v6;
      v8 = TUNetworkCountryCode();
    }

    else
    {
      v8 = TUHomeCountryCode();
    }

    v9 = 0;
    if (v5 && v8)
    {
      v9 = CFPhoneNumberCreate();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)formattedPhoneNumberFromString:(id)a3
{
  v3 = a3;
  v4 = [PHInCallUtilities newPhoneNumberRefForDestinationID:v3 useNetworkCountryCode:1];
  String = v3;
  if (v4)
  {
    v6 = v4;
    String = CFPhoneNumberCreateString();

    CFRelease(v6);
  }

  return String;
}

- (PHInCallUtilities)init
{
  v9.receiver = self;
  v9.super_class = PHInCallUtilities;
  v2 = [(PHInCallUtilities *)&v9 init];
  if (v2)
  {
    v3 = +[NSMutableSet set];
    [(PHInCallUtilities *)v2 setInCallStatusBarSuppressionReasons:v3];

    [(PHInCallUtilities *)v2 updateInCallStatusBarSuppression];
    v4 = +[FTCServiceAvailabilityCenter sharedInstance];
    [v4 addListenerID:@"com.apple.InCallService.FTCServiceAvailabilityListenerID" forService:2];

    v5 = +[FTCServiceAvailabilityCenter sharedInstance];
    [v5 addListenerID:@"com.apple.InCallService.FTCServiceAvailabilityListenerID" forService:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_10007076C, @"com.apple.mobilephone.LockScreenMessagingChanged", 0, CFNotificationSuspensionBehaviorDrop);
    if (qword_1003B0CD0 != -1)
    {
      sub_1002547AC();
    }

    v7 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v7, v2, sub_10007082C, qword_1003B0CC8, 0, CFNotificationSuspensionBehaviorDrop);
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[FTCServiceAvailabilityCenter sharedInstance];
  [v3 removeListenerID:@"com.apple.InCallService.FTCServiceAvailabilityListenerID" forService:2];

  v4 = +[FTCServiceAvailabilityCenter sharedInstance];
  [v4 removeListenerID:@"com.apple.InCallService.FTCServiceAvailabilityListenerID" forService:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self];

  v7.receiver = self;
  v7.super_class = PHInCallUtilities;
  [(PHInCallUtilities *)&v7 dealloc];
}

- (void)startSuppressingInCallStatusBarForReason:(id)a3
{
  v4 = a3;
  v5 = [(PHInCallUtilities *)self inCallStatusBarSuppressionReasons];
  v6 = [v5 containsObject:v4];

  if ((v6 & 1) == 0)
  {
    v7 = [(PHInCallUtilities *)self inCallStatusBarSuppressionReasons];
    [v7 addObject:v4];

    v8 = sub_100004F84();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(PHInCallUtilities *)self inCallStatusBarSuppressionReasons];
      v10 = 138412546;
      v11 = v4;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "added reason: %@, reasons: %@", &v10, 0x16u);
    }
  }

  [(PHInCallUtilities *)self updateInCallStatusBarSuppression];
}

- (void)stopSuppressingInCallStatusBarForReason:(id)a3
{
  v4 = a3;
  v5 = [(PHInCallUtilities *)self inCallStatusBarSuppressionReasons];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = [(PHInCallUtilities *)self inCallStatusBarSuppressionReasons];
    [v7 removeObject:v4];

    v8 = sub_100004F84();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(PHInCallUtilities *)self inCallStatusBarSuppressionReasons];
      v10 = 138412546;
      v11 = v4;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "removed reason: %@, reasons: %@", &v10, 0x16u);
    }
  }

  [(PHInCallUtilities *)self updateInCallStatusBarSuppression];
}

- (void)stopSuppressingInCallStatusBar
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(PHInCallUtilities *)self inCallStatusBarSuppressionReasons];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "removing all status bar suppression reasons: %@", &v6, 0xCu);
  }

  v5 = [(PHInCallUtilities *)self inCallStatusBarSuppressionReasons];
  [v5 removeAllObjects];

  [(PHInCallUtilities *)self updateInCallStatusBarSuppression];
}

- (void)startAllowingRingingCallStatusIndicator
{
  v2 = +[TUCallCenter sharedInstance];
  [v2 shouldAllowRingingCallStatusIndicator:1];
}

- (void)stopAllowingRingingCallStatusIndicator
{
  v2 = +[TUCallCenter sharedInstance];
  [v2 shouldAllowRingingCallStatusIndicator:0];
}

- (BOOL)hasStatusBarSuppressionReasons
{
  v2 = [(PHInCallUtilities *)self inCallStatusBarSuppressionReasons];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)updateInCallStatusBarSuppression
{
  v2 = [(PHInCallUtilities *)self hasStatusBarSuppressionReasons];
  if (dword_1003A84E8 != v2)
  {
    v3 = v2;
    v4 = sub_100004F84();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = @"NO";
      if (v3)
      {
        v5 = @"YES";
      }

      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting PIP presence token to %@", &v7, 0xCu);
    }

    v6 = +[TUCallCenter sharedInstance];
    [v6 shouldSuppressInCallStatusBar:v3];

    dword_1003A84E8 = v3;
  }
}

- (void)requestPasscodeUnlockWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (+[PHInCallUIUtilities isSpringBoardPasscodeLocked])
    {
      v5 = sub_100004F84();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Requesting passcode", buf, 2u);
      }

      SBSRequestPasscodeUnlockAlertUI();
    }

    else if ([(PHInCallUtilities *)self isInLostMode])
    {
      v6 = sub_100004F84();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "In lost mode and no passcode, not displaying UI", v7, 2u);
      }

      v4[2](v4, 0);
    }

    else
    {
      v4[2](v4, 1);
    }
  }
}

- (BOOL)isLockScreenMessagingAllowed
{
  if ((byte_1003B0CDA & 1) == 0)
  {
    CFPreferencesAppSynchronize(TUBundleIdentifierMobilePhoneApplication);
    v2 = PHPreferencesGetValueInDomain();
    byte_1003B0CDB = (v2 == 0) | [v2 BOOLValue] & 1;
    byte_1003B0CDA = 1;
  }

  return byte_1003B0CDB;
}

- (BOOL)faceTimeAudioIsSupported
{
  v2 = +[FTDeviceSupport sharedInstance];
  v3 = [v2 callingSupported];

  return v3;
}

- (BOOL)faceTimeAudioIsAvailable
{
  if (![(PHInCallUtilities *)self faceTimeAudioIsSupported])
  {
    return 0;
  }

  v2 = +[FTCServiceAvailabilityCenter sharedInstance];
  v3 = [v2 availabilityForListenerID:@"com.apple.InCallService.FTCServiceAvailabilityListenerID" forService:2] == 1;

  return v3;
}

- (void)setRequestedVCPresentationWithStatusBar:(BOOL)a3 withReasonLog:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (self->_requestedVCPresentationWithStatusBar != v4)
  {
    self->_requestedVCPresentationWithStatusBar = v4;
    v7 = sub_100004F84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromBOOL();
      v9 = 138412546;
      v10 = v8;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "set requestedPresentationWithStatusBar: %@ because: %@", &v9, 0x16u);
    }
  }
}

- (BOOL)isLockToEndCallEnabled
{
  if (!sub_100071310() || !sub_10007143C())
  {
    return 1;
  }

  v2 = sub_10007143C();
  if (!v2)
  {
    sub_10025485C();
  }

  v3 = v2();
  v4 = v3 != 0;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v3 != 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Accessibility lock to end: %d", v7, 8u);
  }

  return v4;
}

+ (id)contactStoreForCall:(id)a3
{
  v3 = a3;
  v4 = sub_100173248(v3);

  return v4;
}

@end