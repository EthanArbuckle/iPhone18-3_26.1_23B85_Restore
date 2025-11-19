@interface CTFollowUpExtViewController
- (void)handleCellularPlanSetupItem:(id)a3 flowType:(id)a4 requireSetup:(id)a5;
- (void)handleInstallCellularPlanItem:(id)a3 selectedAction:(id)a4;
- (void)handleTransferPlanWebsheetItem:(id)a3 selectedAction:(id)a4;
- (void)handleUrlItem:(id)a3;
- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5;
@end

@implementation CTFollowUpExtViewController

- (void)handleUrlItem:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"URL"];
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

- (void)handleInstallCellularPlanItem:(id)a3 selectedAction:(id)a4
{
  v17 = a4;
  v5 = a3;
  v6 = objc_alloc_init(CoreTelephonyClient);
  v7 = objc_alloc_init(CTCellularPlanProvisioningRequest);
  v8 = [v17 userInfo];
  v9 = [v8 objectForKeyedSubscript:@"ServerURL"];
  [v7 setAddress:v9];

  v10 = [v17 userInfo];
  v11 = [v10 objectForKeyedSubscript:@"MatchingID"];
  [v7 setMatchingID:v11];

  v12 = [v5 categoryIdentifier];

  LODWORD(v5) = [v12 isEqualToString:@"com.apple.coretelephony.cellularplan-default.plan-installreplace"];
  if (v5)
  {
    v13 = [v17 userInfo];
    v14 = [v13 objectForKeyedSubscript:@"IccidHash"];
    [v7 setICCID:v14];
  }

  v15 = [v17 userInfo];
  v16 = [v15 objectForKeyedSubscript:@"CarrierName"];
  [v6 addPlanWith:v7 appName:v16 appType:2 completionHandler:&stru_1000041D0];
}

- (void)handleTransferPlanWebsheetItem:(id)a3 selectedAction:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:@"com.apple.SIMSetupUIService" viewControllerClassName:@"TSSIMSetupSupportViewController"];
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  [v10 setObject:&off_100004648 forKey:@"FlowTypeKey"];
  [v10 setObject:&off_100004648 forKey:@"RequestTypeKey"];
  v11 = [v6 userInfo];
  v12 = [v11 objectForKeyedSubscript:@"ServerURL"];
  [v10 setObject:v12 forKey:@"WebsheetURLKey"];

  v13 = [v6 userInfo];
  v14 = [v13 objectForKeyedSubscript:@"PostData"];

  if (v14)
  {
    v15 = [v6 userInfo];
    v16 = [v15 objectForKeyedSubscript:@"PostData"];
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
  v23 = [v7 uniqueIdentifier];
  v28 = v23;
  v24 = [NSArray arrayWithObjects:&v28 count:1];
  [v22 removePendingNotificationRequestsWithIdentifiers:v24];

  v25 = [v7 uniqueIdentifier];

  v27 = v25;
  v26 = [NSArray arrayWithObjects:&v27 count:1];
  [v22 removeDeliveredNotificationsWithIdentifiers:v26];
}

- (void)handleCellularPlanSetupItem:(id)a3 flowType:(id)a4 requireSetup:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:@"com.apple.SIMSetupUIService" viewControllerClassName:@"TSSIMSetupSupportViewController"];
  v12 = objc_opt_new();
  v13 = objc_opt_new();
  [v13 setObject:v9 forKey:@"FlowTypeKey"];

  [v13 setObject:v8 forKey:@"RequireSetupKey-DEBUG"];
  [v12 setUserInfo:v13];
  [(SBSRemoteAlertHandle *)self->_remoteAlertHandle invalidate];
  v14 = [SBSRemoteAlertHandle newHandleWithDefinition:v11 configurationContext:v12];
  remoteAlertHandle = self->_remoteAlertHandle;
  self->_remoteAlertHandle = v14;

  v16 = objc_opt_new();
  [v16 setReason:@"Cellular Plan SetUp"];
  [(SBSRemoteAlertHandle *)self->_remoteAlertHandle activateWithContext:v16];
  v17 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.SIMSetupUIService"];
  v18 = [v10 uniqueIdentifier];
  v23 = v18;
  v19 = [NSArray arrayWithObjects:&v23 count:1];
  [v17 removePendingNotificationRequestsWithIdentifiers:v19];

  v20 = [v10 uniqueIdentifier];

  v22 = v20;
  v21 = [NSArray arrayWithObjects:&v22 count:1];
  [v17 removeDeliveredNotificationsWithIdentifiers:v21];
}

- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _FLLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v87 = v8;
    v88 = 2112;
    v89 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Extension processing item: %@ action: %@", buf, 0x16u);
  }

  v12 = objc_opt_new();
  v13 = [v9 identifier];
  v14 = [v13 isEqualToString:@"com.apple.coretelephony.cellularplan-default.setup-required"];

  if (!v14)
  {
    v25 = [v9 identifier];
    v26 = [v25 isEqualToString:@"com.followup.dismiss"];

    if (v26)
    {
      v27 = _FLLogSystem();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v87 = v8;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Extension processed DISMISS item %@", buf, 0xCu);
      }

      goto LABEL_14;
    }

    v36 = [v9 identifier];
    v37 = [v36 isEqualToString:@"com.apple.coretelephony.cellularplan-default.plan-installreplace-dismiss"];

    if (!v37)
    {
      v44 = [v9 identifier];
      v45 = [v44 isEqualToString:@"com.followup.showurl"];

      if (!v45)
      {
        v48 = [v9 identifier];
        v49 = [v48 isEqualToString:@"com.followup.install"];

        if (v49)
        {
          [(CTFollowUpExtViewController *)self handleInstallCellularPlanItem:v8 selectedAction:v9];
        }

        else
        {
          v59 = [v8 categoryIdentifier];
          v60 = [v59 isEqualToString:@"com.apple.coretelephony.cellularplan-default.plan-installreplace"];

          if (v60)
          {
            v61 = [v8 userInfo];
            v30 = [NSMutableDictionary dictionaryWithDictionary:v61];

            [v30 setValue:&__kCFBooleanFalse forKey:@"Cancel"];
            v62 = [v9 identifier];
            v63 = [v62 isEqualToString:@"com.followup.install-replace"];

            if (v63)
            {
              [v30 setValue:&__kCFBooleanTrue forKey:@"isFromFollow"];
            }

            [v8 setUserInfo:v30];
            [v12 postFollowUpItem:v8 error:0];
            v64 = [NSURL URLWithString:@"prefs:root=MOBILE_DATA_SETTINGS_ID"];
            v65 = +[LSApplicationWorkspace defaultWorkspace];
            [v65 openSensitiveURL:v64 withOptions:0 error:0];

            [(CTFollowUpExtViewController *)self handleInstallCellularPlanItem:v8 selectedAction:v9];
            goto LABEL_16;
          }

          v70 = [v9 identifier];
          v71 = [v70 isEqualToString:@"com.followup.transfer-websheet"];

          if (v71)
          {
            [(CTFollowUpExtViewController *)self handleTransferPlanWebsheetItem:v8 selectedAction:v9];
          }

          else
          {
            v72 = [v9 identifier];
            v73 = [v72 isEqualToString:@"com.followup.setup"];

            if (v73)
            {
              [(CTFollowUpExtViewController *)self handleCellularPlanSetupItem:v8 flowType:&off_100004690 requireSetup:&off_1000046A8];
            }

            else
            {
              v74 = _FLLogSystem();
              if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
              {
                sub_100002168(v9, v8, v74);
              }
            }
          }
        }

        v30 = [v8 uniqueIdentifier];
        v82 = v30;
        v31 = [NSArray arrayWithObjects:&v82 count:1];
        [v12 clearPendingFollowUpItemsWithUniqueIdentifiers:v31 error:0];
        goto LABEL_15;
      }

      [(CTFollowUpExtViewController *)self handleUrlItem:v8];
LABEL_14:
      v28 = [v8 uniqueIdentifier];
      v82 = v28;
      v29 = [NSArray arrayWithObjects:&v82 count:1];
      [v12 clearPendingFollowUpItemsWithUniqueIdentifiers:v29 error:0];

      v30 = objc_alloc_init(CoreTelephonyClient);
      v80[0] = @"Action";
      v31 = [v9 identifier];
      v80[1] = @"SlotID";
      v81[0] = v31;
      v32 = [v8 userInfo];
      v33 = [v32 objectForKeyedSubscript:@"SlotID"];
      v81[1] = v33;
      v34 = [NSDictionary dictionaryWithObjects:v81 forKeys:v80 count:2];
      v35 = [v30 wifiCallingCTFollowUpComplete:v34];

LABEL_15:
LABEL_16:

      v10[2](v10, 1);
      goto LABEL_21;
    }

    v38 = [v8 userInfo];
    v30 = [NSMutableDictionary dictionaryWithDictionary:v38];

    v39 = [v8 userInfo];
    v40 = [v39 objectForKeyedSubscript:@"isFirstDay"];
    v41 = [v40 BOOLValue];

    if (v41)
    {
      [v30 setValue:&__kCFBooleanFalse forKey:@"isFirstDay"];
      v42 = [v8 notification];
      [v42 setFrequency:86400.0];
LABEL_38:

LABEL_39:
      [v8 setUserInfo:v30];
      [v12 postFollowUpItem:v8 error:0];
      v67 = [v8 userInfo];
      v68 = [v67 objectForKeyedSubscript:@"Cancel"];
      v69 = [v68 BOOLValue];

      if (v69)
      {
        [(CTFollowUpExtViewController *)self handleInstallCellularPlanItem:v8 selectedAction:v9];
      }

      goto LABEL_16;
    }

    v46 = [v8 userInfo];
    v47 = [v46 objectForKeyedSubscript:@"isLastDay"];
    if ([v47 BOOLValue])
    {
    }

    else
    {
      v50 = [v8 userInfo];
      v51 = [v50 objectForKeyedSubscript:@"isFirstDay"];
      v75 = [v51 BOOLValue];

      if ((v75 & 1) == 0)
      {
        [v30 setValue:&__kCFBooleanTrue forKey:@"isLastDay"];
        v66 = [v8 notification];
        [v66 setFrequency:518400.0];

        v42 = [v30 objectForKeyedSubscript:@"LastDayInformativeText"];
        v57 = [v8 notification];
        v56 = v57;
        v58 = v42;
LABEL_37:
        [v57 setInformativeText:v58];

        goto LABEL_38;
      }
    }

    v52 = [v8 userInfo];
    v53 = [v52 objectForKeyedSubscript:@"Cancel"];
    v54 = [v53 BOOLValue];

    if (v54)
    {
      goto LABEL_39;
    }

    [v30 setValue:&__kCFBooleanTrue forKey:@"Cancel"];
    [v30 setValue:&__kCFBooleanTrue forKey:@"isAlertStop"];
    v55 = [v8 notification];
    [v55 setFrequency:0.0];

    v42 = [v8 notification];
    v56 = [v42 informativeText];
    v57 = v8;
    v58 = v56;
    goto LABEL_37;
  }

  v15 = [v9 userInfo];

  if (v15)
  {
    v84 = LSOpenInBackgroundKey;
    v85 = &__kCFBooleanFalse;
    v16 = [NSDictionary dictionaryWithObjects:&v85 forKeys:&v84 count:1];
    v17 = +[LSApplicationWorkspace defaultWorkspace];
    v18 = [v9 userInfo];
    v19 = [v18 valueForKey:@"ServerURL"];
    v20 = [NSURL URLWithString:v19];
    v76 = 0;
    [v17 openURL:v20 withOptions:v16 error:&v76];
    v21 = v76;

    if (v21)
    {
      v22 = _FLLogSystem();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100002218(v9, v21, v22);
      }
    }

    v23 = [v8 uniqueIdentifier];
    v83 = v23;
    v24 = [NSArray arrayWithObjects:&v83 count:1];
    [v12 clearPendingFollowUpItemsWithUniqueIdentifiers:v24 error:0];

    v10[2](v10, 1);
  }

  else
  {
    v77[0] = _NSConcreteStackBlock;
    v77[1] = 3221225472;
    v77[2] = sub_100002064;
    v77[3] = &unk_1000041F8;
    v78 = [[CoreTelephonyClient alloc] initWithQueue:&_dispatch_main_q];
    v79 = v10;
    v43 = v78;
    [v43 registerSetUpeSIMLaunchedEvent:v77];
    [(CTFollowUpExtViewController *)self handleCellularPlanSetupItem:v8 flowType:&off_100004660 requireSetup:&off_100004678];
  }

LABEL_21:
}

@end