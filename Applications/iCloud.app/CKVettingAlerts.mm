@interface CKVettingAlerts
+ (BOOL)isEmail:(id)email;
+ (id)_alertContentForAppStoreOperationWithApp:(id)app shareMetadata:(id)metadata keyPrefix:(id)prefix titleKeySuffix:(id)suffix bodyKeySuffix:(id)keySuffix isSourceICS:(BOOL)s;
+ (id)_alertContentForDropDownSelectionWithShareName:(id)name ownerName:(id)ownerName currentUserName:(id)userName currentUserFormattedUsername:(id)username dropDownTitles:(id)titles locKeyPrefix:(id)prefix isSourceICS:(BOOL)s;
+ (id)_alertContentForVettingBindingPromptWithBundleID:(id)d shareName:(id)name ownerName:(id)ownerName shareType:(id)type isShortcut:(BOOL)shortcut isSourceICS:(BOOL)s;
+ (id)_sanitizedShareURLSlug:(id)slug;
+ (id)alertContentDictionaryForDeviceOfflineErrorWithURLSlug:(id)slug;
+ (id)alertContentDictionaryForServiceUnavailableErrorWithURLSlug:(id)slug;
+ (id)alertContentForAppStoreAppLookupFailureWithShareName:(id)name error:(id)error;
+ (id)alertContentForAppStoreUpdateLookupFailureWithShareName:(id)name appName:(id)appName error:(id)error;
+ (id)alertContentForCompleteVettingError:(id)error shareTitle:(id)title email:(id)email phone:(id)phone reconstructedShareURL:(id)l;
+ (id)alertContentForFirstJoinAlertWithRecordName:(id)name appName:(id)appName bundleID:(id)d shareMetadata:(id)metadata currentUserName:(id)userName currentUserFormattedUsername:(id)username;
+ (id)alertContentForGenericErrorWithURLSlug:(id)slug;
+ (id)alertContentForGenericInitiateVettingError;
+ (id)alertContentForICloudAccountError:(id)error shareMetadata:(id)metadata shareURL:(id)l;
+ (id)alertContentForInitiateVettingError:(id)error shareTitle:(id)title isEmail:(BOOL)email address:(id)address;
+ (id)alertContentForRequestAccessConfirmation;
+ (id)alertContentForRequestAccessFailure;
+ (id)alertContentForRequestAccessWithHandle:(id)handle;
+ (id)alertContentForShareMetadataErrorWithURL:(id)l email:(id)email;
+ (id)alertContentForUnprovisionedDataclassWithURL:(id)l email:(id)email;
+ (id)appSpecificLocKeyForBundleID:(id)d shareType:(id)type prefix:(id)prefix;
+ (id)appSpecificLocKeyForURLSlug:(id)slug prefix:(id)prefix;
+ (id)deviceTypeSpecificSuffix;
+ (id)getAlertOptionsFromOptions:(id)options isSourceICS:(BOOL)s;
+ (id)getLaunchingOptionsFromOptions:(id)options isSourceICS:(BOOL)s;
+ (id)mediumNameFromComponents:(id)components;
+ (id)platformSpecificAlertOptionsWithOptions:(id)options bundleIdentifier:(id)identifier;
+ (void)showDropDownAlert:(id)alert defaultResponseBlock:(id)block alternateResponseBlock:(id)responseBlock errorBlock:(id)errorBlock;
+ (void)showICloudAccountSettingAlert:(id)alert appName:(id)name previewRequested:(BOOL *)requested isSourceICS:(BOOL)s maid:(BOOL)maid;
@end

@implementation CKVettingAlerts

+ (id)alertContentForFirstJoinAlertWithRecordName:(id)name appName:(id)appName bundleID:(id)d shareMetadata:(id)metadata currentUserName:(id)userName currentUserFormattedUsername:(id)username
{
  appNameCopy = appName;
  dCopy = d;
  metadataCopy = metadata;
  userNameCopy = userName;
  usernameCopy = username;
  nameCopy = name;
  v19 = +[NSCharacterSet whitespaceCharacterSet];
  v20 = [nameCopy stringByTrimmingCharactersInSet:v19];

  containerID = [metadataCopy containerID];
  specialContainerType = [containerID specialContainerType];

  if (specialContainerType <= 0x1D)
  {
    if (((1 << specialContainerType) & 0x32200000) != 0)
    {
      v55 = a2;
      selfCopy = self;
      share = [metadataCopy share];
      v24 = [share objectForKeyedSubscript:CKShareTypeKey];

      v59 = v20;
      if ([v20 length])
      {
        v25 = appNameCopy;
        v48 = v20;
        v52 = appNameCopy;
        v26 = sub_1000038F4(@"TITLED_DOCUMENT_OPEN_TITLE", @"%@%@");
      }

      else
      {
        v27 = [CKVettingAlerts appSpecificLocKeyForBundleID:dCopy shareType:v24 prefix:@"UNTITLED_DOCUMENT_OPEN_TITLE_"];
        v25 = appNameCopy;
        v48 = appNameCopy;
        v26 = sub_1000038F4(v27, @"%@");
      }

      v60 = dCopy;
      v28 = [CKVettingAlerts appSpecificLocKeyForBundleID:dCopy shareType:v24 prefix:@"PRIVATE_DOCUMENT_OPEN_BODY_", v48, v52];
      ownerIdentity = [metadataCopy ownerIdentity];
      nameComponents = [ownerIdentity nameComponents];
      v31 = [CKVettingAlerts mediumNameFromComponents:nameComponents];
      v53 = [CKVettingAlerts mediumNameFromComponents:userNameCopy];
      v49 = v31;
      v32 = sub_1000038F4(v28, @"%@%@%@");

      appNameCopy = v25;
      if (!v26 || !v32)
      {
        v46 = [NSAssertionHandler currentHandler:v31];
        [v46 handleFailureInMethod:v55 object:selfCopy file:@"CKVettingAlerts.m" lineNumber:101 description:{@"Failed to construct alertTitle: %@ and/or alertBody: %@ for %@", v26, v32, v25}];
      }

      v66[0] = @"ckVettingAlertTitle";
      v66[1] = @"ckVettingAlertBody";
      v67[0] = v26;
      v67[1] = v32;
      v33 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:2, v49];

      v20 = v59;
      dCopy = v60;
      goto LABEL_9;
    }

    if (specialContainerType == 4)
    {
      v35 = +[NSAssertionHandler currentHandler];
      [v35 handleFailureInMethod:a2 object:self file:@"CKVettingAlerts.m" lineNumber:77 description:@"ShareAcceptor isn't responsible for iWork FirstJoinAlert"];

      v36 = +[NSAssertionHandler currentHandler];
      [v36 handleFailureInMethod:a2 object:self file:@"CKVettingAlerts.m" lineNumber:131 description:{@"Appeasing the compiler, should never get here"}];

      v33 = &__NSDictionary0__struct;
      goto LABEL_9;
    }
  }

  v56 = a2;
  v61 = dCopy;
  selfCopy2 = self;
  if ([v20 length])
  {
    v50 = v20;
    v37 = @"TITLED_NONIWORK_DOCUMENT_OPEN_TITLE";
  }

  else
  {
    v50 = appNameCopy;
    v37 = @"UNTITLED_NONIWORK_DOCUMENT_OPEN_TITLE";
  }

  v38 = sub_1000038F4(v37, @"%@");
  share2 = [metadataCopy share];
  allowsAnonymousPublicAccess = [share2 allowsAnonymousPublicAccess];

  ownerIdentity2 = [metadataCopy ownerIdentity];
  nameComponents2 = [ownerIdentity2 nameComponents];
  v43 = [CKVettingAlerts mediumNameFromComponents:nameComponents2];
  v44 = v43;
  if (allowsAnonymousPublicAccess)
  {
    v51 = v43;
    v45 = sub_1000038F4(@"PUBLIC_ANONYMOUS_SHARING_OPEN_BODY", @"%@");
  }

  else
  {
    v52 = [CKVettingAlerts mediumNameFromComponents:userNameCopy];
    v54 = usernameCopy;
    v51 = v44;
    v45 = sub_1000038F4(@"GENERIC_APP_SHARING_OPEN_BODY", @"%@%@%@");
  }

  if (!v38 || !v45)
  {
    v47 = [NSAssertionHandler currentHandler:v51];
    [v47 handleFailureInMethod:v56 object:selfCopy2 file:@"CKVettingAlerts.m" lineNumber:126 description:{@"Filed to construct alertTitle: %@ and/or alertBody: %@ for generic share", v38, v45}];
  }

  v64[0] = @"ckVettingAlertTitle";
  v64[1] = @"ckVettingAlertBody";
  v65[0] = v38;
  v65[1] = v45;
  v33 = [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:2, v51];

  dCopy = v61;
LABEL_9:

  return v33;
}

+ (id)getAlertOptionsFromOptions:(id)options isSourceICS:(BOOL)s
{
  optionsCopy = options;
  v6 = optionsCopy;
  if (s)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    [v7 addEntriesFromDictionary:v6];
    [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:kCFUserNotificationAlertTopMostKey];
    [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:SBUserNotificationForcesModalAlertAppearance];
    [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:SBUserNotificationDisplayActionButtonOnLockScreen];
    v8 = [v7 copy];
  }

  else
  {
    v8 = optionsCopy;
  }

  return v8;
}

+ (id)getLaunchingOptionsFromOptions:(id)options isSourceICS:(BOOL)s
{
  optionsCopy = options;
  v6 = optionsCopy;
  if (s)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    [v7 addEntriesFromDictionary:v6];
    [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:FBSOpenApplicationOptionKeyUnlockDevice];
    [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:FBSOpenApplicationOptionKeyPromptUnlockDevice];
    v8 = [v7 copy];
  }

  else
  {
    v8 = optionsCopy;
  }

  return v8;
}

+ (id)_alertContentForVettingBindingPromptWithBundleID:(id)d shareName:(id)name ownerName:(id)ownerName shareType:(id)type isShortcut:(BOOL)shortcut isSourceICS:(BOOL)s
{
  sCopy = s;
  shortcutCopy = shortcut;
  dCopy = d;
  nameCopy = name;
  ownerNameCopy = ownerName;
  typeCopy = type;
  v33 = ownerNameCopy;
  if (ownerNameCopy)
  {
    if (shortcutCopy)
    {
      v16 = @"VETTING_ALERT_SINGLE_MATCH_BODY_";
    }

    else
    {
      v16 = @"VETTING_ALERT_BODY_";
    }

    v17 = [CKVettingAlerts appSpecificLocKeyForBundleID:dCopy shareType:typeCopy prefix:v16];
    v29 = [CKVettingAlerts mediumNameFromComponents:ownerNameCopy];
    v18 = CKLocalizedString();
  }

  else
  {
    if (shortcutCopy)
    {
      v19 = @"VETTING_ALERT_SINGLE_MATCH_BODY_UNKNOWN_USER_";
    }

    else
    {
      v19 = @"VETTING_ALERT_BODY_UNKNOWN_USER_";
    }

    v17 = [CKVettingAlerts appSpecificLocKeyForBundleID:dCopy shareType:typeCopy prefix:v19];
    v18 = CKLocalizedString();
  }

  v20 = [NSString stringWithFormat:@"VETTING_ALERT_TITLE%@_", @"_IOS"];
  v21 = [CKVettingAlerts appSpecificLocKeyForBundleID:dCopy shareType:typeCopy prefix:v20];
  v30 = nameCopy;
  v22 = CKLocalizedString();
  v32 = typeCopy;
  v35[0] = kCFUserNotificationAlertHeaderKey;
  v35[1] = kCFUserNotificationAlertMessageKey;
  v36[0] = v22;
  v36[1] = v18;
  v35[2] = kCFUserNotificationDefaultButtonTitleKey;
  CKLocalizedString();
  v23 = v31 = nameCopy;
  v36[2] = v23;
  v35[3] = kCFUserNotificationAlternateButtonTitleKey;
  v24 = CKLocalizedString();
  v36[3] = v24;
  v25 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:4, v30];
  v26 = [CKVettingAlerts platformSpecificAlertOptionsWithOptions:v25 bundleIdentifier:dCopy];

  v27 = [CKVettingAlerts getAlertOptionsFromOptions:v26 isSourceICS:sCopy];

  return v27;
}

+ (id)deviceTypeSpecificSuffix
{
  v4 = CKDeviceClass();
  if ([v4 isEqualToString:@"iPhone"])
  {
    v5 = @"_IPHONE";
LABEL_7:
    v6 = [@"_IOS" stringByAppendingString:v5];
    goto LABEL_8;
  }

  if ([v4 isEqualToString:@"iPad"])
  {
    v5 = @"_IPAD";
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"iPod"])
  {
    v5 = @"_IPOD_TOUCH";
    goto LABEL_7;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v8 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Device class %@ is not yet supported by CloudKit Vetting Alerts", buf, 0xCu);
  }

  v9 = +[NSAssertionHandler currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"CKVettingAlerts.m" lineNumber:240 description:{@"Unsupported device class: %@", v4}];

  v6 = @"_IOS";
LABEL_8:

  return v6;
}

+ (id)alertContentForAppStoreAppLookupFailureWithShareName:(id)name error:(id)error
{
  errorCopy = error;
  nameCopy = name;
  deviceTypeSpecificSuffix = [self deviceTypeSpecificSuffix];
  v9 = [@"APP_STORE_FAILURE_TITLE" stringByAppendingString:@"_IOS"];
  v10 = CKLocalizedString();

  domain = [errorCopy domain];

  if (domain == NSURLErrorDomain)
  {
    if ([errorCopy code] == -1009)
    {
      v14 = [NSString stringWithFormat:@"APP_STORE_GET_APP_FAILURE_OFFLINE_BODY%@", deviceTypeSpecificSuffix];
      v28[0] = v10;
      v27[0] = @"ckVettingAlertTitle";
      v27[1] = @"ckVettingAlertBody";
      v15 = CKLocalizedString();
      v28[1] = v15;
      v16 = v28;
      v17 = v27;
    }

    else
    {
      v14 = [NSString stringWithFormat:@"APP_STORE_GET_APP_FAILURE_STORE_NOT_AVAILABLE_BODY%@", deviceTypeSpecificSuffix];
      v25[0] = @"ckVettingAlertTitle";
      v25[1] = @"ckVettingAlertBody";
      v26[0] = v10;
      v15 = CKLocalizedString();
      v26[1] = v15;
      v16 = v26;
      v17 = v25;
    }
  }

  else
  {
    domain2 = [errorCopy domain];
    v13 = domain2;
    if (domain2 == CKUnderlyingErrorDomain)
    {
      code = [errorCopy code];

      if (code == 1024)
      {
        v23[0] = @"ckVettingAlertTitle";
        v23[1] = @"ckVettingAlertBody";
        v24[0] = v10;
        v14 = CKLocalizedString();
        v24[1] = v14;
        v19 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
        goto LABEL_11;
      }
    }

    else
    {
    }

    v14 = [NSString stringWithFormat:@"APP_STORE_GET_APP_FAILURE_STORE_NOT_AVAILABLE_BODY%@", deviceTypeSpecificSuffix];
    v21[0] = @"ckVettingAlertTitle";
    v21[1] = @"ckVettingAlertBody";
    v22[0] = v10;
    v15 = CKLocalizedString();
    v22[1] = v15;
    v16 = v22;
    v17 = v21;
  }

  v19 = [NSDictionary dictionaryWithObjects:v16 forKeys:v17 count:2];

LABEL_11:

  return v19;
}

+ (id)alertContentForAppStoreUpdateLookupFailureWithShareName:(id)name appName:(id)appName error:(id)error
{
  appNameCopy = appName;
  errorCopy = error;
  nameCopy = name;
  v10 = [@"APP_STORE_FAILURE_TITLE" stringByAppendingString:@"_IOS"];
  v11 = CKLocalizedString();

  domain = [errorCopy domain];

  if (domain == NSURLErrorDomain)
  {
    v21 = appNameCopy;
    if ([errorCopy code] == -1009)
    {
      v15 = CKLocalizedString();
      v34 = @"ckVettingAlertTitle";
      v35 = @"ckVettingAlertBody";
      v36 = v11;
      v37 = v15;
      v16 = &v36;
      v17 = &v34;
    }

    else
    {
      v15 = CKLocalizedString();
      v30 = @"ckVettingAlertTitle";
      v31 = @"ckVettingAlertBody";
      v32 = v11;
      v33 = v15;
      v16 = &v32;
      v17 = &v30;
    }
  }

  else
  {
    domain2 = [errorCopy domain];
    v14 = domain2;
    if (domain2 == CKUnderlyingErrorDomain)
    {
      code = [errorCopy code];

      if (code == 1024)
      {
        v21 = appNameCopy;
        v15 = CKLocalizedString();
        v26 = @"ckVettingAlertTitle";
        v27 = @"ckVettingAlertBody";
        v28 = v11;
        v29 = v15;
        v16 = &v28;
        v17 = &v26;
        goto LABEL_10;
      }
    }

    else
    {
    }

    v21 = appNameCopy;
    v15 = CKLocalizedString();
    v22 = @"ckVettingAlertTitle";
    v23 = @"ckVettingAlertBody";
    v24 = v11;
    v25 = v15;
    v16 = &v24;
    v17 = &v22;
  }

LABEL_10:
  v19 = [NSDictionary dictionaryWithObjects:v16 forKeys:v17 count:2, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37];

  return v19;
}

+ (id)_alertContentForAppStoreOperationWithApp:(id)app shareMetadata:(id)metadata keyPrefix:(id)prefix titleKeySuffix:(id)suffix bodyKeySuffix:(id)keySuffix isSourceICS:(BOOL)s
{
  sCopy = s;
  appCopy = app;
  metadataCopy = metadata;
  keySuffixCopy = keySuffix;
  prefixCopy = prefix;
  suffix = [NSString stringWithFormat:@"%@TITLE%@", prefixCopy, suffix];
  v17 = CKLocalizedString();
  ownerIdentity = [metadataCopy ownerIdentity];
  nameComponents = [ownerIdentity nameComponents];

  if (nameComponents)
  {
    keySuffixCopy = [NSString stringWithFormat:@"%@BODY%@", prefixCopy, keySuffixCopy];

    ownerIdentity2 = [metadataCopy ownerIdentity];
    nameComponents2 = [ownerIdentity2 nameComponents];
    v30 = [CKVettingAlerts mediumNameFromComponents:nameComponents2];
    v23 = CKLocalizedString();
  }

  else
  {
    keySuffixCopy = [NSString stringWithFormat:@"%@BODY_UNKNOWN_USER%@", prefixCopy, keySuffixCopy];

    v30 = appCopy;
    v23 = CKLocalizedString();
  }

  v32[0] = kCFUserNotificationAlertHeaderKey;
  v32[1] = kCFUserNotificationAlertMessageKey;
  v33[0] = v17;
  v33[1] = v23;
  v32[2] = kCFUserNotificationDefaultButtonTitleKey;
  v24 = CKLocalizedString();
  v33[2] = v24;
  v32[3] = kCFUserNotificationAlternateButtonTitleKey;
  v25 = CKLocalizedString();
  v33[3] = v25;
  v26 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:4, v30];
  v27 = [CKVettingAlerts platformSpecificAlertOptionsWithOptions:v26 bundleIdentifier:0];

  v28 = [CKVettingAlerts getAlertOptionsFromOptions:v27 isSourceICS:sCopy];

  return v28;
}

+ (id)alertContentForInitiateVettingError:(id)error shareTitle:(id)title isEmail:(BOOL)email address:(id)address
{
  emailCopy = email;
  errorCopy = error;
  titleCopy = title;
  addressCopy = address;
  v12 = [NSString stringWithFormat:@"VETTING_FAILURE_ALERT_TITLE_CANT_SEND_LINK%@", @"_IOS"];
  v13 = sub_1000038F4(v12, &stru_1000291A0);
  v14 = sub_1000038F4(@"VETTING_FAILURE_ALERT_BODY_INITIATE_GENERIC_ERROR", &stru_1000291A0);
  domain = [errorCopy domain];
  v16 = [domain isEqualToString:CKErrorDomain];

  if (v16)
  {
    userInfo = [errorCopy userInfo];
    v18 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

    code = [v18 code];
    if (code <= 8006)
    {
      if (code == 5005)
      {
        v33 = titleCopy;
        v20 = @"VETTING_FAILURE_ALERT_BODY_INITIATE_PCS_ERROR";
      }

      else
      {
        if (code != 8006)
        {
          goto LABEL_29;
        }

        v33 = addressCopy;
        if (emailCopy)
        {
          v20 = @"VETTING_FAILURE_ALERT_BODY_INITIATE_TOO_MANY_VETS_EMAIL";
        }

        else
        {
          v20 = @"VETTING_FAILURE_ALERT_BODY_INITIATE_TOO_MANY_VETS_NUMBER";
        }
      }

      v21 = @"%@";
      goto LABEL_26;
    }

    if (code != 8007)
    {
      if (code == 8008)
      {
        v23 = +[CKContainer matterhornName];
        v33 = addressCopy;
        v34 = v23;
        if (emailCopy)
        {
          v27 = @"VETTING_FAILURE_ALERT_BODY_INITIATE_VETTED_TO_OTHER_EMAIL";
        }

        else
        {
          v27 = @"VETTING_FAILURE_ALERT_BODY_INITIATE_VETTED_TO_OTHER_NUMBER";
        }

        v29 = sub_1000038F4(v27, @"%@%@");

        v25 = v13;
        v14 = v29;
        goto LABEL_27;
      }

      if (code == 8010)
      {
        v20 = @"VETTING_FAILURE_ALERT_BODY_INITIATE_SERVER_ERROR";
        v21 = &stru_1000291A0;
LABEL_26:
        sub_1000038F4(v20, v21);
        v23 = v14;
        v14 = v25 = v13;
LABEL_27:
        v24 = v12;
LABEL_28:

        v13 = v25;
        v12 = v24;
      }

LABEL_29:

      goto LABEL_30;
    }

    userInfo2 = [v18 userInfo];
    v23 = [userInfo2 objectForKeyedSubscript:CKErrorAccountPrimaryEmailKey];

    if (emailCopy)
    {
      v24 = [@"VETTING_FAILURE_ALERT_TITLE_INITIATE_VETTED_TO_CALLER_ERROR_EMAIL" stringByAppendingString:@"_IOS"];

      v25 = sub_1000038F4(v24, &stru_1000291A0);

      if (!v23 || ([v23 isEqualToString:&stru_1000291A0] & 1) != 0)
      {
        v33 = addressCopy;
        v26 = @"VETTING_FAILURE_ALERT_BODY_INITIATE_VETTED_TO_CALLER_ERROR_EMAIL_NO_APPLE_ID";
LABEL_21:
        v28 = @"%@";
LABEL_36:
        v32 = sub_1000038F4(v26, v28);

        v14 = v32;
        goto LABEL_28;
      }

      v33 = addressCopy;
      v34 = v23;
      v26 = @"VETTING_FAILURE_ALERT_BODY_INITIATE_VETTED_TO_CALLER_ERROR_EMAIL";
    }

    else
    {
      v24 = [@"VETTING_FAILURE_ALERT_TITLE_INITIATE_VETTED_TO_CALLER_ERROR_PHONE" stringByAppendingString:@"_IOS"];

      v25 = sub_1000038F4(v24, &stru_1000291A0);

      if (!v23 || ([v23 isEqualToString:&stru_1000291A0] & 1) != 0)
      {
        v33 = addressCopy;
        v26 = @"VETTING_FAILURE_ALERT_BODY_INITIATE_VETTED_TO_CALLER_ERROR_PHONE_NO_APPLE_ID";
        goto LABEL_21;
      }

      v33 = addressCopy;
      v34 = v23;
      v26 = @"VETTING_FAILURE_ALERT_BODY_INITIATE_VETTED_TO_CALLER_ERROR_PHONE";
    }

    v28 = @"%@%@";
    goto LABEL_36;
  }

LABEL_30:
  v35[0] = @"ckVettingAlertTitle";
  v35[1] = @"ckVettingAlertBody";
  v36[0] = v13;
  v36[1] = v14;
  v30 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2, v33, v34];

  return v30;
}

+ (id)_sanitizedShareURLSlug:(id)slug
{
  slugCopy = slug;
  if (qword_10002E358 != -1)
  {
    dispatch_once(&qword_10002E358, &stru_1000287B0);
  }

  cKURLSlug = [slugCopy CKURLSlug];
  if ([qword_10002E360 containsObject:cKURLSlug])
  {
    v5 = cKURLSlug;
  }

  else
  {
    v5 = @"share";
  }

  return v5;
}

+ (id)alertContentForCompleteVettingError:(id)error shareTitle:(id)title email:(id)email phone:(id)phone reconstructedShareURL:(id)l
{
  errorCopy = error;
  titleCopy = title;
  emailCopy = email;
  phoneCopy = phone;
  lCopy = l;
  v17 = @"_WITH_SHARE_NAME";
  if (!titleCopy)
  {
    v17 = @"_WITHOUT_SHARE_NAME";
  }

  v83 = lCopy;
  v84 = v17;
  v85 = [self _sanitizedShareURLSlug:lCopy];
  v18 = [@"VETTING_FAILURE_ALERT_TITLE_COMPLETE_GENERIC_ERROR" stringByAppendingString:@"_IOS"];
  v19 = sub_1000038F4(v18, &stru_1000291A0);
  v20 = sub_1000038F4(@"VETTING_FAILURE_ALERT_BODY_COMPLETE_GENERIC_ERROR_ADDRESS", &stru_1000291A0);
  v86 = emailCopy;
  if (emailCopy)
  {
    v21 = sub_1000038F4(@"VETTING_FAILURE_ALERT_BODY_COMPLETE_GENERIC_ERROR_EMAIL", &stru_1000291A0);

    v20 = v21;
  }

  v82 = phoneCopy;
  if (phoneCopy)
  {
    v22 = sub_1000038F4(@"VETTING_FAILURE_ALERT_BODY_COMPLETE_GENERIC_ERROR_PHONE", &stru_1000291A0);

    v20 = v22;
  }

  domain = [errorCopy domain];
  v24 = [domain isEqualToString:CKErrorDomain];

  if (!v24)
  {
    v28 = v82;
    v31 = v84;
    goto LABEL_78;
  }

  userInfo = [errorCopy userInfo];
  v26 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

  v81 = v26;
  code = [v26 code];
  if (code > 8008)
  {
    if (code == 8009)
    {
      v41 = [NSString stringWithFormat:@"VETTING_FAILURE_ALERT_TITLE_COMPLETE_DRYRUN_KEYSWAP_FAILED%@_%@", @"_IOS", v85];

      v79 = sub_1000038F4(v41, &stru_1000291A0);

      if (([v85 isEqualToString:kCKPhotosSharedLibraryShareURLSlug] & 1) != 0 || objc_msgSend(v85, "isEqualToString:", kCKFreeformShareURLSlug))
      {
        v42 = @"PHONE";
        v28 = v82;
        if (!v82)
        {
          v42 = @"EMAIL";
        }

        v43 = [@"VETTING_FAILURE_ALERT_BODY_COMPLETE_DRYRUN_KEYSWAP_FAILED_" stringByAppendingFormat:@"%@_%@", v85, v42];
      }

      else
      {
        v28 = v82;
        if (v82)
        {
          v50 = @"PHONE";
        }

        else
        {
          v50 = @"EMAIL";
        }

        v43 = [NSString stringWithFormat:@"VETTING_FAILURE_ALERT_BODY_COMPLETE_DRYRUN_KEYSWAP_FAILED%@_IOS_%@", v84, v50];
      }

      v18 = v43;

      v75 = titleCopy;
      v51 = sub_1000038F4(v18, @"%@");
      v52 = v20;
      v20 = v51;
      v31 = v84;
      v32 = v52;
      goto LABEL_40;
    }

    if (code == 8011)
    {
      v28 = v82;
      if (v86)
      {
        v44 = [@"VETTING_FAILURE_ALERT_TITLE_COMPLETE_TOKEN_AUTH_FAILED_EMAIL" stringByAppendingString:@"_IOS"];
        v45 = sub_1000038F4(v44, &stru_1000291A0);

        v46 = @"VETTING_FAILURE_ALERT_BODY_COMPLETE_TOKEN_AUTH_FAILED_EMAIL";
      }

      else
      {
        v47 = [@"VETTING_FAILURE_ALERT_TITLE_COMPLETE_TOKEN_AUTH_FAILED_PHONE" stringByAppendingString:@"_IOS"];
        v45 = sub_1000038F4(v47, &stru_1000291A0);

        v46 = @"VETTING_FAILURE_ALERT_BODY_COMPLETE_TOKEN_AUTH_FAILED_PHONE";
      }

      v48 = [(__CFString *)v46 stringByAppendingString:@"_IOS"];
      v49 = sub_1000038F4(v48, &stru_1000291A0);

      v20 = v49;
      v32 = v48;
      v30 = v45;
      goto LABEL_75;
    }

    if (code != 8012)
    {
      v28 = v82;
      v31 = v84;
      goto LABEL_77;
    }

    userInfo2 = [v26 userInfo];
    v34 = [userInfo2 objectForKeyedSubscript:NSUnderlyingErrorKey];

    v35 = v34;
    domain2 = [v34 domain];
    if ([domain2 isEqualToString:CKErrorDomain])
    {
      v37 = v35;
      code2 = [v35 code];

      if (code2 != 2)
      {
        v35 = v37;
LABEL_42:
        v53 = [v86 length];
        v54 = @"_EMAIL";
        if (!v53)
        {
          v54 = @"_PHONE";
        }

        v55 = v54;
        domain3 = [v35 domain];
        v77 = v35;
        if ([domain3 isEqualToString:CKErrorDomain])
        {
          if ([v35 code] == 3)
          {

            goto LABEL_60;
          }

          code3 = [v35 code];

          v59 = code3 == 4;
          v35 = v77;
          if (v59)
          {
LABEL_60:
            v66 = [@"VETTING_FAILURE_ALERT_TITLE_COMPLETE_SHARE_METADATA_FETCH_FAILED" stringByAppendingFormat:@"%@_%@", @"_IOS", v85];
            v80 = sub_1000038F4(v66, &stru_1000291A0);

            if (([v85 isEqualToString:kCKPhotosSharedLibraryShareURLSlug] & 1) != 0 || objc_msgSend(v85, "isEqualToString:", kCKFreeformShareURLSlug))
            {
              v68 = [@"VETTING_FAILURE_ALERT_BODY_COMPLETE_SHARE_METADATA_FETCH_FAILED_OFFLINE_" stringByAppendingFormat:@"%@%@", v85, v55];
            }

            else
            {
              v68 = [NSString stringWithFormat:@"VETTING_FAILURE_ALERT_BODY_COMPLETE_SHARE_METADATA_FETCH_FAILED_OFFLINE%@%@", v84, v55];
            }

            v72 = v68;
            v75 = titleCopy;
            v70 = sub_1000038F4(v68, @"%@");

            v20 = v72;
            v32 = v77;
            v30 = v80;
            goto LABEL_74;
          }
        }

        else
        {
        }

        domain4 = [v35 domain];
        if ([domain4 isEqualToString:CKErrorDomain])
        {
          code4 = [v35 code];

          v59 = code4 == 11;
          v35 = v77;
          if (v59)
          {
            if ([@"_IOS" isEqualToString:@"_IOS"] && objc_msgSend(v85, "isEqualToString:", @"share"))
            {
              v60 = v84;
              v61 = v85;
              v62 = [@"VETTING_FAILURE_ALERT_TITLE_COMPLETE_SHARE_METADATA_FETCH_FAILED_ITEM_UNAVAILABLE" stringByAppendingFormat:@"%@%@_%@", v84, @"_IOS", v85];
              v63 = sub_1000038F4(v62, @"%@");
            }

            else
            {
              v61 = v85;
              v62 = [@"VETTING_FAILURE_ALERT_TITLE_COMPLETE_SHARE_METADATA_FETCH_FAILED_ITEM_UNAVAILABLE" stringByAppendingFormat:@"%@_%@", @"_IOS", v85];
              v63 = sub_1000038F4(v62, &stru_1000291A0);
              v60 = v84;
            }

            if (([v61 isEqualToString:kCKPhotosSharedLibraryShareURLSlug] & 1) != 0 || objc_msgSend(v61, "isEqualToString:", kCKFreeformShareURLSlug))
            {
              v71 = [@"VETTING_FAILURE_ALERT_BODY_COMPLETE_SHARE_METADATA_FETCH_FAILED_ITEM_UNAVAILABLE_" stringByAppendingFormat:@"%@%@", v61, v55];
            }

            else
            {
              v71 = [NSString stringWithFormat:@"VETTING_FAILURE_ALERT_BODY_COMPLETE_SHARE_METADATA_FETCH_FAILED_ITEM_UNAVAILABLE%@%@", v60, v55];
            }

            v66 = v71;
            v32 = v77;
            v30 = v63;
            v75 = titleCopy;
            v70 = sub_1000038F4(v71, @"%@");
            goto LABEL_74;
          }
        }

        else
        {
        }

        domain5 = [v35 domain];
        if ([domain5 isEqualToString:CKErrorDomain])
        {
          code5 = [v35 code];

          if (code5 == 1000)
          {
            v66 = [@"VETTING_FAILURE_ALERT_TITLE_COMPLETE_SHARE_METADATA_FETCH_FAILED" stringByAppendingFormat:@"%@_%@", @"_IOS", v85];
            v30 = sub_1000038F4(v66, &stru_1000291A0);

            [NSString stringWithFormat:@"VETTING_FAILURE_ALERT_BODY_COMPLETE_SHARE_METADATA_FETCH_FAILED_SERVER_ERROR%@%@", v84, v55];
            v69 = LABEL_65:;
            v75 = titleCopy;
            v70 = sub_1000038F4(v69, @"%@");

            v20 = v69;
            v32 = v77;
LABEL_74:

            v20 = v70;
            v28 = v82;
LABEL_75:
            v31 = v84;
            goto LABEL_76;
          }
        }

        else
        {
        }

        v66 = [@"VETTING_FAILURE_ALERT_TITLE_COMPLETE_SHARE_METADATA_FETCH_FAILED" stringByAppendingFormat:@"%@_%@", @"_IOS", v85];
        v30 = sub_1000038F4(v66, &stru_1000291A0);

        [NSString stringWithFormat:@"VETTING_FAILURE_ALERT_BODY_COMPLETE_SHARE_METADATA_FETCH_FAILED_UNKNOWN%@%@", v84, v55];
        goto LABEL_65;
      }

      domain2 = [v37 userInfo];
      v39 = [domain2 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];
      v78 = [v39 objectForKeyedSubscript:v83];

      v35 = v78;
    }

    goto LABEL_42;
  }

  v28 = v82;
  if ((code - 8003) < 2)
  {
    v29 = [@"VETTING_FAILURE_ALERT_TITLE_COMPLETE_GENERIC_ERROR" stringByAppendingString:@"_IOS"];

    v30 = sub_1000038F4(v29, &stru_1000291A0);

    v31 = v84;
    v18 = [NSString stringWithFormat:@"VETTING_FAILURE_ALERT_BODY_COMPLETE_VETTING_RECORD_ERROR%@%@", v84, @"_IOS"];

    v75 = titleCopy;
    sub_1000038F4(v18, @"%@");
    v20 = v32 = v20;
LABEL_76:

    v19 = v30;
    goto LABEL_77;
  }

  if (code == 8002)
  {
    v40 = [@"VETTING_FAILURE_ALERT_TITLE_COMPLETE_TOKEN_INVALID" stringByAppendingString:@"_IOS"];

    v79 = sub_1000038F4(v40, &stru_1000291A0);

    v31 = v84;
    v18 = [NSString stringWithFormat:@"VETTING_FAILURE_ALERT_BODY_COMPLETE_TOKEN_INVALID%@", v84];

    if (v86)
    {
      v75 = v86;
      v76 = titleCopy;
    }

    else
    {
      v75 = v82;
      v76 = titleCopy;
    }

    sub_1000038F4(v18, @"%@%@");
    v20 = v32 = v20;
LABEL_40:
    v30 = v79;
    goto LABEL_76;
  }

  v31 = v84;
LABEL_77:

LABEL_78:
  v87[0] = @"ckVettingAlertTitle";
  v87[1] = @"ckVettingAlertBody";
  v88[0] = v19;
  v88[1] = v20;
  v73 = [NSDictionary dictionaryWithObjects:v88 forKeys:v87 count:2, v75, v76];

  return v73;
}

+ (id)alertContentForShareMetadataErrorWithURL:(id)l email:(id)email
{
  emailCopy = email;
  cKURLSlug = [l CKURLSlug];
  v7 = [@"ITEM_UNAVAILABLE_FAILURE_ALERT_TITLE" stringByAppendingFormat:@"%@_", @"_IOS"];
  v8 = [CKVettingAlerts appSpecificLocKeyForURLSlug:cKURLSlug prefix:v7];

  if (emailCopy)
  {
    v9 = @"ITEM_UNAVAILABLE_FAILURE_ALERT_BODY_EMAIL";
    v10 = @"%@";
  }

  else
  {
    v9 = @"ITEM_UNAVAILABLE_FAILURE_ALERT_BODY";
    v10 = &stru_1000291A0;
  }

  v11 = sub_1000038F4(v9, v10);
  v15[0] = @"ckVettingAlertTitle";
  v12 = sub_1000038F4(v8, &stru_1000291A0);
  v15[1] = @"ckVettingAlertBody";
  v16[0] = v12;
  v16[1] = v11;
  v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];

  return v13;
}

+ (id)alertContentForUnprovisionedDataclassWithURL:(id)l email:(id)email
{
  emailCopy = email;
  cKURLSlug = [l CKURLSlug];
  v7 = [@"ITEM_UNAVAILABLE_FAILURE_ALERT_TITLE" stringByAppendingFormat:@"%@_", @"_IOS"];
  v8 = [CKVettingAlerts appSpecificLocKeyForURLSlug:cKURLSlug prefix:v7];

  v13[0] = @"ckVettingAlertTitle";
  v9 = sub_1000038F4(v8, &stru_1000291A0);
  v13[1] = @"ckVettingAlertBody";
  v14[0] = v9;
  v10 = sub_1000038F4(@"ITEM_UNAVAILABLE_UNPROVISIONED_DATACLASS_ALERT_BODY", @"%@");

  v14[1] = v10;
  emailCopy = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2, emailCopy];

  return emailCopy;
}

+ (id)alertContentForICloudAccountError:(id)error shareMetadata:(id)metadata shareURL:(id)l
{
  errorCopy = error;
  metadataCopy = metadata;
  lCopy = l;
  domain = [errorCopy domain];
  if ([domain isEqualToString:CKErrorDomain])
  {
    if ([errorCopy code] == 9)
    {

LABEL_15:
      v30 = [@"SIGN_IN_TO_ICLOUD_TITLE" stringByAppendingString:@"_IOS"];
      v31 = +[CKContainer matterhornName];
      v16 = CKLocalizedString();

      v32 = [@"SIGN_IN_TO_ICLOUD_BODY" stringByAppendingFormat:@"%@_", @"_IOS"];
      cKURLSlug = [lCopy CKURLSlug];
      v34 = [CKVettingAlerts appSpecificLocKeyForURLSlug:cKURLSlug prefix:v32];
      v41 = +[CKContainer matterhornName];
      v24 = CKLocalizedString();

      v49[0] = @"ckVettingAlertTitle";
      v49[1] = @"ckVettingAlertBody";
      v50[0] = v16;
      v50[1] = v24;
      v28 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:2, v41];

      goto LABEL_23;
    }

    code = [errorCopy code];

    if (code == 115)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  domain2 = [errorCopy domain];
  if ([domain2 isEqualToString:CKUnderlyingErrorDomain])
  {
    code2 = [errorCopy code];

    if (code2 == 1023)
    {
      userInfo = [errorCopy userInfo];
      v14 = [userInfo objectForKeyedSubscript:CKErrorDisabledAppLocalizedName];

      v15 = [@"ENABLE_IN_ICLOUD_TITLE" stringByAppendingString:@"_IOS"];
      v39 = +[CKContainer matterhornName];
      v16 = CKLocalizedString();

      ownerIdentity = [metadataCopy ownerIdentity];
      nameComponents = [ownerIdentity nameComponents];

      if (v14)
      {
        cKURLSlug2 = [lCopy CKURLSlug];
        if (nameComponents)
        {
          ownerIdentity3 = [CKVettingAlerts appSpecificLocKeyForURLSlug:cKURLSlug2 prefix:@"ENABLE_IN_ICLOUD_BODY_"];

          ownerIdentity2 = [metadataCopy ownerIdentity];
          nameComponents2 = [ownerIdentity2 nameComponents];
          [CKVettingAlerts mediumNameFromComponents:nameComponents2];
          v23 = v22 = v14;
          v42 = +[CKContainer matterhornName];
          v40 = v23;
          v24 = CKLocalizedString();

          v14 = v22;
        }

        else
        {
          ownerIdentity3 = [CKVettingAlerts appSpecificLocKeyForURLSlug:cKURLSlug2 prefix:@"ENABLE_IN_ICLOUD_BODY_UNKNOWN_USER_"];

          v40 = +[CKContainer matterhornName];
          v24 = CKLocalizedString();
        }
      }

      else if (nameComponents)
      {
        ownerIdentity3 = [metadataCopy ownerIdentity];
        nameComponents3 = [ownerIdentity3 nameComponents];
        v37 = [CKVettingAlerts mediumNameFromComponents:nameComponents3];
        +[CKContainer matterhornName];
        v43 = v40 = v37;
        v24 = CKLocalizedString();
      }

      else
      {
        ownerIdentity3 = +[CKContainer matterhornName];
        v40 = ownerIdentity3;
        v24 = CKLocalizedString();
      }

      v47[0] = @"ckVettingAlertTitle";
      v47[1] = @"ckVettingAlertBody";
      v48[0] = v16;
      v48[1] = v24;
      v28 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:2, v40];

      goto LABEL_23;
    }
  }

  else
  {
  }

  domain3 = [errorCopy domain];
  if ([domain3 isEqualToString:CKErrorDomain])
  {
    code3 = [errorCopy code];

    if (code3 == 110)
    {
      v27 = [@"UPDATE_APPLE_ID_SETTINGS_TITLE" stringByAppendingFormat:@"%@", @"_IOS"];
      v16 = CKLocalizedString();

      v24 = CKLocalizedString();
      v45[0] = @"ckVettingAlertTitle";
      v45[1] = @"ckVettingAlertBody";
      v46[0] = v16;
      v46[1] = v24;
      v28 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:2];
      goto LABEL_23;
    }
  }

  else
  {
  }

  cKURLSlug3 = [lCopy CKURLSlug];
  v28 = [CKVettingAlerts alertContentForGenericErrorWithURLSlug:cKURLSlug3];

  v24 = &stru_1000291A0;
  v16 = &stru_1000291A0;
LABEL_23:

  return v28;
}

+ (id)alertContentDictionaryForDeviceOfflineErrorWithURLSlug:(id)slug
{
  slugCopy = slug;
  v4 = [NSString stringWithFormat:@"DEVICE_OFFLINE_TITLE%@_", @"_IOS"];
  v5 = [CKVettingAlerts appSpecificLocKeyForURLSlug:slugCopy prefix:v4];
  v6 = CKLocalizedString();

  v7 = [NSString stringWithFormat:@"DEVICE_OFFLINE_BODY%@_", @"_IOS"];
  v8 = [CKVettingAlerts appSpecificLocKeyForURLSlug:slugCopy prefix:v7];

  v9 = CKLocalizedString();

  v12[0] = @"ckVettingAlertTitle";
  v12[1] = @"ckVettingAlertBody";
  v13[0] = v6;
  v13[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];

  return v10;
}

+ (id)alertContentDictionaryForServiceUnavailableErrorWithURLSlug:(id)slug
{
  slugCopy = slug;
  v4 = [NSString stringWithFormat:@"SERVER_ERROR_TITLE%@_", @"_IOS"];
  v5 = [CKVettingAlerts appSpecificLocKeyForURLSlug:slugCopy prefix:v4];
  v6 = CKLocalizedString();

  v7 = [NSString stringWithFormat:@"SERVER_ERROR_BODY%@_", @"_IOS"];
  v8 = [CKVettingAlerts appSpecificLocKeyForURLSlug:slugCopy prefix:v7];

  v9 = CKLocalizedString();

  v12[0] = @"ckVettingAlertTitle";
  v12[1] = @"ckVettingAlertBody";
  v13[0] = v6;
  v13[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];

  return v10;
}

+ (id)_alertContentForDropDownSelectionWithShareName:(id)name ownerName:(id)ownerName currentUserName:(id)userName currentUserFormattedUsername:(id)username dropDownTitles:(id)titles locKeyPrefix:(id)prefix isSourceICS:(BOOL)s
{
  nameCopy = name;
  ownerNameCopy = ownerName;
  userNameCopy = userName;
  usernameCopy = username;
  titlesCopy = titles;
  prefixCopy = prefix;
  if (nameCopy)
  {
    [NSString stringWithFormat:@"%@TITLE%@", prefixCopy, @"_IOS"];
  }

  else
  {
    [NSString stringWithFormat:@"%@UNTITLED_TITLE%@", prefixCopy, @"_IOS"];
  }
  v19 = ;
  v33 = CKLocalizedString();

  v32 = usernameCopy;
  v31 = userNameCopy;
  if (ownerNameCopy)
  {
    v20 = [NSString stringWithFormat:@"%@BODY%@", prefixCopy, @"_IOS"];
    v21 = [CKVettingAlerts mediumNameFromComponents:ownerNameCopy];
    v30 = [CKVettingAlerts mediumNameFromComponents:userNameCopy];
    v22 = CKLocalizedString();
  }

  else
  {
    v20 = [NSString stringWithFormat:@"%@UNKNOWN_USER_BODY%@", prefixCopy, @"_IOS"];
    v21 = [CKVettingAlerts mediumNameFromComponents:userNameCopy];
    v30 = usernameCopy;
    v22 = CKLocalizedString();
  }

  v23 = [NSString stringWithFormat:@"%@OPEN_BUTTON_MAC", prefixCopy, v30];
  v24 = CKLocalizedString();
  v35[0] = kCFUserNotificationAlertHeaderKey;
  v35[1] = kCFUserNotificationAlertMessageKey;
  v36[0] = v33;
  v36[1] = v22;
  v36[2] = v24;
  v35[2] = kCFUserNotificationDefaultButtonTitleKey;
  v35[3] = kCFUserNotificationAlternateButtonTitleKey;
  v25 = CKLocalizedString();
  v35[4] = kCFUserNotificationPopUpTitlesKey;
  v36[3] = v25;
  v36[4] = titlesCopy;
  v26 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:5];
  v27 = [CKVettingAlerts platformSpecificAlertOptionsWithOptions:v26 bundleIdentifier:0];

  v28 = [CKVettingAlerts getAlertOptionsFromOptions:v27 isSourceICS:s];

  return v28;
}

+ (void)showICloudAccountSettingAlert:(id)alert appName:(id)name previewRequested:(BOOL *)requested isSourceICS:(BOOL)s maid:(BOOL)maid
{
  maidCopy = maid;
  sCopy = s;
  alertCopy = alert;
  nameCopy = name;
  v11 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.AppleAccount/ICLOUD_SERVICE"];
  if (maidCopy)
  {
    v12 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings"];

    v11 = v12;
  }

  v13 = CKLocalizedString();
  if (nameCopy)
  {
    nameCopy = [NSString stringWithFormat:@"PREVIEW_BUTTON_IOS_%@", nameCopy];
    if (nameCopy)
    {
      v15 = CKLocalizedString();
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
    nameCopy = 0;
  }

  v16 = CKLocalizedString();
  v39[0] = kCFUserNotificationAlertHeaderKey;
  v17 = [alertCopy objectForKeyedSubscript:@"ckVettingAlertTitle"];
  v40[0] = v17;
  v39[1] = kCFUserNotificationAlertMessageKey;
  v18 = [alertCopy objectForKeyedSubscript:@"ckVettingAlertBody"];
  v40[1] = v18;
  v40[2] = v13;
  v31 = v13;
  v39[2] = kCFUserNotificationDefaultButtonTitleKey;
  v39[3] = kCFUserNotificationAlternateButtonTitleKey;
  v40[3] = v16;
  v19 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:4];

  v20 = [CKVettingAlerts getAlertOptionsFromOptions:v19 isSourceICS:sCopy];

  if (v15)
  {
    v21 = [v20 mutableCopy];
    [v21 setObject:v15 forKey:kCFUserNotificationOtherButtonTitleKey];

    v20 = v21;
  }

  v22 = [CKVettingAlerts platformSpecificAlertOptionsWithOptions:v20 bundleIdentifier:0];

  v23 = CFUserNotificationCreate(0, 0.0, 3uLL, 0, v22);
  responseFlags = 0;
  CFUserNotificationReceiveResponse(v23, 604800.0, &responseFlags);
  v24 = 0;
  if ((responseFlags & 3) > 1)
  {
    v24 = (responseFlags & 3) == 2;
  }

  else if ((responseFlags & 3) == 0)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v25 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Redirecting user to iCloud preferences", buf, 2u);
    }

    v26 = [CKVettingAlerts getLaunchingOptionsFromOptions:0 isSourceICS:sCopy];
    v27 = +[LSApplicationWorkspace defaultWorkspace];
    v34 = v26;
    v35 = 0;
    v30 = v11;
    LOBYTE(v26) = [v27 openSensitiveURL:v11 withOptions:v26 error:&v35];
    v28 = v35;

    if ((v26 & 1) == 0)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v29 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v38 = v28;
        _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to open iCloud settings: %@", buf, 0xCu);
      }
    }

    v24 = 0;
    v11 = v30;
  }

  CFRelease(v23);
  if (requested)
  {
    *requested = v24;
  }
}

+ (void)showDropDownAlert:(id)alert defaultResponseBlock:(id)block alternateResponseBlock:(id)responseBlock errorBlock:(id)errorBlock
{
  blockCopy = block;
  responseBlockCopy = responseBlock;
  errorBlockCopy = errorBlock;
  v12 = CFUserNotificationCreate(0, 0.0, 3uLL, 0, alert);
  responseFlags = 0;
  CFUserNotificationReceiveResponse(v12, 604800.0, &responseFlags);
  if ((responseFlags & 3) == 1)
  {
    responseBlockCopy[2](responseBlockCopy);
  }

  else if ((responseFlags & 3) != 0)
  {
    errorBlockCopy[2](errorBlockCopy);
  }

  else
  {
    blockCopy[2](blockCopy, responseFlags >> 24);
  }

  CFRelease(v12);
}

+ (id)platformSpecificAlertOptionsWithOptions:(id)options bundleIdentifier:(id)identifier
{
  v4 = [options mutableCopy];
  v5 = +[NSBundle mainBundle];
  resourceURL = [v5 resourceURL];
  [v4 setObject:resourceURL forKeyedSubscript:kCFUserNotificationLocalizationURLKey];

  return v4;
}

+ (id)alertContentForGenericInitiateVettingError
{
  v2 = [@"VETTING_FAILURE_ALERT_TITLE_CANT_SEND_LINK" stringByAppendingString:@"_IOS"];
  v7[0] = @"ckVettingAlertTitle";
  v3 = sub_1000038F4(v2, &stru_1000291A0);
  v7[1] = @"ckVettingAlertBody";
  v8[0] = v3;
  v4 = sub_1000038F4(@"VETTING_FAILURE_ALERT_BODY_INITIATE_GENERIC_ERROR", &stru_1000291A0);
  v8[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

+ (id)mediumNameFromComponents:(id)components
{
  if (components)
  {
    v3 = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:components style:2 options:0];
    v4 = [v3 stringByReplacingOccurrencesOfString:@" " withString:@" "];
  }

  else
  {
    v4 = &stru_1000291A0;
  }

  return v4;
}

+ (id)alertContentForGenericErrorWithURLSlug:(id)slug
{
  slugCopy = slug;
  v4 = [NSString stringWithFormat:@"GENERIC_ERROR_BODY_TRY_AGAIN%@_", @"_IOS"];
  v5 = [CKVettingAlerts appSpecificLocKeyForURLSlug:slugCopy prefix:v4];
  v6 = [NSString stringWithFormat:@"GENERIC_ERROR_TITLE%@_", @"_IOS"];
  v7 = [CKVettingAlerts appSpecificLocKeyForURLSlug:slugCopy prefix:v6];

  v12[0] = @"ckVettingAlertTitle";
  v8 = CKLocalizedString();
  v12[1] = @"ckVettingAlertBody";
  v13[0] = v8;
  v9 = CKLocalizedString();
  v13[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];

  return v10;
}

+ (id)appSpecificLocKeyForBundleID:(id)d shareType:(id)type prefix:(id)prefix
{
  dCopy = d;
  typeCopy = type;
  prefixCopy = prefix;
  if (qword_10002E368 != -1)
  {
    dispatch_once(&qword_10002E368, &stru_1000287D0);
  }

  v10 = [qword_10002E370 objectForKey:dCopy];

  if (v10)
  {
    v11 = [qword_10002E370 objectForKeyedSubscript:dCopy];
    v12 = [qword_10002E378 objectForKeyedSubscript:v11];
    v13 = [v12 containsObject:typeCopy];

    if (v13)
    {
      [NSString stringWithFormat:@"%@%@_%@", prefixCopy, v11, typeCopy];
    }

    else
    {
      [NSString stringWithFormat:@"%@%@", prefixCopy, v11, v16];
    }
    prefixCopy = ;
  }

  else
  {
    prefixCopy = [NSString stringWithFormat:@"%@Generic", prefixCopy];
  }

  return prefixCopy;
}

+ (id)appSpecificLocKeyForURLSlug:(id)slug prefix:(id)prefix
{
  slugCopy = slug;
  prefixCopy = prefix;
  if ([slugCopy length])
  {
    [NSString stringWithFormat:@"%@%@", prefixCopy, slugCopy];
  }

  else
  {
    [NSString stringWithFormat:@"%@share", prefixCopy, v9];
  }
  v7 = ;

  return v7;
}

+ (BOOL)isEmail:(id)email
{
  emailCopy = email;
  v4 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2, 6}"];
  v5 = [v4 evaluateWithObject:emailCopy];

  return v5;
}

+ (id)alertContentForRequestAccessWithHandle:(id)handle
{
  handleCopy = handle;
  v5 = [self isEmail:handleCopy];
  v6 = @"PHONE";
  if (v5)
  {
    v6 = @"EMAIL";
  }

  v7 = [NSString stringWithFormat:@"ITEM_UNAVAILABLE_REQUEST_ACCESS_BODY_%@", v6];
  v8 = sub_1000038F4(v7, @"%@");

  v12[0] = @"ckVettingAlertTitle";
  v9 = sub_1000038F4(@"ASK_FOR_ACCESS", &stru_1000291A0);
  v12[1] = @"ckVettingAlertBody";
  v13[0] = v9;
  v13[1] = v8;
  handleCopy = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2, handleCopy];

  return handleCopy;
}

+ (id)alertContentForRequestAccessConfirmation
{
  v6[0] = @"ckVettingAlertTitle";
  v2 = sub_1000038F4(@"CLOUDKIT_VETTING_ACCESS_REQUEST_SENT_TITLE", &stru_1000291A0);
  v6[1] = @"ckVettingAlertBody";
  v7[0] = v2;
  v3 = sub_1000038F4(@"CLOUDKIT_VETTING_ACCESS_REQUEST_SENT_MESSAGE", &stru_1000291A0);
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

+ (id)alertContentForRequestAccessFailure
{
  v6[0] = @"ckVettingAlertTitle";
  v2 = sub_1000038F4(@"CLOUDKIT_VETTING_ACCESS_CANT_SEND_REQUEST_TITLE", &stru_1000291A0);
  v6[1] = @"ckVettingAlertBody";
  v7[0] = v2;
  v3 = sub_1000038F4(@"CLOUDKIT_VETTING_ACCESS_TRY_AGAIN_LATER", &stru_1000291A0);
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

@end