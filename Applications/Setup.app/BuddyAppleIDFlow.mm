@interface BuddyAppleIDFlow
+ (id)allowedFlowItems;
- (BOOL)controllerNeedsToRun;
- (id)_accountToUpdate;
- (id)firstItem;
- (void)_determineAccountToRepair:(id)repair;
- (void)_fetchRequiresTermsAcceptanceForAccount:(id)account completion:(id)completion;
- (void)_startSilentEscrowRecordRepairIfNecessaryWithAccount:(id)account completion:(id)completion;
- (void)flowItemDone:(id)done nextItemClass:(Class)class;
- (void)performExtendedInitializationWithCompletion:(id)completion;
@end

@implementation BuddyAppleIDFlow

- (BOOL)controllerNeedsToRun
{
  selfCopy = self;
  location[1] = a2;
  capabilities = [(BuddyAppleIDFlow *)self capabilities];
  v3 = [(BYCapabilities *)capabilities canShowAppleIDScreen]^ 1;

  if (v3)
  {
    location[0] = _BYLoggingFacility();
    v41 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = location[0];
      v5 = v41;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v4, v5, "Skipping Apple ID Setup because changing accounts is restricted", buf, 2u);
    }

    objc_storeStrong(location, 0);
    return 0;
  }

  else
  {
    networkProvider = [(BuddyAppleIDFlow *)selfCopy networkProvider];
    v38 = 0;
    userSkippedWiFi = 0;
    if (![(BuddyNetworkProvider *)networkProvider networkReachable])
    {
      miscState = [(BuddyAppleIDFlow *)selfCopy miscState];
      v38 = 1;
      userSkippedWiFi = [(BuddyMiscState *)miscState userSkippedWiFi];
    }

    if (v38)
    {
    }

    if (userSkippedWiFi)
    {
      v37 = _BYLoggingFacility();
      v36 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v37;
        v9 = v36;
        sub_10006AA68(v35);
        _os_log_impl(&_mh_execute_header, v8, v9, "Skipping Apple ID Setup because the network is not reachable and the user skipped Wi-Fi", v35, 2u);
      }

      objc_storeStrong(&v37, 0);
      return 0;
    }

    else
    {
      v10 = +[BuddyAppleIDConfigurationManager sharedManager];
      v11 = [v10 isServiceEnabled] ^ 1;

      if (v11)
      {
        oslog = _BYLoggingFacility();
        v33 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v12 = oslog;
          v13 = v33;
          sub_10006AA68(v32);
          _os_log_impl(&_mh_execute_header, v12, v13, "Skipping Apple ID Setup because the service not enabled", v32, 2u);
        }

        objc_storeStrong(&oslog, 0);
        return 0;
      }

      else
      {
        featureFlags = [(BuddyAppleIDFlow *)selfCopy featureFlags];
        v30 = 0;
        v28 = 0;
        v26 = 0;
        v24 = 0;
        v22 = 0;
        v15 = 0;
        if (([(BuddyFeatureFlags *)featureFlags isAgeAttestationPhase1Enabled]& 1) != 0)
        {
          v31 = +[BuddyAccountTools sharedBuddyAccountTools];
          v30 = 1;
          v29 = +[BuddyAccountTools sharedBuddyAccountTools];
          v28 = 1;
          protoAccount = [v29 protoAccount];
          v26 = 1;
          v25 = [v31 ageRangeForAccount:?];
          v24 = 1;
          v15 = 0;
          if ([v25 isChild])
          {
            setupMethod = [(BuddyAppleIDFlow *)selfCopy setupMethod];
            v22 = 1;
            v15 = [setupMethod intendedDataTransferMethod] == 0;
          }
        }

        if (v22)
        {
        }

        if (v24)
        {
        }

        if (v26)
        {
        }

        if (v28)
        {
        }

        if (v30)
        {
        }

        if (v15)
        {
          v21 = _BYLoggingFacility();
          v20 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v16 = v21;
            v17 = v20;
            sub_10006AA68(v19);
            _os_log_impl(&_mh_execute_header, v16, v17, "Skipping Apple ID Setup because child proto account is not transferring data.", v19, 2u);
          }

          objc_storeStrong(&v21, 0);
          return 0;
        }

        else
        {
          return 1;
        }
      }
    }
  }
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  if (location[0])
  {
    v3 = +[ACAccountStore defaultStore];
    aa_primaryAppleAccount = [v3 aa_primaryAppleAccount];
    aa_isManagedAppleID = [aa_primaryAppleAccount aa_isManagedAppleID];

    if (aa_isManagedAppleID)
    {
      (*(location[0] + 2))(location[0], 0);
      v17 = 1;
    }

    else
    {
      v6 = +[BuddyAccountTools sharedBuddyAccountTools];
      primaryAccount = [v6 primaryAccount];

      v7 = selfCopy;
      v8 = _NSConcreteStackBlock;
      v9 = -1073741824;
      v10 = 0;
      v11 = sub_1001E2128;
      v12 = &unk_10032EC20;
      v13 = selfCopy;
      v14 = primaryAccount;
      v15 = location[0];
      [(BuddyAppleIDFlow *)v7 _fetchRequiresTermsAcceptanceForAccount:primaryAccount completion:&v8];
      objc_storeStrong(&v15, 0);
      objc_storeStrong(&v14, 0);
      objc_storeStrong(&v13, 0);
      objc_storeStrong(&primaryAccount, 0);
      v17 = 0;
    }
  }

  else
  {
    v17 = 1;
  }

  objc_storeStrong(location, 0);
}

- (id)firstItem
{
  selfCopy = self;
  v46 = a2;
  miscState = [(BuddyAppleIDFlow *)self miscState];
  migrationManager = [(BuddyMiscState *)miscState migrationManager];
  willMigrate = [(BuddyTargetDeviceMigrationManager *)migrationManager willMigrate];

  v45 = willMigrate & 1;
  location = 0;
  accountToRepair = [(BuddyAppleIDFlow *)selfCopy accountToRepair];
  performAuthKitRepair = 0;
  if (accountToRepair)
  {
    v7 = accountToRepair;
    performAuthKitRepair = [(BuddyAppleIDFlow *)selfCopy performAuthKitRepair];
    accountToRepair = v7;
  }

  if (performAuthKitRepair)
  {
    oslog = _BYLoggingFacility();
    v42 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = oslog;
      v9 = v42;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v8, v9, "Apple ID needs AuthKit repair.", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v10 = objc_alloc_init(BuddyAppleIDRepairController);
    v11 = location;
    location = v10;
  }

  else
  {
    accountToRepair2 = [(BuddyAppleIDFlow *)selfCopy accountToRepair];

    if (accountToRepair2)
    {
      v40 = _BYLoggingFacility();
      v39 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v40;
        v14 = v39;
        sub_10006AA68(v38);
        _os_log_impl(&_mh_execute_header, v13, v14, "Apple ID needs repair.", v38, 2u);
      }

      objc_storeStrong(&v40, 0);
      v15 = [BuddyAppleIDHostController alloc];
      accountToRepair3 = [(BuddyAppleIDFlow *)selfCopy accountToRepair];
      v17 = [(BuddyAppleIDHostController *)v15 initWithAccount:accountToRepair3];
      v18 = location;
      location = v17;
    }

    else
    {
      accountForSecurityUpgrade = [(BuddyAppleIDFlow *)selfCopy accountForSecurityUpgrade];

      if (accountForSecurityUpgrade)
      {
        v37 = _BYLoggingFacility();
        v36 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v37;
          v21 = v36;
          sub_10006AA68(v35);
          _os_log_impl(&_mh_execute_header, v20, v21, "Apple ID needs security upgrade.", v35, 2u);
        }

        objc_storeStrong(&v37, 0);
        v22 = [BuddyAppleIDHostController alloc];
        accountForSecurityUpgrade2 = [(BuddyAppleIDFlow *)selfCopy accountForSecurityUpgrade];
        v24 = [(BuddyAppleIDHostController *)v22 initWithAccount:accountForSecurityUpgrade2 mode:2];
        v25 = location;
        location = v24;
      }

      else if ((v45 & 1) == 0)
      {
        obj = [[BuddyAppleIDHostController alloc] initWithAccount:0];
        existingAccountUsername = [(BuddyAppleIDFlow *)selfCopy existingAccountUsername];
        v27 = [(NSString *)existingAccountUsername length];

        if (v27)
        {
          existingAccountUsername2 = [(BuddyAppleIDFlow *)selfCopy existingAccountUsername];
          [obj setExistingAccountUsername:existingAccountUsername2 accountType:{-[BuddyAppleIDFlow existingAccountType](selfCopy, "existingAccountType")}];
        }

        objc_storeStrong(&location, obj);
        objc_storeStrong(&obj, 0);
      }
    }
  }

  [(BuddyAppleIDFlow *)selfCopy configureFlowItem:location];
  v32 = 0;
  v29 = 0;
  if (location)
  {
    starter = [(BuddyAppleIDFlow *)selfCopy starter];
    v32 = 1;
    v29 = [starter controllerNeedsToRunForClass:objc_opt_class()];
  }

  if (v32)
  {
  }

  if (v29)
  {
    v48 = location;
  }

  else
  {
    v48 = 0;
  }

  objc_storeStrong(&location, 0);
  v30 = v48;

  return v30;
}

- (void)flowItemDone:(id)done nextItemClass:(Class)class
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, done);
  classCopy = class;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  ranSilentUpdateProperties = 0;
  if (isKindOfClass)
  {
    ranSilentUpdateProperties = [location[0] ranSilentUpdateProperties];
  }

  v16 = ranSilentUpdateProperties & 1;
  if (classCopy || (v16 & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = selfCopy;
      v11 = location[0];
      v12 = objc_opt_class();
      v14.receiver = v10;
      v14.super_class = BuddyAppleIDFlow;
      [(BuddyAppleIDFlow *)&v14 flowItemDone:v11 nextItemClass:v12];
    }

    else
    {
      v13.receiver = selfCopy;
      v13.super_class = BuddyAppleIDFlow;
      [(BuddyAppleIDFlow *)&v13 flowItemDone:location[0] nextItemClass:classCopy];
    }
  }

  else
  {
    v7 = selfCopy;
    v8 = location[0];
    v9 = objc_opt_class();
    v15.receiver = v7;
    v15.super_class = BuddyAppleIDFlow;
    [(BuddyAppleIDFlow *)&v15 flowItemDone:v8 nextItemClass:v9];
  }

  objc_storeStrong(location, 0);
}

+ (id)allowedFlowItems
{
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  return [NSArray arrayWithObjects:v5 count:3, a2, self];
}

- (void)_fetchRequiresTermsAcceptanceForAccount:(id)account completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v13 = 0;
  objc_storeStrong(&v13, completion);
  if (location[0])
  {
    aa_altDSID = [location[0] aa_altDSID];
    v6 = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_1001E3264;
    v10 = &unk_10032EC48;
    v11 = location[0];
    v12 = v13;
    [SecureBackup getAcceptedTermsForAltDSID:aa_altDSID reply:&v6];

    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v11, 0);
  }

  else if (v13)
  {
    (*(v13 + 2))(v13, 0);
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)_startSilentEscrowRecordRepairIfNecessaryWithAccount:(id)account completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v28 = 0;
  objc_storeStrong(&v28, completion);
  v5 = +[CDPAccount sharedInstance];
  v6 = [(CDPAccount *)v5 primaryAccountNeedsEscrowRecordRepair]^ 1;

  if (v6)
  {
    oslog = _BYLoggingFacility();
    v26 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = oslog;
      v8 = v26;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v7, v8, "Skipping silent escrow record repair because it is not necessary", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    if (v28)
    {
      (*(v28 + 2))();
    }

    v24 = 1;
  }

  else
  {
    aa_altDSID = [location[0] aa_altDSID];
    v23 = [CDPContext contextForAccountWithAltDSID:aa_altDSID];

    [v23 set_useSecureBackupCachedPassphrase:1];
    [v23 set_disableAsyncSecureBackupEnrollment:1];
    if (v23)
    {
      v22 = _BYLoggingFacility();
      v21 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        altDSID = [v23 altDSID];
        sub_10006AE18(v31, altDSID);
        _os_log_impl(&_mh_execute_header, v22, v21, "Attempting to start silent escrow record repair for account with altDSID (%@)", v31, 0xCu);
      }

      objc_storeStrong(&v22, 0);
      v11 = [CDPStateController alloc];
      v20 = [v11 initWithContext:v23];
      v13 = _NSConcreteStackBlock;
      v14 = -1073741824;
      v15 = 0;
      v16 = sub_1001E3854;
      v17 = &unk_10032DEC8;
      v18 = v23;
      v19 = v28;
      [v20 startSilentEscrowRecordRepairWithCompletion:&v13];
      objc_storeStrong(&v19, 0);
      objc_storeStrong(&v18, 0);
      objc_storeStrong(&v20, 0);
    }

    else
    {
      v12 = _BYLoggingFacility();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        sub_10006AE18(v30, location[0]);
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "CDPContext could not be created for account: %@", v30, 0xCu);
      }

      objc_storeStrong(&v12, 0);
      if (v28)
      {
        (*(v28 + 2))();
      }
    }

    objc_storeStrong(&v23, 0);
    v24 = 0;
  }

  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

- (void)_determineAccountToRepair:(id)repair
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, repair);
  v3 = +[BuddyAccountTools sharedBuddyAccountTools];
  primaryAccount = [v3 primaryAccount];

  if (primaryAccount)
  {
    aa_repairState = [primaryAccount aa_repairState];
    unsignedIntegerValue = [aa_repairState unsignedIntegerValue];

    if (unsignedIntegerValue == 1)
    {
      if ([(BuddyAppleIDFlow *)selfCopy requiresTermsAcceptanceForPrimaryAccount])
      {
        v12 = _BYLoggingFacility();
        v11 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v8 = v12;
          v9 = v11;
          sub_10006AA68(v10);
          _os_log_impl(&_mh_execute_header, v8, v9, "Primary Apple Account needs terms acceptance", v10, 2u);
        }

        objc_storeStrong(&v12, 0);
        (*(location[0] + 2))(location[0], primaryAccount, 0);
      }
    }

    else
    {
      oslog = _BYLoggingFacility();
      v14 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v6 = oslog;
        v7 = v14;
        sub_10006AA68(buf);
        _os_log_impl(&_mh_execute_header, v6, v7, "Primary Apple Account needs repair and will be used for update", buf, 2u);
      }

      objc_storeStrong(&oslog, 0);
      (*(location[0] + 2))(location[0], primaryAccount, 1);
    }
  }

  else
  {
    (*(location[0] + 2))(location[0], 0, 0);
  }

  objc_storeStrong(&primaryAccount, 0);
  objc_storeStrong(location, 0);
}

- (id)_accountToUpdate
{
  v2 = [AKAccountManager sharedInstance:a2];
  accountEligibleForUpdate = [(AKAccountManager *)v2 accountEligibleForUpdate];

  return accountEligibleForUpdate;
}

@end