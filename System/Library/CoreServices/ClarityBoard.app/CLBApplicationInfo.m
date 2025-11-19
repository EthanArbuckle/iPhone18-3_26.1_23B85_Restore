@interface CLBApplicationInfo
+ (BOOL)isCarrierInstall;
+ (BOOL)isInternalInstall;
+ (id)deviceClass;
+ (id)disallowedBundleIdentifiers;
- (BOOL)_requiresDownloadedHighResIcon;
- (BOOL)_usesSupportedInterfaceOrientationsForProxy:(id)a3;
- (BOOL)canBeLaunched;
- (BOOL)isAppRestricted;
- (BOOL)isHiddenByUser;
- (BOOL)isUnavailable;
- (BOOL)requiresPreflight;
- (FBSApplicationDataStore)dataStore;
- (NSString)badgeString;
- (NSString)defaultSceneIdentifier;
- (NSString)localizedName;
- (UIImage)iconImage;
- (id)_iconCache;
- (id)_iconKey;
- (id)badgeValue;
- (int64_t)_visibilityOverrideForProxy:(id)a3;
- (int64_t)displayStyle;
- (void)_fetchDownloadedHighResIconWithCompletion:(id)a3;
- (void)_fetchIconServicesIconWithCompletion:(id)a3;
- (void)_loadFromProxy:(id)a3;
- (void)_notifyObserversOfBadgeStringChange;
- (void)_notifyObserversOfIconImageChange;
- (void)_significantTimeChangeOccurred:(id)a3;
- (void)_updateIcon;
- (void)addBadgeStringObserver:(id)a3;
- (void)addIconImageObserver:(id)a3;
- (void)handleFirstUnlockIfNeeded;
- (void)removeBadgeStringObserver:(id)a3;
- (void)removeIconImageObserver:(id)a3;
- (void)setBadgeValue:(id)a3;
- (void)setCanShowBadge:(BOOL)a3;
- (void)setNeedsIconImageUpdate;
@end

@implementation CLBApplicationInfo

+ (BOOL)isInternalInstall
{
  if (qword_1003310E8 != -1)
  {
    sub_100285024();
  }

  return byte_1003310E0;
}

+ (BOOL)isCarrierInstall
{
  if (qword_1003310F8 != -1)
  {
    sub_100285038();
  }

  return byte_1003310F0;
}

+ (id)deviceClass
{
  if (qword_100331108 != -1)
  {
    sub_10028504C();
  }

  v3 = qword_100331100;

  return v3;
}

+ (id)disallowedBundleIdentifiers
{
  if (qword_100331118 != -1)
  {
    sub_100285060();
  }

  v3 = qword_100331110;

  return v3;
}

- (int64_t)displayStyle
{
  if (self->_supportsClarityUI || self->_wantsFullScreenInClarityUI)
  {
    return 0;
  }

  v3 = +[CLFSettings sharedInstance];
  v2 = [v3 fullScreenCompatibilityMode] ^ 1;

  return v2;
}

- (NSString)localizedName
{
  v3 = [(CLBApplicationInfo *)self clarityDisplayName];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(CLBApplicationInfo *)self clarityDisplayName];
  }

  else
  {
    v6 = [LSApplicationRecord alloc];
    v7 = [(CLBApplicationInfo *)self bundleIdentifier];
    v12 = 0;
    v8 = [v6 initWithBundleIdentifier:v7 allowPlaceholder:1 error:&v12];
    v9 = v12;

    if (v9)
    {
      v10 = +[CLFLog commonLog];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100285074(v9, v10);
      }

      v5 = &stru_100316DA0;
    }

    else
    {
      v5 = [v8 localizedName];
    }
  }

  return v5;
}

- (BOOL)requiresPreflight
{
  v3 = +[CLFAppAvailabilityChecker sharedInstance];
  v4 = [(CLBApplicationInfo *)self bundleIdentifier];
  v5 = [v3 requiresPreflightForBundleIdentifier:v4];

  return v5;
}

- (BOOL)isHiddenByUser
{
  v3 = +[CLFAppAvailabilityChecker sharedInstance];
  v4 = [(CLBApplicationInfo *)self bundleIdentifier];
  v5 = [v3 isHiddenByUserForBundleIdentifier:v4];

  return v5;
}

- (BOOL)isUnavailable
{
  v3 = +[CLFAppAvailabilityChecker sharedInstance];
  v4 = [(CLBApplicationInfo *)self bundleIdentifier];
  v5 = [v3 isAppAvailableForBundleIdentifier:v4];

  return v5 ^ 1;
}

- (BOOL)isAppRestricted
{
  v3 = [(CLBApplicationInfo *)self bundleIdentifier];
  v4 = [v3 isEqualToString:AX_ClarityCameraBundleName];

  if (v4)
  {
    v5 = &AX_CameraBundleName;
LABEL_5:
    v8 = *v5;
    goto LABEL_7;
  }

  v6 = [(CLBApplicationInfo *)self bundleIdentifier];
  v7 = [v6 isEqualToString:AX_ClarityPhotosBundleName];

  if (v7)
  {
    v5 = &AX_PhotosBundleName;
    goto LABEL_5;
  }

  v8 = [(CLBApplicationInfo *)self bundleIdentifier];
LABEL_7:
  v9 = v8;
  v15 = 0;
  v10 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v8 allowPlaceholder:1 error:&v15];
  v11 = v15;
  if (v11)
  {
    v12 = +[CLFLog commonLog];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10028510C();
    }
  }

  else
  {
    if (v10)
    {
      v12 = [v10 applicationState];
      v13 = [v12 isRestricted];
      goto LABEL_13;
    }

    v12 = +[CLFLog commonLog];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100285188(v9, v12);
    }
  }

  v13 = 0;
LABEL_13:

  return v13;
}

- (void)_loadFromProxy:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = CLBApplicationInfo;
  [(CLBApplicationInfo *)&v39 _loadFromProxy:v4];
  v5 = +[CLFSettings sharedInstance];
  v6 = [v5 overrideNonClarityApplicationBundleIdentifiers];

  self->_deletable = [v4 isDeletable];
  v7 = [(CLBApplicationInfo *)self _visibilityOverrideForProxy:v4];
  if (v7)
  {
    self->_hidden = v7 == 2;
  }

  else
  {
    v8 = [objc_opt_class() disallowedBundleIdentifiers];
    v9 = [(CLBApplicationInfo *)self bundleIdentifier];
    v10 = [v8 containsObject:v9];

    if (v10)
    {
      self->_hidden = 1;
    }

    else
    {
      v11 = [v4 appTags];
      self->_hidden = [v11 containsObject:@"hidden"];
    }
  }

  v12 = [v4 objectForInfoDictionaryKey:CLFSupportsAssistiveAccessKey ofClass:objc_opt_class()];
  v13 = v12;
  if (v12 && ([v12 BOOLValue] & 1) != 0)
  {
    v14 = [v4 bundleIdentifier];
    self->_supportsClarityUI = [v6 containsObject:v14] ^ 1;
  }

  else
  {
    self->_supportsClarityUI = 0;
  }

  v15 = [v4 objectForInfoDictionaryKey:CLFSupportsFullScreenInAssistiveAccessKey ofClass:objc_opt_class()];
  self->_wantsFullScreenInClarityUI = [v15 BOOLValue];

  self->_usesSupportedInterfaceOrientations = [(CLBApplicationInfo *)self _usesSupportedInterfaceOrientationsForProxy:v4];
  v16 = [v4 objectForInfoDictionaryKey:@"UIUserInterfaceStyle" ofClass:objc_opt_class()];
  self->_userInterfaceStyle = [v16 stringValue];

  v17 = [v4 applicationType];
  v18 = [v17 isEqualToString:@"User"];
  self->_isThirdPartyApp = v18;
  if (v18)
  {
    p_alwaysLaunchesInBackground = &self->_alwaysLaunchesInBackground;
    self->_alwaysLaunchesInBackground = 0;
  }

  else
  {
    v20 = [v4 objectForInfoDictionaryKey:@"SBLaunchSuspendedAlways" ofClass:objc_opt_class()];
    p_alwaysLaunchesInBackground = &self->_alwaysLaunchesInBackground;
    self->_alwaysLaunchesInBackground = [v20 BOOLValue];
  }

  v21 = [(CLBApplicationInfo *)self bundleIdentifier];
  v22 = [v21 hasSuffix:@".xctrunner"];

  if (v22)
  {
    *p_alwaysLaunchesInBackground = 1;
  }

  v23 = [v4 bundleURL];
  v24 = [NSBundle bundleWithURL:v23];

  v25 = [v4 bundleURL];

  if (!v25 || v24)
  {
    v28 = [v24 localizedInfoDictionary];
    v29 = CLFClarityDisplayNameKey;
    v30 = [v28 objectForKeyedSubscript:CLFClarityDisplayNameKey];

    if (![v30 length])
    {
      v31 = [v24 infoDictionary];
      v32 = [v31 objectForKeyedSubscript:v29];

      v30 = v32;
    }

    clarityDisplayName = self->_clarityDisplayName;
    self->_clarityDisplayName = v30;
  }

  else
  {
    clarityDisplayName = +[CLFLog commonLog];
    if (os_log_type_enabled(clarityDisplayName, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [v4 bundleURL];
      *buf = 138412290;
      v41 = v27;
      _os_log_impl(&_mh_execute_header, clarityDisplayName, OS_LOG_TYPE_DEFAULT, "Unable to retrieve bundle for bundle URL %@", buf, 0xCu);
    }
  }

  self->_isArcadeApp = [v4 isArcadeApp];
  v33 = [v4 entitlementValueForKey:@"com.apple.springboard.deliveropenurlusingworkspace" ofClass:objc_opt_class()];
  self->_alwaysDeliversOpenURLActionsUsingWorkspace = [v33 BOOLValue];

  v34 = [v4 bundleIdentifier];
  self->_canCoverBackButtonWithKeyboard = [v34 isEqualToString:AX_MobileSMSBundleName];

  [(CLBApplicationInfo *)self setNeedsIconImageUpdate:1];
  v35 = [(CLBApplicationInfo *)self bundleIdentifier];
  v36 = [v35 isEqualToString:CLBCalendarBundleIdentifier];

  if (v36)
  {
    v37 = +[CLFLog commonLog];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Observing significant time changes for Calendar icon.", buf, 2u);
    }

    v38 = +[NSNotificationCenter defaultCenter];
    [v38 addObserver:self selector:"_significantTimeChangeOccurred:" name:UIApplicationSignificantTimeChangeNotification object:0];
  }

  else
  {
    v38 = +[NSNotificationCenter defaultCenter];
    [v38 removeObserver:self name:UIApplicationSignificantTimeChangeNotification object:0];
  }
}

- (BOOL)_usesSupportedInterfaceOrientationsForProxy:(id)a3
{
  v4 = a3;
  if ([(CLBApplicationInfo *)self supportsDeviceFamily:2]&& ((MGGetBoolAnswer() & 1) != 0 || MGGetBoolAnswer()) && [(CLBApplicationInfo *)self builtOnOrAfterSDKVersion:@"9.0"])
  {
    v5 = [v4 objectForInfoDictionaryKey:@"UIRequiresFullScreen" ofClass:objc_opt_class()];
    v6 = v5;
    if (v5 && ([v5 BOOLValue] & 1) != 0)
    {
      LOBYTE(v7) = 1;
    }

    else
    {
      v7 = [(CLBApplicationInfo *)self supportsAllInterfaceOrientations]^ 1;
    }
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (NSString)defaultSceneIdentifier
{
  v2 = [(CLBApplicationInfo *)self bundleIdentifier];
  v3 = [NSString stringWithFormat:@"%@-default", v2];

  return v3;
}

- (int64_t)_visibilityOverrideForProxy:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForInfoDictionaryKey:@"SBIconVisibilitySetByAppPreference" ofClass:objc_opt_class()];
  v5 = [v4 BOOLValue];

  if (v5 && ((v6 = [objc_opt_class() isInternalInstall], v7 = objc_msgSend(objc_opt_class(), "isCarrierInstall"), v8 = v7, (v6 & 1) != 0) || (v7 & 1) != 0 || (objc_msgSend(v3, "entitlementValueForKey:ofClass:", @"com.apple.springboard.allowIconVisibilityChanges", objc_opt_class()), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "BOOLValue"), v9, v10)))
  {
    v11 = [v3 objectForInfoDictionaryKey:@"SBIconVisibilityDefaultVisible" ofClass:objc_opt_class()];
    v12 = v11;
    if (v11)
    {
      if ([v11 BOOLValue])
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }
    }

    else
    {
      v14 = objc_opt_class();
      v15 = [v3 objectForInfoDictionaryKey:@"SBIconVisibilityDefaultVisibleInstallTypes" ofClass:v14 valuesOfClass:objc_opt_class()];
      v16 = v15;
      if (v15)
      {
        v17 = @"user";
        if (v8)
        {
          v17 = @"carrier";
        }

        if (v6)
        {
          v18 = @"internal";
        }

        else
        {
          v18 = v17;
        }

        v19 = [v15 containsObject:v18];
        v20 = v19 ^ 1;
      }

      else
      {
        v20 = 0;
        v19 = 0;
      }

      v21 = objc_opt_class();
      v22 = [v3 objectForInfoDictionaryKey:@"SBIconVisibilityDefaultVisiblePlatforms" ofClass:v21 valuesOfClass:objc_opt_class()];
      if (v22)
      {
        v23 = [objc_opt_class() deviceClass];
        v24 = [v22 containsObject:v23];
        v20 |= v24 ^ 1;
        v19 |= v24;
      }

      if (v19 & ~v20)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (NSString)badgeString
{
  if (![(CLBApplicationInfo *)self canShowBadge])
  {
    v5 = &stru_100316DA0;
    goto LABEL_15;
  }

  v3 = [(CLBApplicationInfo *)self badgeValue];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (v3)
      {
        v6 = +[CLFLog commonLog];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
          sub_100285200(self, v3, v6);
        }
      }

      goto LABEL_13;
    }

    v4 = AXFormatNumber();
  }

  v5 = v4;
  if (!v4)
  {
LABEL_13:
    v5 = &stru_100316DA0;
  }

LABEL_15:

  return v5;
}

- (void)setCanShowBadge:(BOOL)a3
{
  if (self->_canShowBadge != a3)
  {
    self->_canShowBadge = a3;
    [(CLBApplicationInfo *)self _notifyObserversOfBadgeStringChange];
  }
}

- (void)addBadgeStringObserver:(id)a3
{
  v4 = a3;
  v5 = [(CLBApplicationInfo *)self badgeStringObservers];

  if (!v5)
  {
    v6 = [(CLBApplicationInfo *)self _weakPointersHashTable];
    [(CLBApplicationInfo *)self setBadgeStringObservers:v6];
  }

  v7 = [(CLBApplicationInfo *)self badgeStringObservers];
  [v7 addObject:v4];
}

- (void)removeBadgeStringObserver:(id)a3
{
  v4 = a3;
  v5 = [(CLBApplicationInfo *)self badgeStringObservers];
  [v5 removeObject:v4];
}

- (FBSApplicationDataStore)dataStore
{
  dataStore = self->_dataStore;
  if (!dataStore)
  {
    v4 = [(CLBApplicationInfo *)self bundleIdentifier];
    v5 = [FBSApplicationDataStore storeForApplication:v4];
    v6 = self->_dataStore;
    self->_dataStore = v5;

    dataStore = self->_dataStore;
  }

  return dataStore;
}

- (void)_notifyObserversOfBadgeStringChange
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(CLBApplicationInfo *)self badgeStringObservers];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) didUpdateBadgeStringForApplicationInfo:self];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)badgeValue
{
  if ([(CLBApplicationInfo *)self shouldSkipCheckingDataStore])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(CLBApplicationInfo *)self dataStore];
    v3 = [v4 safeObjectForKey:@"CLBApplicationBadgeKey" ofType:objc_opt_class()];

    [(CLBApplicationInfo *)self setShouldSkipCheckingDataStore:v3 == 0];
  }

  return v3;
}

- (void)setBadgeValue:(id)a3
{
  v4 = a3;
  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ([v4 isEqual:&off_100319030])
    {
      v5 = +[CLFLog commonLog];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [(CLBApplicationInfo *)self bundleIdentifier];
        v14 = 138412290;
        v15 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Clearing zero badge for %@.", &v14, 0xCu);
      }

      v4 = 0;
    }

    v7 = [(CLBApplicationInfo *)self badgeValue];
    v8 = +[CLFLog commonLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(CLBApplicationInfo *)self bundleIdentifier];
      v14 = 138412802;
      v15 = v9;
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Set badge for %@: %@ => %@", &v14, 0x20u);
    }

    if (v7 != v4 && ([v7 isEqual:v4]& 1) == 0)
    {
      v10 = +[CLFLog commonLog];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(CLBApplicationInfo *)self bundleIdentifier];
        v14 = 138412546;
        v15 = v11;
        v16 = 2112;
        v17 = v4;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Updated badge for %@: %@", &v14, 0x16u);
      }

      v12 = [(CLBApplicationInfo *)self dataStore];
      v13 = v12;
      if (v4)
      {
        [v12 setObject:v4 forKey:@"CLBApplicationBadgeKey"];
      }

      else
      {
        [v12 removeObjectForKey:@"CLBApplicationBadgeKey"];
      }

      [(CLBApplicationInfo *)self setShouldSkipCheckingDataStore:v4 == 0];
      [(CLBApplicationInfo *)self _notifyObserversOfBadgeStringChange];
    }
  }

  else
  {
    v7 = +[CLFLog commonLog];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1002852A4(self, v4, v7);
    }
  }
}

- (BOOL)canBeLaunched
{
  if ([(CLBApplicationInfo *)self requiresPreflight])
  {
    v3 = +[CLFLog commonLog];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(CLBApplicationInfo *)self bundleIdentifier];
      v12 = 138412290;
      v13[0] = v4;
      v5 = "Unable to include application %@ because it needs preflighting for privacy.";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v5, &v12, 0xCu);

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if ([(CLBApplicationInfo *)self isHiddenByUser])
  {
    v3 = +[CLFLog commonLog];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(CLBApplicationInfo *)self bundleIdentifier];
      v12 = 138412290;
      v13[0] = v4;
      v5 = "Unable to include application %@ because it was hidden by the user.";
      goto LABEL_10;
    }

LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  if ([(CLBApplicationInfo *)self isAppRestricted])
  {
    v3 = +[CLFLog commonLog];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(CLBApplicationInfo *)self bundleIdentifier];
      v12 = 138412290;
      v13[0] = v4;
      v5 = "Unable to include application %@ because it is restricted.";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if ([(CLBApplicationInfo *)self isUnavailable])
  {
    v3 = +[CLFLog commonLog];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_100285348(v3);
    }

    goto LABEL_11;
  }

  if (![(CLBApplicationInfo *)self isArcadeApp])
  {
    return 1;
  }

  v3 = [(CLBApplicationInfo *)self executableURL];
  [v3 fileSystemRepresentation];
  sub_10026A400();
  v6 = v8 == 0;
  if (v8)
  {
    v9 = v8;
    v10 = +[CLFLog commonLog];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(CLBApplicationInfo *)self bundleIdentifier];
      v12 = 67109378;
      LODWORD(v13[0]) = v9;
      WORD2(v13[0]) = 2114;
      *(v13 + 6) = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received FairPlay error %d while trying to launch Arcade app %{public}@", &v12, 0x12u);
    }

    goto LABEL_11;
  }

LABEL_12:

  return v6;
}

- (void)setNeedsIconImageUpdate
{
  [(CLBApplicationInfo *)self setNeedsIconImageUpdate:1];

  [(CLBApplicationInfo *)self _notifyObserversOfIconImageChange];
}

- (void)addIconImageObserver:(id)a3
{
  v4 = a3;
  v5 = [(CLBApplicationInfo *)self iconImageObservers];

  if (!v5)
  {
    v6 = [(CLBApplicationInfo *)self _weakPointersHashTable];
    [(CLBApplicationInfo *)self setIconImageObservers:v6];
  }

  v7 = [(CLBApplicationInfo *)self iconImageObservers];
  [v7 addObject:v4];
}

- (void)removeIconImageObserver:(id)a3
{
  v4 = a3;
  v5 = [(CLBApplicationInfo *)self iconImageObservers];
  [v5 removeObject:v4];
}

- (UIImage)iconImage
{
  v3 = [(CLBApplicationInfo *)self _iconCache];
  v4 = [(CLBApplicationInfo *)self _iconKey];
  v5 = [v3 objectForKey:v4];

  if ([(CLBApplicationInfo *)self needsIconImageUpdate]|| !v5)
  {
    [(CLBApplicationInfo *)self _updateIcon];
  }

  return v5;
}

- (void)_notifyObserversOfIconImageChange
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(CLBApplicationInfo *)self iconImageObservers];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) didUpdateIconImageForApplicationInfo:self];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)_iconKey
{
  v2 = [(CLBApplicationInfo *)self bundleIdentifier];
  v3 = [NSString stringWithFormat:@"%@", v2];

  return v3;
}

- (id)_iconCache
{
  if (qword_100331128 != -1)
  {
    sub_10028538C();
  }

  v3 = qword_100331120;

  return v3;
}

- (void)_updateIcon
{
  BSDispatchQueueAssertMain();
  if ([(CLBApplicationInfo *)self isUpdatingIcon])
  {
    v3 = +[CLFLog commonLog];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [(CLBApplicationInfo *)self bundleIdentifier];
      *buf = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Not updating icon for %@ because an update was already in progress.", buf, 0xCu);
    }
  }

  else
  {
    [(CLBApplicationInfo *)self setIsUpdatingIcon:1];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10001F5A8;
    v7[3] = &unk_1002FCDF0;
    v7[4] = self;
    v3 = objc_retainBlock(v7);
    if ([(CLBApplicationInfo *)self _requiresDownloadedHighResIcon])
    {
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_10001F6D8;
      v5[3] = &unk_1002FCE40;
      v5[4] = self;
      v6 = v3;
      [(CLBApplicationInfo *)self _fetchDownloadedHighResIconWithCompletion:v5];
    }

    else
    {
      [(CLBApplicationInfo *)self _fetchIconServicesIconWithCompletion:v3];
    }
  }
}

- (BOOL)_requiresDownloadedHighResIcon
{
  v2 = [(CLBApplicationInfo *)self bundleIdentifier];
  v3 = [CLBAppIcons shouldDownloadForBundleIdentifier:v2];

  return v3;
}

- (void)_fetchDownloadedHighResIconWithCompletion:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001F8BC;
  v7[3] = &unk_1002FCE18;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_fetchIconServicesIconWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CLBApplicationInfo *)self bundleIdentifier];
  v6 = [v5 isEqualToString:CLBCalendarBundleIdentifier];
  v7 = [ISIcon alloc];
  v8 = v7;
  if (v6)
  {
    v9 = +[NSDate date];
    v10 = +[NSCalendar currentCalendar];
    v11 = [v8 initWithDate:v9 calendar:v10 format:0];
  }

  else
  {
    v11 = [v7 initWithBundleIdentifier:v5];
  }

  v12 = [ISImageDescriptor alloc];
  +[CLBAppIcons size];
  v14 = v13;
  v16 = v15;
  +[CLBAppIcons scale];
  v18 = [v12 initWithSize:v14 scale:{v16, v17}];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10001FB24;
  v20[3] = &unk_1002FCE68;
  v21 = v4;
  v19 = v4;
  [v11 getImageForImageDescriptor:v18 completion:v20];
}

- (void)_significantTimeChangeOccurred:(id)a3
{
  v4 = +[CLFLog commonLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Significant time change occurred. Updating Calendar icon.", v5, 2u);
  }

  [(CLBApplicationInfo *)self setNeedsIconImageUpdate];
}

- (void)handleFirstUnlockIfNeeded
{
  v2 = self;
  BSDispatchQueueAssertMain();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = v2;
  sub_10009F044(sub_1000683FC, v3);
}

@end