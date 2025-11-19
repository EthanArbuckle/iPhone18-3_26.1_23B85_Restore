@interface AAFollowUpController
- (BOOL)_shouldPostRenewFollowup:(id)a3;
- (BOOL)dismissFollowUpWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)isRenewCredentialsCFUPosted;
- (BOOL)postFollowUpWithIdentifier:(id)a3 userInfo:(id)a4 error:(id *)a5;
- (double)ageOfOldestCustodianCFU;
- (id)_addRecoveryContactAction;
- (id)_addRecoveryKeyActionForIdentifier:(id)a3;
- (id)_ageMigrationMigrationAction;
- (id)_childOrTeenProtoConnectAction;
- (id)_constructAnalyticsInforFromAccount:(id)a3 forIdentifier:(id)a4;
- (id)_createNewRecoveryKeyActionWithUserInfo:(id)a3;
- (id)_custodianReviewNotification:(id)a3;
- (id)_filterFollowUpItems:(id)a3 byIdentifier:(id)a4 byAccount:(id)a5;
- (id)_followUpController;
- (id)_followUpForAgeMigrationWithContext:(id)a3;
- (id)_followUpForChildOrTeenProtoConnectWithContext:(id)a3;
- (id)_followUpForOctagonDistrustedRecoveryKeyWithContext:(id)a3;
- (id)_followUpForRecoveryKeyHealingWithContext:(id)a3;
- (id)_followUpForRecoveryKeyMismatchWithContext:(id)a3;
- (id)_followUpForWalrusRecoveryKeyMismatchWithContext:(id)a3;
- (id)_followUpItemForBeneficiaryRemoved:(id)a3;
- (id)_followUpItemForCustodianEmbargo:(id)a3;
- (id)_followUpItemForCustodianInvitationReminder:(id)a3;
- (id)_followUpItemForCustodianRemoved:(id)a3;
- (id)_followUpItemForCustodianReview:(id)a3;
- (id)_followUpItemForCustodianWalrusNoLiveness:(id)a3;
- (id)_followUpItemForCustodianWalrusRemoved:(id)a3;
- (id)_followUpItemForRenewCredentials:(id)a3;
- (id)_followUpItemForStartUsing:(id)a3;
- (id)_followUpItemForVerifyTerms:(id)a3;
- (id)_followUpItemForWalrusUserRecoveryFactorsMissing:(id)a3;
- (id)_pendingFollowUpItemsWithIdentifier:(id)a3 forAccount:(id)a4;
- (id)_recoveryKeyMismatchOtherOptionsActionWithUserInfo:(id)a3;
- (id)_recoveryNotificationWithInfo:(id)a3 type:(id)a4;
- (id)_showAccountRecoveryPane;
- (id)_turnOffRecoveryKeyActionWithUserInfo:(id)a3;
- (id)_verifyRecoveryKeyAction;
- (id)_walrusUserRecoveryFactorsMissingNotification;
- (id)creationDateOfOldestFollowUpWithIdentifiers:(id)a3;
- (id)followUpItemForIdentifier:(id)a3 userInfo:(id)a4;
- (id)pendingCFUTypes;
- (id)pendingFollowUpItemUserInfosWithIdentifier:(id)a3;
- (void)_dismissFollowUpWithIdentifiers:(id)a3 completion:(id)a4;
- (void)_pendingFollowUpItemsWithIdentifier:(id)a3 forAccount:(id)a4 completion:(id)a5;
- (void)dismissFollowUpWithIdentifier:(id)a3 completion:(id)a4;
- (void)dismissFollowUpWithIdentifier:(id)a3 forAccount:(id)a4 completion:(id)a5;
- (void)dismissFollowUpsForAccount:(id)a3 identifiers:(id)a4 completion:(id)a5;
- (void)dismissFollowUpsStartingWithIdentifierPrefix:(id)a3 account:(id)a4 completion:(id)a5;
- (void)pendingFollowUpItemUserInfosWithIdentifier:(id)a3 completion:(id)a4;
- (void)pendingFollowUpWithIdentifier:(id)a3 completion:(id)a4;
- (void)pendingFollowUpsForAccount:(id)a3 completion:(id)a4;
- (void)postFollowUpWithIdentifier:(id)a3 forAccount:(id)a4 userInfo:(id)a5 completion:(id)a6;
- (void)postFollowUpWithIdentifier:(id)a3 userInfo:(id)a4 completion:(id)a5;
- (void)reportPostCFUEvent:(id)a3;
@end

@implementation AAFollowUpController

- (id)_followUpController
{
  v2 = [objc_alloc(getFLFollowUpControllerClass()) initWithClientIdentifier:AAFollowUpClientIdentifier[0]];

  return v2;
}

- (id)_followUpItemForStartUsing:(id)a3
{
  v19[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(getFLFollowUpActionClass());
  [v4 setIdentifier:AAFollowUpActionPrimary[0]];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"FOLLOWUP_START_USING_BUTTON_PRIMARY" value:&stru_1F2EF6280 table:@"Localizable"];
  [v4 setLabel:v6];

  v7 = objc_alloc_init(getFLFollowUpActionClass());
  [v7 setIdentifier:AAFollowUpActionDismiss[0]];
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"FOLLOWUP_START_USING_BUTTON_DISMISS" value:&stru_1F2EF6280 table:@"Localizable"];
  [v7 setLabel:v9];

  v10 = objc_alloc_init(getFLFollowUpItemClass());
  v19[0] = v4;
  v19[1] = v7;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  [v10 setActions:v11];

  [v10 setExtensionIdentifier:AAFollowUpExtensionIdentifier[0]];
  v12 = getFLGroupIdentifierAccount();
  [v10 setGroupIdentifier:v12];

  v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"FOLLOWUP_START_USING_MESSAGE" value:&stru_1F2EF6280 table:@"Localizable"];
  [v10 setInformativeText:v14];

  v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"FOLLOWUP_START_USING_TITLE" value:&stru_1F2EF6280 table:@"Localizable"];
  [v10 setTitle:v16];

  [v10 setUniqueIdentifier:AAFollowUpIdentifierStartUsing[0]];
  [v10 setUserInfo:v3];

  v17 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)_followUpItemForVerifyTerms:(id)a3
{
  v48[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(getFLFollowUpActionClass());
  [v4 setIdentifier:AAFollowUpActionPrimary[0]];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"FOLLOWUP_VERIFY_TERMS_BUTTON_PRIMARY" value:&stru_1F2EF6280 table:@"Localizable"];
  [v4 setLabel:v6];

  v7 = objc_alloc_init(getFLFollowUpActionClass());
  [v7 setIdentifier:AAFollowUpActionPrimary[0]];
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"FOLLOWUP_VERIFY_TERMS_NOTIFICATION_BUTTON_PRIMARY" value:&stru_1F2EF6280 table:@"Localizable"];
  [v7 setLabel:v9];

  v10 = BYSetupAssistantNeedsToRun();
  v11 = v10;
  if (v10)
  {
    v12 = _AALogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "Surpressing VerifyTerms notification while Setup Assistant is running...", buf, 2u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, @"com.apple.AppleAccount.FollowUp.SetupAssistantExited", _AAFollowUpControllerHandleSetupAssistantExited, *MEMORY[0x1E69CA9B8], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v14 = [v3 objectForKeyedSubscript:AAFollowUpUserInfoTermsNotificationTitle[0]];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v16 = [v17 localizedStringForKey:@"FOLLOWUP_VERIFY_TERMS_NOTIFICATION_TITLE" value:&stru_1F2EF6280 table:@"Localizable"];
  }

  v18 = [v3 objectForKeyedSubscript:AAFollowUpUserInfoTermsNotificationBody[0]];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = AADeviceLocStringForKey(@"FOLLOWUP_VERIFY_TERMS_NOTIFICATION_MESSAGE");
  }

  v21 = v20;

  v22 = [v3 objectForKeyedSubscript:AAFollowUpUserInfoTermsCFUTitle[0]];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v25 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v24 = [v25 localizedStringForKey:@"FOLLOWUP_VERIFY_TERMS_TITLE" value:&stru_1F2EF6280 table:@"Localizable"];
  }

  v26 = [v3 objectForKeyedSubscript:AAFollowUpUserInfoTermsCFUBody[0]];
  v27 = v26;
  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = AADeviceLocStringForKey(@"FOLLOWUP_VERIFY_TERMS_MESSAGE");
  }

  v29 = v28;

  if (v11)
  {
    v30 = 0;
  }

  else
  {
    v30 = objc_alloc_init(getFLFollowUpNotificationClass());
    [v30 setActivateAction:v7];
    [v30 setFirstNotificationDelay:0.0];
    [v30 setFrequency:86400.0];
    [v30 setInformativeText:v21];
    [v30 setTitle:v16];
    v31 = MEMORY[0x1E695DFD8];
    getFLNotificationOptionForce();
    v46 = v29;
    v32 = v3;
    v33 = v24;
    v34 = v7;
    v35 = v4;
    v36 = v21;
    v38 = v37 = v16;
    v39 = getFLNotificationOptionSpringboardAlert();
    v40 = [v31 setWithObjects:{v38, v39, 0}];
    [v30 setOptions:v40];

    v16 = v37;
    v21 = v36;
    v4 = v35;
    v7 = v34;
    v24 = v33;
    v3 = v32;
    v29 = v46;
  }

  v41 = objc_alloc_init(getFLFollowUpItemClass());
  v48[0] = v4;
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
  [v41 setActions:v42];

  [v41 setDisplayStyle:1];
  [v41 setExtensionIdentifier:AAFollowUpExtensionIdentifier[0]];
  v43 = getFLGroupIdentifierAccount();
  [v41 setGroupIdentifier:v43];

  [v41 setInformativeText:v29];
  [v41 setNotification:v30];
  [v41 setTitle:v24];
  [v41 setUniqueIdentifier:AAFollowUpIdentifierVerifyTerms[0]];
  [v41 setUserInfo:v3];

  v44 = *MEMORY[0x1E69E9840];

  return v41;
}

- (id)_followUpItemForRenewCredentials:(id)a3
{
  v23[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(AAFollowUpController *)self _shouldPostRenewFollowup:v4])
  {
    v5 = objc_alloc_init(getFLFollowUpActionClass());
    [v5 setIdentifier:AAFollowUpActionPrimary[0]];
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"FOLLOWUP_RENEW_CREDENTIALS_PRIMARY" value:&stru_1F2EF6280 table:@"Localizable"];
    [v5 setLabel:v7];

    v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"FOLLOWUP_RENEW_CREDENTIALS_MESSAGE" value:&stru_1F2EF6280 table:@"Localizable"];

    if ([MEMORY[0x1E6985E20] isInternalBuild])
    {
      v10 = [v4 objectForKeyedSubscript:AAFollowUpUserInfoClientName[0]];
      if (v10)
      {
        v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v12 = [v11 localizedStringForKey:@"FOLLOWUP_RENEW_CREDENTIALS_MESSAGE_BLAME" value:&stru_1F2EF6280 table:@"Localizable"];
        v13 = [v9 stringByAppendingFormat:v12, v10];

        v9 = v13;
      }
    }

    v14 = objc_alloc_init(getFLFollowUpItemClass());
    [v14 setDisplayStyle:0];
    v23[0] = v5;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    [v14 setActions:v15];

    [v14 setExtensionIdentifier:AAFollowUpExtensionIdentifier[0]];
    v16 = getFLGroupIdentifierAccount();
    [v14 setGroupIdentifier:v16];

    v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"FOLLOWUP_RENEW_CREDENTIALS_TITLE_REBRAND" value:&stru_1F2EF6280 table:@"Localizable"];
    [v14 setTitle:v18];

    [v14 setInformativeText:v9];
    [v14 setTypeIdentifier:AAFollowUpIdentifierRenewCredentials[0]];
    [v14 setUserInfo:v4];
    v19 = AAFollowUpIdentifierRenewCredentials[0];
    v20 = [v4 objectForKeyedSubscript:AAFollowUpUserInfoAccountIdentifier[0]];
    if (v20)
    {
      [v14 setAccountIdentifier:v20];
    }

    [v14 setUniqueIdentifier:v19];
  }

  else
  {
    v14 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_followUpItemForCustodianReview:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AAFollowUpController *)self _showAccountRecoveryPane];
  v6 = objc_alloc_init(getFLFollowUpItemClass());
  v16[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  [v6 setActions:v7];

  [v6 setExtensionIdentifier:AAFollowUpExtensionIdentifier[0]];
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_REVIEW_MESSAGE" value:&stru_1F2EF6280 table:@"Localizable"];
  [v6 setInformativeText:v9];

  v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_REVIEW_TITLE" value:&stru_1F2EF6280 table:@"Localizable"];
  [v6 setTitle:v11];

  [v6 setUniqueIdentifier:AAFollowUpIdentifierCustodianReview[0]];
  [v6 setUserInfo:v4];

  [v6 setDisplayStyle:2];
  v12 = [(AAFollowUpController *)self _custodianReviewNotification:v5];
  [v6 setNotification:v12];

  v13 = getFLGroupIdentifierAccount();
  [v6 setGroupIdentifier:v13];

  v14 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_custodianReviewNotification:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(getFLFollowUpNotificationClass());
  [v4 setActivateAction:v3];

  [v4 setFirstNotificationDelay:0.0];
  [v4 setFrequency:86400.0];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_REVIEW_MESSAGE" value:&stru_1F2EF6280 table:@"Localizable"];
  [v4 setInformativeText:v6];

  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_REVIEW_TITLE" value:&stru_1F2EF6280 table:@"Localizable"];
  [v4 setTitle:v8];

  v9 = MEMORY[0x1E695DFD8];
  v10 = getFLNotificationOptionForce();
  v11 = getFLNotificationOptionLockscreen();
  v12 = [v9 setWithObjects:{v10, v11, 0}];
  [v4 setOptions:v12];

  return v4;
}

- (id)_showAccountRecoveryPane
{
  v2 = objc_alloc_init(getFLFollowUpActionClass());
  [v2 setIdentifier:AAFollowUpActionPrimary[0]];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_REVIEW_BUTTON_PRIMARY" value:&stru_1F2EF6280 table:@"Localizable"];
  [v2 setLabel:v4];

  return v2;
}

- (id)_followUpItemForCustodianInvitationReminder:(id)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(getFLFollowUpActionClass());
  [v4 setIdentifier:AAFollowUpActionPrimary[0]];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_INVITATION_REMINDER_BUTTON_PRIMARY" value:&stru_1F2EF6280 table:@"Localizable"];
  [v4 setLabel:v6];

  v22 = [v3 objectForKeyedSubscript:AAFollowUpTrustedContactName[0]];
  v23 = [v3 objectForKeyedSubscript:AAFollowUpTrustedContactID[0]];
  v7 = _AALogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [AAFollowUpController _followUpItemForCustodianInvitationReminder:v4];
  }

  v8 = objc_alloc_init(getFLFollowUpItemClass());
  v24[0] = v4;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  [v8 setActions:v9];

  [v8 setDisplayStyle:1];
  [v8 setExtensionIdentifier:AAFollowUpExtensionIdentifier[0]];
  v10 = getFLGroupIdentifierAccount();
  [v8 setGroupIdentifier:v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_INVITATION_REMINDER_MESSAGE" value:&stru_1F2EF6280 table:@"Localizable"];
  v14 = [v11 stringWithFormat:v13, v22];
  [v8 setInformativeText:v14];

  v15 = MEMORY[0x1E696AEC0];
  v16 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_INVITATION_REMINDER_TITLE" value:&stru_1F2EF6280 table:@"Localizable"];
  v18 = [v15 stringWithFormat:v17, v22];
  [v8 setTitle:v18];

  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", AAFollowUpIdentifierCustodianInvitationReminder[0], v23];
  [v8 setUniqueIdentifier:v19];

  [v8 setUserInfo:v3];
  v20 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)_followUpItemForCustodianWalrusRemoved:(id)a3
{
  v51[1] = *MEMORY[0x1E69E9840];
  v44 = a3;
  v3 = objc_alloc_init(getFLFollowUpActionClass());
  [v3 setIdentifier:AAFollowUpActionPrimary[0]];
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v5 = [v4 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_REMOVED_BUTTON_PRIMARY" value:0 table:@"Localizable-Walrus"];
  [v3 setLabel:v5];

  v6 = objc_alloc_init(getFLFollowUpActionClass());
  [v6 setIdentifier:AAFollowUpActionDismiss[0]];
  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v8 = [v7 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_REMOVED_BUTTON_DISMISS" value:0 table:@"Localizable-Walrus"];
  v45 = v6;
  [v6 setLabel:v8];

  v9 = [v44 objectForKeyedSubscript:AAFollowUpTrustedContactName[0]];
  v10 = objc_alloc_init(getFLFollowUpNotificationClass());
  v46 = v3;
  [v10 setActivateAction:v3];
  [v10 setFirstNotificationDelay:0.0];
  [v10 setFrequency:86400.0];
  v11 = MEMORY[0x1E696AEC0];
  v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v13 = [v12 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_REMOVED_NOTIFICATION_MESSAGE" value:0 table:@"Localizable-Walrus"];
  v14 = [v11 stringWithFormat:v13, v9];
  [v10 setInformativeText:v14];

  v15 = MEMORY[0x1E696AEC0];
  v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v17 = [v16 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_REMOVED_NOTIFICATION_TITLE_IOS" value:0 table:@"Localizable-Walrus"];
  v18 = [v15 stringWithFormat:v17, v9];
  [v10 setTitle:v18];

  v19 = MEMORY[0x1E695DFD8];
  v20 = getFLNotificationOptionForce();
  v21 = getFLNotificationOptionSpringboardAlert();
  v22 = [v19 setWithObjects:{v20, v21, 0}];
  [v10 setOptions:v22];

  v23 = objc_alloc_init(getFLFollowUpActionClass());
  [v23 setIdentifier:AAFollowUpActionPrimary[0]];
  v50 = @"type";
  v51[0] = @"addRecoveryContact";
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
  [v23 setUserInfo:v24];

  v25 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v26 = [v25 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_REMOVED_ADD_RECOVERY_CONTACT" value:0 table:@"Localizable-Walrus"];
  [v23 setLabel:v26];

  v27 = objc_alloc_init(getFLFollowUpActionClass());
  [v27 setIdentifier:AAFollowUpActionPrimary[0]];
  v48 = @"type";
  v49 = @"addRecoveryKey";
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
  [v27 setUserInfo:v28];

  v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v30 = [v29 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_REMOVED_SETUP_RECOVERY_KEY" value:0 table:@"Localizable-Walrus"];
  [v27 setLabel:v30];

  v31 = objc_alloc_init(getFLFollowUpItemClass());
  v47[0] = v23;
  v47[1] = v27;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
  [v31 setActions:v32];

  v33 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v34 = [v33 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_REMOVED_NOTIFICATION_TITLE_IOS" value:0 table:@"Localizable-Walrus"];
  [v31 setTitle:v34];

  [v31 setDisplayStyle:1];
  [v31 setExtensionIdentifier:AAFollowUpExtensionIdentifier[0]];
  v35 = getFLGroupIdentifierAccount();
  [v31 setGroupIdentifier:v35];

  v36 = MEMORY[0x1E696AEC0];
  v37 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v38 = [v37 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_REMOVED_MESSAGE" value:0 table:@"Localizable-Walrus"];
  v39 = [v36 stringWithFormat:v38, v9];
  [v31 setInformativeText:v39];

  [v31 setNotification:v10];
  v40 = [v44 mutableCopy];

  if (!v40)
  {
    v40 = [MEMORY[0x1E695DF90] dictionary];
  }

  [v31 setUniqueIdentifier:AAFollowUpIdentifierCustodianWalrusRemoved[0]];
  v41 = [v40 copy];
  [v31 setUserInfo:v41];

  v42 = *MEMORY[0x1E69E9840];

  return v31;
}

- (id)_walrusUserRecoveryFactorsMissingNotification
{
  v2 = objc_alloc_init(getFLFollowUpActionClass());
  [v2 setIdentifier:AAFollowUpActionPrimary[0]];
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v4 = [v3 localizedStringForKey:@"FOLLOWUP_RECOVERY_FACTORS_MISSING_BUTTON_PRIMARY" value:0 table:@"Localizable-Walrus"];
  [v2 setLabel:v4];

  v5 = objc_alloc_init(getFLFollowUpActionClass());
  [v5 setIdentifier:AAFollowUpActionDismiss[0]];
  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v7 = [v6 localizedStringForKey:@"FOLLOWUP_RECOVERY_FACTORS_MISSING_BUTTON_DISMISS" value:0 table:@"Localizable-Walrus"];
  [v5 setLabel:v7];

  v8 = objc_alloc_init(getFLFollowUpNotificationClass());
  [v8 setActivateAction:v2];
  [v8 setClearAction:v5];
  [v8 setFirstNotificationDelay:0.0];
  [v8 setFrequency:86400.0];
  v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v10 = [v9 localizedStringForKey:@"FOLLOWUP_RECOVERY_FACTORS_MISSING_NOTIFICATION_MESSAGE" value:0 table:@"Localizable-Walrus"];
  [v8 setInformativeText:v10];

  v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v12 = [v11 localizedStringForKey:@"FOLLOWUP_RECOVERY_FACTORS_MISSING_NOTIFICATION_TITLE_IOS" value:0 table:@"Localizable-Walrus"];
  [v8 setTitle:v12];

  v13 = MEMORY[0x1E695DFD8];
  v14 = getFLNotificationOptionForce();
  v15 = getFLNotificationOptionSpringboardAlert();
  v16 = [v13 setWithObjects:{v14, v15, 0}];
  [v8 setOptions:v16];

  return v8;
}

- (id)_addRecoveryContactAction
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(getFLFollowUpActionClass());
  [v2 setIdentifier:AAFollowUpActionPrimary[0]];
  v8 = @"type";
  v9[0] = @"addRecoveryContact";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v2 setUserInfo:v3];

  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v5 = [v4 localizedStringForKey:@"FOLLOWUP_RECOVERY_FACTORS_MISSING_ADD_RECOVERY_CONTACT" value:0 table:@"Localizable-Walrus"];
  [v2 setLabel:v5];

  v6 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)_addRecoveryKeyActionForIdentifier:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(getFLFollowUpActionClass());
  [v3 setIdentifier:AAFollowUpActionPrimary[0]];
  v9 = @"type";
  v10[0] = @"addRecoveryKey";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v3 setUserInfo:v4];

  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v6 = [v5 localizedStringForKey:@"FOLLOWUP_RECOVERY_FACTORS_MISSING_SETUP_RECOVERY_KEY" value:0 table:@"Localizable-Walrus"];
  [v3 setLabel:v6];

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_verifyRecoveryKeyAction
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(getFLFollowUpActionClass());
  [v2 setIdentifier:AAFollowUpActionPrimary[0]];
  v8 = @"type";
  v9[0] = @"verifyRecoveryKey";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v2 setUserInfo:v3];

  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"RECOVERY_KEY_REPAIR_PRIMARY_ACTION" value:&stru_1F2EF6280 table:@"Localizable"];
  [v2 setLabel:v5];

  v6 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)_childOrTeenProtoConnectAction
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(getFLFollowUpActionClass());
  [v2 setIdentifier:AAFollowUpActionPrimary[0]];
  v8 = @"type";
  v9[0] = @"childOrTeenProtoConnect";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v2 setUserInfo:v3];

  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v5 = [v4 localizedStringForKey:@"CONNECT_TO_FAMILY_CFU_PRIMARY_ACTION" value:0 table:@"Localizable-AgeAttestation"];
  [v2 setLabel:v5];

  v6 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)_ageMigrationMigrationAction
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(getFLFollowUpActionClass());
  [v2 setIdentifier:AAFollowUpActionPrimary[0]];
  v8 = @"type";
  v9[0] = @"ageMigrationMigration";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v2 setUserInfo:v3];

  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v5 = [v4 localizedStringForKey:@"CONNECT_TO_FAMILY_CFU_PRIMARY_ACTION" value:0 table:@"Localizable-AgeMigration"];
  [v2 setLabel:v5];

  v6 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)_recoveryKeyMismatchOtherOptionsActionWithUserInfo:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(getFLFollowUpActionClass());
  [v3 setIdentifier:AAFollowUpActionPrimary[0]];
  v9 = @"type";
  v10[0] = @"recoveryKeyMismatchOtherOption";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v3 setUserInfo:v4];

  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"RECOVERY_KEY_REPAIR_SECONDARY_ACTION" value:&stru_1F2EF6280 table:@"Localizable"];
  [v3 setLabel:v6];

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_followUpItemForWalrusUserRecoveryFactorsMissing:(id)a3
{
  v17[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AAFollowUpController *)self _walrusUserRecoveryFactorsMissingNotification];
  v6 = objc_alloc_init(getFLFollowUpItemClass());
  v7 = [(AAFollowUpController *)self _addRecoveryContactAction];
  v17[0] = v7;
  v8 = [(AAFollowUpController *)self _addRecoveryKeyActionForIdentifier:AAFollowUpIdentifierWalrusUserRecoveryFactorsMissing[0]];
  v17[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  [v6 setActions:v9];

  v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v11 = [v10 localizedStringForKey:@"FOLLOWUP_RECOVERY_FACTORS_MISSING_NOTIFICATION_TITLE_IOS" value:0 table:@"Localizable-Walrus"];
  [v6 setTitle:v11];

  [v6 setDisplayStyle:0];
  [v6 setExtensionIdentifier:AAFollowUpExtensionIdentifier[0]];
  v12 = getFLGroupIdentifierAccount();
  [v6 setGroupIdentifier:v12];

  v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v14 = [v13 localizedStringForKey:@"FOLLOWUP_RECOVERY_FACTORS_MISSING_MESSAGE" value:0 table:@"Localizable-Walrus"];
  [v6 setInformativeText:v14];

  [v6 setNotification:v5];
  [v6 setUniqueIdentifier:AAFollowUpIdentifierWalrusUserRecoveryFactorsMissing[0]];
  [v6 setUserInfo:v4];

  v15 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_followUpItemForCustodianRemoved:(id)a3
{
  v40[2] = *MEMORY[0x1E69E9840];
  v39 = a3;
  v3 = objc_alloc_init(getFLFollowUpActionClass());
  [v3 setIdentifier:AAFollowUpActionPrimary[0]];
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_REMOVED_BUTTON_PRIMARY" value:? table:?];
  v38 = v3;
  [v3 setLabel:v5];

  v6 = [v39 objectForKeyedSubscript:AAFollowUpTrustedContactName[0]];
  v7 = objc_alloc_init(getFLFollowUpNotificationClass());
  [v7 setActivateAction:v3];
  [v7 setFirstNotificationDelay:0.0];
  [v7 setFrequency:86400.0];
  v8 = MEMORY[0x1E696AEC0];
  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_REMOVED_NOTIFICATION_MESSAGE" value:&stru_1F2EF6280 table:@"Localizable"];
  v37 = v6;
  v11 = [v8 stringWithFormat:v10, v6];
  [v7 setInformativeText:v11];

  v12 = MEMORY[0x1E696AEC0];
  v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_REMOVED_NOTIFICATION_TITLE" value:&stru_1F2EF6280 table:@"Localizable"];
  v15 = [v12 stringWithFormat:v14, v6];
  [v7 setTitle:v15];

  v16 = MEMORY[0x1E695DFD8];
  v17 = getFLNotificationOptionForce();
  v18 = getFLNotificationOptionSpringboardAlert();
  v19 = [v16 setWithObjects:{v17, v18, 0}];
  [v7 setOptions:v19];

  v20 = objc_alloc_init(getFLFollowUpActionClass());
  [v20 setIdentifier:AAFollowUpActionPrimary[0]];
  v21 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_REMOVED_BUTTON_PRIMARY" value:&stru_1F2EF6280 table:@"Localizable"];
  [v20 setLabel:v22];

  v23 = objc_alloc_init(getFLFollowUpActionClass());
  [v23 setIdentifier:AAFollowUpActionDismiss[0]];
  v24 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v25 = [v24 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_REMOVED_BUTTON_DISMISS" value:&stru_1F2EF6280 table:@"Localizable"];
  [v23 setLabel:v25];

  v26 = objc_alloc_init(getFLFollowUpItemClass());
  v40[0] = v20;
  v40[1] = v23;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
  [v26 setActions:v27];

  [v26 setDisplayStyle:1];
  [v26 setExtensionIdentifier:AAFollowUpExtensionIdentifier[0]];
  v28 = getFLGroupIdentifierAccount();
  [v26 setGroupIdentifier:v28];

  v29 = MEMORY[0x1E696AEC0];
  v30 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v31 = [v30 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_REMOVED_MESSAGE" value:&stru_1F2EF6280 table:@"Localizable"];
  v32 = [v29 stringWithFormat:v31, v37];
  [v26 setInformativeText:v32];

  [v26 setNotification:v7];
  v33 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v34 = [v33 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_REMOVED_TITLE" value:&stru_1F2EF6280 table:@"Localizable"];
  [v26 setTitle:v34];

  [v26 setUniqueIdentifier:AAFollowUpIdentifierCustodianRemoved[0]];
  [v26 setUserInfo:v39];

  v35 = *MEMORY[0x1E69E9840];

  return v26;
}

- (id)_followUpItemForCustodianWalrusNoLiveness:(id)a3
{
  v45[2] = *MEMORY[0x1E69E9840];
  v42 = a3;
  v3 = objc_alloc_init(getFLFollowUpActionClass());
  [v3 setIdentifier:AAFollowUpActionPrimary[0]];
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v5 = [v4 localizedStringForKey:@"FOLLOWUP_LAST_CUSTODIAN_NO_LIVENESS_BUTTON_PRIMARY" value:0 table:@"Localizable-Walrus"];
  [v3 setLabel:v5];

  v6 = objc_alloc_init(getFLFollowUpActionClass());
  [v6 setIdentifier:AAFollowUpActionDismiss[0]];
  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v8 = [v7 localizedStringForKey:@"FOLLOWUP_LAST_CUSTODIAN_NO_LIVENESS_BUTTON_SECONDARY" value:0 table:@"Localizable-Walrus"];
  v43 = v6;
  [v6 setLabel:v8];

  v9 = [v42 objectForKeyedSubscript:AAFollowUpTrustedContactName[0]];
  v10 = objc_alloc_init(getFLFollowUpNotificationClass());
  v44 = v3;
  [v10 setActivateAction:v3];
  [v10 setFirstNotificationDelay:0.0];
  [v10 setFrequency:86400.0];
  v11 = MEMORY[0x1E696AEC0];
  v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v13 = [v12 localizedStringForKey:@"FOLLOWUP_LAST_CUSTODIAN_NO_LIVENESS_BUTTON_NOTIFICATION_MESSAGE" value:0 table:@"Localizable-Walrus"];
  v14 = [v11 stringWithFormat:v13, v9];
  [v10 setInformativeText:v14];

  v15 = MEMORY[0x1E696AEC0];
  v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v17 = [v16 localizedStringForKey:@"FOLLOWUP_LAST_CUSTODIAN_NO_LIVENESS_BUTTON_NOTIFICATION_TITLE" value:0 table:@"Localizable-Walrus"];
  v18 = [v15 stringWithFormat:v17, v9];
  [v10 setTitle:v18];

  v19 = MEMORY[0x1E695DFD8];
  v20 = getFLNotificationOptionForce();
  v21 = getFLNotificationOptionSpringboardAlert();
  v22 = [v19 setWithObjects:{v20, v21, 0}];
  [v10 setOptions:v22];

  v23 = objc_alloc_init(getFLFollowUpActionClass());
  [v23 setIdentifier:AAFollowUpActionPrimary[0]];
  v24 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v25 = [v24 localizedStringForKey:@"FOLLOWUP_LAST_CUSTODIAN_NO_LIVENESS_UPDATE_RECOVERY_CONTACT" value:0 table:@"Localizable-Walrus"];
  [v23 setLabel:v25];

  v26 = objc_alloc_init(getFLFollowUpActionClass());
  [v26 setIdentifier:AAFollowUpActionDismiss[0]];
  v27 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v28 = [v27 localizedStringForKey:@"FOLLOWUP_LAST_CUSTODIAN_NO_LIVENESS_NOT_NOW" value:0 table:@"Localizable-Walrus"];
  [v26 setLabel:v28];

  v29 = objc_alloc_init(getFLFollowUpItemClass());
  v45[0] = v23;
  v45[1] = v26;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
  [v29 setActions:v30];

  [v29 setDisplayStyle:1];
  [v29 setExtensionIdentifier:AAFollowUpExtensionIdentifier[0]];
  v31 = getFLGroupIdentifierAccount();
  [v29 setGroupIdentifier:v31];

  v32 = MEMORY[0x1E696AEC0];
  v33 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v34 = [v33 localizedStringForKey:@"FOLLOWUP_LAST_CUSTODIAN_NO_LIVENESS_MESSAGE" value:0 table:@"Localizable-Walrus"];
  v35 = [v32 stringWithFormat:v34, v9];
  [v29 setInformativeText:v35];

  [v29 setNotification:v10];
  v36 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v37 = [v36 localizedStringForKey:@"FOLLOWUP_LAST_CUSTODIAN_NO_LIVENESS_TITLE" value:0 table:@"Localizable-Walrus"];
  [v29 setTitle:v37];

  v38 = [v42 mutableCopy];
  if (!v38)
  {
    v38 = [MEMORY[0x1E695DF90] dictionary];
  }

  [v29 setUniqueIdentifier:AAFollowUpIdentifierCustodianWalrusNoLiveness[0]];
  v39 = [v38 copy];
  [v29 setUserInfo:v39];

  v40 = *MEMORY[0x1E69E9840];

  return v29;
}

- (id)_followUpItemForBeneficiaryRemoved:(id)a3
{
  v37[2] = *MEMORY[0x1E69E9840];
  v36 = a3;
  v3 = objc_alloc_init(getFLFollowUpActionClass());
  [v3 setIdentifier:AAFollowUpActionPrimary[0]];
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"FOLLOWUP_BENEFICIARY_REMOVED_BUTTON_PRIMARY" value:? table:?];
  [v3 setLabel:v5];

  v35 = [v36 objectForKeyedSubscript:AAFollowUpTrustedContactName[0]];
  v6 = objc_alloc_init(getFLFollowUpNotificationClass());
  [v6 setActivateAction:v3];
  [v6 setFirstNotificationDelay:0.0];
  [v6 setFrequency:86400.0];
  v7 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"FOLLOWUP_BENEFICIARY_REMOVED_NOTIFICATION_MESSAGE" value:&stru_1F2EF6280 table:@"Localizable"];
  v10 = [v7 stringWithFormat:v9, v35];
  [v6 setInformativeText:v10];

  v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"FOLLOWUP_BENEFICIARY_REMOVED_NOTIFICATION_TITLE" value:&stru_1F2EF6280 table:@"Localizable"];
  [v6 setTitle:v12];

  v13 = MEMORY[0x1E695DFD8];
  v14 = getFLNotificationOptionForce();
  v15 = getFLNotificationOptionSpringboardAlert();
  v16 = [v13 setWithObjects:{v14, v15, 0}];
  [v6 setOptions:v16];

  v17 = objc_alloc_init(getFLFollowUpActionClass());
  [v17 setIdentifier:AAFollowUpActionPrimary[0]];
  v18 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"FOLLOWUP_BENEFICIARY_REMOVED_BUTTON_PRIMARY" value:&stru_1F2EF6280 table:@"Localizable"];
  [v17 setLabel:v19];

  v20 = objc_alloc_init(getFLFollowUpActionClass());
  [v20 setIdentifier:AAFollowUpActionDismiss[0]];
  v21 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"FOLLOWUP_BENEFICIARY_REMOVED_BUTTON_DISMISS" value:&stru_1F2EF6280 table:@"Localizable"];
  [v20 setLabel:v22];

  v23 = objc_alloc_init(getFLFollowUpItemClass());
  v37[0] = v17;
  v37[1] = v20;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
  [v23 setActions:v24];

  [v23 setDisplayStyle:1];
  [v23 setExtensionIdentifier:AAFollowUpExtensionIdentifier[0]];
  v25 = getFLGroupIdentifierAccount();
  [v23 setGroupIdentifier:v25];

  v26 = MEMORY[0x1E696AEC0];
  v27 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v28 = [v27 localizedStringForKey:@"FOLLOWUP_BENEFICIARY_REMOVED_MESSAGE" value:&stru_1F2EF6280 table:@"Localizable"];
  v29 = [v26 stringWithFormat:v28, v35];
  [v23 setInformativeText:v29];

  [v23 setNotification:v6];
  v30 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v31 = [v30 localizedStringForKey:@"FOLLOWUP_BENEFICIARY_REMOVED_TITLE" value:&stru_1F2EF6280 table:@"Localizable"];
  [v23 setTitle:v31];

  [v23 setUniqueIdentifier:AAFollowUpIdentifierBeneficiaryRemoved[0]];
  [v23 setUserInfo:v36];

  v32 = _AALogSystem();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    [AAFollowUpController _followUpItemForBeneficiaryRemoved:v23];
  }

  v33 = *MEMORY[0x1E69E9840];

  return v23;
}

- (id)_followUpItemForCustodianEmbargo:(id)a3
{
  v4 = a3;
  v5 = _AALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AAFollowUpController _followUpItemForCustodianEmbargo:];
  }

  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:AAFollowUpUserInfoNotificationInfo[0]];
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = [v6 objectForKeyedSubscript:AAFollowUpUserInfoNotificationButtonTitle[0]];
    v9 = objc_alloc_init(getFLFollowUpActionClass());
    [v9 setIdentifier:AAFollowUpActionPrimary[0]];
    v19 = v8;
    [v9 setLabel:v8];
    [v7 addObject:v9];
    v10 = [v4 objectForKeyedSubscript:AAFollowUpUserInfoNotificationAltButtonTitle[0]];
    if ([v10 length] >= 2)
    {
      v11 = objc_alloc_init(getFLFollowUpActionClass());
      [v11 setLabel:v10];
      [v11 setIdentifier:AAFollowUpActionDismiss[0]];
      [v7 addObject:v11];
    }

    v12 = [v4 objectForKeyedSubscript:AAFollowUpUserInfoCFUType[0]];
    v13 = [(AAFollowUpController *)self _recoveryNotificationWithInfo:v6 type:v12];
    [v13 setActivateAction:v9];
    v14 = objc_alloc_init(getFLFollowUpItemClass());
    v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"FOLLOWUP_CUSTODIAN_EMBARGO_TITLE_REBRAND" value:&stru_1F2EF6280 table:@"Localizable"];
    [v14 setTitle:v16];

    [v14 setExtensionIdentifier:AAFollowUpExtensionIdentifier[0]];
    v17 = getFLGroupIdentifierAccount();
    [v14 setGroupIdentifier:v17];

    [v14 setNotification:v13];
    [v14 setActions:v7];
    [v14 setUniqueIdentifier:AAFollowUpIdentifierCustodianEmbargo[0]];
    [v14 setUserInfo:v4];
    [v14 setDisplayStyle:2];
  }

  else
  {
    v6 = _AALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [AAFollowUpController _followUpItemForCustodianEmbargo:];
    }

    v14 = 0;
  }

  return v14;
}

- (id)_followUpForRecoveryKeyHealingWithContext:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:AAFollowUpUserInfoHasWalrusEnabled[0]];
    v7 = [v5 objectForKeyedSubscript:AAFollowUpUserInfoHasDistrustedRK[0]];
    v8 = _AALogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [AAFollowUpController _followUpForRecoveryKeyHealingWithContext:];
    }

    if ([v7 BOOLValue])
    {
      v9 = [(AAFollowUpController *)self _followUpForOctagonDistrustedRecoveryKeyWithContext:v5];
    }

    else
    {
      if ([v6 BOOLValue])
      {
        [(AAFollowUpController *)self _followUpForWalrusRecoveryKeyMismatchWithContext:v5];
      }

      else
      {
        [(AAFollowUpController *)self _followUpForRecoveryKeyMismatchWithContext:v5];
      }
      v9 = ;
    }

    v10 = v9;
  }

  else
  {
    v6 = _AALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [AAFollowUpController _followUpForRecoveryKeyHealingWithContext:];
    }

    v10 = 0;
  }

  return v10;
}

- (id)_followUpForOctagonDistrustedRecoveryKeyWithContext:(id)a3
{
  v21[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(getFLFollowUpItemClass());
  [v5 setUniqueIdentifier:AAFollowUpIdentifierRecoveryKeyMismatch[0]];
  v6 = [v4 objectForKeyedSubscript:AAFollowUpUserInfoAccountIdentifier[0]];
  if (v6)
  {
    [v5 setAccountIdentifier:v6];
  }

  [v5 setExtensionIdentifier:AAFollowUpExtensionIdentifier[0]];
  [v5 setTypeIdentifier:AAFollowUpIdentifierRecoveryKeyMismatch[0]];
  [v5 setUserInfo:v4];
  v7 = objc_alloc_init(getFLFollowUpNotificationClass());
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"DISTRUSTED_RECOVERY_KEY_REPAIR_NOTIFICATION_TITLE" value:&stru_1F2EF6280 table:@"Localizable"];
  [v7 setTitle:v9];

  v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"DISTRUSTED_RECOVERY_KEY_REPAIR_NOTIFICATION_INFORMATIVE" value:&stru_1F2EF6280 table:@"Localizable"];
  [v7 setInformativeText:v11];

  [v5 setNotification:v7];
  v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"DISTRUSTED_RECOVERY_KEY_REPAIR_TITLE" value:&stru_1F2EF6280 table:@"Localizable"];
  [v5 setTitle:v13];

  v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"DISTRUSTED_RECOVERY_KEY_REPAIR_INFORMATIVE" value:&stru_1F2EF6280 table:@"Localizable"];
  [v5 setInformativeText:v15];

  v16 = [(AAFollowUpController *)self _turnOffRecoveryKeyActionWithUserInfo:v4];
  v17 = [(AAFollowUpController *)self _createNewRecoveryKeyActionWithUserInfo:v4];
  v21[0] = v16;
  v21[1] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  [v5 setActions:v18];

  v19 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_turnOffRecoveryKeyActionWithUserInfo:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(getFLFollowUpActionClass());
  v9 = @"type";
  v10[0] = @"turnOffRecoveryKey";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v3 setUserInfo:v4];

  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"DISTRUSTED_RECOVERY_KEY_PRIMARY_ACTION" value:&stru_1F2EF6280 table:@"Localizable"];
  [v3 setLabel:v6];

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_createNewRecoveryKeyActionWithUserInfo:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(getFLFollowUpActionClass());
  v9 = @"type";
  v10[0] = @"addRecoveryKey";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v3 setUserInfo:v4];

  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"DISTRUSTED_RECOVERY_KEY_SECONDARY_ACTION" value:&stru_1F2EF6280 table:@"Localizable"];
  [v3 setLabel:v6];

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_followUpForRecoveryKeyMismatchWithContext:(id)a3
{
  v24[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23 = [v4 objectForKeyedSubscript:AAFollowUpUserInfoHasRecoveryContact[0]];
  v5 = objc_alloc_init(getFLFollowUpItemClass());
  [v5 setUniqueIdentifier:AAFollowUpIdentifierRecoveryKeyMismatch[0]];
  v6 = [v4 objectForKeyedSubscript:AAFollowUpUserInfoAccountIdentifier[0]];
  if (v6)
  {
    [v5 setAccountIdentifier:v6];
  }

  [v5 setExtensionIdentifier:AAFollowUpExtensionIdentifier[0]];
  [v5 setTypeIdentifier:AAFollowUpIdentifierRecoveryKeyMismatch[0]];
  [v5 setUserInfo:v4];
  v7 = [v5 notification];
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"RECOVERY_KEY_REPAIR_NOTIFICATION_TITLE" value:&stru_1F2EF6280 table:@"Localizable"];
  [v7 setTitle:v9];

  v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"RECOVERY_KEY_REPAIR_FOLLOWUP_NOTIFICATION_INFORMATIVE" value:&stru_1F2EF6280 table:@"Localizable"];
  [v7 setInformativeText:v11];

  v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"RECOVERY_KEY_REPAIR_TITLE" value:&stru_1F2EF6280 table:@"Localizable"];
  [v5 setTitle:v13];

  LODWORD(v12) = [v23 BOOLValue];
  v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v15 = v14;
  if (v12)
  {
    v16 = @"RECOVERY_KEY_REPAIR_INFORMATIVE_HAS_RC";
  }

  else
  {
    v16 = @"RECOVERY_KEY_REPAIR_INFORMATIVE_NO_RC";
  }

  v17 = [v14 localizedStringForKey:v16 value:&stru_1F2EF6280 table:@"Localizable"];
  [v5 setInformativeText:v17];

  v18 = [(AAFollowUpController *)self _verifyRecoveryKeyAction];
  v19 = [(AAFollowUpController *)self _recoveryKeyMismatchOtherOptionsActionWithUserInfo:v4];
  v24[0] = v18;
  v24[1] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  [v5 setActions:v20];

  v21 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_followUpForWalrusRecoveryKeyMismatchWithContext:(id)a3
{
  v47[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(getFLFollowUpItemClass());
  [v5 setUniqueIdentifier:AAFollowUpIdentifierRecoveryKeyMismatch[0]];
  v6 = [v4 objectForKeyedSubscript:AAFollowUpUserInfoAccountIdentifier[0]];
  if (v6)
  {
    [v5 setAccountIdentifier:v6];
  }

  [v5 setExtensionIdentifier:AAFollowUpExtensionIdentifier[0]];
  [v5 setTypeIdentifier:AAFollowUpIdentifierRecoveryKeyMismatch[0]];
  [v5 setUserInfo:v4];
  [v5 setDisplayStyle:4];
  v7 = [(AAFollowUpController *)self _verifyRecoveryKeyAction];
  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  [v8 localizedStringForKey:@"RECOVERY_KEY_REPAIR_ADP_VERIFY_RK_ACTION" value:0 table:@"Localizable-Walrus"];
  v9 = self;
  v42 = self;
  v10 = v43 = v7;
  [v7 setLabel:v10];

  v46 = v4;
  v11 = [(AAFollowUpController *)v9 _recoveryKeyMismatchOtherOptionsActionWithUserInfo:v4];
  v45 = [v4 objectForKeyedSubscript:AAFollowUpUserInfoHasRecoveryContact[0]];
  v12 = [v45 BOOLValue];
  v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v14 = v13;
  if (v12)
  {
    v15 = @"RECOVERY_KEY_REPAIR_ADP_HAS_RC_TITLE";
  }

  else
  {
    v15 = @"RECOVERY_KEY_REPAIR_ADP_NO_RC_TITLE";
  }

  if (v12)
  {
    v16 = @"RECOVERY_KEY_REPAIR_ADP_INFORMATIVE_HAS_RC";
  }

  else
  {
    v16 = @"RECOVERY_KEY_REPAIR_ADP_INFORMATIVE_NO_RC";
  }

  if (v12)
  {
    v17 = @"RECOVERY_KEY_REPAIR_ADP_OTHER_OPTIONS_ACTION";
  }

  else
  {
    v17 = @"RECOVERY_KEY_REPAIR_ADP_ADD_NEW_RECOVER_METHOD_ACTION";
  }

  [v13 localizedStringForKey:v15 value:0 table:@"Localizable-Walrus"];
  v18 = v44 = v6;
  [v5 setTitle:v18];

  v19 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v20 = [v19 localizedStringForKey:v16 value:0 table:@"Localizable-Walrus"];
  [v5 setInformativeText:v20];

  v21 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v22 = [v21 localizedStringForKey:v17 value:0 table:@"Localizable-Walrus"];
  [v11 setLabel:v22];

  v47[0] = v7;
  v47[1] = v11;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
  [v5 setActions:v23];

  v24 = [v5 notification];
  v25 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v26 = [v25 localizedStringForKey:@"RECOVERY_KEY_REPAIR_ADP_NOTIFICATION_TITLE" value:0 table:@"Localizable-Walrus"];
  [v24 setTitle:v26];

  v27 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v28 = [v27 localizedStringForKey:@"RECOVERY_KEY_REPAIR_ADP_FOLLOWUP_NOTIFICATION_INFORMATIVE" value:0 table:@"Localizable-Walrus"];
  [v24 setInformativeText:v28];

  v29 = [(AAFollowUpController *)v42 _verifyRecoveryKeyAction];
  v30 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v31 = [v30 localizedStringForKey:@"RECOVERY_KEY_REPAIR_ADP_FOLLOWUP_NOTIFICATION_PRIMARY_ACTIVATE_LABEL" value:0 table:@"Localizable-Walrus"];
  [v29 setLabel:v31];

  [v24 setActivateAction:v29];
  v32 = objc_alloc_init(getFLFollowUpActionClass());
  v33 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v34 = [v33 localizedStringForKey:@"RECOVERY_KEY_REPAIR_ADP_FOLLOWUP_NOTIFICATION_SECONDARY_ACTIVATE_LABEL" value:0 table:@"Localizable-Walrus"];
  [v32 setLabel:v34];

  [v24 setClearAction:v32];
  v35 = MEMORY[0x1E695DFD8];
  v36 = getFLNotificationOptionForce();
  v37 = getFLNotificationOptionSpringboardAlert();
  v38 = getFLNotificationOptionLockscreen();
  v39 = [v35 setWithObjects:{v36, v37, v38, 0}];
  [v24 setOptions:v39];

  [v24 setFirstNotificationDelay:0.0];
  v40 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_followUpForChildOrTeenProtoConnectWithContext:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(getFLFollowUpItemClass());
  [v5 setUniqueIdentifier:AAFollowUpIdentifierChildOrTeenProtoConnect[0]];
  v6 = [v4 objectForKeyedSubscript:AAFollowUpUserInfoAccountIdentifier[0]];
  if (v6)
  {
    [v5 setAccountIdentifier:v6];
  }

  [v5 setExtensionIdentifier:AAFollowUpExtensionIdentifier[0]];
  [v5 setTypeIdentifier:AAFollowUpUserInfoAccountIdentifier[0]];
  v7 = getFLGroupIdentifierAccount();
  [v5 setGroupIdentifier:v7];

  [v5 setUserInfo:v4];
  [v5 setDisplayStyle:2];
  v8 = [(AAFollowUpController *)self _childOrTeenProtoConnectAction];
  v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v10 = [v9 localizedStringForKey:@"CONNECT_TO_FAMILY" value:0 table:@"Localizable-AgeAttestation"];
  [v5 setTitle:v10];

  v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v12 = [v11 localizedStringForKey:@"CONNECT_TO_FAMILY_CFU_INFORMATIVE_TEXT" value:0 table:@"Localizable-AgeAttestation"];
  [v5 setInformativeText:v12];

  v16[0] = v8;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  [v5 setActions:v13];

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_followUpForAgeMigrationWithContext:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(getFLFollowUpItemClass());
  [v5 setUniqueIdentifier:AAFollowUpIdentifierAgeMigration[0]];
  v6 = [v4 objectForKeyedSubscript:AAFollowUpUserInfoAccountIdentifier[0]];
  if (v6)
  {
    [v5 setAccountIdentifier:v6];
  }

  [v5 setExtensionIdentifier:AAFollowUpExtensionIdentifier[0]];
  [v5 setTypeIdentifier:AAFollowUpUserInfoAccountIdentifier[0]];
  v7 = getFLGroupIdentifierAccount();
  [v5 setGroupIdentifier:v7];

  [v5 setUserInfo:v4];
  [v5 setDisplayStyle:2];
  v8 = [(AAFollowUpController *)self _ageMigrationMigrationAction];
  v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v10 = [v9 localizedStringForKey:@"CONNECT_TO_FAMILY" value:0 table:@"Localizable-AgeMigration"];
  [v5 setTitle:v10];

  v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v12 = [v11 localizedStringForKey:@"CONNECT_TO_FAMILY_CFU_INFORMATIVE_TEXT" value:0 table:@"Localizable-AgeMigration"];
  [v5 setInformativeText:v12];

  v16[0] = v8;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  [v5 setActions:v13];

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_recoveryNotificationWithInfo:(id)a3 type:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:AAFollowUpUserInfoNotificationTitle[0]];
  if (![v7 length])
  {
    v8 = _AALogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AAFollowUpController _recoveryNotificationWithInfo:type:];
    }

    goto LABEL_10;
  }

  v8 = [v5 objectForKeyedSubscript:AAFollowUpUserInfoNotificationBody[0]];
  if (![v8 length])
  {
    v13 = _AALogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [AAFollowUpController _recoveryNotificationWithInfo:type:];
    }

LABEL_10:
    v9 = 0;
    goto LABEL_20;
  }

  v9 = objc_alloc_init(getFLFollowUpNotificationClass());
  [v9 setTitle:v7];
  [v9 setInformativeText:v8];
  v10 = [v5 objectForKeyedSubscript:AAFollowUpUserInfoNotificationDelay[0]];
  v11 = v10;
  if (v10)
  {
    [v10 doubleValue];
  }

  else
  {
    v12 = 0.0;
  }

  [v9 setFirstNotificationDelay:v12];
  v14 = [v5 objectForKeyedSubscript:AAFollowUpUserInfoNotificationFrequency[0]];
  v15 = v14;
  if (v14)
  {
    [v14 doubleValue];
  }

  else
  {
    v16 = 86400.0;
  }

  [v9 setFrequency:v16];
  if (v6 && [v6 intValue] != 1)
  {
    if ([v6 intValue] != 2)
    {
      goto LABEL_19;
    }

    v17 = MEMORY[0x1E695DFD8];
    v18 = getFLNotificationOptionForce();
    v19 = getFLNotificationOptionSpringboardAlert();
  }

  else
  {
    v17 = MEMORY[0x1E695DFD8];
    v18 = getFLNotificationOptionForce();
    v19 = getFLNotificationOptionBannerAlert();
  }

  v20 = v19;
  v21 = [v17 setWithObjects:{v18, v19, 0}];
  [v9 setOptions:v21];

LABEL_19:
LABEL_20:

  return v9;
}

- (BOOL)_shouldPostRenewFollowup:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:AAFollowUpUserInfoAccountIdentifier[0]];

  if (!v3)
  {
    v4 = _AALogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [AAFollowUpController _shouldPostRenewFollowup:];
    }
  }

  return v3 != 0;
}

- (void)postFollowUpWithIdentifier:(id)a3 userInfo:(id)a4 completion:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    [AAFollowUpController postFollowUpWithIdentifier:userInfo:completion:];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__AAFollowUpController_postFollowUpWithIdentifier_userInfo_completion___block_invoke;
  aBlock[3] = &unk_1E7C9ABB8;
  v11 = v10;
  v25 = v11;
  v12 = _Block_copy(aBlock);
  v13 = _AALogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "Attempting to post follow up item with identifier: %{public}@", &buf, 0xCu);
  }

  v14 = [(AAFollowUpController *)self followUpItemForIdentifier:v8 userInfo:v9];
  if ([v8 isEqualToString:AAFollowUpIdentifierRenewCredentials[0]] && !+[AAFollowUpUtilities hasValidIDMSAccountForUserInfo:](AAFollowUpUtilities, "hasValidIDMSAccountForUserInfo:", v9))
  {
    v18 = _AALogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [AAFollowUpController postFollowUpWithIdentifier:userInfo:completion:];
    }

    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.appleaccount" code:-14 userInfo:0];
    v12[2](v12, 0, v19);
  }

  else if (v14)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__11;
    v29 = __Block_byref_object_dispose__11;
    v30 = [(AAFollowUpController *)self _followUpController];
    v15 = *(*(&buf + 1) + 40);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __71__AAFollowUpController_postFollowUpWithIdentifier_userInfo_completion___block_invoke_309;
    v21[3] = &unk_1E7C9CB78;
    p_buf = &buf;
    v22 = v12;
    [v15 postFollowUpItem:v14 completion:v21];

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v16 = _AALogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [AAFollowUpController postFollowUpWithIdentifier:userInfo:completion:];
    }

    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.appleaccount" code:-3 userInfo:0];
    v12[2](v12, 0, v17);
  }

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t __71__AAFollowUpController_postFollowUpWithIdentifier_userInfo_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __71__AAFollowUpController_postFollowUpWithIdentifier_userInfo_completion___block_invoke_309(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = _AALogSystem();
  v9 = v8;
  if (a2)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "Successfully posted follow up item!", v10, 2u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __71__AAFollowUpController_postFollowUpWithIdentifier_userInfo_completion___block_invoke_309_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)postFollowUpWithIdentifier:(id)a3 userInfo:(id)a4 error:(id *)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    [AAFollowUpController postFollowUpWithIdentifier:userInfo:error:];
  }

  v10 = _AALogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138543362;
    v24 = v8;
    _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "Attempting to post follow up item with identifier: %{public}@", &v23, 0xCu);
  }

  v11 = [(AAFollowUpController *)self followUpItemForIdentifier:v8 userInfo:v9];
  if ([v8 isEqualToString:AAFollowUpIdentifierRenewCredentials[0]] && !+[AAFollowUpUtilities hasValidIDMSAccountForUserInfo:](AAFollowUpUtilities, "hasValidIDMSAccountForUserInfo:", v9))
  {
    v20 = _AALogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [AAFollowUpController postFollowUpWithIdentifier:userInfo:completion:];
    }

    if (!a5)
    {
      goto LABEL_25;
    }

    v18 = MEMORY[0x1E696ABC0];
    v19 = -14;
    goto LABEL_21;
  }

  if (!v11)
  {
    v17 = _AALogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [AAFollowUpController postFollowUpWithIdentifier:userInfo:completion:];
    }

    if (!a5)
    {
      goto LABEL_25;
    }

    v18 = MEMORY[0x1E696ABC0];
    v19 = -3;
LABEL_21:
    [v18 errorWithDomain:@"com.apple.appleaccount" code:v19 userInfo:0];
    *a5 = v16 = 0;
    goto LABEL_26;
  }

  v12 = [(AAFollowUpController *)self _followUpController];
  v13 = [v12 postFollowUpItem:v11 error:a5];

  v14 = _AALogSystem();
  v15 = v14;
  if (a5 || !v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [AAFollowUpController postFollowUpWithIdentifier:a5 userInfo:? error:?];
    }

LABEL_25:
    v16 = 0;
    goto LABEL_26;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "Successfully posted follow up item!", &v23, 2u);
  }

  v16 = 1;
LABEL_26:

  v21 = *MEMORY[0x1E69E9840];
  return v16;
}

- (void)pendingFollowUpWithIdentifier:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [AAFollowUpController pendingFollowUpWithIdentifier:completion:];
  }

  if (!v7)
  {
    [AAFollowUpController pendingFollowUpWithIdentifier:completion:];
  }

  v8 = _AALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "Attempting to fetch follow up item with identifier: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__11;
  v20 = __Block_byref_object_dispose__11;
  v21 = [(AAFollowUpController *)self _followUpController];
  v9 = *(*(&buf + 1) + 40);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__AAFollowUpController_pendingFollowUpWithIdentifier_completion___block_invoke;
  v13[3] = &unk_1E7C9CBC8;
  p_buf = &buf;
  v10 = v7;
  v15 = v10;
  v11 = v6;
  v14 = v11;
  [v9 pendingFollowUpItemsWithCompletion:v13];

  _Block_object_dispose(&buf, 8);
  v12 = *MEMORY[0x1E69E9840];
}

void __65__AAFollowUpController_pendingFollowUpWithIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  if (!v5 || v6)
  {
    v12 = _AALogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __65__AAFollowUpController_pendingFollowUpWithIdentifier_completion___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __65__AAFollowUpController_pendingFollowUpWithIdentifier_completion___block_invoke_313;
    v16[3] = &unk_1E7C9CBA0;
    v17 = *(a1 + 32);
    v9 = [v5 indexOfObjectPassingTest:v16];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = _AALogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        *buf = 138543362;
        v19 = v11;
        _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "No follow ups found with identifier: %{public}@", buf, 0xCu);
      }

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v13 = [v5 objectAtIndexedSubscript:v9];
      v14 = _AALogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v19 = v13;
        _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "Successfully fetched follow up: %{private}@", buf, 0xCu);
      }

      (*(*(a1 + 40) + 16))();
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __65__AAFollowUpController_pendingFollowUpWithIdentifier_completion___block_invoke_313(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)dismissFollowUpWithIdentifier:(id)a3 completion:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [AAFollowUpController dismissFollowUpWithIdentifier:completion:];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__AAFollowUpController_dismissFollowUpWithIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E7C9ABB8;
  v8 = v7;
  v19 = v8;
  v9 = _Block_copy(aBlock);
  v10 = _AALogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "Attempting to clear follow up item with identifier: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__11;
  v24 = __Block_byref_object_dispose__11;
  v25 = [(AAFollowUpController *)self _followUpController];
  v11 = *(*(&buf + 1) + 40);
  v20 = v6;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__AAFollowUpController_dismissFollowUpWithIdentifier_completion___block_invoke_316;
  v15[3] = &unk_1E7C9CB78;
  p_buf = &buf;
  v13 = v9;
  v16 = v13;
  [v11 clearPendingFollowUpItemsWithUniqueIdentifiers:v12 completion:v15];

  _Block_object_dispose(&buf, 8);
  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __65__AAFollowUpController_dismissFollowUpWithIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __65__AAFollowUpController_dismissFollowUpWithIdentifier_completion___block_invoke_316(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = _AALogSystem();
  v9 = v8;
  if (a2)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "Successfully cleared follow up item!", v10, 2u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __65__AAFollowUpController_dismissFollowUpWithIdentifier_completion___block_invoke_316_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)dismissFollowUpWithIdentifier:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    [AAFollowUpController dismissFollowUpWithIdentifier:error:];
  }

  v7 = _AALogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = v6;
    _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "Attempting to clear follow up item with identifier: %{public}@", buf, 0xCu);
  }

  v8 = [(AAFollowUpController *)self _followUpController];
  v16 = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  v10 = [v8 clearPendingFollowUpItemsWithUniqueIdentifiers:v9 error:a4];

  if (a4)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  v12 = _AALogSystem();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "Successfully cleared follow up item!", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [AAFollowUpController dismissFollowUpWithIdentifier:a4 error:?];
  }

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)followUpItemForIdentifier:(id)a3 userInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:AAFollowUpIdentifierStartUsing[0]])
  {
    v8 = [(AAFollowUpController *)self _followUpItemForStartUsing:v7];
LABEL_29:
    v9 = v8;
    goto LABEL_30;
  }

  if ([v6 isEqualToString:AAFollowUpIdentifierVerifyTerms[0]])
  {
    v8 = [(AAFollowUpController *)self _followUpItemForVerifyTerms:v7];
    goto LABEL_29;
  }

  if ([v6 isEqualToString:AAFollowUpIdentifierRenewCredentials[0]])
  {
    v8 = [(AAFollowUpController *)self _followUpItemForRenewCredentials:v7];
    goto LABEL_29;
  }

  if ([v6 isEqualToString:AAFollowUpIdentifierCustodianReview[0]])
  {
    v8 = [(AAFollowUpController *)self _followUpItemForCustodianReview:v7];
    goto LABEL_29;
  }

  if ([v6 isEqualToString:AAFollowUpIdentifierCustodianInvitationReminder[0]])
  {
    v8 = [(AAFollowUpController *)self _followUpItemForCustodianInvitationReminder:v7];
    goto LABEL_29;
  }

  if ([v6 isEqualToString:AAFollowUpIdentifierCustodianRemoved[0]])
  {
    v8 = [(AAFollowUpController *)self _followUpItemForCustodianRemoved:v7];
    goto LABEL_29;
  }

  if ([v6 isEqualToString:AAFollowUpIdentifierCustodianWalrusNoLiveness[0]])
  {
    v8 = [(AAFollowUpController *)self _followUpItemForCustodianWalrusNoLiveness:v7];
    goto LABEL_29;
  }

  if ([v6 isEqualToString:AAFollowUpIdentifierCustodianWalrusRemoved[0]])
  {
    v8 = [(AAFollowUpController *)self _followUpItemForCustodianWalrusRemoved:v7];
    goto LABEL_29;
  }

  if ([v6 isEqualToString:AAFollowUpIdentifierWalrusUserRecoveryFactorsMissing[0]])
  {
    v8 = [(AAFollowUpController *)self _followUpItemForWalrusUserRecoveryFactorsMissing:v7];
    goto LABEL_29;
  }

  if ([v6 isEqualToString:AAFollowUpIdentifierBeneficiaryRemoved[0]])
  {
    v8 = [(AAFollowUpController *)self _followUpItemForBeneficiaryRemoved:v7];
    goto LABEL_29;
  }

  if ([v6 isEqualToString:AAFollowUpIdentifierCustodianEmbargo[0]])
  {
    v8 = [(AAFollowUpController *)self _followUpItemForCustodianEmbargo:v7];
    goto LABEL_29;
  }

  if ([v6 isEqualToString:AAFollowUpIdentifierRecoveryKeyMismatch[0]])
  {
    v8 = [(AAFollowUpController *)self _followUpForRecoveryKeyHealingWithContext:v7];
    goto LABEL_29;
  }

  if ([v6 isEqualToString:AAFollowUpIdentifierChildOrTeenProtoConnect[0]])
  {
    v8 = [(AAFollowUpController *)self _followUpForChildOrTeenProtoConnectWithContext:v7];
    goto LABEL_29;
  }

  if ([v6 isEqualToString:AAFollowUpIdentifierAgeMigration[0]])
  {
    v8 = [(AAFollowUpController *)self _followUpForAgeMigrationWithContext:v7];
    goto LABEL_29;
  }

  v9 = 0;
LABEL_30:

  return v9;
}

- (void)postFollowUpWithIdentifier:(id)a3 forAccount:(id)a4 userInfo:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [AAFollowUpController(Convenience) postFollowUpWithIdentifier:forAccount:userInfo:completion:];
    if (v11)
    {
      goto LABEL_3;
    }
  }

  [AAFollowUpController(Convenience) postFollowUpWithIdentifier:forAccount:userInfo:completion:];
LABEL_3:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __95__AAFollowUpController_Convenience__postFollowUpWithIdentifier_forAccount_userInfo_completion___block_invoke;
  aBlock[3] = &unk_1E7C9ABE0;
  aBlock[4] = self;
  v27 = v11;
  v28 = v10;
  v29 = v13;
  v14 = v13;
  v15 = v10;
  v16 = v11;
  v17 = _Block_copy(aBlock);
  v18 = objc_alloc(MEMORY[0x1E695DF90]);
  if (v12)
  {
    v19 = v12;
  }

  else
  {
    v19 = MEMORY[0x1E695E0F8];
  }

  v20 = [v18 initWithDictionary:v19];
  v21 = [v16 identifier];
  [v20 setObject:v21 forKeyedSubscript:AAFollowUpUserInfoAccountIdentifier[0]];

  v22 = [v16 aa_altDSID];
  [v20 setObject:v22 forKeyedSubscript:AAFollowUpUserInfoAltDSID[0]];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __95__AAFollowUpController_Convenience__postFollowUpWithIdentifier_forAccount_userInfo_completion___block_invoke_2;
  v24[3] = &unk_1E7C9ABB8;
  v25 = v17;
  v23 = v17;
  [(AAFollowUpController *)self postFollowUpWithIdentifier:v15 userInfo:v20 completion:v24];
}

void __95__AAFollowUpController_Convenience__postFollowUpWithIdentifier_forAccount_userInfo_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  [*(a1 + 32) sendPostCFUTelemetryEventWithAccount:*(a1 + 40) forIdentifier:*(a1 + 48) success:a2 error:?];
  v5 = *(a1 + 56);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v6);
  }
}

- (void)dismissFollowUpWithIdentifier:(id)a3 forAccount:(id)a4 completion:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [AAFollowUpController(Convenience) dismissFollowUpWithIdentifier:forAccount:completion:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [AAFollowUpController(Convenience) dismissFollowUpWithIdentifier:forAccount:completion:];
LABEL_3:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__AAFollowUpController_Convenience__dismissFollowUpWithIdentifier_forAccount_completion___block_invoke;
  aBlock[3] = &unk_1E7C9ABB8;
  v24 = v10;
  v11 = v10;
  v12 = _Block_copy(aBlock);
  v13 = _AALogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v26 = v8;
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "Attempting to teardown follow up with identifier: %@, account: %@", buf, 0x16u);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __89__AAFollowUpController_Convenience__dismissFollowUpWithIdentifier_forAccount_completion___block_invoke_379;
  v18[3] = &unk_1E7C9CBF0;
  v19 = v8;
  v20 = self;
  v21 = v9;
  v22 = v12;
  v14 = v9;
  v15 = v12;
  v16 = v8;
  [(AAFollowUpController *)self pendingFollowUpWithIdentifier:v16 completion:v18];

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __89__AAFollowUpController_Convenience__dismissFollowUpWithIdentifier_forAccount_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __89__AAFollowUpController_Convenience__dismissFollowUpWithIdentifier_forAccount_completion___block_invoke_379(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = [a2 userInfo];
    v4 = [v3 objectForKeyedSubscript:AAFollowUpUserInfoAccountIdentifier[0]];

    if (v4)
    {
      v5 = [*(a1 + 48) identifier];
      v6 = [v4 isEqualToString:v5];

      v7 = _AALogSystem();
      v8 = v7;
      if ((v6 & 1) == 0)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          __89__AAFollowUpController_Convenience__dismissFollowUpWithIdentifier_forAccount_completion___block_invoke_379_cold_1();
        }

        goto LABEL_16;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        v15 = 138412290;
        v16 = v9;
        v10 = "Tearing down follow up with identifier %@";
        v11 = v8;
        v12 = 12;
LABEL_11:
        _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, v10, &v15, v12);
      }
    }

    else
    {
      v8 = _AALogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        v10 = "Found a followup without an account identifier, dismissing!";
        v11 = v8;
        v12 = 2;
        goto LABEL_11;
      }
    }

    [*(a1 + 40) dismissFollowUpWithIdentifier:*(a1 + 32) completion:*(a1 + 56)];
LABEL_16:

    goto LABEL_17;
  }

  v13 = _AALogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    __89__AAFollowUpController_Convenience__dismissFollowUpWithIdentifier_forAccount_completion___block_invoke_379_cold_2(a1);
  }

  (*(*(a1 + 56) + 16))();
LABEL_17:
  v14 = *MEMORY[0x1E69E9840];
}

- (void)dismissFollowUpsForAccount:(id)a3 identifiers:(id)a4 completion:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    [AAFollowUpController(Convenience) dismissFollowUpsForAccount:identifiers:completion:];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__AAFollowUpController_Convenience__dismissFollowUpsForAccount_identifiers_completion___block_invoke;
  aBlock[3] = &unk_1E7C9ABB8;
  v11 = v10;
  v19 = v11;
  v12 = _Block_copy(aBlock);
  if ([v9 count])
  {
    [(AAFollowUpController *)self _dismissFollowUpWithIdentifiers:v9 completion:v12];
  }

  else
  {
    v13 = _AALogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v8;
      _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "Attempting to teardown all followups for account: %@", buf, 0xCu);
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __87__AAFollowUpController_Convenience__dismissFollowUpsForAccount_identifiers_completion___block_invoke_381;
    v15[3] = &unk_1E7C9CC18;
    v15[4] = self;
    v17 = v12;
    v16 = v8;
    [(AAFollowUpController *)self pendingFollowUpsForAccount:v16 completion:v15];
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __87__AAFollowUpController_Convenience__dismissFollowUpsForAccount_identifiers_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __87__AAFollowUpController_Convenience__dismissFollowUpsForAccount_identifiers_completion___block_invoke_381(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * v9) uniqueIdentifier];
        [v4 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    [*(a1 + 32) _dismissFollowUpWithIdentifiers:v4 completion:*(a1 + 48)];
  }

  else
  {
    v11 = _AALogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      *buf = 138412290;
      v19 = v12;
      _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "No follow ups to delete for account: %@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)dismissFollowUpsStartingWithIdentifierPrefix:(id)a3 account:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [AAFollowUpController(Convenience) dismissFollowUpsStartingWithIdentifierPrefix:account:completion:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [AAFollowUpController(Convenience) dismissFollowUpsStartingWithIdentifierPrefix:account:completion:];
LABEL_3:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __101__AAFollowUpController_Convenience__dismissFollowUpsStartingWithIdentifierPrefix_account_completion___block_invoke;
  aBlock[3] = &unk_1E7C9ABB8;
  v23 = v10;
  v11 = v10;
  v12 = _Block_copy(aBlock);
  v13 = _AALogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [AAFollowUpController(Convenience) dismissFollowUpsStartingWithIdentifierPrefix:account:completion:];
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __101__AAFollowUpController_Convenience__dismissFollowUpsStartingWithIdentifierPrefix_account_completion___block_invoke_382;
  v17[3] = &unk_1E7C9CC40;
  v18 = v8;
  v19 = self;
  v20 = v9;
  v21 = v12;
  v14 = v9;
  v15 = v12;
  v16 = v8;
  [(AAFollowUpController *)self pendingFollowUpsForAccount:v14 completion:v17];
}

uint64_t __101__AAFollowUpController_Convenience__dismissFollowUpsStartingWithIdentifierPrefix_account_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __101__AAFollowUpController_Convenience__dismissFollowUpsStartingWithIdentifierPrefix_account_completion___block_invoke_382(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 uniqueIdentifier];
        v12 = [v11 hasPrefix:*(a1 + 32)];

        if (v12)
        {
          v13 = [v10 uniqueIdentifier];
          [v4 addObject:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    [*(a1 + 40) _dismissFollowUpWithIdentifiers:v4 completion:*(a1 + 56)];
  }

  else
  {
    v14 = _AALogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __101__AAFollowUpController_Convenience__dismissFollowUpsStartingWithIdentifierPrefix_account_completion___block_invoke_382_cold_1(a1);
    }

    (*(*(a1 + 56) + 16))();
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)pendingFollowUpsForAccount:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [AAFollowUpController(Convenience) pendingFollowUpsForAccount:completion:];
  }

  v8 = _AALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "Attempting to fetch follow up item for account : %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__11;
  v20 = __Block_byref_object_dispose__11;
  v21 = [(AAFollowUpController *)self _followUpController];
  v9 = *(*(&buf + 1) + 40);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__AAFollowUpController_Convenience__pendingFollowUpsForAccount_completion___block_invoke;
  v13[3] = &unk_1E7C9CBC8;
  p_buf = &buf;
  v10 = v7;
  v15 = v10;
  v11 = v6;
  v14 = v11;
  [v9 pendingFollowUpItemsWithCompletion:v13];

  _Block_object_dispose(&buf, 8);
  v12 = *MEMORY[0x1E69E9840];
}

void __75__AAFollowUpController_Convenience__pendingFollowUpsForAccount_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  if (!v5 || v6)
  {
    v12 = _AALogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __65__AAFollowUpController_pendingFollowUpWithIdentifier_completion___block_invoke_cold_1();
    }

    v13 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v14 = *(a1 + 40);
    if (v14)
    {
      (*(v14 + 16))(v14, v13, v6);
    }
  }

  else
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __75__AAFollowUpController_Convenience__pendingFollowUpsForAccount_completion___block_invoke_383;
    v18[3] = &unk_1E7C9CBA0;
    v19 = *(a1 + 32);
    v9 = [v5 indexesOfObjectsPassingTest:v18];
    if ([v9 count])
    {
      v10 = [v5 objectsAtIndexes:v9];
      v11 = _AALogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v21 = v10;
        _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "Successfully fetched follow up: %{private}@", buf, 0xCu);
      }
    }

    else
    {
      v15 = _AALogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __75__AAFollowUpController_Convenience__pendingFollowUpsForAccount_completion___block_invoke_cold_1((a1 + 32));
      }

      v10 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    }

    v16 = *(a1 + 40);
    if (v16)
    {
      (*(v16 + 16))(v16, v10, 0);
    }

    v13 = v19;
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __75__AAFollowUpController_Convenience__pendingFollowUpsForAccount_completion___block_invoke_383(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKeyedSubscript:AAFollowUpUserInfoAccountIdentifier[0]];

  if (v4)
  {
    v5 = [*(a1 + 32) identifier];
    v6 = [v4 isEqualToString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_dismissFollowUpWithIdentifiers:(id)a3 completion:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [AAFollowUpController(Convenience) _dismissFollowUpWithIdentifiers:completion:];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__AAFollowUpController_Convenience___dismissFollowUpWithIdentifiers_completion___block_invoke;
  aBlock[3] = &unk_1E7C9ABB8;
  v8 = v7;
  v18 = v8;
  v9 = _Block_copy(aBlock);
  v10 = _AALogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "Attempting to clear follow up item with identifier: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__11;
  v22 = __Block_byref_object_dispose__11;
  v23 = [(AAFollowUpController *)self _followUpController];
  v11 = *(*(&buf + 1) + 40);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __80__AAFollowUpController_Convenience___dismissFollowUpWithIdentifiers_completion___block_invoke_387;
  v14[3] = &unk_1E7C9CB78;
  p_buf = &buf;
  v12 = v9;
  v15 = v12;
  [v11 clearPendingFollowUpItemsWithUniqueIdentifiers:v6 completion:v14];

  _Block_object_dispose(&buf, 8);
  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __80__AAFollowUpController_Convenience___dismissFollowUpWithIdentifiers_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __80__AAFollowUpController_Convenience___dismissFollowUpWithIdentifiers_completion___block_invoke_387(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = _AALogSystem();
  v9 = v8;
  if (a2)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "Successfully cleared follow up item!", v10, 2u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __65__AAFollowUpController_dismissFollowUpWithIdentifier_completion___block_invoke_316_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (id)pendingCFUTypes
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = _AALogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v2, OS_LOG_TYPE_DEFAULT, "Attempting to fetch pending CFU types", buf, 2u);
  }

  v3 = objc_alloc_init(getFLFollowUpControllerClass());
  v24 = 0;
  v4 = [v3 pendingFollowUpItems:&v24];
  v5 = v24;

  if (!v4 || v5)
  {
    v6 = _AALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [AAFollowUpController(Convenience) pendingCFUTypes];
    }

    v15 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v13 = [v12 uniqueIdentifier];

          if (v13)
          {
            v14 = [v12 uniqueIdentifier];
            [v6 addObject:v14];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v29 count:16];
      }

      while (v9);
    }

    v15 = [v6 allObjects];
    v16 = _AALogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v15 count];
      *buf = 134218243;
      v26 = v17;
      v27 = 2113;
      v28 = v15;
      _os_log_impl(&dword_1B6F6A000, v16, OS_LOG_TYPE_DEFAULT, "Successfully fetched %lu CFU types: %{private}@", buf, 0x16u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BOOL)isRenewCredentialsCFUPosted
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = _AALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v3, OS_LOG_TYPE_DEFAULT, "Attempting to fetch pending RenewCredentials CFU", buf, 2u);
  }

  v4 = [(AAFollowUpController *)self _followUpController];
  v19 = 0;
  v5 = [v4 pendingFollowUpItems:&v19];
  v6 = v19;

  if (!v5 || v6)
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [AAFollowUpController(Convenience) isRenewCredentialsCFUPosted];
    }

    LOBYTE(v8) = 0;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v8)
    {
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; i = (i + 1))
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = AAFollowUpIdentifierRenewCredentials[0];
          v12 = [*(*(&v15 + 1) + 8 * i) typeIdentifier];
          LODWORD(v11) = [(__CFString *)v11 isEqualToString:v12];

          if (v11)
          {
            v8 = _AALogSystem();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "Found Renew Credentials CFU posted", buf, 2u);
            }

            LOBYTE(v8) = 1;
            goto LABEL_20;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v15 objects:v21 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_20:

  v13 = *MEMORY[0x1E69E9840];
  return v8;
}

- (double)ageOfOldestCustodianCFU
{
  v12[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v4 = [v3 initWithObjects:{AAFollowUpIdentifierCustodianRemoved[0], 0}];
  v12[0] = AAFollowUpIdentifierCustodianWalrusNoLiveness[0];
  v12[1] = AAFollowUpIdentifierCustodianWalrusRemoved[0];
  v12[2] = AAFollowUpIdentifierWalrusUserRecoveryFactorsMissing[0];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
  [v4 addObjectsFromArray:v5];

  v6 = [(AAFollowUpController *)self creationDateOfOldestFollowUpWithIdentifiers:v4];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DF00] now];
    [v7 timeIntervalSinceDate:v6];
    v9 = v8;
  }

  else
  {
    v9 = -1.0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)creationDateOfOldestFollowUpWithIdentifiers:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _AALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AAFollowUpController(Convenience) creationDateOfOldestFollowUpWithIdentifiers:];
  }

  v6 = [(AAFollowUpController *)self _followUpController];
  v37 = 0;
  v7 = [v6 pendingFollowUpItems:&v37];
  v8 = v37;
  v9 = v8;
  if (!v7 || v8)
  {
    v10 = _AALogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [AAFollowUpController(Convenience) creationDateOfOldestFollowUpWithIdentifiers:];
    }

    v28 = 0;
  }

  else
  {
    v32 = v6;
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v31 = v7;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v33 objects:v44 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v34;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v33 + 1) + 8 * i);
          v18 = [v17 uniqueIdentifier];
          v19 = [v4 containsObject:v18];

          if (v19)
          {
            [v10 addObject:v17];
            v20 = [v17 notification];
            v21 = [v20 creationDate];

            if (v21)
            {
              v22 = [v17 notification];
              v23 = [v22 creationDate];
              [v11 addObject:v23];
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v33 objects:v44 count:16];
      }

      while (v14);
    }

    v24 = [v11 count];
    v25 = _AALogSystem();
    v26 = v25;
    if (v24)
    {
      v6 = v32;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [v10 count];
        *buf = 134218499;
        v39 = v27;
        v40 = 2113;
        v41 = v10;
        v42 = 2112;
        v43 = v11;
        _os_log_impl(&dword_1B6F6A000, v26, OS_LOG_TYPE_DEFAULT, "Successfully found %lu CFUs: %{private}@ and dates: %@", buf, 0x20u);
      }

      v26 = [v11 sortedArrayUsingSelector:sel_compare_];
      v28 = [v26 firstObject];
    }

    else
    {
      v6 = v32;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [AAFollowUpController(Convenience) creationDateOfOldestFollowUpWithIdentifiers:];
      }

      v28 = 0;
    }

    v9 = 0;
    v7 = v31;
  }

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

- (void)pendingFollowUpItemUserInfosWithIdentifier:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [AAFollowUpController(Convenience) pendingFollowUpItemUserInfosWithIdentifier:completion:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [AAFollowUpController(Convenience) pendingFollowUpItemUserInfosWithIdentifier:completion:];
LABEL_3:
  v9 = _AALogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v6;
    _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "Attempting to fetch user info of follow up item with identifier: %{public}@", buf, 0xCu);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __91__AAFollowUpController_Convenience__pendingFollowUpItemUserInfosWithIdentifier_completion___block_invoke;
  v13[3] = &unk_1E7C9BA08;
  v14 = v6;
  v15 = v8;
  v10 = v8;
  v11 = v6;
  [(AAFollowUpController *)self _pendingFollowUpItemsWithIdentifier:v11 forAccount:0 completion:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __91__AAFollowUpController_Convenience__pendingFollowUpItemUserInfosWithIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5 && [v5 count])
  {
    v7 = [v5 aaf_map:&__block_literal_global_27];
    v8 = _AALogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138477827;
      v14 = v7;
      _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "Successfully fetched user infos of pending follow ups: %{private}@", &v13, 0xCu);
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))(v9, v7);
    }
  }

  else
  {
    v10 = _AALogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __91__AAFollowUpController_Convenience__pendingFollowUpItemUserInfosWithIdentifier_completion___block_invoke_cold_1(a1);
    }

    v11 = *(a1 + 40);
    if (v11)
    {
      (*(v11 + 16))(v11, 0);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)pendingFollowUpItemUserInfosWithIdentifier:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    [AAFollowUpController(Convenience) pendingFollowUpItemUserInfosWithIdentifier:];
  }

  v5 = _AALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = v4;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to fetch user info of follow up item with identifier: %{public}@", &v12, 0xCu);
  }

  v6 = [(AAFollowUpController *)self _pendingFollowUpItemsWithIdentifier:v4 forAccount:0];
  v7 = v6;
  if (v6 && [v6 count])
  {
    v8 = [v7 aaf_map:&__block_literal_global_394];
    v9 = _AALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138477827;
      v13 = v8;
      _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "Successfully fetched user infos of pending follow ups: %{private}@", &v12, 0xCu);
    }
  }

  else
  {
    v9 = _AALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [AAFollowUpController(Convenience) pendingFollowUpItemUserInfosWithIdentifier:];
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)reportPostCFUEvent:(id)a3
{
  v4 = a3;
  v5 = _AALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AAFollowUpController(Convenience) reportPostCFUEvent:];
  }

  v6 = +[AAAnalyticsRTCReporter reporter];
  v7 = v6;
  if (v4)
  {
    [v6 sendEvent:v4];
  }

  else
  {
    v8 = [(AAFollowUpController *)self analyticsInfo];
    v9 = [v8 cfuReasonAnalyticsEvent];
    [v7 sendEvent:v9];
  }
}

- (id)_pendingFollowUpItemsWithIdentifier:(id)a3 forAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _AALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [AAFollowUpController(Convenience) _pendingFollowUpItemsWithIdentifier:forAccount:];
  }

  v9 = [(AAFollowUpController *)self _followUpController];
  v14 = 0;
  v10 = [v9 pendingFollowUpItems:&v14];

  if (v10 && [v10 count])
  {
    v11 = [(AAFollowUpController *)self _filterFollowUpItems:v10 byIdentifier:v6 byAccount:v7];
  }

  else
  {
    v12 = _AALogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [AAFollowUpController(Convenience) _pendingFollowUpItemsWithIdentifier:forAccount:];
    }

    v11 = 0;
  }

  return v11;
}

- (void)_pendingFollowUpItemsWithIdentifier:(id)a3 forAccount:(id)a4 completion:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    [AAFollowUpController(Convenience) _pendingFollowUpItemsWithIdentifier:forAccount:completion:];
  }

  v11 = _AALogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "Attempting to fetch follow up items with identifier: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__11;
  v25 = __Block_byref_object_dispose__11;
  v26 = [(AAFollowUpController *)self _followUpController];
  v12 = *(*(&buf + 1) + 40);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __95__AAFollowUpController_Convenience___pendingFollowUpItemsWithIdentifier_forAccount_completion___block_invoke;
  v17[3] = &unk_1E7C9CC88;
  p_buf = &buf;
  v13 = v10;
  v20 = v13;
  v17[4] = self;
  v14 = v8;
  v18 = v14;
  v15 = v9;
  v19 = v15;
  [v12 pendingFollowUpItemsWithCompletion:v17];

  _Block_object_dispose(&buf, 8);
  v16 = *MEMORY[0x1E69E9840];
}

void __95__AAFollowUpController_Convenience___pendingFollowUpItemsWithIdentifier_forAccount_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  if (v5 && !v6 && [v5 count])
  {
    v9 = [*(a1 + 32) _filterFollowUpItems:v5 byIdentifier:*(a1 + 40) byAccount:*(a1 + 48)];
    v10 = _AALogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138477827;
      v15 = v9;
      _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "Successfully fetched follow ups: %{private}@", &v14, 0xCu);
    }

    v11 = *(*(a1 + 56) + 16);
  }

  else
  {
    v12 = _AALogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __65__AAFollowUpController_pendingFollowUpWithIdentifier_completion___block_invoke_cold_1();
    }

    v9 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v11 = *(*(a1 + 56) + 16);
  }

  v11();

  v13 = *MEMORY[0x1E69E9840];
}

- (id)_filterFollowUpItems:(id)a3 byIdentifier:(id)a4 byAccount:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v7 || ![v7 count])
  {
    v11 = _AALogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [AAFollowUpController(Convenience) _pendingFollowUpItemsWithIdentifier:forAccount:];
    }

    v10 = 0;
    goto LABEL_11;
  }

  if (!v8)
  {
    v10 = 0;
    if (!v9)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __81__AAFollowUpController_Convenience___filterFollowUpItems_byIdentifier_byAccount___block_invoke;
  v16[3] = &unk_1E7C9CCB0;
  v17 = v8;
  v10 = [v7 aaf_filter:v16];

  if (v9)
  {
LABEL_10:
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __81__AAFollowUpController_Convenience___filterFollowUpItems_byIdentifier_byAccount___block_invoke_2;
    v14[3] = &unk_1E7C9CCB0;
    v15 = v9;
    v12 = [v10 aaf_filter:v14];

    v11 = v15;
    v10 = v12;
LABEL_11:
  }

LABEL_12:

  return v10;
}

uint64_t __81__AAFollowUpController_Convenience___filterFollowUpItems_byIdentifier_byAccount___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 hasPrefix:*(a1 + 32)];

  return v4;
}

uint64_t __81__AAFollowUpController_Convenience___filterFollowUpItems_byIdentifier_byAccount___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKeyedSubscript:AAFollowUpUserInfoAccountIdentifier[0]];

  if (v4)
  {
    v5 = [*(a1 + 32) identifier];
    v6 = [v4 isEqualToString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_constructAnalyticsInforFromAccount:(id)a3 forIdentifier:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E6985DA8];
  v7 = a4;
  v8 = objc_alloc_init(v6);
  [v8 setCfuType:v7];

  v9 = [MEMORY[0x1E696AFB0] UUID];
  v10 = [v9 UUIDString];
  [v8 setFlowID:v10];

  v11 = [MEMORY[0x1E698DC80] sharedInstance];
  if ([v11 accountAccessTelemetryOptInForAccount:v5])
  {
    v12 = [v11 telemetryDeviceSessionIDForAccount:v5];
    [v8 setDeviceSessionID:v12];
  }

  return v8;
}

- (void)_followUpItemForCustodianInvitationReminder:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 userInfo];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_1B6F6A000, v2, v3, "Primary action, userInfo: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_followUpItemForBeneficiaryRemoved:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 uniqueIdentifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_1B6F6A000, v2, v3, "Beneficiary FollowUp Item - %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_followUpItemForCustodianEmbargo:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_followUpItemForCustodianEmbargo:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_followUpForRecoveryKeyHealingWithContext:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1B6F6A000, v0, v1, "RK Healing CFU: hasWalrusEnabled=%@, hasDistrustedRK=%@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_followUpForRecoveryKeyHealingWithContext:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_recoveryNotificationWithInfo:type:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_recoveryNotificationWithInfo:type:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_shouldPostRenewFollowup:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)postFollowUpWithIdentifier:userInfo:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"followUpIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)postFollowUpWithIdentifier:userInfo:completion:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)postFollowUpWithIdentifier:userInfo:completion:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __71__AAFollowUpController_postFollowUpWithIdentifier_userInfo_completion___block_invoke_309_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)postFollowUpWithIdentifier:userInfo:error:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"followUpIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)postFollowUpWithIdentifier:(uint64_t *)a1 userInfo:error:.cold.3(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)pendingFollowUpWithIdentifier:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"followUpIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)pendingFollowUpWithIdentifier:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void __65__AAFollowUpController_pendingFollowUpWithIdentifier_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)dismissFollowUpWithIdentifier:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"followUpIdentifier" object:? file:? lineNumber:? description:?];
}

void __65__AAFollowUpController_dismissFollowUpWithIdentifier_completion___block_invoke_316_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)dismissFollowUpWithIdentifier:error:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"followUpIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)dismissFollowUpWithIdentifier:(uint64_t *)a1 error:.cold.2(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x1E69E9840];
}

void __89__AAFollowUpController_Convenience__dismissFollowUpWithIdentifier_forAccount_completion___block_invoke_379_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __89__AAFollowUpController_Convenience__dismissFollowUpWithIdentifier_forAccount_completion___block_invoke_379_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x1E69E9840];
}

void __101__AAFollowUpController_Convenience__dismissFollowUpsStartingWithIdentifierPrefix_account_completion___block_invoke_382_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 48);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x1E69E9840];
}

void __75__AAFollowUpController_Convenience__pendingFollowUpsForAccount_completion___block_invoke_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x1E69E9840];
}

void __91__AAFollowUpController_Convenience__pendingFollowUpItemUserInfosWithIdentifier_completion___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x1E69E9840];
}

@end