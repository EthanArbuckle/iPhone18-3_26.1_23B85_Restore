@interface AKFollowUpFactoryImpl
- (BOOL)IsFollowUpItemNotificationForced:(id)forced;
- (BOOL)_itemShouldSuppressNotification:(id)notification;
- (id)_actionFromInfo:(id)info pushMessageInfo:(id)messageInfo;
- (id)_actionsFromPayload:(id)payload pushMessageInfo:(id)info;
- (id)_clearAction;
- (id)_extensionIDFromPayload:(id)payload;
- (id)_groupIdentifierFromPayload:(id)payload;
- (id)_itemFromPayload:(id)payload pushMessageInfo:(id)info withAltDSID:(id)d;
- (id)_notificationFromPayload:(id)payload pushMessageInfo:(id)info;
- (id)actionWithTitle:(id)title andActionKey:(id)key;
- (id)itemIdentifiersRequiringNotificationClearFromPayload:(id)payload;
- (id)itemsForAltDSID:(id)d pushMessageInfo:(id)info fromIDMSPayload:(id)payload;
@end

@implementation AKFollowUpFactoryImpl

- (id)itemsForAltDSID:(id)d pushMessageInfo:(id)info fromIDMSPayload:(id)payload
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v14 = 0;
  objc_storeStrong(&v14, info);
  v13 = 0;
  objc_storeStrong(&v13, payload);
  v8 = v13;
  v10 = MEMORY[0x1E69E5928](selfCopy);
  v11 = MEMORY[0x1E69E5928](v14);
  v12 = MEMORY[0x1E69E5928](location[0]);
  v9 = [v8 aaf_map:?];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);

  return v9;
}

id __73__AKFollowUpFactoryImpl_itemsForAltDSID_pushMessageInfo_fromIDMSPayload___block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [*(a1 + 32) _itemFromPayload:location[0] pushMessageInfo:*(a1 + 40) withAltDSID:*(a1 + 48)];
  objc_storeStrong(location, 0);

  return v4;
}

- (id)itemIdentifiersRequiringNotificationClearFromPayload:(id)payload
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, payload);
  v4 = [location[0] aaf_map:&__block_literal_global_30];
  objc_storeStrong(location, 0);

  return v4;
}

id __78__AKFollowUpFactoryImpl_itemIdentifiersRequiringNotificationClearFromPayload___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = [location[0] objectForKeyedSubscript:@"notification"];
  v6 = [v5 objectForKeyedSubscript:@"dismiss"];
  v7 = 0;
  if ([v6 BOOLValue])
  {
    v8 = [location[0] objectForKeyedSubscript:@"id"];
    v7 = 1;
    v2 = MEMORY[0x1E69E5928](v8);
  }

  else
  {
    v2 = MEMORY[0x1E69E5928](0);
  }

  v10 = v2;
  if (v7)
  {
    MEMORY[0x1E69E5920](v8);
  }

  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(location, 0);
  v3 = v10;

  return v3;
}

- (BOOL)_itemShouldSuppressNotification:(id)notification
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, notification);
  v9 = [location[0] objectForKeyedSubscript:@"id"];
  if ([v9 isEqualToString:@"adpUpsell"])
  {
    v8 = _AKLogSystem();
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      log = v8;
      type = v7;
      __os_log_helper_16_0_0(v6);
      _os_log_impl(&dword_193225000, log, type, "adpUpsell CFU should not send a notification.", v6, 2u);
    }

    objc_storeStrong(&v8, 0);
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  return v11 & 1;
}

- (id)_itemFromPayload:(id)payload pushMessageInfo:(id)info withAltDSID:(id)d
{
  v65 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, payload);
  v59 = 0;
  objc_storeStrong(&v59, info);
  v58 = 0;
  objc_storeStrong(&v58, d);
  v57 = _AKLogSystem();
  v56 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v64, location[0]);
    _os_log_debug_impl(&dword_193225000, v57, v56, "Parsing CFU Item Payload: %@", v64, 0xCu);
  }

  objc_storeStrong(&v57, 0);
  v55 = [location[0] objectForKeyedSubscript:@"id"];
  v33 = +[AKFeatureManager sharedManager];
  v34 = 0;
  if (![v33 isADPExpansionViaCFUEnabled])
  {
    v34 = [v55 isEqualToString:@"adpUpsell"];
  }

  MEMORY[0x1E69E5920](v33);
  if (v34)
  {
    v54 = _AKLogSystem();
    v53 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v54;
      v32 = v53;
      __os_log_helper_16_0_0(v52);
      _os_log_impl(&dword_193225000, v31, v32, "Excluding ADP upsell follow up from returned items because feature flag is off.", v52, 2u);
    }

    objc_storeStrong(&v54, 0);
    v62 = 0;
    v51 = 1;
    goto LABEL_56;
  }

  if (CoreFollowUpLibraryCore(0))
  {
    v5 = objc_alloc_init(getFLFollowUpItemClass());
  }

  else
  {
    v5 = objc_alloc_init(0);
  }

  v50 = v5;
  v49 = [location[0] objectForKeyedSubscript:@"bundlePath"];
  v48 = [location[0] objectForKeyedSubscript:@"iconName"];
  v47 = [location[0] objectForKeyedSubscript:@"notifyingAppBundleID"];
  [v50 setUniqueIdentifier:v55];
  v27 = [(AKFollowUpFactoryImpl *)selfCopy _extensionIDFromPayload:location[0]];
  [v50 setExtensionIdentifier:?];
  MEMORY[0x1E69E5920](v27);
  v28 = [(AKFollowUpFactoryImpl *)selfCopy _actionsFromPayload:location[0] pushMessageInfo:v59];
  [v50 setActions:?];
  MEMORY[0x1E69E5920](v28);
  v29 = [(AKFollowUpFactoryImpl *)selfCopy _notificationFromPayload:location[0] pushMessageInfo:v59];
  [v50 setNotification:?];
  MEMORY[0x1E69E5920](v29);
  v30 = [location[0] objectForKeyedSubscript:@"title"];
  v45 = 0;
  v43 = 0;
  if (v30)
  {
    v26 = v30;
  }

  else
  {
    notification = [v50 notification];
    v45 = 1;
    title = [notification title];
    v43 = 1;
    v26 = title;
  }

  [v50 setTitle:v26];
  if (v43)
  {
    MEMORY[0x1E69E5920](title);
  }

  if (v45)
  {
    MEMORY[0x1E69E5920](notification);
  }

  MEMORY[0x1E69E5920](v30);
  v24 = [location[0] objectForKeyedSubscript:@"body"];
  [v50 setInformativeText:?];
  MEMORY[0x1E69E5920](v24);
  v25 = [(AKFollowUpFactoryImpl *)selfCopy _groupIdentifierFromPayload:location[0]];
  [v50 setGroupIdentifier:?];
  MEMORY[0x1E69E5920](v25);
  if (v49)
  {
    [v50 setRepresentingBundlePath:v49];
  }

  else
  {
    [v50 setRepresentingBundlePath:selfCopy->_representingBundlePath];
  }

  if (v48)
  {
    [v50 setBundleIconName:v48];
  }

  else
  {
    [v50 setBundleIconName:selfCopy->_bundleIconName];
  }

  v22 = [location[0] objectForKeyedSubscript:@"priority"];
  integerValue = [v22 integerValue];
  MEMORY[0x1E69E5920](v22);
  switch(integerValue)
  {
    case 0:
      goto LABEL_31;
    case 1:
      [v50 setDisplayStyle:1];
      break;
    case 2:
      [v50 setDisplayStyle:4];
      break;
    default:
LABEL_31:
      [v50 setDisplayStyle:0];
      break;
  }

  v20 = [location[0] objectForKeyedSubscript:@"zeroAction"];
  bOOLValue = [v20 BOOLValue];
  MEMORY[0x1E69E5920](v20);
  if (bOOLValue)
  {
    [v50 setDisplayStyle:{objc_msgSend(v50, "displayStyle") | 2}];
  }

  v18 = [location[0] objectForKeyedSubscript:@"badgeOnly"];
  bOOLValue2 = [v18 BOOLValue];
  MEMORY[0x1E69E5920](v18);
  if (bOOLValue2)
  {
    [v50 setDisplayStyle:{objc_msgSend(v50, "displayStyle") | 8}];
  }

  v16 = [location[0] objectForKeyedSubscript:@"omitBadge"];
  bOOLValue3 = [v16 BOOLValue];
  MEMORY[0x1E69E5920](v16);
  if (bOOLValue3)
  {
    [v50 setDisplayStyle:{objc_msgSend(v50, "displayStyle") | 0x10}];
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (v58)
  {
    [dictionary setObject:v58 forKeyedSubscript:@"AKFollowUpAltDSIDKey"];
  }

  v15 = [location[0] objectForKeyedSubscript:@"idmsdata"];
  MEMORY[0x1E69E5920](v15);
  if (v15)
  {
    v14 = [location[0] objectForKeyedSubscript:@"idmsdata"];
    [dictionary setObject:? forKeyedSubscript:?];
    MEMORY[0x1E69E5920](v14);
  }

  v13 = [v59 objectForKeyedSubscript:@"txnid"];
  MEMORY[0x1E69E5920](v13);
  if (v13)
  {
    v12 = [v59 objectForKeyedSubscript:@"txnid"];
    [dictionary setObject:? forKeyedSubscript:?];
    MEMORY[0x1E69E5920](v12);
  }

  v11 = [v59 objectForKeyedSubscript:@"cmd"];
  MEMORY[0x1E69E5920](v11);
  if (v11)
  {
    v10 = [v59 objectForKeyedSubscript:?];
    [dictionary setObject:? forKeyedSubscript:?];
    MEMORY[0x1E69E5920](v10);
  }

  else
  {
    [dictionary setObject:&unk_1F07B4F70 forKeyedSubscript:@"cmd"];
  }

  if (v47)
  {
    v41 = _AKLogSystem();
    v40 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v63, v47);
      _os_log_debug_impl(&dword_193225000, v41, v40, "Settings a custom icon for the CFU with app id: %@", v63, 0xCu);
    }

    objc_storeStrong(&v41, 0);
    [dictionary setObject:v47 forKeyedSubscript:@"notifyingAppId"];
  }

  [v50 setUserInfo:dictionary];
  if ([(AKFollowUpFactoryImpl *)selfCopy _itemShouldSuppressNotification:location[0]])
  {
    oslog = _AKLogSystem();
    v38 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v8 = oslog;
      v9 = v38;
      __os_log_helper_16_0_0(v37);
      _os_log_debug_impl(&dword_193225000, v8, v9, "Notification should not be sent.", v37, 2u);
    }

    objc_storeStrong(&oslog, 0);
    [v50 setNotification:0];
  }

  v62 = MEMORY[0x1E69E5928](v50);
  v51 = 1;
  objc_storeStrong(&dictionary, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(&v50, 0);
LABEL_56:
  objc_storeStrong(&v55, 0);
  objc_storeStrong(&v58, 0);
  objc_storeStrong(&v59, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v6 = v62;

  return v6;
}

- (id)_extensionIDFromPayload:(id)payload
{
  v12 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, payload);
  v7 = [location[0] objectForKeyedSubscript:@"extension"];
  if (v7 && [v7 length])
  {
    if ([v7 isEqual:@"data"])
    {
      extensionIdentifier = MEMORY[0x1E69E5928](@"com.apple.CoreCDPUI.CDPFollowUpExtension");
      v6 = 1;
      goto LABEL_13;
    }

    if ([v7 isEqual:@"account"])
    {
      extensionIdentifier = MEMORY[0x1E69E5928](@"com.apple.AuthKitUI.AKFollowUpServerUIExtension");
      v6 = 1;
      goto LABEL_13;
    }

    if ([v7 isEqual:@"threatNotification"])
    {
      extensionIdentifier = MEMORY[0x1E69E5928](@"com.apple.ThreatNotificationUI.FollowUpExtension");
      v6 = 1;
      goto LABEL_13;
    }

    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_66(v11, v7);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Unrecognized follow up extension identifier %{public}@. Please add support for this if necessary. Using extension identifier from factory property.", v11, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  extensionIdentifier = [(AKFollowUpFactoryImpl *)selfCopy extensionIdentifier];
  v6 = 1;
LABEL_13:
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = extensionIdentifier;

  return v3;
}

- (id)_groupIdentifierFromPayload:(id)payload
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, payload);
  v12 = [location[0] objectForKeyedSubscript:@"groupId"];
  v11 = [location[0] objectForKeyedSubscript:@"id"];
  if ([v12 isEqualToString:@"noGroup"] & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"com.apple.ThreatNotificationUI.FollowUpItem.general"))
  {
    v9 = 0;
    if (CoreFollowUpLibraryCore(0))
    {
      v10 = getFLGroupIdentifierNoGroup();
      v9 = 1;
      v3 = MEMORY[0x1E69E5928](v10);
    }

    else
    {
      v3 = MEMORY[0x1E69E5928](0);
    }

    v14 = v3;
    if (v9)
    {
      MEMORY[0x1E69E5920](v10);
    }
  }

  else
  {
    v7 = 0;
    if (CoreFollowUpLibraryCore(0))
    {
      v8 = getFLGroupIdentifierAccount();
      v7 = 1;
      v4 = MEMORY[0x1E69E5928](v8);
    }

    else
    {
      v4 = MEMORY[0x1E69E5928](0);
    }

    v14 = v4;
    if (v7)
    {
      MEMORY[0x1E69E5920](v8);
    }
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  v5 = v14;

  return v5;
}

- (id)_actionsFromPayload:(id)payload pushMessageInfo:(id)info
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, payload);
  v11 = 0;
  objc_storeStrong(&v11, info);
  v10 = [location[0] objectForKeyedSubscript:@"actions"];
  v6 = v10;
  v8 = MEMORY[0x1E69E5928](selfCopy);
  v9 = MEMORY[0x1E69E5928](v11);
  v7 = [v6 aaf_map:?];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);

  return v7;
}

id __61__AKFollowUpFactoryImpl__actionsFromPayload_pushMessageInfo___block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [*(a1 + 32) _actionFromInfo:location[0] pushMessageInfo:*(a1 + 40)];
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_actionFromInfo:(id)info pushMessageInfo:(id)messageInfo
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, info);
  v20 = 0;
  objc_storeStrong(&v20, messageInfo);
  if (CoreFollowUpLibraryCore(0))
  {
    v4 = objc_alloc_init(getFLFollowUpActionClass());
  }

  else
  {
    v4 = objc_alloc_init(0);
  }

  v19 = v4;
  v18 = [location[0] objectForKeyedSubscript:@"urlKey"];
  v17 = [location[0] objectForKeyedSubscript:@"AKAction"];
  v16 = [location[0] objectForKeyedSubscript:@"AKNativeAction"];
  v15 = [location[0] objectForKeyedSubscript:@"url"];
  v14 = [location[0] objectForKeyedSubscript:@"localUrlKey"];
  v13 = [location[0] objectForKeyedSubscript:@"root"];
  v8 = [v20 objectForKeyedSubscript:@"cmd"];
  unsignedIntValue = [v8 unsignedIntValue];
  MEMORY[0x1E69E5920](v8);
  v12 = unsignedIntValue;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (v17)
  {
    [dictionary setObject:v17 forKeyedSubscript:@"ak-action"];
  }

  if (v16)
  {
    [dictionary setObject:v16 forKeyedSubscript:@"ak-native-action"];
  }

  if (v18)
  {
    [dictionary setObject:v18 forKeyedSubscript:@"AKFollowUpServerURL"];
  }

  if (v15)
  {
    [dictionary setObject:v15 forKeyedSubscript:@"AKFollowUpSafariURL"];
  }

  if (v14)
  {
    [dictionary setObject:v14 forKeyedSubscript:@"AKFollowUpLocalURLKey"];
  }

  if (v13)
  {
    [dictionary setObject:v13 forKeyedSubscript:@"AKFollowUpAppleAccountRootKey"];
  }

  if (v12 == 1900)
  {
    [v19 setIdentifier:@"continuity_push_followup_notification"];
  }

  [v19 setUserInfo:dictionary];
  v6 = [location[0] objectForKeyedSubscript:@"title"];
  [v19 setLabel:?];
  MEMORY[0x1E69E5920](v6);
  v7 = MEMORY[0x1E69E5928](v19);
  objc_storeStrong(&dictionary, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);

  return v7;
}

- (id)_notificationFromPayload:(id)payload pushMessageInfo:(id)info
{
  v105[1] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, payload);
  v96 = 0;
  objc_storeStrong(&v96, info);
  v95 = 0;
  v94 = [location[0] objectForKeyedSubscript:@"notification"];
  v64 = [v96 objectForKeyedSubscript:@"cmd"];
  unsignedIntValue = [v64 unsignedIntValue];
  MEMORY[0x1E69E5920](v64);
  v93 = unsignedIntValue;
  if (v94)
  {
    if (CoreFollowUpLibraryCore(0))
    {
      v4 = objc_alloc_init(getFLFollowUpNotificationClass());
    }

    else
    {
      v4 = objc_alloc_init(0);
    }

    v5 = v4;
    v6 = v95;
    v95 = v5;
    MEMORY[0x1E69E5920](v6);
    v57 = [v94 objectForKeyedSubscript:@"body"];
    [v95 setInformativeText:?];
    MEMORY[0x1E69E5920](v57);
    v58 = [v94 objectForKeyedSubscript:@"title"];
    [v95 setTitle:?];
    MEMORY[0x1E69E5920](v58);
    v59 = [v94 objectForKeyedSubscript:@"frequency"];
    [v59 doubleValue];
    [v95 setFrequency:?];
    MEMORY[0x1E69E5920](v59);
    v60 = [v94 objectForKeyedSubscript:@"delay"];
    [v60 doubleValue];
    [v95 setFirstNotificationDelay:?];
    MEMORY[0x1E69E5920](v60);
    v61 = [v94 objectForKeyedSubscript:@"force"];
    bOOLValue = [v61 BOOLValue];
    MEMORY[0x1E69E5920](v61);
    if (bOOLValue)
    {
      options = [v95 options];
      v91 = 0;
      if (CoreFollowUpLibraryCore(0))
      {
        v92 = getFLNotificationOptionForce();
        v91 = 1;
        v55 = v92;
      }

      else
      {
        v55 = 0;
      }

      v105[0] = v55;
      v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:1];
      v53 = [options setByAddingObjectsFromArray:?];
      [v95 setOptions:?];
      MEMORY[0x1E69E5920](v53);
      MEMORY[0x1E69E5920](v54);
      if (v91)
      {
        MEMORY[0x1E69E5920](v92);
      }

      MEMORY[0x1E69E5920](options);
    }

    v51 = [v94 objectForKeyedSubscript:@"osAlert"];
    bOOLValue2 = [v51 BOOLValue];
    MEMORY[0x1E69E5920](v51);
    if (bOOLValue2)
    {
      options2 = [v95 options];
      v89 = 0;
      if (CoreFollowUpLibraryCore(0))
      {
        v90 = getFLNotificationOptionSpringboardAlert();
        v89 = 1;
        v49 = v90;
      }

      else
      {
        v49 = 0;
      }

      v104 = v49;
      v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v104 count:1];
      v47 = [options2 setByAddingObjectsFromArray:?];
      [v95 setOptions:?];
      MEMORY[0x1E69E5920](v47);
      MEMORY[0x1E69E5920](v48);
      if (v89)
      {
        MEMORY[0x1E69E5920](v90);
      }

      MEMORY[0x1E69E5920](options2);
    }

    v45 = [v94 objectForKeyedSubscript:@"osAlertActionOnly"];
    bOOLValue3 = [v45 BOOLValue];
    MEMORY[0x1E69E5920](v45);
    if (bOOLValue3)
    {
      v88 = _AKLogSystem();
      v87 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_64(v103, @"osAlertActionOnly");
        _os_log_debug_impl(&dword_193225000, v88, v87, "Detected %@", v103, 0xCu);
      }

      objc_storeStrong(&v88, 0);
      options3 = [v95 options];
      v85 = 0;
      if (CoreFollowUpLibraryCore(0))
      {
        v86 = getFLNotificationOptionSpringboardAlert();
        v85 = 1;
        v43 = v86;
      }

      else
      {
        v43 = 0;
      }

      v102[0] = v43;
      v83 = 0;
      if (CoreFollowUpLibraryCore(0))
      {
        v84 = getFLNotificationOptionSpringboardAlertActionOnly();
        v83 = 1;
        v42 = v84;
      }

      else
      {
        v42 = 0;
      }

      v102[1] = v42;
      v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:2];
      v40 = [options3 setByAddingObjectsFromArray:?];
      [v95 setOptions:?];
      MEMORY[0x1E69E5920](v40);
      MEMORY[0x1E69E5920](v41);
      if (v83)
      {
        MEMORY[0x1E69E5920](v84);
      }

      if (v85)
      {
        MEMORY[0x1E69E5920](v86);
      }

      MEMORY[0x1E69E5920](options3);
    }

    v38 = [v94 objectForKeyedSubscript:@"bannerAlert"];
    bOOLValue4 = [v38 BOOLValue];
    MEMORY[0x1E69E5920](v38);
    if (bOOLValue4)
    {
      options4 = [v95 options];
      v81 = 0;
      if (CoreFollowUpLibraryCore(0))
      {
        v82 = getFLNotificationOptionBannerAlert();
        v81 = 1;
        v36 = v82;
      }

      else
      {
        v36 = 0;
      }

      v101 = v36;
      v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v101 count:1];
      v34 = [options4 setByAddingObjectsFromArray:?];
      [v95 setOptions:?];
      MEMORY[0x1E69E5920](v34);
      MEMORY[0x1E69E5920](v35);
      if (v81)
      {
        MEMORY[0x1E69E5920](v82);
      }

      MEMORY[0x1E69E5920](options4);
    }

    v33 = [v94 objectForKeyedSubscript:@"defbtn"];
    MEMORY[0x1E69E5920](v33);
    if (v33)
    {
      v30 = selfCopy;
      v32 = [v94 objectForKeyedSubscript:@"defbtn"];
      v31 = [AKFollowUpFactoryImpl actionWithTitle:v30 andActionKey:"actionWithTitle:andActionKey:"];
      [v95 setActivateAction:?];
      MEMORY[0x1E69E5920](v31);
      MEMORY[0x1E69E5920](v32);
    }

    v80 = [v94 objectForKeyedSubscript:@"albtn"];
    if (v80 && [v80 length])
    {
      v27 = selfCopy;
      v29 = [v94 objectForKeyedSubscript:@"albtn"];
      v28 = [AKFollowUpFactoryImpl actionWithTitle:v27 andActionKey:"actionWithTitle:andActionKey:"];
      [v95 setClearAction:?];
      MEMORY[0x1E69E5920](v28);
      MEMORY[0x1E69E5920](v29);
    }

    else
    {
      _clearAction = [(AKFollowUpFactoryImpl *)selfCopy _clearAction];
      [v95 setClearAction:?];
      MEMORY[0x1E69E5920](_clearAction);
    }

    v24 = [location[0] objectForKeyedSubscript:@"zeroAction"];
    v77 = 0;
    bOOLValue5 = 1;
    if (([v24 BOOLValue] & 1) == 0)
    {
      v78 = [v94 objectForKeyedSubscript:@"zeroAction"];
      v77 = 1;
      bOOLValue5 = [v78 BOOLValue];
    }

    if (v77)
    {
      MEMORY[0x1E69E5920](v78);
    }

    MEMORY[0x1E69E5920](v24);
    v79 = bOOLValue5 & 1;
    if (v93 == 1900 || (v79 & 1) == 1)
    {
      v76 = [(AKFollowUpFactoryImpl *)selfCopy _actionsFromPayload:location[0] pushMessageInfo:v96];
      firstObject = [v76 firstObject];
      MEMORY[0x1E69E5920](firstObject);
      if (firstObject)
      {
        firstObject2 = [v76 firstObject];
        [v95 setActivateAction:?];
        MEMORY[0x1E69E5920](firstObject2);
      }

      options5 = [v95 options];
      v74 = 0;
      if (CoreFollowUpLibraryCore(0))
      {
        v75 = getFLNotificationOptionExtensionActions();
        v74 = 1;
        v20 = v75;
      }

      else
      {
        v20 = 0;
      }

      v100 = v20;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v100 count:1];
      v18 = [options5 setByAddingObjectsFromArray:?];
      [v95 setOptions:?];
      MEMORY[0x1E69E5920](v18);
      MEMORY[0x1E69E5920](v19);
      if (v74)
      {
        MEMORY[0x1E69E5920](v75);
      }

      MEMORY[0x1E69E5920](options5);
      options6 = [v95 options];
      v72 = 0;
      if (CoreFollowUpLibraryCore(0))
      {
        v73 = getFLNotificationOptionExtensionForNotification();
        v72 = 1;
        v16 = v73;
      }

      else
      {
        v16 = 0;
      }

      v99 = v16;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v99 count:1];
      v14 = [options6 setByAddingObjectsFromArray:?];
      [v95 setOptions:?];
      MEMORY[0x1E69E5920](v14);
      MEMORY[0x1E69E5920](v15);
      if (v72)
      {
        MEMORY[0x1E69E5920](v73);
      }

      MEMORY[0x1E69E5920](options6);
      if (v80 && [v80 length])
      {
        oslog = _AKLogSystem();
        v70 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
        {
          v12 = oslog;
          v13 = v70;
          __os_log_helper_16_0_0(v69);
          _os_log_debug_impl(&dword_193225000, v12, v13, "Continuity push with alternate button title detected.", v69, 2u);
        }

        objc_storeStrong(&oslog, 0);
        v11 = [(AKFollowUpFactoryImpl *)selfCopy actionWithTitle:v80 andActionKey:@"clear_followup_notification"];
        [v95 setClearAction:?];
        MEMORY[0x1E69E5920](v11);
      }

      objc_storeStrong(&v76, 0);
    }

    objc_storeStrong(&v80, 0);
  }

  else
  {
    v68 = _AKLogSystem();
    v67 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v68;
      v10 = v67;
      __os_log_helper_16_0_0(v66);
      _os_log_impl(&dword_193225000, v9, v10, "Couldn't find pyaload data to post notification.", v66, 2u);
    }

    objc_storeStrong(&v68, 0);
  }

  v8 = MEMORY[0x1E69E5928](v95);
  objc_storeStrong(&v94, 0);
  objc_storeStrong(&v95, 0);
  objc_storeStrong(&v96, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];

  return v8;
}

- (id)_clearAction
{
  v6[2] = self;
  v6[1] = a2;
  if (CoreFollowUpLibraryCore(0))
  {
    v2 = objc_alloc_init(getFLFollowUpActionClass());
  }

  else
  {
    v2 = objc_alloc_init(0);
  }

  v6[0] = v2;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:@"clear_followup_notification" forKeyedSubscript:@"ak-action"];
  [v6[0] setUserInfo:dictionary];
  v4 = MEMORY[0x1E69E5928](v6[0]);
  objc_storeStrong(&dictionary, 0);
  objc_storeStrong(v6, 0);

  return v4;
}

- (id)actionWithTitle:(id)title andActionKey:(id)key
{
  v13[1] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  v10 = 0;
  objc_storeStrong(&v10, key);
  if (CoreFollowUpLibraryCore(0))
  {
    v4 = objc_alloc_init(getFLFollowUpActionClass());
  }

  else
  {
    v4 = objc_alloc_init(0);
  }

  v9 = v4;
  [v4 setLabel:location[0]];
  v12 = @"ak-action";
  v13[0] = v10;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [v9 setUserInfo:?];
  MEMORY[0x1E69E5920](v6);
  v7 = MEMORY[0x1E69E5928](v9);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)IsFollowUpItemNotificationForced:(id)forced
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, forced);
  notification = [location[0] notification];
  options = [notification options];
  v7 = 0;
  if (CoreFollowUpLibraryCore(0))
  {
    v8 = getFLNotificationOptionForce();
    v7 = 1;
    v4 = v8;
  }

  else
  {
    v4 = 0;
  }

  v10 = [options containsObject:v4] & 1;
  if (v7)
  {
    MEMORY[0x1E69E5920](v8);
  }

  MEMORY[0x1E69E5920](options);
  MEMORY[0x1E69E5920](notification);
  objc_storeStrong(location, 0);
  return v10 & 1;
}

@end