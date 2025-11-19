@interface NCBSBridgeSetupController
+ (id)_controllerClassFlowForContactsManagementState:(int)a3 priorFlow:(id)a4;
- (BOOL)_contactsSyncEnabledWithNetworkAccess;
- (BOOL)_setupGuardianHasContacts;
- (BOOL)_shouldPromptForiCloudSync;
- (BOOL)activePairingDeviceSupportsContactsApp;
- (BOOL)holdBeforeDisplaying;
- (NCBSBridgeSetupController)init;
- (id)_iCloudSyncPromptAlertMessageStringForNeedToEnableDataAccess:(BOOL)a3 needToEnableiCloudSync:(BOOL)a4 needToMergeContacts:(BOOL)a5;
- (id)_iCloudSyncPromptAlertTitleStringForNeedToEnableDataAccess:(BOOL)a3 needToEnableiCloudSync:(BOOL)a4 needToMergeContacts:(BOOL)a5;
- (id)_nextControllerToRunAtOrAfterIndex:(unint64_t)a3;
- (id)contactsManagementStateManager;
- (id)familyMember;
- (id)familyMemberFirstName;
- (id)setupGuardian;
- (id)viewController;
- (int)_familyMemberContactsStatusForContactsCountStatus:(int)a3;
- (void)_checkContactsManagementAndEnqueueReleaseHold;
- (void)_enqueueReleaseHoldWithSkip:(BOOL)a3;
- (void)_familyMemberSetNotification:(id)a3;
- (void)_fetchContactsManagementStateWithHoldWaitUIAndCompletionHandler:(id)a3;
- (void)_promptForiCloudSyncFollowingController:(id)a3;
- (void)_updateContactsManagementStateWithHoldWaitUIThenStepCompleteController:(id)a3;
- (void)dealloc;
- (void)miniFlowStepComplete:(id)a3;
- (void)miniFlowStepComplete:(id)a3 nextControllerClass:(Class)a4;
- (void)requestContactsManagementWithCompletionHandler:(id)a3;
- (void)setShowingHoldWait:(BOOL)a3;
@end

@implementation NCBSBridgeSetupController

- (NCBSBridgeSetupController)init
{
  v8.receiver = self;
  v8.super_class = NCBSBridgeSetupController;
  v2 = [(NCBSBridgeSetupController *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NCContactsiCloudSyncHelper);
    iCloudSyncHelper = v2->_iCloudSyncHelper;
    v2->_iCloudSyncHelper = v3;

    v5 = objc_alloc_init(NCContactsSyncDataAccessHelper);
    contactsSyncDataAccessHelper = v2->_contactsSyncDataAccessHelper;
    v2->_contactsSyncDataAccessHelper = v5;
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = NCBSBridgeSetupController;
  [(NCBSBridgeSetupController *)&v4 dealloc];
}

- (id)viewController
{
  v3 = [(NCBSBridgeSetupController *)self firstViewControllerForCurrentFlow];

  if (v3)
  {
    v4 = NCBS_Tinker_log();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v5 = [(NCBSBridgeSetupController *)self firstViewControllerForCurrentFlow];
    v10 = 136446978;
    v11 = "[NCBSBridgeSetupController viewController]";
    v12 = 2114;
    v13 = v5;
    v14 = 1024;
    v15 = [(NCBSBridgeSetupController *)self cmsForRunningFlow];
    v16 = 1024;
    v17 = [(NCBSBridgeSetupController *)self familyMemberContactsStatusAtStartOfFlow];
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%{public}s - re-vending firstViewControllerForCurrentFlow: %{public}@ for cmsForRunningFlow: %d familyMemberContactsStatusAtStartOfFlow: %d", &v10, 0x22u);
  }

  else
  {
    v4 = [(NCBSBridgeSetupController *)self contactsManagementStateManager];
    [(NCBSBridgeSetupController *)self _updateForContactsManagementState:[v4 lastKnownContactsManagementState] contactsCountStatus:[v4 contactsCountStatus]];
    v6 = [(NCBSBridgeSetupController *)self _nextControllerToRunAtOrAfterIndex:0];
    [(NCBSBridgeSetupController *)self setFirstViewControllerForCurrentFlow:v6];

    v5 = NCBS_Tinker_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(NCBSBridgeSetupController *)self firstViewControllerForCurrentFlow];
      v10 = 136447234;
      v11 = "[NCBSBridgeSetupController viewController]";
      v12 = 2114;
      v13 = v7;
      v14 = 1024;
      v15 = [(NCBSBridgeSetupController *)self cmsForRunningFlow];
      v16 = 1024;
      v17 = [(NCBSBridgeSetupController *)self familyMemberContactsStatusAtStartOfFlow];
      v18 = 1024;
      v19 = [v4 contactsSyncAndNetworkAccessEnabled];
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s - vending firstViewControllerForCurrentFlow: %{public}@ for cmsForRunningFlow: %d familyMemberContactsStatusAtStartOfFlow: %d contactsSyncAndNetworkAccessEnabled: %d", &v10, 0x28u);
    }
  }

LABEL_7:
  v8 = [(NCBSBridgeSetupController *)self firstViewControllerForCurrentFlow];

  return v8;
}

- (BOOL)_shouldPromptForiCloudSync
{
  if ([(NCBSBridgeSetupController *)self cmsForRunningFlow]== 100 || [(NCBSBridgeSetupController *)self cmsForRunningFlow]== 101 || [(NCBSBridgeSetupController *)self cmsForRunningFlow]== 102)
  {
    return ![(NCBSBridgeSetupController *)self promptedForiCloudSync];
  }

  else
  {
    return 0;
  }
}

- (id)_iCloudSyncPromptAlertTitleStringForNeedToEnableDataAccess:(BOOL)a3 needToEnableiCloudSync:(BOOL)a4 needToMergeContacts:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  if (a3)
  {
    v8 = NanoContactsBridgeSetupBundle();
    if (v6)
    {
      if (v5)
      {
        v9 = @"TK_CONTACTS_ENABLE_SYNC_REQUEST_TITLE_DATAACCESS_ICLOUDSYNC_MERGECONTACTS";
      }

      else
      {
        v9 = @"TK_CONTACTS_ENABLE_SYNC_REQUEST_TITLE_DATAACCESS_ICLOUDSYNC";
      }
    }

    else
    {
      v9 = @"TK_CONTACTS_ENABLE_SYNC_REQUEST_TITLE_DATAACCESS";
    }
  }

  else
  {
    if (!a4)
    {
      goto LABEL_14;
    }

    v8 = NanoContactsBridgeSetupBundle();
    if (v5)
    {
      v9 = @"TK_CONTACTS_ENABLE_SYNC_REQUEST_TITLE_ICLOUDSYNC_MERGECONTACTS";
    }

    else
    {
      v9 = @"TK_CONTACTS_ENABLE_SYNC_REQUEST_TITLE_ICLOUDSYNC";
    }
  }

  v10 = [v8 localizedStringForKey:v9 value:&stru_1C900 table:@"NanoContactsBridgeSetup"];

  if (v10)
  {
    v11 = NCBS_Tinker_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = 136447234;
      v14 = "[NCBSBridgeSetupController _iCloudSyncPromptAlertTitleStringForNeedToEnableDataAccess:needToEnableiCloudSync:needToMergeContacts:]";
      v15 = 1024;
      v16 = v7;
      v17 = 1024;
      v18 = v6;
      v19 = 1024;
      v20 = v5;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%{public}s :%d:%d:%d => %@", &v13, 0x28u);
    }

    goto LABEL_17;
  }

LABEL_14:
  v11 = NCBS_Tinker_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v13 = 136446978;
    v14 = "[NCBSBridgeSetupController _iCloudSyncPromptAlertTitleStringForNeedToEnableDataAccess:needToEnableiCloudSync:needToMergeContacts:]";
    v15 = 1024;
    v16 = v7;
    v17 = 1024;
    v18 = v6;
    v19 = 1024;
    v20 = v5;
    _os_log_error_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%{public}s :%d:%d:%d - no format string", &v13, 0x1Eu);
  }

  v10 = 0;
LABEL_17:

  return v10;
}

- (id)_iCloudSyncPromptAlertMessageStringForNeedToEnableDataAccess:(BOOL)a3 needToEnableiCloudSync:(BOOL)a4 needToMergeContacts:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  if (a3)
  {
    v9 = NanoContactsBridgeSetupBundle();
    if (v6)
    {
      if (v5)
      {
        v10 = @"TK_CONTACTS_ENABLE_SYNC_REQUEST_MESSAGE_DATAACCESS_ICLOUDSYNC_MERGECONTACTS_%@";
      }

      else
      {
        v10 = @"TK_CONTACTS_ENABLE_SYNC_REQUEST_MESSAGE_DATAACCESS_ICLOUDSYNC_%@";
      }
    }

    else
    {
      v10 = @"TK_CONTACTS_ENABLE_SYNC_REQUEST_MESSAGE_DATAACCESS_%@";
    }
  }

  else
  {
    if (!a4)
    {
      goto LABEL_14;
    }

    v9 = NanoContactsBridgeSetupBundle();
    if (v5)
    {
      v10 = @"TK_CONTACTS_ENABLE_SYNC_REQUEST_MESSAGE_ICLOUDSYNC_MERGECONTACTS_%@";
    }

    else
    {
      v10 = @"TK_CONTACTS_ENABLE_SYNC_REQUEST_MESSAGE_ICLOUDSYNC_%@";
    }
  }

  v11 = [v9 localizedStringForKey:v10 value:&stru_1C900 table:@"NanoContactsBridgeSetup"];
  v12 = [(NCBSBridgeSetupController *)self familyMemberFirstName];
  v13 = [NSString stringWithFormat:v11, v12];

  if (v13)
  {
    v14 = NCBS_Tinker_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 136447234;
      v17 = "[NCBSBridgeSetupController _iCloudSyncPromptAlertMessageStringForNeedToEnableDataAccess:needToEnableiCloudSync:needToMergeContacts:]";
      v18 = 1024;
      v19 = v7;
      v20 = 1024;
      v21 = v6;
      v22 = 1024;
      v23 = v5;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "%{public}s :%d:%d:%d => %@", buf, 0x28u);
    }

    goto LABEL_17;
  }

LABEL_14:
  v14 = NCBS_Tinker_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v17 = "[NCBSBridgeSetupController _iCloudSyncPromptAlertMessageStringForNeedToEnableDataAccess:needToEnableiCloudSync:needToMergeContacts:]";
    v18 = 1024;
    v19 = v7;
    v20 = 1024;
    v21 = v6;
    v22 = 1024;
    v23 = v5;
    _os_log_error_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%{public}s :%d:%d:%d - no format string", buf, 0x1Eu);
  }

  v13 = 0;
LABEL_17:

  return v13;
}

- (void)_promptForiCloudSyncFollowingController:(id)a3
{
  v4 = a3;
  v5 = [(NCContactsSyncDataAccessHelper *)self->_contactsSyncDataAccessHelper networkAccessEnabledForContacts];
  v6 = [(NCContactsiCloudSyncHelper *)self->_iCloudSyncHelper primaryiCloudAccountCardDAVEnabled];
  v7 = (v6 & 1) == 0 && [(NCContactsiCloudSyncHelper *)self->_iCloudSyncHelper enablingPrimaryiCloudAccountRequiresMergeFromLocal];
  v8 = v6 ^ 1;
  v20 = [(NCBSBridgeSetupController *)self _iCloudSyncPromptAlertTitleStringForNeedToEnableDataAccess:v5 ^ 1 needToEnableiCloudSync:v6 ^ 1 needToMergeContacts:v7];
  v19 = [(NCBSBridgeSetupController *)self _iCloudSyncPromptAlertMessageStringForNeedToEnableDataAccess:v5 ^ 1 needToEnableiCloudSync:v6 ^ 1 needToMergeContacts:v7];
  v9 = [UIAlertController alertControllerWithTitle:v20 message:v19 preferredStyle:1];
  v10 = NanoContactsBridgeSetupBundle();
  v11 = [v10 localizedStringForKey:@"TK_CONTACTS_ENABLE_SYNC_REQUEST_BUTTON_ENABLE" value:&stru_1C900 table:@"NanoContactsBridgeSetup"];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_99C4;
  v23[3] = &unk_1C768;
  v25 = v5 ^ 1;
  v23[4] = self;
  v26 = v8;
  v12 = v4;
  v24 = v12;
  v13 = [UIAlertAction actionWithTitle:v11 style:0 handler:v23];
  [v9 addAction:v13];

  v14 = NanoContactsBridgeSetupBundle();
  v15 = [v14 localizedStringForKey:@"TK_CONTACTS_ENABLE_SYNC_REQUEST_BUTTON_SETUP_LATER" value:&stru_1C900 table:@"NanoContactsBridgeSetup"];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_9B68;
  v21[3] = &unk_1C790;
  v21[4] = self;
  v22 = v12;
  v16 = v12;
  v17 = [UIAlertAction actionWithTitle:v15 style:0 handler:v21];
  [v9 addAction:v17];

  [(NCBSBridgeSetupController *)self setPromptedForiCloudSync:1];
  v18 = [(NCBSBridgeSetupController *)self viewController];
  [v18 presentViewController:v9 animated:1 completion:0];
}

- (void)_fetchContactsManagementStateWithHoldWaitUIAndCompletionHandler:(id)a3
{
  v4 = a3;
  [(NCBSBridgeSetupController *)self setShowingHoldWait:1];
  v5 = [(NCBSBridgeSetupController *)self contactsManagementStateManager];
  v6 = NCBS_Tinker_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v13 = "[NCBSBridgeSetupController _fetchContactsManagementStateWithHoldWaitUIAndCompletionHandler:]";
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}s - querying contactsManagementStateManager (this may take a while): %@", buf, 0x16u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_9D7C;
  v9[3] = &unk_1C7E0;
  v9[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  [v8 fetchContactsManagementStateWithCompletionHandler:v9];
}

- (void)_updateContactsManagementStateWithHoldWaitUIThenStepCompleteController:(id)a3
{
  v4 = a3;
  v5 = NCBS_Tinker_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[NCBSBridgeSetupController _updateContactsManagementStateWithHoldWaitUIThenStepCompleteController:]";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: %@", buf, 0x16u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_A0A8;
  v7[3] = &unk_1C808;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NCBSBridgeSetupController *)self _fetchContactsManagementStateWithHoldWaitUIAndCompletionHandler:v7];
}

- (void)miniFlowStepComplete:(id)a3
{
  v4 = a3;
  v5 = NCBS_Tinker_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136446466;
    v17 = "[NCBSBridgeSetupController miniFlowStepComplete:]";
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: %@", &v16, 0x16u);
  }

  if ([(NCBSBridgeSetupController *)self _shouldPromptForiCloudSync])
  {
    v6 = [(NCBSBridgeSetupController *)self _contactsSyncEnabledWithNetworkAccess];
    v7 = [(NCBSBridgeSetupController *)self contactsManagementStateManager];
    [v7 setContactsSyncAndNetworkAccessEnabled:v6];

    if (v6)
    {
      [(NCBSBridgeSetupController *)self _updateContactsManagementStateWithHoldWaitUIThenStepCompleteController:v4];
    }

    else
    {
      v12 = NCBS_Tinker_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136446210;
        v17 = "[NCBSBridgeSetupController miniFlowStepComplete:]";
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}s - prompting for iCloud sync", &v16, 0xCu);
      }

      [(NCBSBridgeSetupController *)self _promptForiCloudSyncFollowingController:v4];
    }
  }

  else
  {
    v8 = [(NCBSBridgeSetupController *)self runningFlow];
    v9 = [v8 indexOfObject:objc_opt_class()];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = NCBS_Tinker_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [(NCBSBridgeSetupController *)self cmsForRunningFlow];
        v16 = 136446978;
        v17 = "[NCBSBridgeSetupController miniFlowStepComplete:]";
        v18 = 2112;
        v19 = v4;
        v20 = 1024;
        v21 = v11;
        v22 = 2112;
        v23 = v8;
        _os_log_error_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%{public}s - completedController %@ not found in flow[%d] %@", &v16, 0x26u);
      }
    }

    else
    {
      v10 = [(NCBSBridgeSetupController *)self _nextControllerToRunAtOrAfterIndex:v9 + 1];
      v13 = NCBS_Tinker_log();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        if (v14)
        {
          v16 = 136446466;
          v17 = "[NCBSBridgeSetupController miniFlowStepComplete:]";
          v18 = 2112;
          v19 = v10;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}s - pushing %@", &v16, 0x16u);
        }

        v15 = [v4 navigationController];
        [v15 pushViewController:v10 animated:1];
      }

      else
      {
        if (v14)
        {
          v16 = 136446210;
          v17 = "[NCBSBridgeSetupController miniFlowStepComplete:]";
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}s - no next controller -> buddyControllerDone", &v16, 0xCu);
        }

        v15 = [(NCBSBridgeSetupController *)self delegate];
        [v15 buddyControllerDone:self];
      }
    }
  }
}

- (void)miniFlowStepComplete:(id)a3 nextControllerClass:(Class)a4
{
  v5 = objc_alloc_init(a4);
  [v5 setMiniFlowDelegate:self];
  [(NCBSBridgeSetupController *)self pushController:v5 animated:1];
}

- (id)familyMember
{
  v2 = [(NCBSBridgeSetupController *)self delegate];
  v3 = [v2 setupFlowUserInfo];
  v4 = [v3 objectForKeyedSubscript:BPSPairingFlowFamilyMember];

  return v4;
}

- (id)familyMemberFirstName
{
  v2 = [(NCBSBridgeSetupController *)self familyMember];
  v3 = [v2 firstName];

  return v3;
}

- (id)setupGuardian
{
  v3 = [(NCBSBridgeSetupController *)self delegate];
  v4 = [v3 setupFlowUserInfo];
  v5 = [v4 objectForKeyedSubscript:BPSPairingFlowFamilyPairingParent];

  if (!v5)
  {
    v6 = [(NCBSBridgeSetupController *)self delegate];
    v7 = [v6 setupFlowUserInfo];
    v5 = [v7 objectForKeyedSubscript:BPSPairingFlowFamilyOrganizer];

    v8 = NCBS_Tinker_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136446210;
      v11 = "[NCBSBridgeSetupController setupGuardian]";
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}s - no BPSPairingFlowFamilyPairingParent, fell back to BPSPairingFlowFamilyOrganizer", &v10, 0xCu);
    }
  }

  return v5;
}

- (void)requestContactsManagementWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(NCBSBridgeSetupController *)self contactsManagementStateManager];
  v6 = [v5 familyMember];
  v7 = NCBS_Tinker_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446466;
    v9 = "[NCBSBridgeSetupController requestContactsManagementWithCompletionHandler:]";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}s - requestContactsManagementForFamilyMember: %@", &v8, 0x16u);
  }

  [v5 requestContactsManagementForFamilyMember:v6 completionHandler:v4];
}

- (BOOL)activePairingDeviceSupportsContactsApp
{
  v2 = [(NCBSBridgeSetupController *)self delegate];
  v3 = [v2 activePairingDevice];

  if (v3)
  {
    v4 = [[NSUUID alloc] initWithUUIDString:@"CBF3763A-5F42-4463-B714-39903987FE90"];
    v5 = [v3 supportsCapability:v4];

    v6 = NCBS_Tinker_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromBOOL();
      v9 = 136446466;
      v10 = "[NCBSBridgeSetupController activePairingDeviceSupportsContactsApp]";
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}s - %@", &v9, 0x16u);
    }
  }

  else
  {
    v6 = NCBS_Tinker_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_F264();
    }

    v5 = 0;
  }

  return v5;
}

- (BOOL)holdBeforeDisplaying
{
  v3 = [(NCBSBridgeSetupController *)self familyMember];

  if (v3)
  {
    [(NCBSBridgeSetupController *)self _checkContactsManagementAndEnqueueReleaseHold];
  }

  else
  {
    v4 = NCBS_Tinker_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136446210;
      v9 = "[NCBSBridgeSetupController holdBeforeDisplaying]";
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}s - !self.familyMember, waiting for BPSTinkerFamilyMemberNameSet", &v8, 0xCu);
    }

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:self selector:"_familyMemberSetNotification:" name:BPSTinkerFamilyMemberNameSet object:0];
  }

  v6 = NCBS_Tinker_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446466;
    v9 = "[NCBSBridgeSetupController holdBeforeDisplaying]";
    v10 = 1024;
    v11 = 1;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}s -> %d", &v8, 0x12u);
  }

  return 1;
}

- (void)_familyMemberSetNotification:(id)a3
{
  v4 = a3;
  v5 = NCBS_Tinker_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446466;
    v10 = "[NCBSBridgeSetupController _familyMemberSetNotification:]";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: %@", &v9, 0x16u);
  }

  v6 = [(NCBSBridgeSetupController *)self familyMember];

  if (!v6)
  {
    v7 = NCBS_Tinker_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_F2E4();
    }
  }

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 removeObserver:self name:BPSTinkerFamilyMemberNameSet object:0];

  [(NCBSBridgeSetupController *)self _checkContactsManagementAndEnqueueReleaseHold];
}

- (void)_checkContactsManagementAndEnqueueReleaseHold
{
  v3 = [(NCBSBridgeSetupController *)self contactsManagementStateManager];
  v4 = NCBS_Tinker_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v8 = "[NCBSBridgeSetupController _checkContactsManagementAndEnqueueReleaseHold]";
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s - querying contactsManagementStateManager (this may take a while): %@", buf, 0x16u);
    }

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_ADF8;
    v6[3] = &unk_1C830;
    v6[4] = self;
    [v3 fetchContactsManagementStateWithCompletionHandler:v6];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_F364(self, v5);
    }

    [(NCBSBridgeSetupController *)self _enqueueReleaseHoldWithSkip:1];
  }
}

- (void)_enqueueReleaseHoldWithSkip:(BOOL)a3
{
  v3 = a3;
  v5 = NCBS_Tinker_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v9 = "[NCBSBridgeSetupController _enqueueReleaseHoldWithSkip:]";
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: %d [dispatch]", buf, 0x12u);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_B050;
  v6[3] = &unk_1C858;
  v7 = v3;
  v6[4] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

+ (id)_controllerClassFlowForContactsManagementState:(int)a3 priorFlow:(id)a4
{
  v6 = a4;
  v7 = 0;
  if (a3 > 3)
  {
    if ((a3 - 100) >= 3)
    {
      if (a3 != 4)
      {
        if (a3 != 5)
        {
          goto LABEL_24;
        }

        v28[0] = objc_opt_class();
        v28[1] = objc_opt_class();
        v28[2] = objc_opt_class();
        v28[3] = objc_opt_class();
        v8 = v28;
        v9 = 4;
        goto LABEL_22;
      }

      v29[0] = objc_opt_class();
      v29[1] = objc_opt_class();
      v8 = v29;
    }

    else
    {
      v27[0] = objc_opt_class();
      v27[1] = objc_opt_class();
      v8 = v27;
    }

    goto LABEL_21;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v11 = NCBS_Tinker_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_F48C();
      }

      v12 = [a1 _controllerClassFlowForContactsManagementState:3 priorFlow:v6];
      goto LABEL_23;
    }

    v30[0] = objc_opt_class();
    v30[1] = objc_opt_class();
    v8 = v30;
    goto LABEL_21;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_24;
    }

    if (![v6 containsObject:objc_opt_class()])
    {
      v31 = objc_opt_class();
      v8 = &v31;
      v9 = 1;
      goto LABEL_22;
    }

    v32[0] = objc_opt_class();
    v32[1] = objc_opt_class();
    v8 = v32;
LABEL_21:
    v9 = 2;
LABEL_22:
    v12 = [NSArray arrayWithObjects:v8 count:v9];
LABEL_23:
    v7 = v12;
    goto LABEL_24;
  }

  v10 = NCBS_Tinker_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_F51C();
  }

  v7 = 0;
LABEL_24:
  v13 = NCBS_Tinker_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136446978;
    v20 = "+[NCBSBridgeSetupController _controllerClassFlowForContactsManagementState:priorFlow:]";
    v21 = 1024;
    v22 = a3;
    v23 = 2114;
    v24 = v7;
    v25 = 2114;
    v26 = v6;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: %d -> %{public}@ (priorFlow: %{public}@)", &v19, 0x26u);
  }

  v14 = [v6 count];
  if (v14 > [v7 count])
  {
    v15 = NCBS_Tinker_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = [v6 count];
      v18 = [v7 count];
      v19 = 136446978;
      v20 = "+[NCBSBridgeSetupController _controllerClassFlowForContactsManagementState:priorFlow:]";
      v21 = 1024;
      v22 = a3;
      v23 = 2048;
      v24 = v17;
      v25 = 2048;
      v26 = v18;
      _os_log_error_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%{public}s: %d; reduced flow element count (%tu -> %tu)", &v19, 0x26u);
    }
  }

  return v7;
}

- (id)contactsManagementStateManager
{
  contactsManagementStateManager = self->_contactsManagementStateManager;
  if (!contactsManagementStateManager)
  {
    v4 = [(NCBSBridgeSetupController *)self delegate];
    v5 = [NCABTinkerContactsManagementStateManager managerForBuddyControllerDelegate:v4];
    v6 = self->_contactsManagementStateManager;
    self->_contactsManagementStateManager = v5;

    [(NCABTinkerContactsManagementStateManager *)self->_contactsManagementStateManager setContactsSyncAndNetworkAccessEnabled:0];
    contactsManagementStateManager = self->_contactsManagementStateManager;
  }

  return contactsManagementStateManager;
}

- (id)_nextControllerToRunAtOrAfterIndex:(unint64_t)a3
{
  v5 = [(NCBSBridgeSetupController *)self runningFlow];
  if ([v5 count] <= a3)
  {
    v10 = 0;
  }

  else
  {
    *&v6 = 136446466;
    v14 = v6;
    do
    {
      v7 = [v5 objectAtIndexedSubscript:{a3, v14}];
      if (objc_opt_respondsToSelector())
      {
        v8 = [v7 controllerNeedsToRunWithMiniFlowDelegate:self];
      }

      else
      {
        v8 = 1;
      }

      v9 = NCBS_Tinker_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446978;
        v16 = "[NCBSBridgeSetupController _nextControllerToRunAtOrAfterIndex:]";
        v17 = 2048;
        v18 = a3;
        v19 = 1024;
        v20 = v8;
        v21 = 2112;
        v22 = v7;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}s - controllerFlowIndex: %tu runController: %d controllerClass: %@", buf, 0x26u);
      }

      if (v8)
      {
        v10 = [objc_msgSend(v7 "alloc")];
        [v10 setMiniFlowDelegate:self];
      }

      else
      {
        v11 = NCBS_Tinker_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v14;
          v16 = "[NCBSBridgeSetupController _nextControllerToRunAtOrAfterIndex:]";
          v17 = 2112;
          v18 = v7;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}s - skipping controllerClass: %@", buf, 0x16u);
        }

        v10 = 0;
      }

      ++a3;
    }

    while (a3 < [v5 count] && !v10);
  }

  v12 = NCBS_Tinker_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v16 = "[NCBSBridgeSetupController _nextControllerToRunAtOrAfterIndex:]";
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}s - returning %@", buf, 0x16u);
  }

  return v10;
}

- (int)_familyMemberContactsStatusForContactsCountStatus:(int)a3
{
  if (a3 == 4)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if (a3 == 5)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

- (BOOL)_contactsSyncEnabledWithNetworkAccess
{
  v3 = [(NCContactsiCloudSyncHelper *)self->_iCloudSyncHelper primaryiCloudAccountCardDAVEnabled];
  v4 = [(NCContactsSyncDataAccessHelper *)self->_contactsSyncDataAccessHelper networkAccessEnabledForContacts];
  v5 = NCBS_Tinker_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 136446722;
    v8 = "[NCBSBridgeSetupController _contactsSyncEnabledWithNetworkAccess]";
    v9 = 1024;
    v10 = v3;
    v11 = 1024;
    v12 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%{public}s - primaryiCloudAccountCardDAVEnabled: %d, networkAccessEnabledForContacts: %d", &v7, 0x18u);
  }

  return v3 & v4;
}

- (BOOL)_setupGuardianHasContacts
{
  v2 = +[NCABContactsSyncHelper localDeviceContactsCount];
  v3 = [v2 unsignedIntegerValue];
  v4 = NCBS_Tinker_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446722;
    v7 = "[NCBSBridgeSetupController _setupGuardianHasContacts]";
    v8 = 2114;
    v9 = v2;
    v10 = 1024;
    v11 = v3 != 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}s - contactCountNumber: %{public}@ -> hasContacts: %d", &v6, 0x1Cu);
  }

  return v3 != 0;
}

- (void)setShowingHoldWait:(BOOL)a3
{
  v3 = a3;
  v5 = NCBS_Tinker_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136446466;
    v21 = "[NCBSBridgeSetupController setShowingHoldWait:]";
    v22 = 1024;
    v23 = v3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: %d", &v20, 0x12u);
  }

  v6 = [(NCBSBridgeSetupController *)self navigationController];
  v7 = v6;
  if (v3)
  {
    v8 = [v6 topViewController];
    v9 = [v8 view];
    [v9 setUserInteractionEnabled:0];

    v10 = [(NCBSBridgeSetupController *)self navigationController];
    v11 = [v10 navigationBar];
    [v11 setUserInteractionEnabled:0];

    v12 = [[UIActivityIndicatorView alloc] initWithFrame:{0.0, 0.0, 20.0, 20.0}];
    v13 = [[UIBarButtonItem alloc] initWithCustomView:v12];
    v14 = [(NCBSBridgeSetupController *)self navigationController];
    v15 = [v14 navigationBar];

    v16 = [v15 topItem];
    [v16 setRightBarButtonItem:v13 animated:1];
    [v12 startAnimating];
  }

  else
  {
    v12 = [v6 navigationBar];

    v13 = [v12 topItem];
    [v13 setRightBarButtonItem:0 animated:1];
    v17 = [(NCBSBridgeSetupController *)self navigationController];
    v18 = [v17 topViewController];
    v19 = [v18 view];
    [v19 setUserInteractionEnabled:1];

    v15 = [(NCBSBridgeSetupController *)self navigationController];
    v16 = [v15 navigationBar];
    [v16 setUserInteractionEnabled:1];
  }
}

@end