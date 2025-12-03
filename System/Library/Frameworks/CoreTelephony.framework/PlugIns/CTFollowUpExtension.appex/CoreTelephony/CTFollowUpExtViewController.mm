@interface CTFollowUpExtViewController
- (void)handleCellularPlanSetupItem:(id)item flowType:(id)type requireSetup:(id)setup;
- (void)handleInstallCellularPlanItem:(id)item selectedAction:(id)action;
- (void)handleTransferPlanWebsheetItem:(id)item selectedAction:(id)action;
- (void)handleUrlItem:(id)item;
- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion;
@end

@implementation CTFollowUpExtViewController

- (void)handleUrlItem:(id)item
{
  userInfo = [item userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"URL"];
  v5 = [NSURL URLWithString:v4];

  v6 = +[LSApplicationWorkspace defaultWorkspace];
  v10 = 0;
  v7 = [v6 openSensitiveURL:v5 withOptions:0 error:&v10];
  v8 = v10;

  v9 = _FLLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v12 = v5;
    v13 = 1024;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Followup did open prefs url %@ with success %d error %@", buf, 0x1Cu);
  }
}

- (void)handleInstallCellularPlanItem:(id)item selectedAction:(id)action
{
  actionCopy = action;
  itemCopy = item;
  v6 = objc_alloc_init(CoreTelephonyClient);
  v7 = objc_alloc_init(CTCellularPlanProvisioningRequest);
  userInfo = [actionCopy userInfo];
  v9 = [userInfo objectForKeyedSubscript:@"ServerURL"];
  [v7 setAddress:v9];

  userInfo2 = [actionCopy userInfo];
  v11 = [userInfo2 objectForKeyedSubscript:@"MatchingID"];
  [v7 setMatchingID:v11];

  categoryIdentifier = [itemCopy categoryIdentifier];

  LODWORD(itemCopy) = [categoryIdentifier isEqualToString:@"com.apple.coretelephony.cellularplan-default.plan-installreplace"];
  if (itemCopy)
  {
    userInfo3 = [actionCopy userInfo];
    v14 = [userInfo3 objectForKeyedSubscript:@"IccidHash"];
    [v7 setICCID:v14];
  }

  userInfo4 = [actionCopy userInfo];
  v16 = [userInfo4 objectForKeyedSubscript:@"CarrierName"];
  [v6 addPlanWith:v7 appName:v16 appType:2 completionHandler:&stru_1000041D0];
}

- (void)handleTransferPlanWebsheetItem:(id)item selectedAction:(id)action
{
  actionCopy = action;
  itemCopy = item;
  v8 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:@"com.apple.SIMSetupUIService" viewControllerClassName:@"TSSIMSetupSupportViewController"];
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  [v10 setObject:&off_100004648 forKey:@"FlowTypeKey"];
  [v10 setObject:&off_100004648 forKey:@"RequestTypeKey"];
  userInfo = [actionCopy userInfo];
  v12 = [userInfo objectForKeyedSubscript:@"ServerURL"];
  [v10 setObject:v12 forKey:@"WebsheetURLKey"];

  userInfo2 = [actionCopy userInfo];
  v14 = [userInfo2 objectForKeyedSubscript:@"PostData"];

  if (v14)
  {
    userInfo3 = [actionCopy userInfo];
    v16 = [userInfo3 objectForKeyedSubscript:@"PostData"];
    [v10 setObject:v16 forKey:@"WebsheetPostdataKey"];
  }

  [v9 setUserInfo:v10];
  [(SBSRemoteAlertHandle *)self->_remoteAlertHandle invalidate];
  v17 = [SBSRemoteAlertHandle newHandleWithDefinition:v8 configurationContext:v9];
  remoteAlertHandle = self->_remoteAlertHandle;
  self->_remoteAlertHandle = v17;

  v19 = _FLLogSystem();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = self->_remoteAlertHandle;
    *buf = 134218242;
    v30 = v20;
    v31 = 2112;
    v32 = v10;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "remote alert activation requested (%p) - %@", buf, 0x16u);
  }

  v21 = objc_opt_new();
  [v21 setReason:@"Transfer Websheet"];
  [(SBSRemoteAlertHandle *)self->_remoteAlertHandle activateWithContext:v21];
  v22 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.SIMSetupUIService"];
  uniqueIdentifier = [itemCopy uniqueIdentifier];
  v28 = uniqueIdentifier;
  v24 = [NSArray arrayWithObjects:&v28 count:1];
  [v22 removePendingNotificationRequestsWithIdentifiers:v24];

  uniqueIdentifier2 = [itemCopy uniqueIdentifier];

  v27 = uniqueIdentifier2;
  v26 = [NSArray arrayWithObjects:&v27 count:1];
  [v22 removeDeliveredNotificationsWithIdentifiers:v26];
}

- (void)handleCellularPlanSetupItem:(id)item flowType:(id)type requireSetup:(id)setup
{
  setupCopy = setup;
  typeCopy = type;
  itemCopy = item;
  v11 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:@"com.apple.SIMSetupUIService" viewControllerClassName:@"TSSIMSetupSupportViewController"];
  v12 = objc_opt_new();
  v13 = objc_opt_new();
  [v13 setObject:typeCopy forKey:@"FlowTypeKey"];

  [v13 setObject:setupCopy forKey:@"RequireSetupKey-DEBUG"];
  [v12 setUserInfo:v13];
  [(SBSRemoteAlertHandle *)self->_remoteAlertHandle invalidate];
  v14 = [SBSRemoteAlertHandle newHandleWithDefinition:v11 configurationContext:v12];
  remoteAlertHandle = self->_remoteAlertHandle;
  self->_remoteAlertHandle = v14;

  v16 = objc_opt_new();
  [v16 setReason:@"Cellular Plan SetUp"];
  [(SBSRemoteAlertHandle *)self->_remoteAlertHandle activateWithContext:v16];
  v17 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.SIMSetupUIService"];
  uniqueIdentifier = [itemCopy uniqueIdentifier];
  v23 = uniqueIdentifier;
  v19 = [NSArray arrayWithObjects:&v23 count:1];
  [v17 removePendingNotificationRequestsWithIdentifiers:v19];

  uniqueIdentifier2 = [itemCopy uniqueIdentifier];

  v22 = uniqueIdentifier2;
  v21 = [NSArray arrayWithObjects:&v22 count:1];
  [v17 removeDeliveredNotificationsWithIdentifiers:v21];
}

- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion
{
  itemCopy = item;
  actionCopy = action;
  completionCopy = completion;
  v11 = _FLLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v87 = itemCopy;
    v88 = 2112;
    v89 = actionCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Extension processing item: %@ action: %@", buf, 0x16u);
  }

  v12 = objc_opt_new();
  identifier = [actionCopy identifier];
  v14 = [identifier isEqualToString:@"com.apple.coretelephony.cellularplan-default.setup-required"];

  if (!v14)
  {
    identifier2 = [actionCopy identifier];
    v26 = [identifier2 isEqualToString:@"com.followup.dismiss"];

    if (v26)
    {
      v27 = _FLLogSystem();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v87 = itemCopy;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Extension processed DISMISS item %@", buf, 0xCu);
      }

      goto LABEL_14;
    }

    identifier3 = [actionCopy identifier];
    v37 = [identifier3 isEqualToString:@"com.apple.coretelephony.cellularplan-default.plan-installreplace-dismiss"];

    if (!v37)
    {
      identifier4 = [actionCopy identifier];
      v45 = [identifier4 isEqualToString:@"com.followup.showurl"];

      if (!v45)
      {
        identifier5 = [actionCopy identifier];
        v49 = [identifier5 isEqualToString:@"com.followup.install"];

        if (v49)
        {
          [(CTFollowUpExtViewController *)self handleInstallCellularPlanItem:itemCopy selectedAction:actionCopy];
        }

        else
        {
          categoryIdentifier = [itemCopy categoryIdentifier];
          v60 = [categoryIdentifier isEqualToString:@"com.apple.coretelephony.cellularplan-default.plan-installreplace"];

          if (v60)
          {
            userInfo = [itemCopy userInfo];
            uniqueIdentifier = [NSMutableDictionary dictionaryWithDictionary:userInfo];

            [uniqueIdentifier setValue:&__kCFBooleanFalse forKey:@"Cancel"];
            identifier6 = [actionCopy identifier];
            v63 = [identifier6 isEqualToString:@"com.followup.install-replace"];

            if (v63)
            {
              [uniqueIdentifier setValue:&__kCFBooleanTrue forKey:@"isFromFollow"];
            }

            [itemCopy setUserInfo:uniqueIdentifier];
            [v12 postFollowUpItem:itemCopy error:0];
            v64 = [NSURL URLWithString:@"prefs:root=MOBILE_DATA_SETTINGS_ID"];
            v65 = +[LSApplicationWorkspace defaultWorkspace];
            [v65 openSensitiveURL:v64 withOptions:0 error:0];

            [(CTFollowUpExtViewController *)self handleInstallCellularPlanItem:itemCopy selectedAction:actionCopy];
            goto LABEL_16;
          }

          identifier7 = [actionCopy identifier];
          v71 = [identifier7 isEqualToString:@"com.followup.transfer-websheet"];

          if (v71)
          {
            [(CTFollowUpExtViewController *)self handleTransferPlanWebsheetItem:itemCopy selectedAction:actionCopy];
          }

          else
          {
            identifier8 = [actionCopy identifier];
            v73 = [identifier8 isEqualToString:@"com.followup.setup"];

            if (v73)
            {
              [(CTFollowUpExtViewController *)self handleCellularPlanSetupItem:itemCopy flowType:&off_100004690 requireSetup:&off_1000046A8];
            }

            else
            {
              v74 = _FLLogSystem();
              if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
              {
                sub_100002168(actionCopy, itemCopy, v74);
              }
            }
          }
        }

        uniqueIdentifier = [itemCopy uniqueIdentifier];
        v82 = uniqueIdentifier;
        identifier9 = [NSArray arrayWithObjects:&v82 count:1];
        [v12 clearPendingFollowUpItemsWithUniqueIdentifiers:identifier9 error:0];
        goto LABEL_15;
      }

      [(CTFollowUpExtViewController *)self handleUrlItem:itemCopy];
LABEL_14:
      uniqueIdentifier2 = [itemCopy uniqueIdentifier];
      v82 = uniqueIdentifier2;
      v29 = [NSArray arrayWithObjects:&v82 count:1];
      [v12 clearPendingFollowUpItemsWithUniqueIdentifiers:v29 error:0];

      uniqueIdentifier = objc_alloc_init(CoreTelephonyClient);
      v80[0] = @"Action";
      identifier9 = [actionCopy identifier];
      v80[1] = @"SlotID";
      v81[0] = identifier9;
      userInfo2 = [itemCopy userInfo];
      v33 = [userInfo2 objectForKeyedSubscript:@"SlotID"];
      v81[1] = v33;
      v34 = [NSDictionary dictionaryWithObjects:v81 forKeys:v80 count:2];
      v35 = [uniqueIdentifier wifiCallingCTFollowUpComplete:v34];

LABEL_15:
LABEL_16:

      completionCopy[2](completionCopy, 1);
      goto LABEL_21;
    }

    userInfo3 = [itemCopy userInfo];
    uniqueIdentifier = [NSMutableDictionary dictionaryWithDictionary:userInfo3];

    userInfo4 = [itemCopy userInfo];
    v40 = [userInfo4 objectForKeyedSubscript:@"isFirstDay"];
    bOOLValue = [v40 BOOLValue];

    if (bOOLValue)
    {
      [uniqueIdentifier setValue:&__kCFBooleanFalse forKey:@"isFirstDay"];
      notification = [itemCopy notification];
      [notification setFrequency:86400.0];
LABEL_38:

LABEL_39:
      [itemCopy setUserInfo:uniqueIdentifier];
      [v12 postFollowUpItem:itemCopy error:0];
      userInfo5 = [itemCopy userInfo];
      v68 = [userInfo5 objectForKeyedSubscript:@"Cancel"];
      bOOLValue2 = [v68 BOOLValue];

      if (bOOLValue2)
      {
        [(CTFollowUpExtViewController *)self handleInstallCellularPlanItem:itemCopy selectedAction:actionCopy];
      }

      goto LABEL_16;
    }

    userInfo6 = [itemCopy userInfo];
    v47 = [userInfo6 objectForKeyedSubscript:@"isLastDay"];
    if ([v47 BOOLValue])
    {
    }

    else
    {
      userInfo7 = [itemCopy userInfo];
      v51 = [userInfo7 objectForKeyedSubscript:@"isFirstDay"];
      bOOLValue3 = [v51 BOOLValue];

      if ((bOOLValue3 & 1) == 0)
      {
        [uniqueIdentifier setValue:&__kCFBooleanTrue forKey:@"isLastDay"];
        notification2 = [itemCopy notification];
        [notification2 setFrequency:518400.0];

        notification = [uniqueIdentifier objectForKeyedSubscript:@"LastDayInformativeText"];
        notification3 = [itemCopy notification];
        informativeText = notification3;
        v58 = notification;
LABEL_37:
        [notification3 setInformativeText:v58];

        goto LABEL_38;
      }
    }

    userInfo8 = [itemCopy userInfo];
    v53 = [userInfo8 objectForKeyedSubscript:@"Cancel"];
    bOOLValue4 = [v53 BOOLValue];

    if (bOOLValue4)
    {
      goto LABEL_39;
    }

    [uniqueIdentifier setValue:&__kCFBooleanTrue forKey:@"Cancel"];
    [uniqueIdentifier setValue:&__kCFBooleanTrue forKey:@"isAlertStop"];
    notification4 = [itemCopy notification];
    [notification4 setFrequency:0.0];

    notification = [itemCopy notification];
    informativeText = [notification informativeText];
    notification3 = itemCopy;
    v58 = informativeText;
    goto LABEL_37;
  }

  userInfo9 = [actionCopy userInfo];

  if (userInfo9)
  {
    v84 = LSOpenInBackgroundKey;
    v85 = &__kCFBooleanFalse;
    v16 = [NSDictionary dictionaryWithObjects:&v85 forKeys:&v84 count:1];
    v17 = +[LSApplicationWorkspace defaultWorkspace];
    userInfo10 = [actionCopy userInfo];
    v19 = [userInfo10 valueForKey:@"ServerURL"];
    v20 = [NSURL URLWithString:v19];
    v76 = 0;
    [v17 openURL:v20 withOptions:v16 error:&v76];
    v21 = v76;

    if (v21)
    {
      v22 = _FLLogSystem();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100002218(actionCopy, v21, v22);
      }
    }

    uniqueIdentifier3 = [itemCopy uniqueIdentifier];
    v83 = uniqueIdentifier3;
    v24 = [NSArray arrayWithObjects:&v83 count:1];
    [v12 clearPendingFollowUpItemsWithUniqueIdentifiers:v24 error:0];

    completionCopy[2](completionCopy, 1);
  }

  else
  {
    v77[0] = _NSConcreteStackBlock;
    v77[1] = 3221225472;
    v77[2] = sub_100002064;
    v77[3] = &unk_1000041F8;
    v78 = [[CoreTelephonyClient alloc] initWithQueue:&_dispatch_main_q];
    v79 = completionCopy;
    v43 = v78;
    [v43 registerSetUpeSIMLaunchedEvent:v77];
    [(CTFollowUpExtViewController *)self handleCellularPlanSetupItem:itemCopy flowType:&off_100004660 requireSetup:&off_100004678];
  }

LABEL_21:
}

@end