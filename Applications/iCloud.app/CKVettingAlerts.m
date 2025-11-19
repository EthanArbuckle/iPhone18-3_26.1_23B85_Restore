@interface CKVettingAlerts
+ (BOOL)isEmail:(id)a3;
+ (id)_alertContentForAppStoreOperationWithApp:(id)a3 shareMetadata:(id)a4 keyPrefix:(id)a5 titleKeySuffix:(id)a6 bodyKeySuffix:(id)a7 isSourceICS:(BOOL)a8;
+ (id)_alertContentForDropDownSelectionWithShareName:(id)a3 ownerName:(id)a4 currentUserName:(id)a5 currentUserFormattedUsername:(id)a6 dropDownTitles:(id)a7 locKeyPrefix:(id)a8 isSourceICS:(BOOL)a9;
+ (id)_alertContentForVettingBindingPromptWithBundleID:(id)a3 shareName:(id)a4 ownerName:(id)a5 shareType:(id)a6 isShortcut:(BOOL)a7 isSourceICS:(BOOL)a8;
+ (id)_sanitizedShareURLSlug:(id)a3;
+ (id)alertContentDictionaryForDeviceOfflineErrorWithURLSlug:(id)a3;
+ (id)alertContentDictionaryForServiceUnavailableErrorWithURLSlug:(id)a3;
+ (id)alertContentForAppStoreAppLookupFailureWithShareName:(id)a3 error:(id)a4;
+ (id)alertContentForAppStoreUpdateLookupFailureWithShareName:(id)a3 appName:(id)a4 error:(id)a5;
+ (id)alertContentForCompleteVettingError:(id)a3 shareTitle:(id)a4 email:(id)a5 phone:(id)a6 reconstructedShareURL:(id)a7;
+ (id)alertContentForFirstJoinAlertWithRecordName:(id)a3 appName:(id)a4 bundleID:(id)a5 shareMetadata:(id)a6 currentUserName:(id)a7 currentUserFormattedUsername:(id)a8;
+ (id)alertContentForGenericErrorWithURLSlug:(id)a3;
+ (id)alertContentForGenericInitiateVettingError;
+ (id)alertContentForICloudAccountError:(id)a3 shareMetadata:(id)a4 shareURL:(id)a5;
+ (id)alertContentForInitiateVettingError:(id)a3 shareTitle:(id)a4 isEmail:(BOOL)a5 address:(id)a6;
+ (id)alertContentForRequestAccessConfirmation;
+ (id)alertContentForRequestAccessFailure;
+ (id)alertContentForRequestAccessWithHandle:(id)a3;
+ (id)alertContentForShareMetadataErrorWithURL:(id)a3 email:(id)a4;
+ (id)alertContentForUnprovisionedDataclassWithURL:(id)a3 email:(id)a4;
+ (id)appSpecificLocKeyForBundleID:(id)a3 shareType:(id)a4 prefix:(id)a5;
+ (id)appSpecificLocKeyForURLSlug:(id)a3 prefix:(id)a4;
+ (id)deviceTypeSpecificSuffix;
+ (id)getAlertOptionsFromOptions:(id)a3 isSourceICS:(BOOL)a4;
+ (id)getLaunchingOptionsFromOptions:(id)a3 isSourceICS:(BOOL)a4;
+ (id)mediumNameFromComponents:(id)a3;
+ (id)platformSpecificAlertOptionsWithOptions:(id)a3 bundleIdentifier:(id)a4;
+ (void)showDropDownAlert:(id)a3 defaultResponseBlock:(id)a4 alternateResponseBlock:(id)a5 errorBlock:(id)a6;
+ (void)showICloudAccountSettingAlert:(id)a3 appName:(id)a4 previewRequested:(BOOL *)a5 isSourceICS:(BOOL)a6 maid:(BOOL)a7;
@end

@implementation CKVettingAlerts

+ (id)alertContentForFirstJoinAlertWithRecordName:(id)a3 appName:(id)a4 bundleID:(id)a5 shareMetadata:(id)a6 currentUserName:(id)a7 currentUserFormattedUsername:(id)a8
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v63 = a7;
  v62 = a8;
  v18 = a3;
  v19 = +[NSCharacterSet whitespaceCharacterSet];
  v20 = [v18 stringByTrimmingCharactersInSet:v19];

  v21 = [v17 containerID];
  v22 = [v21 specialContainerType];

  if (v22 <= 0x1D)
  {
    if (((1 << v22) & 0x32200000) != 0)
    {
      v55 = a2;
      v57 = a1;
      v23 = [v17 share];
      v24 = [v23 objectForKeyedSubscript:CKShareTypeKey];

      v59 = v20;
      if ([v20 length])
      {
        v25 = v15;
        v48 = v20;
        v52 = v15;
        v26 = sub_1000038F4(@"TITLED_DOCUMENT_OPEN_TITLE", @"%@%@");
      }

      else
      {
        v27 = [CKVettingAlerts appSpecificLocKeyForBundleID:v16 shareType:v24 prefix:@"UNTITLED_DOCUMENT_OPEN_TITLE_"];
        v25 = v15;
        v48 = v15;
        v26 = sub_1000038F4(v27, @"%@");
      }

      v60 = v16;
      v28 = [CKVettingAlerts appSpecificLocKeyForBundleID:v16 shareType:v24 prefix:@"PRIVATE_DOCUMENT_OPEN_BODY_", v48, v52];
      v29 = [v17 ownerIdentity];
      v30 = [v29 nameComponents];
      v31 = [CKVettingAlerts mediumNameFromComponents:v30];
      v53 = [CKVettingAlerts mediumNameFromComponents:v63];
      v49 = v31;
      v32 = sub_1000038F4(v28, @"%@%@%@");

      v15 = v25;
      if (!v26 || !v32)
      {
        v46 = [NSAssertionHandler currentHandler:v31];
        [v46 handleFailureInMethod:v55 object:v57 file:@"CKVettingAlerts.m" lineNumber:101 description:{@"Failed to construct alertTitle: %@ and/or alertBody: %@ for %@", v26, v32, v25}];
      }

      v66[0] = @"ckVettingAlertTitle";
      v66[1] = @"ckVettingAlertBody";
      v67[0] = v26;
      v67[1] = v32;
      v33 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:2, v49];

      v20 = v59;
      v16 = v60;
      goto LABEL_9;
    }

    if (v22 == 4)
    {
      v35 = +[NSAssertionHandler currentHandler];
      [v35 handleFailureInMethod:a2 object:a1 file:@"CKVettingAlerts.m" lineNumber:77 description:@"ShareAcceptor isn't responsible for iWork FirstJoinAlert"];

      v36 = +[NSAssertionHandler currentHandler];
      [v36 handleFailureInMethod:a2 object:a1 file:@"CKVettingAlerts.m" lineNumber:131 description:{@"Appeasing the compiler, should never get here"}];

      v33 = &__NSDictionary0__struct;
      goto LABEL_9;
    }
  }

  v56 = a2;
  v61 = v16;
  v58 = a1;
  if ([v20 length])
  {
    v50 = v20;
    v37 = @"TITLED_NONIWORK_DOCUMENT_OPEN_TITLE";
  }

  else
  {
    v50 = v15;
    v37 = @"UNTITLED_NONIWORK_DOCUMENT_OPEN_TITLE";
  }

  v38 = sub_1000038F4(v37, @"%@");
  v39 = [v17 share];
  v40 = [v39 allowsAnonymousPublicAccess];

  v41 = [v17 ownerIdentity];
  v42 = [v41 nameComponents];
  v43 = [CKVettingAlerts mediumNameFromComponents:v42];
  v44 = v43;
  if (v40)
  {
    v51 = v43;
    v45 = sub_1000038F4(@"PUBLIC_ANONYMOUS_SHARING_OPEN_BODY", @"%@");
  }

  else
  {
    v52 = [CKVettingAlerts mediumNameFromComponents:v63];
    v54 = v62;
    v51 = v44;
    v45 = sub_1000038F4(@"GENERIC_APP_SHARING_OPEN_BODY", @"%@%@%@");
  }

  if (!v38 || !v45)
  {
    v47 = [NSAssertionHandler currentHandler:v51];
    [v47 handleFailureInMethod:v56 object:v58 file:@"CKVettingAlerts.m" lineNumber:126 description:{@"Filed to construct alertTitle: %@ and/or alertBody: %@ for generic share", v38, v45}];
  }

  v64[0] = @"ckVettingAlertTitle";
  v64[1] = @"ckVettingAlertBody";
  v65[0] = v38;
  v65[1] = v45;
  v33 = [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:2, v51];

  v16 = v61;
LABEL_9:

  return v33;
}

+ (id)getAlertOptionsFromOptions:(id)a3 isSourceICS:(BOOL)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
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
    v8 = v5;
  }

  return v8;
}

+ (id)getLaunchingOptionsFromOptions:(id)a3 isSourceICS:(BOOL)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    [v7 addEntriesFromDictionary:v6];
    [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:FBSOpenApplicationOptionKeyUnlockDevice];
    [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:FBSOpenApplicationOptionKeyPromptUnlockDevice];
    v8 = [v7 copy];
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

+ (id)_alertContentForVettingBindingPromptWithBundleID:(id)a3 shareName:(id)a4 ownerName:(id)a5 shareType:(id)a6 isShortcut:(BOOL)a7 isSourceICS:(BOOL)a8
{
  v34 = a8;
  v8 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v33 = v14;
  if (v14)
  {
    if (v8)
    {
      v16 = @"VETTING_ALERT_SINGLE_MATCH_BODY_";
    }

    else
    {
      v16 = @"VETTING_ALERT_BODY_";
    }

    v17 = [CKVettingAlerts appSpecificLocKeyForBundleID:v12 shareType:v15 prefix:v16];
    v29 = [CKVettingAlerts mediumNameFromComponents:v14];
    v18 = CKLocalizedString();
  }

  else
  {
    if (v8)
    {
      v19 = @"VETTING_ALERT_SINGLE_MATCH_BODY_UNKNOWN_USER_";
    }

    else
    {
      v19 = @"VETTING_ALERT_BODY_UNKNOWN_USER_";
    }

    v17 = [CKVettingAlerts appSpecificLocKeyForBundleID:v12 shareType:v15 prefix:v19];
    v18 = CKLocalizedString();
  }

  v20 = [NSString stringWithFormat:@"VETTING_ALERT_TITLE%@_", @"_IOS"];
  v21 = [CKVettingAlerts appSpecificLocKeyForBundleID:v12 shareType:v15 prefix:v20];
  v30 = v13;
  v22 = CKLocalizedString();
  v32 = v15;
  v35[0] = kCFUserNotificationAlertHeaderKey;
  v35[1] = kCFUserNotificationAlertMessageKey;
  v36[0] = v22;
  v36[1] = v18;
  v35[2] = kCFUserNotificationDefaultButtonTitleKey;
  CKLocalizedString();
  v23 = v31 = v13;
  v36[2] = v23;
  v35[3] = kCFUserNotificationAlternateButtonTitleKey;
  v24 = CKLocalizedString();
  v36[3] = v24;
  v25 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:4, v30];
  v26 = [CKVettingAlerts platformSpecificAlertOptionsWithOptions:v25 bundleIdentifier:v12];

  v27 = [CKVettingAlerts getAlertOptionsFromOptions:v26 isSourceICS:v34];

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
  [v9 handleFailureInMethod:a2 object:a1 file:@"CKVettingAlerts.m" lineNumber:240 description:{@"Unsupported device class: %@", v4}];

  v6 = @"_IOS";
LABEL_8:

  return v6;
}

+ (id)alertContentForAppStoreAppLookupFailureWithShareName:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 deviceTypeSpecificSuffix];
  v9 = [@"APP_STORE_FAILURE_TITLE" stringByAppendingString:@"_IOS"];
  v10 = CKLocalizedString();

  v11 = [v6 domain];

  if (v11 == NSURLErrorDomain)
  {
    if ([v6 code] == -1009)
    {
      v14 = [NSString stringWithFormat:@"APP_STORE_GET_APP_FAILURE_OFFLINE_BODY%@", v8];
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
      v14 = [NSString stringWithFormat:@"APP_STORE_GET_APP_FAILURE_STORE_NOT_AVAILABLE_BODY%@", v8];
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
    v12 = [v6 domain];
    v13 = v12;
    if (v12 == CKUnderlyingErrorDomain)
    {
      v18 = [v6 code];

      if (v18 == 1024)
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

    v14 = [NSString stringWithFormat:@"APP_STORE_GET_APP_FAILURE_STORE_NOT_AVAILABLE_BODY%@", v8];
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

+ (id)alertContentForAppStoreUpdateLookupFailureWithShareName:(id)a3 appName:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [@"APP_STORE_FAILURE_TITLE" stringByAppendingString:@"_IOS"];
  v11 = CKLocalizedString();

  v12 = [v8 domain];

  if (v12 == NSURLErrorDomain)
  {
    v21 = v7;
    if ([v8 code] == -1009)
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
    v13 = [v8 domain];
    v14 = v13;
    if (v13 == CKUnderlyingErrorDomain)
    {
      v18 = [v8 code];

      if (v18 == 1024)
      {
        v21 = v7;
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

    v21 = v7;
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

+ (id)_alertContentForAppStoreOperationWithApp:(id)a3 shareMetadata:(id)a4 keyPrefix:(id)a5 titleKeySuffix:(id)a6 bodyKeySuffix:(id)a7 isSourceICS:(BOOL)a8
{
  v31 = a8;
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = a5;
  v16 = [NSString stringWithFormat:@"%@TITLE%@", v15, a6];
  v17 = CKLocalizedString();
  v18 = [v13 ownerIdentity];
  v19 = [v18 nameComponents];

  if (v19)
  {
    v20 = [NSString stringWithFormat:@"%@BODY%@", v15, v14];

    v21 = [v13 ownerIdentity];
    v22 = [v21 nameComponents];
    v30 = [CKVettingAlerts mediumNameFromComponents:v22];
    v23 = CKLocalizedString();
  }

  else
  {
    v20 = [NSString stringWithFormat:@"%@BODY_UNKNOWN_USER%@", v15, v14];

    v30 = v12;
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

  v28 = [CKVettingAlerts getAlertOptionsFromOptions:v27 isSourceICS:v31];

  return v28;
}

+ (id)alertContentForInitiateVettingError:(id)a3 shareTitle:(id)a4 isEmail:(BOOL)a5 address:(id)a6
{
  v7 = a5;
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [NSString stringWithFormat:@"VETTING_FAILURE_ALERT_TITLE_CANT_SEND_LINK%@", @"_IOS"];
  v13 = sub_1000038F4(v12, &stru_1000291A0);
  v14 = sub_1000038F4(@"VETTING_FAILURE_ALERT_BODY_INITIATE_GENERIC_ERROR", &stru_1000291A0);
  v15 = [v9 domain];
  v16 = [v15 isEqualToString:CKErrorDomain];

  if (v16)
  {
    v17 = [v9 userInfo];
    v18 = [v17 objectForKeyedSubscript:NSUnderlyingErrorKey];

    v19 = [v18 code];
    if (v19 <= 8006)
    {
      if (v19 == 5005)
      {
        v33 = v10;
        v20 = @"VETTING_FAILURE_ALERT_BODY_INITIATE_PCS_ERROR";
      }

      else
      {
        if (v19 != 8006)
        {
          goto LABEL_29;
        }

        v33 = v11;
        if (v7)
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

    if (v19 != 8007)
    {
      if (v19 == 8008)
      {
        v23 = +[CKContainer matterhornName];
        v33 = v11;
        v34 = v23;
        if (v7)
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

      if (v19 == 8010)
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

    v22 = [v18 userInfo];
    v23 = [v22 objectForKeyedSubscript:CKErrorAccountPrimaryEmailKey];

    if (v7)
    {
      v24 = [@"VETTING_FAILURE_ALERT_TITLE_INITIATE_VETTED_TO_CALLER_ERROR_EMAIL" stringByAppendingString:@"_IOS"];

      v25 = sub_1000038F4(v24, &stru_1000291A0);

      if (!v23 || ([v23 isEqualToString:&stru_1000291A0] & 1) != 0)
      {
        v33 = v11;
        v26 = @"VETTING_FAILURE_ALERT_BODY_INITIATE_VETTED_TO_CALLER_ERROR_EMAIL_NO_APPLE_ID";
LABEL_21:
        v28 = @"%@";
LABEL_36:
        v32 = sub_1000038F4(v26, v28);

        v14 = v32;
        goto LABEL_28;
      }

      v33 = v11;
      v34 = v23;
      v26 = @"VETTING_FAILURE_ALERT_BODY_INITIATE_VETTED_TO_CALLER_ERROR_EMAIL";
    }

    else
    {
      v24 = [@"VETTING_FAILURE_ALERT_TITLE_INITIATE_VETTED_TO_CALLER_ERROR_PHONE" stringByAppendingString:@"_IOS"];

      v25 = sub_1000038F4(v24, &stru_1000291A0);

      if (!v23 || ([v23 isEqualToString:&stru_1000291A0] & 1) != 0)
      {
        v33 = v11;
        v26 = @"VETTING_FAILURE_ALERT_BODY_INITIATE_VETTED_TO_CALLER_ERROR_PHONE_NO_APPLE_ID";
        goto LABEL_21;
      }

      v33 = v11;
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

+ (id)_sanitizedShareURLSlug:(id)a3
{
  v3 = a3;
  if (qword_10002E358 != -1)
  {
    dispatch_once(&qword_10002E358, &stru_1000287B0);
  }

  v4 = [v3 CKURLSlug];
  if ([qword_10002E360 containsObject:v4])
  {
    v5 = v4;
  }

  else
  {
    v5 = @"share";
  }

  return v5;
}

+ (id)alertContentForCompleteVettingError:(id)a3 shareTitle:(id)a4 email:(id)a5 phone:(id)a6 reconstructedShareURL:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = @"_WITH_SHARE_NAME";
  if (!v13)
  {
    v17 = @"_WITHOUT_SHARE_NAME";
  }

  v83 = v16;
  v84 = v17;
  v85 = [a1 _sanitizedShareURLSlug:v16];
  v18 = [@"VETTING_FAILURE_ALERT_TITLE_COMPLETE_GENERIC_ERROR" stringByAppendingString:@"_IOS"];
  v19 = sub_1000038F4(v18, &stru_1000291A0);
  v20 = sub_1000038F4(@"VETTING_FAILURE_ALERT_BODY_COMPLETE_GENERIC_ERROR_ADDRESS", &stru_1000291A0);
  v86 = v14;
  if (v14)
  {
    v21 = sub_1000038F4(@"VETTING_FAILURE_ALERT_BODY_COMPLETE_GENERIC_ERROR_EMAIL", &stru_1000291A0);

    v20 = v21;
  }

  v82 = v15;
  if (v15)
  {
    v22 = sub_1000038F4(@"VETTING_FAILURE_ALERT_BODY_COMPLETE_GENERIC_ERROR_PHONE", &stru_1000291A0);

    v20 = v22;
  }

  v23 = [v12 domain];
  v24 = [v23 isEqualToString:CKErrorDomain];

  if (!v24)
  {
    v28 = v82;
    v31 = v84;
    goto LABEL_78;
  }

  v25 = [v12 userInfo];
  v26 = [v25 objectForKeyedSubscript:NSUnderlyingErrorKey];

  v81 = v26;
  v27 = [v26 code];
  if (v27 > 8008)
  {
    if (v27 == 8009)
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

      v75 = v13;
      v51 = sub_1000038F4(v18, @"%@");
      v52 = v20;
      v20 = v51;
      v31 = v84;
      v32 = v52;
      goto LABEL_40;
    }

    if (v27 == 8011)
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

    if (v27 != 8012)
    {
      v28 = v82;
      v31 = v84;
      goto LABEL_77;
    }

    v33 = [v26 userInfo];
    v34 = [v33 objectForKeyedSubscript:NSUnderlyingErrorKey];

    v35 = v34;
    v36 = [v34 domain];
    if ([v36 isEqualToString:CKErrorDomain])
    {
      v37 = v35;
      v38 = [v35 code];

      if (v38 != 2)
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
        v56 = [v35 domain];
        v77 = v35;
        if ([v56 isEqualToString:CKErrorDomain])
        {
          if ([v35 code] == 3)
          {

            goto LABEL_60;
          }

          v67 = [v35 code];

          v59 = v67 == 4;
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
            v75 = v13;
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

        v57 = [v35 domain];
        if ([v57 isEqualToString:CKErrorDomain])
        {
          v58 = [v35 code];

          v59 = v58 == 11;
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
            v75 = v13;
            v70 = sub_1000038F4(v71, @"%@");
            goto LABEL_74;
          }
        }

        else
        {
        }

        v64 = [v35 domain];
        if ([v64 isEqualToString:CKErrorDomain])
        {
          v65 = [v35 code];

          if (v65 == 1000)
          {
            v66 = [@"VETTING_FAILURE_ALERT_TITLE_COMPLETE_SHARE_METADATA_FETCH_FAILED" stringByAppendingFormat:@"%@_%@", @"_IOS", v85];
            v30 = sub_1000038F4(v66, &stru_1000291A0);

            [NSString stringWithFormat:@"VETTING_FAILURE_ALERT_BODY_COMPLETE_SHARE_METADATA_FETCH_FAILED_SERVER_ERROR%@%@", v84, v55];
            v69 = LABEL_65:;
            v75 = v13;
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

      v36 = [v37 userInfo];
      v39 = [v36 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];
      v78 = [v39 objectForKeyedSubscript:v83];

      v35 = v78;
    }

    goto LABEL_42;
  }

  v28 = v82;
  if ((v27 - 8003) < 2)
  {
    v29 = [@"VETTING_FAILURE_ALERT_TITLE_COMPLETE_GENERIC_ERROR" stringByAppendingString:@"_IOS"];

    v30 = sub_1000038F4(v29, &stru_1000291A0);

    v31 = v84;
    v18 = [NSString stringWithFormat:@"VETTING_FAILURE_ALERT_BODY_COMPLETE_VETTING_RECORD_ERROR%@%@", v84, @"_IOS"];

    v75 = v13;
    sub_1000038F4(v18, @"%@");
    v20 = v32 = v20;
LABEL_76:

    v19 = v30;
    goto LABEL_77;
  }

  if (v27 == 8002)
  {
    v40 = [@"VETTING_FAILURE_ALERT_TITLE_COMPLETE_TOKEN_INVALID" stringByAppendingString:@"_IOS"];

    v79 = sub_1000038F4(v40, &stru_1000291A0);

    v31 = v84;
    v18 = [NSString stringWithFormat:@"VETTING_FAILURE_ALERT_BODY_COMPLETE_TOKEN_INVALID%@", v84];

    if (v86)
    {
      v75 = v86;
      v76 = v13;
    }

    else
    {
      v75 = v82;
      v76 = v13;
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

+ (id)alertContentForShareMetadataErrorWithURL:(id)a3 email:(id)a4
{
  v5 = a4;
  v6 = [a3 CKURLSlug];
  v7 = [@"ITEM_UNAVAILABLE_FAILURE_ALERT_TITLE" stringByAppendingFormat:@"%@_", @"_IOS"];
  v8 = [CKVettingAlerts appSpecificLocKeyForURLSlug:v6 prefix:v7];

  if (v5)
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

+ (id)alertContentForUnprovisionedDataclassWithURL:(id)a3 email:(id)a4
{
  v5 = a4;
  v6 = [a3 CKURLSlug];
  v7 = [@"ITEM_UNAVAILABLE_FAILURE_ALERT_TITLE" stringByAppendingFormat:@"%@_", @"_IOS"];
  v8 = [CKVettingAlerts appSpecificLocKeyForURLSlug:v6 prefix:v7];

  v13[0] = @"ckVettingAlertTitle";
  v9 = sub_1000038F4(v8, &stru_1000291A0);
  v13[1] = @"ckVettingAlertBody";
  v14[0] = v9;
  v10 = sub_1000038F4(@"ITEM_UNAVAILABLE_UNPROVISIONED_DATACLASS_ALERT_BODY", @"%@");

  v14[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2, v5];

  return v11;
}

+ (id)alertContentForICloudAccountError:(id)a3 shareMetadata:(id)a4 shareURL:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 domain];
  if ([v10 isEqualToString:CKErrorDomain])
  {
    if ([v7 code] == 9)
    {

LABEL_15:
      v30 = [@"SIGN_IN_TO_ICLOUD_TITLE" stringByAppendingString:@"_IOS"];
      v31 = +[CKContainer matterhornName];
      v16 = CKLocalizedString();

      v32 = [@"SIGN_IN_TO_ICLOUD_BODY" stringByAppendingFormat:@"%@_", @"_IOS"];
      v33 = [v9 CKURLSlug];
      v34 = [CKVettingAlerts appSpecificLocKeyForURLSlug:v33 prefix:v32];
      v41 = +[CKContainer matterhornName];
      v24 = CKLocalizedString();

      v49[0] = @"ckVettingAlertTitle";
      v49[1] = @"ckVettingAlertBody";
      v50[0] = v16;
      v50[1] = v24;
      v28 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:2, v41];

      goto LABEL_23;
    }

    v29 = [v7 code];

    if (v29 == 115)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v11 = [v7 domain];
  if ([v11 isEqualToString:CKUnderlyingErrorDomain])
  {
    v12 = [v7 code];

    if (v12 == 1023)
    {
      v13 = [v7 userInfo];
      v14 = [v13 objectForKeyedSubscript:CKErrorDisabledAppLocalizedName];

      v15 = [@"ENABLE_IN_ICLOUD_TITLE" stringByAppendingString:@"_IOS"];
      v39 = +[CKContainer matterhornName];
      v16 = CKLocalizedString();

      v17 = [v8 ownerIdentity];
      v18 = [v17 nameComponents];

      if (v14)
      {
        v19 = [v9 CKURLSlug];
        if (v18)
        {
          v20 = [CKVettingAlerts appSpecificLocKeyForURLSlug:v19 prefix:@"ENABLE_IN_ICLOUD_BODY_"];

          v44 = [v8 ownerIdentity];
          v21 = [v44 nameComponents];
          [CKVettingAlerts mediumNameFromComponents:v21];
          v23 = v22 = v14;
          v42 = +[CKContainer matterhornName];
          v40 = v23;
          v24 = CKLocalizedString();

          v14 = v22;
        }

        else
        {
          v20 = [CKVettingAlerts appSpecificLocKeyForURLSlug:v19 prefix:@"ENABLE_IN_ICLOUD_BODY_UNKNOWN_USER_"];

          v40 = +[CKContainer matterhornName];
          v24 = CKLocalizedString();
        }
      }

      else if (v18)
      {
        v20 = [v8 ownerIdentity];
        v36 = [v20 nameComponents];
        v37 = [CKVettingAlerts mediumNameFromComponents:v36];
        +[CKContainer matterhornName];
        v43 = v40 = v37;
        v24 = CKLocalizedString();
      }

      else
      {
        v20 = +[CKContainer matterhornName];
        v40 = v20;
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

  v25 = [v7 domain];
  if ([v25 isEqualToString:CKErrorDomain])
  {
    v26 = [v7 code];

    if (v26 == 110)
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

  v35 = [v9 CKURLSlug];
  v28 = [CKVettingAlerts alertContentForGenericErrorWithURLSlug:v35];

  v24 = &stru_1000291A0;
  v16 = &stru_1000291A0;
LABEL_23:

  return v28;
}

+ (id)alertContentDictionaryForDeviceOfflineErrorWithURLSlug:(id)a3
{
  v3 = a3;
  v4 = [NSString stringWithFormat:@"DEVICE_OFFLINE_TITLE%@_", @"_IOS"];
  v5 = [CKVettingAlerts appSpecificLocKeyForURLSlug:v3 prefix:v4];
  v6 = CKLocalizedString();

  v7 = [NSString stringWithFormat:@"DEVICE_OFFLINE_BODY%@_", @"_IOS"];
  v8 = [CKVettingAlerts appSpecificLocKeyForURLSlug:v3 prefix:v7];

  v9 = CKLocalizedString();

  v12[0] = @"ckVettingAlertTitle";
  v12[1] = @"ckVettingAlertBody";
  v13[0] = v6;
  v13[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];

  return v10;
}

+ (id)alertContentDictionaryForServiceUnavailableErrorWithURLSlug:(id)a3
{
  v3 = a3;
  v4 = [NSString stringWithFormat:@"SERVER_ERROR_TITLE%@_", @"_IOS"];
  v5 = [CKVettingAlerts appSpecificLocKeyForURLSlug:v3 prefix:v4];
  v6 = CKLocalizedString();

  v7 = [NSString stringWithFormat:@"SERVER_ERROR_BODY%@_", @"_IOS"];
  v8 = [CKVettingAlerts appSpecificLocKeyForURLSlug:v3 prefix:v7];

  v9 = CKLocalizedString();

  v12[0] = @"ckVettingAlertTitle";
  v12[1] = @"ckVettingAlertBody";
  v13[0] = v6;
  v13[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];

  return v10;
}

+ (id)_alertContentForDropDownSelectionWithShareName:(id)a3 ownerName:(id)a4 currentUserName:(id)a5 currentUserFormattedUsername:(id)a6 dropDownTitles:(id)a7 locKeyPrefix:(id)a8 isSourceICS:(BOOL)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v34 = a7;
  v18 = a8;
  if (v14)
  {
    [NSString stringWithFormat:@"%@TITLE%@", v18, @"_IOS"];
  }

  else
  {
    [NSString stringWithFormat:@"%@UNTITLED_TITLE%@", v18, @"_IOS"];
  }
  v19 = ;
  v33 = CKLocalizedString();

  v32 = v17;
  v31 = v16;
  if (v15)
  {
    v20 = [NSString stringWithFormat:@"%@BODY%@", v18, @"_IOS"];
    v21 = [CKVettingAlerts mediumNameFromComponents:v15];
    v30 = [CKVettingAlerts mediumNameFromComponents:v16];
    v22 = CKLocalizedString();
  }

  else
  {
    v20 = [NSString stringWithFormat:@"%@UNKNOWN_USER_BODY%@", v18, @"_IOS"];
    v21 = [CKVettingAlerts mediumNameFromComponents:v16];
    v30 = v17;
    v22 = CKLocalizedString();
  }

  v23 = [NSString stringWithFormat:@"%@OPEN_BUTTON_MAC", v18, v30];
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
  v36[4] = v34;
  v26 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:5];
  v27 = [CKVettingAlerts platformSpecificAlertOptionsWithOptions:v26 bundleIdentifier:0];

  v28 = [CKVettingAlerts getAlertOptionsFromOptions:v27 isSourceICS:a9];

  return v28;
}

+ (void)showICloudAccountSettingAlert:(id)a3 appName:(id)a4 previewRequested:(BOOL *)a5 isSourceICS:(BOOL)a6 maid:(BOOL)a7
{
  v7 = a7;
  v33 = a6;
  v9 = a3;
  v10 = a4;
  v11 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.AppleAccount/ICLOUD_SERVICE"];
  if (v7)
  {
    v12 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings"];

    v11 = v12;
  }

  v13 = CKLocalizedString();
  if (v10)
  {
    v14 = [NSString stringWithFormat:@"PREVIEW_BUTTON_IOS_%@", v10];
    if (v14)
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
    v14 = 0;
  }

  v16 = CKLocalizedString();
  v39[0] = kCFUserNotificationAlertHeaderKey;
  v17 = [v9 objectForKeyedSubscript:@"ckVettingAlertTitle"];
  v40[0] = v17;
  v39[1] = kCFUserNotificationAlertMessageKey;
  v18 = [v9 objectForKeyedSubscript:@"ckVettingAlertBody"];
  v40[1] = v18;
  v40[2] = v13;
  v31 = v13;
  v39[2] = kCFUserNotificationDefaultButtonTitleKey;
  v39[3] = kCFUserNotificationAlternateButtonTitleKey;
  v40[3] = v16;
  v19 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:4];

  v20 = [CKVettingAlerts getAlertOptionsFromOptions:v19 isSourceICS:v33];

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

    v26 = [CKVettingAlerts getLaunchingOptionsFromOptions:0 isSourceICS:v33];
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
  if (a5)
  {
    *a5 = v24;
  }
}

+ (void)showDropDownAlert:(id)a3 defaultResponseBlock:(id)a4 alternateResponseBlock:(id)a5 errorBlock:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = CFUserNotificationCreate(0, 0.0, 3uLL, 0, a3);
  responseFlags = 0;
  CFUserNotificationReceiveResponse(v12, 604800.0, &responseFlags);
  if ((responseFlags & 3) == 1)
  {
    v10[2](v10);
  }

  else if ((responseFlags & 3) != 0)
  {
    v11[2](v11);
  }

  else
  {
    v9[2](v9, responseFlags >> 24);
  }

  CFRelease(v12);
}

+ (id)platformSpecificAlertOptionsWithOptions:(id)a3 bundleIdentifier:(id)a4
{
  v4 = [a3 mutableCopy];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 resourceURL];
  [v4 setObject:v6 forKeyedSubscript:kCFUserNotificationLocalizationURLKey];

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

+ (id)mediumNameFromComponents:(id)a3
{
  if (a3)
  {
    v3 = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:a3 style:2 options:0];
    v4 = [v3 stringByReplacingOccurrencesOfString:@" " withString:@" "];
  }

  else
  {
    v4 = &stru_1000291A0;
  }

  return v4;
}

+ (id)alertContentForGenericErrorWithURLSlug:(id)a3
{
  v3 = a3;
  v4 = [NSString stringWithFormat:@"GENERIC_ERROR_BODY_TRY_AGAIN%@_", @"_IOS"];
  v5 = [CKVettingAlerts appSpecificLocKeyForURLSlug:v3 prefix:v4];
  v6 = [NSString stringWithFormat:@"GENERIC_ERROR_TITLE%@_", @"_IOS"];
  v7 = [CKVettingAlerts appSpecificLocKeyForURLSlug:v3 prefix:v6];

  v12[0] = @"ckVettingAlertTitle";
  v8 = CKLocalizedString();
  v12[1] = @"ckVettingAlertBody";
  v13[0] = v8;
  v9 = CKLocalizedString();
  v13[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];

  return v10;
}

+ (id)appSpecificLocKeyForBundleID:(id)a3 shareType:(id)a4 prefix:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (qword_10002E368 != -1)
  {
    dispatch_once(&qword_10002E368, &stru_1000287D0);
  }

  v10 = [qword_10002E370 objectForKey:v7];

  if (v10)
  {
    v11 = [qword_10002E370 objectForKeyedSubscript:v7];
    v12 = [qword_10002E378 objectForKeyedSubscript:v11];
    v13 = [v12 containsObject:v8];

    if (v13)
    {
      [NSString stringWithFormat:@"%@%@_%@", v9, v11, v8];
    }

    else
    {
      [NSString stringWithFormat:@"%@%@", v9, v11, v16];
    }
    v14 = ;
  }

  else
  {
    v14 = [NSString stringWithFormat:@"%@Generic", v9];
  }

  return v14;
}

+ (id)appSpecificLocKeyForURLSlug:(id)a3 prefix:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    [NSString stringWithFormat:@"%@%@", v6, v5];
  }

  else
  {
    [NSString stringWithFormat:@"%@share", v6, v9];
  }
  v7 = ;

  return v7;
}

+ (BOOL)isEmail:(id)a3
{
  v3 = a3;
  v4 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2, 6}"];
  v5 = [v4 evaluateWithObject:v3];

  return v5;
}

+ (id)alertContentForRequestAccessWithHandle:(id)a3
{
  v4 = a3;
  v5 = [a1 isEmail:v4];
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
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2, v4];

  return v10;
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