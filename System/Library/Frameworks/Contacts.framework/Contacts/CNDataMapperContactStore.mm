@interface CNDataMapperContactStore
+ (BOOL)hasEnvironmentSettingsEnabledContactsOutOfProcess;
+ (Class)dataMapperClassForConfiguration:(id)a3;
- (BOOL)_requestDataMapperAccessType:(unint64_t)a3 error:(id *)a4;
- (BOOL)analyzeDatabaseWithError:(id *)a3;
- (BOOL)enumerateContactsAndMatchInfoWithFetchRequest:(id)a3 error:(id *)a4 usingBlock:(id)a5;
- (BOOL)executeChangeHistoryClearRequest:(id)a3 error:(id *)a4;
- (BOOL)executeSaveRequest:(id)a3 response:(id *)a4 authorizationContext:(id)a5 error:(id *)a6;
- (BOOL)hasGroups;
- (BOOL)hasMultipleGroupsOrAccounts;
- (BOOL)isValidSaveRequest:(id)a3 authorizationContext:(id)a4 error:(id *)a5;
- (BOOL)moveContacts:(id)a3 fromContainer:(id)a4 toContainer:(id)a5 error:(id *)a6;
- (BOOL)registerChangeHistoryClientIdentifier:(id)a3 forContainerIdentifier:(id)a4 error:(id *)a5;
- (BOOL)resetSortDataIfNeededWithError:(id *)a3;
- (BOOL)setBestMeIfNeededForGivenName:(id)a3 familyName:(id)a4 email:(id)a5 error:(id *)a6;
- (BOOL)setDefaultAccountIdentifier:(id)a3 error:(id *)a4;
- (BOOL)setMeContact:(id)a3 error:(id *)a4;
- (BOOL)setMeContact:(id)a3 forContainer:(id)a4 error:(id *)a5;
- (BOOL)shouldAnalyzeDatabaseWithError:(id *)a3;
- (BOOL)supportsMatchingDictionaries;
- (BOOL)unregisterChangeHistoryClientIdentifier:(id)a3 forContainerIdentifier:(id)a4 error:(id *)a5;
- (CNDataMapperContactStore)init;
- (CNDataMapperContactStore)initWithConfiguration:(id)a3;
- (CNDataMapperContactStore)initWithDataMapper:(id)a3 dataMapperConfiguration:(id)a4;
- (CNDataMapperContactStore)initWithEnvironment:(id)a3 managedConfiguration:(id)a4;
- (id)accountsMatchingPredicate:(id)a3 error:(id *)a4;
- (id)changeHistoryWithFetchRequest:(id)a3 error:(id *)a4;
- (id)contactCountForFetchRequest:(id)a3 error:(id *)a4;
- (id)contactIdentifierWithMatchingDictionary:(id)a3;
- (id)contactWithUserActivityUserInfo:(id)a3 keysToFetch:(id)a4;
- (id)contactsForFetchRequest:(id)a3 matchInfos:(id *)a4 error:(id *)a5;
- (id)containersMatchingPredicate:(id)a3 error:(id *)a4;
- (id)currentHistoryAnchor;
- (id)currentHistoryToken;
- (id)defaultContainerIdentifier;
- (id)description;
- (id)descriptorForRequiredKeysForMatchingDictionary;
- (id)executeFetchRequest:(id)a3 progressiveResults:(id)a4 completion:(id)a5;
- (id)fetchLimitedAccessContactIdentifiersForBundle:(id)a3;
- (id)getBackgroundColorOnImageData:(id)a3 bitmapFormat:(id)a4 error:(id *)a5;
- (id)getLimitedAccessContactsCountForBundle:(id)a3;
- (id)getLimitedAccessLastSyncSequenceNumber:(id *)a3;
- (id)getWatchLimitedAccessSyncDataStartingAtSequenceNumber:(int64_t)a3;
- (id)groupWithIdentifier:(id)a3 error:(id *)a4;
- (id)groupsMatchingPredicate:(id)a3 error:(id *)a4;
- (id)iOSMapper;
- (id)identifierWithError:(id *)a3;
- (id)legacyTetheredSyncComputerAnchor;
- (id)legacyTetheredSyncDeviceAnchor;
- (id)matchingDictionaryForContact:(id)a3;
- (id)meContactIdentifiers:(id *)a3;
- (id)membersOfGroupWithIdentifier:(id)a3 keysToFetch:(id)a4 error:(id *)a5;
- (id)policyWithDescription:(id)a3 error:(id *)a4;
- (id)populateSyncTableForLimitedAccessAboveSequenceNumber:(id)a3;
- (id)requestAccessForEntityType:(int64_t)a3;
- (id)sectionListOffsetsForSortOrder:(int64_t)a3 error:(id *)a4;
- (id)serverSearchContainersMatchingPredicate:(id)a3 error:(id *)a4;
- (id)subgroupsOfGroupWithIdentifier:(id)a3 error:(id *)a4;
- (id)unifiedContactCountWithError:(id *)a3;
- (id)unifiedContactsMatchingPredicate:(id)a3 keysToFetch:(id)a4 error:(id *)a5;
- (id)usedLabelsForPropertyWithKey:(id)a3 error:(id *)a4;
- (id)userActivityUserInfoForContact:(id)a3;
- (int)saveSequenceCount;
- (void)_logContactsAccessWasDeniedForAccessType:(unint64_t)a3 error:(id)a4;
- (void)_logContactsAccessWasGrantedForAccessType:(unint64_t)a3;
- (void)_logGreenTeaForAccessType:(unint64_t)a3;
- (void)_logPrivacyAccountingForAccessType:(unint64_t)a3;
- (void)addLimitedAccessForBundle:(id)a3 contactIdentifier:(id)a4;
- (void)addLimitedAccessForBundle:(id)a3 contactIdentifiers:(id)a4;
- (void)applyLimitedAccessSyncEvents:(id)a3;
- (void)dropAllLimitedAccessRows;
- (void)dropAllLimitedAccessRowsAndSyncNotify;
- (void)purgeLimitedAccessRecordsForBundle:(id)a3;
- (void)removeLimitedAccessForBundle:(id)a3 contactIdentifier:(id)a4;
- (void)removeLimitedAccessForBundle:(id)a3 contactIdentifiers:(id)a4;
- (void)requestReadAccessForEntityType:(int64_t)a3 completionHandler:(id)a4;
- (void)setLegacyTetheredSyncComputerAnchor:(id)a3;
- (void)setLegacyTetheredSyncDeviceAnchor:(id)a3;
- (void)setLimitedAccessTableCurrentSequenceNumber:(id)a3;
- (void)updateLimitedAccessTable:(id)a3;
@end

@implementation CNDataMapperContactStore

void __77__CNDataMapperContactStore_hasEnvironmentSettingsEnabledContactsOutOfProcess__block_invoke_2()
{
  v0 = MEMORY[0x1E696AD98];
  v4 = [MEMORY[0x1E69966E8] currentEnvironment];
  v1 = [v4 entitlementVerifier];
  v2 = [v0 numberWithBool:{objc_msgSend(v1, "currentProcessHasBooleanEntitlement:error:", *MEMORY[0x1E69964D8], 0)}];
  v3 = _block_invoke_cn_once_object_0;
  _block_invoke_cn_once_object_0 = v2;
}

+ (BOOL)hasEnvironmentSettingsEnabledContactsOutOfProcess
{
  v2 = [MEMORY[0x1E6996888] standardPreferences];
  v3 = [v2 objectForKey:@"SUDO_OOP"];
  v4 = v3;
  if (!v3)
  {
    if (([v2 userHasOptedOutOfPreference:@"TESTING_OUT_OF_PROCESS"] & 1) == 0)
    {
      if (_block_invoke_cn_once_token_0 != -1)
      {
        +[CNDataMapperContactStore hasEnvironmentSettingsEnabledContactsOutOfProcess];
      }

      if (![_block_invoke_cn_once_object_0 BOOLValue])
      {
        v5 = 1;
        goto LABEL_10;
      }
    }

    if (_block_invoke_2_cn_once_token_1 != -1)
    {
      +[CNDataMapperContactStore hasEnvironmentSettingsEnabledContactsOutOfProcess];
    }

    v3 = _block_invoke_2_cn_once_object_1;
  }

  v5 = [v3 BOOLValue];
LABEL_10:

  return v5;
}

void __77__CNDataMapperContactStore_hasEnvironmentSettingsEnabledContactsOutOfProcess__block_invoke_4()
{
  v0 = MEMORY[0x1E696AD98];
  v4 = [MEMORY[0x1E69966E8] currentEnvironment];
  v1 = [v4 entitlementVerifier];
  v2 = [v0 numberWithBool:{objc_msgSend(v1, "currentProcessHasBooleanEntitlement:error:", *MEMORY[0x1E69964D0], 0)}];
  v3 = _block_invoke_2_cn_once_object_1;
  _block_invoke_2_cn_once_object_1 = v2;
}

- (id)currentHistoryToken
{
  v3 = [(CNDataMapperContactStore *)self mapper];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) != 0 && [(CNDataMapperContactStore *)self requestMetadataAccessWithError:0])
  {
    v5 = [(CNDataMapperContactStore *)self mapper];
    v6 = [v5 currentHistoryToken];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)currentHistoryAnchor
{
  v3 = [(CNDataMapperContactStore *)self mapper];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v12 = 0;
    v5 = [(CNDataMapperContactStore *)self requestMetadataAccessWithError:&v12];
    v6 = v12;
    if (v5)
    {
      v7 = [(CNDataMapperContactStore *)self mapper];
      v8 = [v7 currentHistoryAnchor];

      goto LABEL_7;
    }

    v10 = MEMORY[0x1E6996810];
  }

  else
  {
    v9 = MEMORY[0x1E6996810];
    v6 = [CNErrorFactory errorWithCode:1005];
    v10 = v9;
  }

  v8 = [v10 failureWithError:v6];
LABEL_7:

  return v8;
}

- (id)iOSMapper
{
  objc_opt_class();
  v3 = [(CNDataMapperContactStore *)self mapper];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

+ (Class)dataMapperClassForConfiguration:(id)a3
{
  v4 = a3;
  if ([v4 useOutOfProcessMapperExclusively] || !objc_msgSend(v4, "useInProcessMapperExclusively") && objc_msgSend(a1, "hasEnvironmentSettingsEnabledContactsOutOfProcess"))
  {
    v5 = objc_opt_class();
  }

  else
  {
    v5 = +[CN defaultDataMapperClass];
  }

  v6 = v5;

  return v6;
}

- (CNDataMapperContactStore)init
{
  v3 = +[CNContactsEnvironment currentEnvironment];
  v4 = [(CNDataMapperContactStore *)self initWithEnvironment:v3];

  return v4;
}

- (CNDataMapperContactStore)initWithEnvironment:(id)a3 managedConfiguration:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(CNContactStoreConfiguration);
  [(CNContactStoreConfiguration *)v8 setEnvironment:v7];

  [(CNContactStoreConfiguration *)v8 setManagedConfiguration:v6];
  v9 = [(CNDataMapperContactStore *)self initWithConfiguration:v8];

  return v9;
}

- (CNDataMapperContactStore)initWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [[CNDataMapperConfiguration alloc] initWithContactStoreConfiguration:v4];
  v6 = [objc_opt_class() dataMapperClassForConfiguration:v4];

  v7 = [[v6 alloc] initWithConfiguration:v5];
  v8 = [(CNDataMapperContactStore *)self initWithDataMapper:v7 dataMapperConfiguration:v5];

  return v8;
}

- (CNDataMapperContactStore)initWithDataMapper:(id)a3 dataMapperConfiguration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v29.receiver = self;
  v29.super_class = CNDataMapperContactStore;
  v9 = [(CNContactStore *)&v29 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_11;
  }

  objc_storeStrong(&v9->_mapper, a3);
  v11 = [v8 environment];
  v12 = [v11 loggerProvider];
  v13 = [v12 contactsLogger];
  logger = v10->_logger;
  v10->_logger = v13;

  v10->_isContactProvider = [v8 isContactProvider];
  v15 = objc_alloc(MEMORY[0x1E6996800]);
  v16 = [v8 assumedIdentity];
  v17 = [v15 initWithAuditToken:0 assumedIdentity:v16];
  regulatoryLogger = v10->_regulatoryLogger;
  v10->_regulatoryLogger = v17;

  v10->_shouldLogPrivacyAccountingAccessEvents = 1;
  v19 = [(CNDataMapperContactStore *)v10 mapper];
  LOBYTE(v16) = objc_opt_respondsToSelector();

  if (v16)
  {
    v20 = [(CNDataMapperContactStore *)v10 mapper];
    v10->_shouldLogPrivacyAccountingAccessEvents = [v20 shouldLogPrivacyAccountingAccessEvents];
  }

  v21 = [(CNDataMapperContactStore *)v10 mapper];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_7;
  }

  v22 = [(CNDataMapperContactStore *)v10 mapper];
  v23 = [v22 shouldCaptureMetricsForQueries];

  if (v23)
  {
    v24 = [CNQueryAnalyticsLogger alloc];
    v21 = [v8 assumedIdentity];
    v25 = [(CNQueryAnalyticsLogger *)v24 initWithAuditToken:0 assumedIdentity:v21];
    queryAnalyticsLogger = v10->_queryAnalyticsLogger;
    v10->_queryAnalyticsLogger = v25;

LABEL_7:
  }

  if (objc_opt_respondsToSelector())
  {
    [(CNDataMapper *)v10->_mapper setNotificationSource:v10];
  }

  v27 = v10;
LABEL_11:

  return v10;
}

- (BOOL)setDefaultAccountIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__19;
  v23 = __Block_byref_object_dispose__19;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v7 = [(CNDataMapperContactStore *)self logger];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__CNDataMapperContactStore_setDefaultAccountIdentifier_error___block_invoke;
  v11[3] = &unk_1E7415508;
  v11[4] = self;
  v13 = &v19;
  v14 = &v15;
  v8 = v6;
  v12 = v8;
  [v7 settingDefaultAccount:v11];

  v9 = *(v16 + 24);
  if (a4 && (v16[3] & 1) == 0)
  {
    *a4 = v20[5];
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __62__CNDataMapperContactStore_setDefaultAccountIdentifier_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapper];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 48) + 8);
    obj = *(v5 + 40);
    v6 = [v4 requestMetadataAccessWithError:&obj];
    objc_storeStrong((v5 + 40), obj);
    if (v6)
    {
      v7 = [*(a1 + 32) mapper];
      v8 = *(a1 + 40);
      v9 = *(*(a1 + 48) + 8);
      v15 = *(v9 + 40);
      v10 = [v7 setDefaultAccountIdentifier:v8 error:&v15];
      objc_storeStrong((v9 + 40), v15);
      *(*(*(a1 + 56) + 8) + 24) = v10;
    }
  }

  else
  {
    v14 = [*(a1 + 32) mapper];
    v11 = [CNErrorFactory errorObject:v14 doesNotImplementSelector:sel_setDefaultAccountIdentifier_error_];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

- (BOOL)resetSortDataIfNeededWithError:(id *)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__19;
  v17 = __Block_byref_object_dispose__19;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = [(CNDataMapperContactStore *)self logger];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__CNDataMapperContactStore_resetSortDataIfNeededWithError___block_invoke;
  v8[3] = &unk_1E7415530;
  v8[4] = self;
  v8[5] = &v13;
  v8[6] = &v9;
  [v5 resettingSortDataIfNeeded:v8];

  if (a3)
  {
    *a3 = v14[5];
  }

  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);

  return v6;
}

void __59__CNDataMapperContactStore_resetSortDataIfNeededWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapper];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 40) + 8);
    obj = *(v5 + 40);
    v6 = [v4 requestContactsWriteAccessWithError:&obj];
    objc_storeStrong((v5 + 40), obj);
    if (v6)
    {
      v7 = [*(a1 + 32) mapper];
      v8 = *(*(a1 + 40) + 8);
      v14 = *(v8 + 40);
      v9 = [v7 resetSortDataIfNeededWithError:&v14];
      objc_storeStrong((v8 + 40), v14);
      *(*(*(a1 + 48) + 8) + 24) = v9;
    }
  }

  else
  {
    v13 = [*(a1 + 32) mapper];
    v10 = [CNErrorFactory errorObject:v13 doesNotImplementSelector:sel_resetSortDataIfNeededWithError_];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [(CNDataMapperContactStore *)self mapper];
  v5 = [v3 appendName:@"mapper" object:v4];

  v6 = [v3 build];

  return v6;
}

- (id)identifierWithError:(id *)a3
{
  if ([(CNDataMapperContactStore *)self requestMetadataAccessWithError:?]&& ([(CNDataMapperContactStore *)self mapper], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) != 0))
  {
    v7 = [(CNDataMapperContactStore *)self mapper];
    v8 = [v7 identifierWithError:a3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int)saveSequenceCount
{
  v3 = [(CNDataMapperContactStore *)self mapper];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0 || ![(CNDataMapperContactStore *)self requestMetadataAccessWithError:0])
  {
    return -1;
  }

  v5 = [(CNDataMapperContactStore *)self mapper];
  v6 = [v5 saveSequenceCount];

  return v6;
}

- (id)meContactIdentifiers:(id *)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__19;
  v15 = __Block_byref_object_dispose__19;
  v16 = 0;
  v5 = [(CNDataMapperContactStore *)self logger];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__CNDataMapperContactStore_meContactIdentifiers___block_invoke;
  v10[3] = &unk_1E7415558;
  v10[4] = self;
  v10[5] = &v11;
  [v5 fetchingMeContactIdentifier:v10];

  v6 = v12[5];
  if ((*(*MEMORY[0x1E6996490] + 16))())
  {
    v7 = [v6 left];
  }

  else
  {
    v8 = [v6 right];
    if (a3)
    {
      v8 = v8;
      *a3 = v8;
    }

    v7 = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v7;
}

void __49__CNDataMapperContactStore_meContactIdentifiers___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v14 = 0;
  v3 = [v2 requestContactsReadAccessWithError:&v14];
  v4 = v14;
  if (v3)
  {
    v5 = [*(a1 + 32) mapper];
    v13 = v4;
    v6 = [v5 meContactIdentifiers:&v13];
    v7 = v13;

    v8 = [MEMORY[0x1E69966C0] eitherWithLeft:v6 right:v7];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v4 = v7;
  }

  else
  {
    v11 = [MEMORY[0x1E69966C0] eitherWithRight:v4];
    v12 = *(*(a1 + 40) + 8);
    v5 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

- (BOOL)setMeContact:(id)a3 error:(id *)a4
{
  v6 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__19;
  v19 = __Block_byref_object_dispose__19;
  v20 = 0;
  v7 = [(CNDataMapperContactStore *)self logger];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__CNDataMapperContactStore_setMeContact_error___block_invoke;
  v11[3] = &unk_1E7415508;
  v11[4] = self;
  v13 = &v15;
  v14 = &v21;
  v8 = v6;
  v12 = v8;
  [v7 changingMeContact:v11];

  v9 = *(v22 + 24);
  if (a4 && (v22[3] & 1) == 0)
  {
    *a4 = v16[5];
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

void __47__CNDataMapperContactStore_setMeContact_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapper];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 48) + 8);
    obj = *(v5 + 40);
    v6 = [v4 requestContactsWriteAccessWithError:&obj];
    objc_storeStrong((v5 + 40), obj);
    if (v6)
    {
      v7 = [*(a1 + 32) mapper];
      v8 = *(a1 + 40);
      v9 = *(*(a1 + 48) + 8);
      v17 = *(v9 + 40);
      v10 = [v7 setMeContact:v8 error:&v17];
      objc_storeStrong((v9 + 40), v17);
      *(*(*(a1 + 56) + 8) + 24) = v10;

      v11 = +[CNChangesNotifier sharedNotifier];
      [v11 didChangeMeContactSuccessfully:*(*(*(a1 + 56) + 8) + 24) fromContactStore:*(a1 + 32) requestIdentifier:0];

      if (*(*(*(a1 + 56) + 8) + 24) == 1)
      {
        v12 = [*(a1 + 32) logger];
        [v12 changedMeContact:*(a1 + 40)];
      }
    }
  }

  else
  {
    v16 = [*(a1 + 32) mapper];
    v13 = [CNErrorFactory errorObject:v16 doesNotImplementSelector:sel_setMeContact_error_];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }
}

- (BOOL)setMeContact:(id)a3 forContainer:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__19;
  v24 = __Block_byref_object_dispose__19;
  v25 = 0;
  v10 = [(CNDataMapperContactStore *)self logger];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60__CNDataMapperContactStore_setMeContact_forContainer_error___block_invoke;
  v15[3] = &unk_1E7415580;
  v15[4] = self;
  v18 = &v20;
  v19 = &v26;
  v11 = v8;
  v16 = v11;
  v12 = v9;
  v17 = v12;
  [v10 changingMeContact:v15];

  v13 = *(v27 + 24);
  if (a5 && (v27[3] & 1) == 0)
  {
    *a5 = v21[5];
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

void __60__CNDataMapperContactStore_setMeContact_forContainer_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapper];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 56) + 8);
    obj = *(v5 + 40);
    v6 = [v4 requestContactsWriteAccessWithError:&obj];
    objc_storeStrong((v5 + 40), obj);
    if (v6)
    {
      v7 = [*(a1 + 32) mapper];
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = *(*(a1 + 56) + 8);
      v18 = *(v10 + 40);
      v11 = [v7 setMeContact:v8 forContainer:v9 error:&v18];
      objc_storeStrong((v10 + 40), v18);
      *(*(*(a1 + 64) + 8) + 24) = v11;

      v12 = +[CNChangesNotifier sharedNotifier];
      [v12 didChangeMeContactSuccessfully:*(*(*(a1 + 64) + 8) + 24) fromContactStore:*(a1 + 32) requestIdentifier:0];

      if (*(*(*(a1 + 64) + 8) + 24) == 1)
      {
        v13 = [*(a1 + 32) logger];
        [v13 changedMeContact:*(a1 + 40)];
      }
    }
  }

  else
  {
    v17 = [*(a1 + 32) mapper];
    v14 = [CNErrorFactory errorObject:v17 doesNotImplementSelector:sel_setMeContact_forContainer_error_];
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }
}

- (BOOL)setBestMeIfNeededForGivenName:(id)a3 familyName:(id)a4 email:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__19;
  v29 = __Block_byref_object_dispose__19;
  v30 = 0;
  v13 = [(CNDataMapperContactStore *)self logger];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __81__CNDataMapperContactStore_setBestMeIfNeededForGivenName_familyName_email_error___block_invoke;
  v19[3] = &unk_1E74155A8;
  v19[4] = self;
  v23 = &v25;
  v24 = &v31;
  v14 = v10;
  v20 = v14;
  v15 = v11;
  v21 = v15;
  v16 = v12;
  v22 = v16;
  [v13 changingMeContact:v19];

  v17 = *(v32 + 24);
  if (a6 && (v32[3] & 1) == 0)
  {
    *a6 = v26[5];
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v17;
}

void __81__CNDataMapperContactStore_setBestMeIfNeededForGivenName_familyName_email_error___block_invoke(uint64_t a1)
{
  v18[4] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 64) + 8);
  obj = *(v3 + 40);
  v4 = [v2 requestContactsWriteAccessWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = [*(a1 + 32) mapper];
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(*(a1 + 64) + 8);
    v16 = *(v9 + 40);
    v10 = [v5 setBestMeIfNeededForGivenName:v6 familyName:v7 email:v8 error:&v16];
    objc_storeStrong((v9 + 40), v16);
    *(*(*(a1 + 72) + 8) + 24) = v10;

    v11 = +[CNChangesNotifier sharedNotifier];
    [v11 didChangeMeContactSuccessfully:*(*(*(a1 + 72) + 8) + 24) fromContactStore:*(a1 + 32) requestIdentifier:0];

    if (*(*(*(a1 + 72) + 8) + 24) == 1)
    {
      v12 = *(a1 + 32);
      v18[0] = @"givenName";
      v18[1] = @"familyName";
      v18[2] = @"emailAddresses";
      v18[3] = @"phoneNumbers";
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:4];
      v14 = [v12 _crossPlatformUnifiedMeContactWithKeysToFetch:v13 error:0];

      v15 = [*(a1 + 32) logger];
      [v15 changedMeContact:v14];
    }
  }
}

- (id)unifiedContactCountWithError:(id *)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__19;
  v22 = __Block_byref_object_dispose__19;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__19;
  v16 = __Block_byref_object_dispose__19;
  v17 = 0;
  v5 = [(CNDataMapperContactStore *)self logger];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__CNDataMapperContactStore_unifiedContactCountWithError___block_invoke;
  v11[3] = &unk_1E7415530;
  v11[4] = self;
  v11[5] = &v12;
  v11[6] = &v18;
  [v5 fetchingContactCount:v11];

  v6 = v13[5];
  v7 = v19[5];
  v8 = v7;
  if (a3 && !v7)
  {
    v9 = v6;
    *a3 = v6;
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

void __57__CNDataMapperContactStore_unifiedContactCountWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  v4 = [v2 requestContactsReadAccessWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = [*(a1 + 32) mapper];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [*(a1 + 32) mapper];
      v8 = *(*(a1 + 40) + 8);
      v19 = *(v8 + 40);
      v9 = [(CNContactFetchRequest *)v7 unifiedContactCountWithError:&v19];
      objc_storeStrong((v8 + 40), v19);
      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }

    else
    {
      v12 = [CNContactFetchRequest alloc];
      v7 = [(CNContactFetchRequest *)v12 initWithKeysToFetch:MEMORY[0x1E695E0F0]];
      v13 = *(a1 + 32);
      v14 = *(*(a1 + 40) + 8);
      v18 = *(v14 + 40);
      v11 = [v13 contactsForFetchRequest:v7 matchInfos:0 error:&v18];
      objc_storeStrong((v14 + 40), v18);
      if (v11)
      {
        v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
        v16 = *(*(a1 + 48) + 8);
        v17 = *(v16 + 40);
        *(v16 + 40) = v15;
      }
    }
  }
}

- (id)contactCountForFetchRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 shouldFailIfAccountNotYetSynced] && !-[CNContactStore hasAccountFirstSyncCompleted](self, "hasAccountFirstSyncCompleted"))
  {
    v12 = [CNErrorFactory errorWithCode:1007];
    if (a4)
    {
      v12 = v12;
      *a4 = v12;
    }

    v10 = 0;
  }

  else
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__19;
    v28 = __Block_byref_object_dispose__19;
    v29 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__19;
    v22 = __Block_byref_object_dispose__19;
    v23 = 0;
    v7 = [(CNDataMapperContactStore *)self logger];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __62__CNDataMapperContactStore_contactCountForFetchRequest_error___block_invoke;
    v14[3] = &unk_1E7415508;
    v14[4] = self;
    v16 = &v18;
    v17 = &v24;
    v15 = v6;
    [v7 fetchingContactCount:v14];

    v8 = v19[5];
    v9 = v25[5];
    v10 = v9;
    if (a4 && !v9)
    {
      v11 = v8;
      *a4 = v8;
    }

    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v24, 8);
  }

  return v10;
}

void __62__CNDataMapperContactStore_contactCountForFetchRequest_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [v2 requestContactsReadAccessWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = [*(a1 + 32) mapper];
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 48) + 8);
    v11 = *(v7 + 40);
    v8 = [v5 contactCountForFetchRequest:v6 error:&v11];
    objc_storeStrong((v7 + 40), v11);
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

- (id)sectionListOffsetsForSortOrder:(int64_t)a3 error:(id *)a4
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__19;
  v24 = __Block_byref_object_dispose__19;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__19;
  v18 = __Block_byref_object_dispose__19;
  v19 = 0;
  v7 = [(CNDataMapperContactStore *)self logger];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__CNDataMapperContactStore_sectionListOffsetsForSortOrder_error___block_invoke;
  v13[3] = &unk_1E74155D0;
  v13[4] = self;
  v13[5] = &v14;
  v13[6] = &v20;
  v13[7] = a3;
  [v7 fetchingContactSectionCounts:v13];

  v8 = v15[5];
  v9 = v21[5];
  v10 = v9;
  if (a4 && !v9)
  {
    v11 = v8;
    *a4 = v8;
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);

  return v10;
}

void __65__CNDataMapperContactStore_sectionListOffsetsForSortOrder_error___block_invoke(uint64_t a1)
{
  v3 = a1 + 40;
  v2 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = *(v2 + 8);
  obj = *(v5 + 40);
  v6 = [v4 requestMetadataAccessWithError:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (v6)
  {
    v7 = [*(a1 + 32) mapper];
    v8 = objc_opt_respondsToSelector();

    v9 = [*(a1 + 32) mapper];
    if (v8)
    {
      v10 = *(a1 + 56);
      v11 = *(*(a1 + 40) + 8);
      v15 = *(v11 + 40);
      v12 = [v9 sectionListOffsetsForSortOrder:v10 error:&v15];
      objc_storeStrong((v11 + 40), v15);
      v3 = a1 + 48;
    }

    else
    {
      v12 = [CNErrorFactory errorObject:v9 doesNotImplementSelector:sel_sectionListOffsetsForSortOrder_error_];
    }

    v13 = *(*v3 + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

- (BOOL)moveContacts:(id)a3 fromContainer:(id)a4 toContainer:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__19;
  v33 = __Block_byref_object_dispose__19;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v13 = [(CNDataMapperContactStore *)self logger];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __73__CNDataMapperContactStore_moveContacts_fromContainer_toContainer_error___block_invoke;
  v19[3] = &unk_1E74155A8;
  v19[4] = self;
  v23 = &v29;
  v24 = &v25;
  v14 = v10;
  v20 = v14;
  v15 = v11;
  v21 = v15;
  v16 = v12;
  v22 = v16;
  [v13 fetchingContactSectionCounts:v19];

  v17 = *(v26 + 24);
  if (a6 && (v26[3] & 1) == 0)
  {
    *a6 = v30[5];
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);

  return v17;
}

void __73__CNDataMapperContactStore_moveContacts_fromContainer_toContainer_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 64) + 8);
  obj = *(v3 + 40);
  v4 = [v2 requestContactsWriteAccessWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = [*(a1 + 32) mapper];
    v6 = objc_opt_respondsToSelector();

    v7 = [*(a1 + 32) mapper];
    if (v6)
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      v11 = *(*(a1 + 64) + 8);
      v16 = *(v11 + 40);
      v12 = [v7 moveContacts:v8 fromContainer:v9 toContainer:v10 error:&v16];
      objc_storeStrong((v11 + 40), v16);
      *(*(*(a1 + 72) + 8) + 24) = v12;
    }

    else
    {
      v13 = [CNErrorFactory errorObject:v7 doesNotImplementSelector:sel_moveContacts_fromContainer_toContainer_error_];
      v14 = *(*(a1 + 64) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;
    }
  }
}

- (id)unifiedContactsMatchingPredicate:(id)a3 keysToFetch:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  [CNAPITriageLogger setThreadEntryPoint:a2];
  v11 = +[CNAPITriageLogger os_log];
  v12 = os_signpost_id_generate(v11);

  v13 = +[CNAPITriageLogger os_log];
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1954A0000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "Fetching", "", buf, 2u);
  }

  v15 = objc_alloc_init(MEMORY[0x1E6996838]);
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __79__CNDataMapperContactStore_unifiedContactsMatchingPredicate_keysToFetch_error___block_invoke;
  v50[3] = &__block_descriptor_40_e5_v8__0l;
  v50[4] = v12;
  v16 = [v50 copy];
  v17 = objc_opt_self();
  v18 = _Block_copy(v17);
  [v15 push:v18];

  if (!v9 && pthread_main_np() == 1)
  {
    v19 = [MEMORY[0x1E69C75D0] currentProcess];
    if ([v19 isApplication])
    {
      v20 = [MEMORY[0x1E696AE30] processInfo];
      v21 = [v20 environment];
      v22 = [v21 objectForKeyedSubscript:@"CN_UNIT_TESTING"];
      v23 = v22;
      if (!v22 || ![v22 length] || (objc_msgSend(v23, "_cn_caseInsensitiveIsEqual:", @"NO") & 1) != 0 || (objc_msgSend(v23, "_cn_caseInsensitiveIsEqual:", @"N") & 1) != 0 || (objc_msgSend(v23, "_cn_caseInsensitiveIsEqual:", @"FALSE") & 1) != 0 || (objc_msgSend(v23, "_cn_caseInsensitiveIsEqual:", @"F") & 1) != 0)
      {
      }

      else
      {
        v32 = [v23 isEqual:@"0"];

        if ((v32 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      if (unifiedContactsMatchingPredicate_keysToFetch_error__cn_once_token_6 != -1)
      {
        [CNDataMapperContactStore unifiedContactsMatchingPredicate:keysToFetch:error:];
      }

      v24 = unifiedContactsMatchingPredicate_keysToFetch_error__cn_once_object_6;
      if (os_log_type_enabled(unifiedContactsMatchingPredicate_keysToFetch_error__cn_once_object_6, OS_LOG_TYPE_FAULT))
      {
        [CNDataMapperContactStore unifiedContactsMatchingPredicate:v24 keysToFetch:? error:?];
      }
    }

    else
    {
    }
  }

LABEL_19:
  *buf = 0;
  v45 = buf;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__19;
  v48 = __Block_byref_object_dispose__19;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__19;
  v42 = __Block_byref_object_dispose__19;
  v43 = 0;
  v25 = [(CNDataMapperContactStore *)self logger];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __79__CNDataMapperContactStore_unifiedContactsMatchingPredicate_keysToFetch_error___block_invoke_67;
  v33[3] = &unk_1E74155F8;
  v33[4] = self;
  v36 = &v38;
  v34 = v10;
  v35 = v9;
  v37 = buf;
  [v25 fetchingContacts:v33];

  v26 = v39[5];
  v27 = *(v45 + 5);
  v28 = v27;
  if (a5 && !v27)
  {
    v29 = v26;
    *a5 = v26;
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(buf, 8);

  [v15 popAllWithHandler:&__block_literal_global_70_0];
  v30 = objc_opt_self();

  return v28;
}

void __79__CNDataMapperContactStore_unifiedContactsMatchingPredicate_keysToFetch_error___block_invoke(uint64_t a1)
{
  [CNAPITriageLogger setThreadEntryPoint:0];
  v2 = +[CNAPITriageLogger os_log];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1954A0000, v3, OS_SIGNPOST_INTERVAL_END, v4, "Fetching", "", v5, 2u);
  }
}

uint64_t __79__CNDataMapperContactStore_unifiedContactsMatchingPredicate_keysToFetch_error___block_invoke_62()
{
  v0 = os_log_create("com.apple.runtime-issues", "Contacts");
  v1 = unifiedContactsMatchingPredicate_keysToFetch_error__cn_once_object_6;
  unifiedContactsMatchingPredicate_keysToFetch_error__cn_once_object_6 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __79__CNDataMapperContactStore_unifiedContactsMatchingPredicate_keysToFetch_error___block_invoke_67(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[7] + 8);
  obj = *(v3 + 40);
  v4 = [v2 requestContactsReadAccessWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = [[CNContactFetchRequest alloc] initWithKeysToFetch:a1[5]];
    [(CNContactFetchRequest *)v5 setPredicate:a1[6]];
    v6 = [[CNAPITriageSession alloc] initWithRequest:v5];
    [(CNAPITriageSession *)v6 open];
    v7 = a1[4];
    v8 = *(a1[7] + 8);
    v12 = *(v8 + 40);
    v9 = [v7 contactsForFetchRequest:v5 matchInfos:0 error:&v12];
    objc_storeStrong((v8 + 40), v12);
    v10 = *(a1[8] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    [(CNAPITriageSession *)v6 closeWithContacts:*(*(a1[8] + 8) + 40) orError:*(*(a1[7] + 8) + 40)];
  }
}

- (BOOL)enumerateContactsAndMatchInfoWithFetchRequest:(id)a3 error:(id *)a4 usingBlock:(id)a5
{
  v9 = a3;
  v10 = a5;
  [CNAPITriageLogger setThreadEntryPoint:a2];
  v11 = +[CNAPITriageLogger os_log];
  v12 = os_signpost_id_generate(v11);

  v13 = +[CNAPITriageLogger os_log];
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1954A0000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "Fetching", "", buf, 2u);
  }

  v15 = objc_alloc_init(MEMORY[0x1E6996838]);
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __91__CNDataMapperContactStore_enumerateContactsAndMatchInfoWithFetchRequest_error_usingBlock___block_invoke;
  v43[3] = &__block_descriptor_40_e5_v8__0l;
  v43[4] = v12;
  v16 = [v43 copy];
  v17 = objc_opt_self();
  v18 = _Block_copy(v17);
  [v15 push:v18];

  v19 = [(CNDataMapperContactStore *)self queryAnalyticsLogger];
  [v19 recordQueryWithFetchRequest:v9];

  *buf = 0;
  v38 = buf;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__19;
  v41 = __Block_byref_object_dispose__19;
  v42 = 0;
  v20 = [(CNDataMapperContactStore *)self logger];
  v29 = MEMORY[0x1E69E9820];
  v30 = 3221225472;
  v31 = __91__CNDataMapperContactStore_enumerateContactsAndMatchInfoWithFetchRequest_error_usingBlock___block_invoke_71;
  v32 = &unk_1E7415698;
  v33 = self;
  v36 = buf;
  v34 = v9;
  v35 = v10;
  [v20 fetchingContacts:&v29];

  v21 = *(v38 + 5);
  v25 = (*(*MEMORY[0x1E6996490] + 16))(*MEMORY[0x1E6996490], v21, v22, v23, v24);
  if ((v25 & 1) == 0)
  {
    v26 = [v21 right];
    if (a4)
    {
      v26 = v26;
      *a4 = v26;
    }
  }

  _Block_object_dispose(buf, 8);
  [v15 popAllWithHandler:&__block_literal_global_85];
  v27 = objc_opt_self();

  return v25 & 1;
}

void __91__CNDataMapperContactStore_enumerateContactsAndMatchInfoWithFetchRequest_error_usingBlock___block_invoke(uint64_t a1)
{
  [CNAPITriageLogger setThreadEntryPoint:0];
  v2 = +[CNAPITriageLogger os_log];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1954A0000, v3, OS_SIGNPOST_INTERVAL_END, v4, "Fetching", "", v5, 2u);
  }
}

void __91__CNDataMapperContactStore_enumerateContactsAndMatchInfoWithFetchRequest_error_usingBlock___block_invoke_71(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v37 = 0;
  v5 = [v4 requestContactsReadAccessWithError:&v37];
  v6 = v37;
  if (v5)
  {
    v7 = [CNContactFetchRequestExecutor alloc];
    v8 = [*(a1 + 32) mapper];
    v9 = [(CNContactFetchRequestExecutor *)&v7->super.isa initWithDataMapper:v8];

    v10 = [(CNContactFetchRequestExecutor *)v9 observableForFetchRequest:?];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __91__CNDataMapperContactStore_enumerateContactsAndMatchInfoWithFetchRequest_error_usingBlock___block_invoke_2;
    v36[3] = &unk_1E7415620;
    v36[4] = *(a1 + 56);
    v11 = [v10 doOnError:v36];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __91__CNDataMapperContactStore_enumerateContactsAndMatchInfoWithFetchRequest_error_usingBlock___block_invoke_3;
    v35[3] = &unk_1E7412110;
    v35[4] = *(a1 + 56);
    v12 = [v11 doOnCompletion:v35];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __91__CNDataMapperContactStore_enumerateContactsAndMatchInfoWithFetchRequest_error_usingBlock___block_invoke_4;
    v34[3] = &unk_1E7412110;
    v34[4] = *(a1 + 56);
    v13 = [v12 doOnCancel:v34];

    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __91__CNDataMapperContactStore_enumerateContactsAndMatchInfoWithFetchRequest_error_usingBlock___block_invoke_5;
    v22[3] = &unk_1E7415670;
    v24 = &v26;
    v25 = &v30;
    v23 = *(a1 + 48);
    [v13 enumerateObjectsUsingBlock:v22];
    if (v31[3])
    {
      v14 = os_log_create("com.apple.contacts", "data-access-error");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __91__CNDataMapperContactStore_enumerateContactsAndMatchInfoWithFetchRequest_error_usingBlock___block_invoke_71_cold_1(v14);
      }

      v15 = MEMORY[0x1E69966C0];
      v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNErrorDomain" code:2 userInfo:0];
      v17 = [v15 eitherWithRight:v16];
      v18 = *(*(a1 + 56) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;

      [MEMORY[0x1E6996828] simulateCrashWithMessage:{@"enumerateContactsAndMatchInfoWithFetchRequest encountered NSNull %lu times where %lu CNContact objects where expcted", v31[3], v27[3]}];
    }

    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&v30, 8);
  }

  else
  {
    v20 = [MEMORY[0x1E69966C0] eitherWithRight:v6];
    v21 = *(*(a1 + 56) + 8);
    v9 = *(v21 + 40);
    *(v21 + 40) = v20;
  }
}

uint64_t __91__CNDataMapperContactStore_enumerateContactsAndMatchInfoWithFetchRequest_error_usingBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E69966C0] eitherWithRight:a2];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

uint64_t __91__CNDataMapperContactStore_enumerateContactsAndMatchInfoWithFetchRequest_error_usingBlock___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E69966C0] eitherWithBool:1 error:0];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t __91__CNDataMapperContactStore_enumerateContactsAndMatchInfoWithFetchRequest_error_usingBlock___block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x1E69966C0] eitherWithBool:1 error:0];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void __91__CNDataMapperContactStore_enumerateContactsAndMatchInfoWithFetchRequest_error_usingBlock___block_invoke_5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  *(*(*(a1 + 40) + 8) + 24) += [v6 count];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __91__CNDataMapperContactStore_enumerateContactsAndMatchInfoWithFetchRequest_error_usingBlock___block_invoke_6;
  v7[3] = &unk_1E7415648;
  v9 = *(a1 + 48);
  v8 = *(a1 + 32);
  v10 = a4;
  [v6 enumerateObjectsUsingBlock:v7];
}

void __91__CNDataMapperContactStore_enumerateContactsAndMatchInfoWithFetchRequest_error_usingBlock___block_invoke_6(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *MEMORY[0x1E6996550];
  v12 = v6;
  v8 = [v6 first];
  LOBYTE(v7) = (*(v7 + 16))(v7, v8);

  if (v7)
  {
    v9 = a1[4];
    v10 = [v12 first];
    v11 = [v12 second];
    (*(v9 + 16))(v9, v10, v11, a1[6]);

    *a4 = *a1[6];
  }

  else
  {
    ++*(*(a1[5] + 8) + 24);
  }
}

- (id)contactsForFetchRequest:(id)a3 matchInfos:(id *)a4 error:(id *)a5
{
  v9 = a3;
  [CNAPITriageLogger setThreadEntryPoint:a2];
  v10 = +[CNAPITriageLogger os_log];
  v11 = os_signpost_id_generate(v10);

  v12 = +[CNAPITriageLogger os_log];
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1954A0000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "Fetching", "", buf, 2u);
  }

  v14 = objc_alloc_init(MEMORY[0x1E6996838]);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __69__CNDataMapperContactStore_contactsForFetchRequest_matchInfos_error___block_invoke;
  v31[3] = &__block_descriptor_40_e5_v8__0l;
  v31[4] = v11;
  v15 = [v31 copy];
  v16 = objc_opt_self();
  v17 = _Block_copy(v16);
  [v14 push:v17];

  v18 = [(CNDataMapperContactStore *)self queryAnalyticsLogger];
  [v18 recordQueryWithFetchRequest:v9];

  v19 = [CNContactFetchRequestExecutor alloc];
  v20 = [(CNDataMapperContactStore *)self mapper];
  v21 = [(CNContactFetchRequestExecutor *)&v19->super.isa initWithDataMapper:v20];

  v22 = [(CNContactFetchRequestExecutor *)v21 observableForFetchRequest:v9];
  v23 = [v22 allObjects:a5];
  v24 = [v23 _cn_flatten];

  v25 = [v24 _cn_map:*MEMORY[0x1E69965A0]];
  if (a4)
  {
    v26 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v24, "count")}];
    v27 = [v24 _cn_reduce:&__block_literal_global_89_0 initialValue:v26];

    v28 = v27;
    *a4 = v27;
  }

  [v14 popAllWithHandler:&__block_literal_global_92];
  v29 = objc_opt_self();

  return v25;
}

void __69__CNDataMapperContactStore_contactsForFetchRequest_matchInfos_error___block_invoke(uint64_t a1)
{
  [CNAPITriageLogger setThreadEntryPoint:0];
  v2 = +[CNAPITriageLogger os_log];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1954A0000, v3, OS_SIGNPOST_INTERVAL_END, v4, "Fetching", "", v5, 2u);
  }
}

id __69__CNDataMapperContactStore_contactsForFetchRequest_matchInfos_error___block_invoke_86(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 second];

  if (v6)
  {
    v7 = [v5 second];
    v8 = [v5 first];
    v9 = [v8 identifier];
    [v4 setObject:v7 forKeyedSubscript:v9];
  }

  return v4;
}

- (id)executeFetchRequest:(id)a3 progressiveResults:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  [CNAPITriageLogger setThreadEntryPoint:a2];
  v12 = +[CNAPITriageLogger os_log];
  v13 = os_signpost_id_generate(v12);

  v14 = +[CNAPITriageLogger os_log];
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1954A0000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "Fetching", "", buf, 2u);
  }

  v16 = objc_alloc_init(MEMORY[0x1E6996838]);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __78__CNDataMapperContactStore_executeFetchRequest_progressiveResults_completion___block_invoke;
  v36[3] = &__block_descriptor_40_e5_v8__0l;
  v36[4] = v13;
  v17 = [v36 copy];
  v18 = objc_opt_self();
  v19 = _Block_copy(v18);
  [v16 push:v19];

  v20 = objc_alloc_init(MEMORY[0x1E6996668]);
  v21 = [(CNDataMapperContactStore *)self logger];
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __78__CNDataMapperContactStore_executeFetchRequest_progressiveResults_completion___block_invoke_94;
  v30 = &unk_1E7415708;
  v34 = v11;
  v31 = v9;
  v32 = self;
  v22 = v20;
  v33 = v22;
  v35 = v10;
  [v21 fetchingContacts:&v27];

  v23 = v35;
  v24 = v22;

  [v16 popAllWithHandler:{&__block_literal_global_100, v27, v28, v29, v30}];
  v25 = objc_opt_self();

  return v24;
}

void __78__CNDataMapperContactStore_executeFetchRequest_progressiveResults_completion___block_invoke(uint64_t a1)
{
  [CNAPITriageLogger setThreadEntryPoint:0];
  v2 = +[CNAPITriageLogger os_log];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1954A0000, v3, OS_SIGNPOST_INTERVAL_END, v4, "Fetching", "", v5, 2u);
  }
}

void __78__CNDataMapperContactStore_executeFetchRequest_progressiveResults_completion___block_invoke_94(uint64_t a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__CNDataMapperContactStore_executeFetchRequest_progressiveResults_completion___block_invoke_2;
  aBlock[3] = &unk_1E7413D98;
  v18 = *(a1 + 56);
  v4 = _Block_copy(aBlock);
  v5 = [*(a1 + 32) predicate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = *(a1 + 40);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __78__CNDataMapperContactStore_executeFetchRequest_progressiveResults_completion___block_invoke_3;
    v11[3] = &unk_1E74156E0;
    v14 = v3;
    v12 = *(a1 + 48);
    v15 = v4;
    v10 = *(a1 + 32);
    v8 = v10.i64[0];
    v13 = vextq_s8(v10, v10, 8uLL);
    v16 = *(a1 + 64);
    [v7 requestReadAccessForEntityType:0 completionHandler:v11];

    v9 = v14;
  }

  else
  {
    v9 = [CNErrorFactory errorWithCode:400 userInfo:0];
    (*(v4 + 2))(v4, v9);
  }
}

uint64_t __78__CNDataMapperContactStore_executeFetchRequest_progressiveResults_completion___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v12 = a3;
  (*(*(a1 + 56) + 16))();
  v5 = [*(a1 + 32) isCanceled];
  v6 = v12;
  if ((v5 & 1) == 0)
  {
    if (a2)
    {
      v7 = [*(a1 + 40) mapper];
      v8 = objc_opt_respondsToSelector();

      v6 = v12;
      if ((v8 & 1) == 0)
      {
        goto LABEL_9;
      }

      v9 = [*(a1 + 40) mapper];
      v10 = [v9 executeFetchRequest:*(a1 + 48) progressiveResults:*(a1 + 72) completion:*(a1 + 64)];

      if (v10)
      {
        [*(a1 + 32) addCancelable:v10];
      }
    }

    else
    {
      v5 = (*(*(a1 + 64) + 16))();
    }

    v6 = v12;
  }

LABEL_9:

  return MEMORY[0x1EEE66BB8](v5, v6);
}

- (id)groupsMatchingPredicate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__19;
  v28 = __Block_byref_object_dispose__19;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__19;
  v22 = __Block_byref_object_dispose__19;
  v23 = 0;
  v7 = [(CNDataMapperContactStore *)self logger];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__CNDataMapperContactStore_groupsMatchingPredicate_error___block_invoke;
  v14[3] = &unk_1E7415508;
  v14[4] = self;
  v16 = &v18;
  v17 = &v24;
  v8 = v6;
  v15 = v8;
  [v7 fetchingGroups:v14];

  v9 = v19[5];
  v10 = v25[5];
  v11 = v10;
  if (a4 && !v10)
  {
    v12 = v9;
    *a4 = v9;
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

void __58__CNDataMapperContactStore_groupsMatchingPredicate_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [v2 requestMetadataAccessWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = [*(a1 + 32) mapper];
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 48) + 8);
    v11 = *(v7 + 40);
    v8 = [v5 groupsMatchingPredicate:v6 error:&v11];
    objc_storeStrong((v7 + 40), v11);
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

- (id)groupWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__19;
  v28 = __Block_byref_object_dispose__19;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__19;
  v22 = __Block_byref_object_dispose__19;
  v23 = 0;
  v7 = [(CNDataMapperContactStore *)self logger];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__CNDataMapperContactStore_groupWithIdentifier_error___block_invoke;
  v14[3] = &unk_1E7415508;
  v14[4] = self;
  v16 = &v18;
  v17 = &v24;
  v8 = v6;
  v15 = v8;
  [v7 fetchingGroups:v14];

  v9 = v19[5];
  v10 = v25[5];
  v11 = v10;
  if (a4 && !v10)
  {
    v12 = v9;
    *a4 = v9;
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

void __54__CNDataMapperContactStore_groupWithIdentifier_error___block_invoke(uint64_t a1)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [v2 requestMetadataAccessWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = [*(a1 + 32) mapper];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [*(a1 + 32) mapper];
      v23[0] = *(a1 + 40);
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
      v9 = *(*(a1 + 48) + 8);
      v20 = *(v9 + 40);
      v10 = [v7 groupsWithIdentifiers:v8 error:&v20];
      objc_storeStrong((v9 + 40), v20);
      v11 = [v10 firstObject];
      v12 = *(*(a1 + 56) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }

    else
    {
      v22 = *(a1 + 40);
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
      v7 = [CNGroup predicateForGroupsWithIdentifiers:v14];

      v15 = *(a1 + 32);
      v16 = *(*(a1 + 48) + 8);
      v19 = *(v16 + 40);
      v8 = [v15 groupsMatchingPredicate:v7 error:&v19];
      objc_storeStrong((v16 + 40), v19);
      v17 = [v8 firstObject];
      v18 = *(*(a1 + 56) + 8);
      v10 = *(v18 + 40);
      *(v18 + 40) = v17;
    }
  }
}

- (id)membersOfGroupWithIdentifier:(id)a3 keysToFetch:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__19;
  v33 = __Block_byref_object_dispose__19;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__19;
  v27 = __Block_byref_object_dispose__19;
  v28 = 0;
  v10 = [(CNDataMapperContactStore *)self logger];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75__CNDataMapperContactStore_membersOfGroupWithIdentifier_keysToFetch_error___block_invoke;
  v18[3] = &unk_1E74155F8;
  v18[4] = self;
  v21 = &v23;
  v11 = v8;
  v19 = v11;
  v12 = v9;
  v20 = v12;
  v22 = &v29;
  [v10 fetchingContacts:v18];

  v13 = v24[5];
  v14 = v30[5];
  v15 = v14;
  if (a5 && !v14)
  {
    v16 = v13;
    *a5 = v13;
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v15;
}

void __75__CNDataMapperContactStore_membersOfGroupWithIdentifier_keysToFetch_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[7] + 8);
  obj = *(v3 + 40);
  v4 = [v2 requestContactsReadAccessWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = [CNContact predicateForContactsInGroupWithIdentifier:a1[5]];
    v6 = [[CNContactFetchRequest alloc] initWithKeysToFetch:a1[6]];
    [(CNContactFetchRequest *)v6 setPredicate:v5];
    v7 = a1[4];
    v8 = *(a1[7] + 8);
    v12 = *(v8 + 40);
    v9 = [v7 contactsForFetchRequest:v6 matchInfos:0 error:&v12];
    objc_storeStrong((v8 + 40), v12);
    v10 = *(a1[8] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

- (id)subgroupsOfGroupWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__19;
  v28 = __Block_byref_object_dispose__19;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__19;
  v22 = __Block_byref_object_dispose__19;
  v23 = 0;
  v7 = [(CNDataMapperContactStore *)self logger];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__CNDataMapperContactStore_subgroupsOfGroupWithIdentifier_error___block_invoke;
  v14[3] = &unk_1E7415508;
  v14[4] = self;
  v16 = &v18;
  v17 = &v24;
  v8 = v6;
  v15 = v8;
  [v7 fetchingGroups:v14];

  v9 = v19[5];
  v10 = v25[5];
  v11 = v10;
  if (a4 && !v10)
  {
    v12 = v9;
    *a4 = v9;
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

void __65__CNDataMapperContactStore_subgroupsOfGroupWithIdentifier_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [v2 requestMetadataAccessWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = [*(a1 + 32) mapper];
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 48) + 8);
    v11 = *(v7 + 40);
    v8 = [v5 subgroupsOfGroupWithIdentifier:v6 error:&v11];
    objc_storeStrong((v7 + 40), v11);
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

- (id)containersMatchingPredicate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__19;
  v28 = __Block_byref_object_dispose__19;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__19;
  v22 = __Block_byref_object_dispose__19;
  v23 = 0;
  v7 = [(CNDataMapperContactStore *)self logger];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__CNDataMapperContactStore_containersMatchingPredicate_error___block_invoke;
  v14[3] = &unk_1E7415508;
  v14[4] = self;
  v16 = &v18;
  v17 = &v24;
  v8 = v6;
  v15 = v8;
  [v7 fetchingContainers:v14];

  v9 = v19[5];
  v10 = v25[5];
  v11 = v10;
  if (a4 && !v10)
  {
    v12 = v9;
    *a4 = v9;
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

void __62__CNDataMapperContactStore_containersMatchingPredicate_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [v2 requestMetadataAccessWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = [*(a1 + 32) mapper];
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 48) + 8);
    v11 = *(v7 + 40);
    v8 = [v5 containersMatchingPredicate:v6 error:&v11];
    objc_storeStrong((v7 + 40), v11);
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

- (id)serverSearchContainersMatchingPredicate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__19;
  v28 = __Block_byref_object_dispose__19;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__19;
  v22 = __Block_byref_object_dispose__19;
  v23 = 0;
  v7 = [(CNDataMapperContactStore *)self logger];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__CNDataMapperContactStore_serverSearchContainersMatchingPredicate_error___block_invoke;
  v14[3] = &unk_1E7415508;
  v14[4] = self;
  v16 = &v18;
  v17 = &v24;
  v8 = v6;
  v15 = v8;
  [v7 fetchingContainers:v14];

  v9 = v19[5];
  v10 = v25[5];
  v11 = v10;
  if (a4 && !v10)
  {
    v12 = v9;
    *a4 = v9;
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

void __74__CNDataMapperContactStore_serverSearchContainersMatchingPredicate_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [v2 requestMetadataAccessWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = [*(a1 + 32) mapper];
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 48) + 8);
    v11 = *(v7 + 40);
    v8 = [v5 serverSearchContainersMatchingPredicate:v6 error:&v11];
    objc_storeStrong((v7 + 40), v11);
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

- (id)policyWithDescription:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__19;
  v28 = __Block_byref_object_dispose__19;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__19;
  v22 = __Block_byref_object_dispose__19;
  v23 = 0;
  v7 = [(CNDataMapperContactStore *)self logger];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__CNDataMapperContactStore_policyWithDescription_error___block_invoke;
  v14[3] = &unk_1E7415508;
  v14[4] = self;
  v16 = &v18;
  v17 = &v24;
  v8 = v6;
  v15 = v8;
  [v7 fetchingContainers:v14];

  v9 = v19[5];
  v10 = v25[5];
  v11 = v10;
  if (a4 && !v10)
  {
    v12 = v9;
    *a4 = v9;
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

void __56__CNDataMapperContactStore_policyWithDescription_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [v2 requestMetadataAccessWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = [*(a1 + 32) mapper];
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 48) + 8);
    v11 = *(v7 + 40);
    v8 = [v5 policyWithDescription:v6 error:&v11];
    objc_storeStrong((v7 + 40), v11);
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

- (id)usedLabelsForPropertyWithKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CNDataMapperContactStore *)self mapper];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CNDataMapperContactStore *)self mapper];
    v10 = [v9 usedLabelsForPropertyWithKey:v6 error:a4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)accountsMatchingPredicate:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(CNDataMapperContactStore *)self requestMetadataAccessWithError:a4])
  {
    v7 = [(CNDataMapperContactStore *)self mapper];
    v8 = [v7 accountsMatchingPredicate:v6 error:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)executeSaveRequest:(id)a3 response:(id *)a4 authorizationContext:(id)a5 error:(id *)a6
{
  v55 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = +[CNAPITriageLogger os_log];
  v11 = os_signpost_id_generate(v10);
  v12 = [MEMORY[0x1E69966E8] currentEnvironment];
  v13 = [v12 timeProvider];
  [v13 timestamp];
  v15 = v14;

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1954A0000, v10, OS_LOG_TYPE_DEFAULT, "Will save", buf, 2u);
  }

  v16 = v10;
  v17 = v16;
  v18 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1954A0000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v11, "Saving Contacts", "", buf, 2u);
  }

  v19 = v11;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  *buf = 0;
  v47[0] = buf;
  v47[1] = 0x3032000000;
  v47[2] = __Block_byref_object_copy__19;
  v47[3] = __Block_byref_object_dispose__19;
  v48 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__19;
  v44 = __Block_byref_object_dispose__19;
  v45 = 0;
  v20 = [(CNDataMapperContactStore *)self logger];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __83__CNDataMapperContactStore_executeSaveRequest_response_authorizationContext_error___block_invoke;
  v34[3] = &unk_1E7415730;
  v34[4] = self;
  v37 = buf;
  v21 = v8;
  v35 = v21;
  v22 = v9;
  v36 = v22;
  v38 = &v49;
  v39 = &v40;
  [v20 saving:v34];

  v23 = v17;
  v24 = v23;
  if (v18 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v23))
  {
    *v53 = 0;
    _os_signpost_emit_with_name_impl(&dword_1954A0000, v24, OS_SIGNPOST_INTERVAL_END, v19, "Saving Contacts", "", v53, 2u);
  }

  if (a4)
  {
    *a4 = v41[5];
  }

  v25 = [MEMORY[0x1E69966E8] currentEnvironment];
  v26 = [v25 timeProvider];
  [v26 timestamp];
  v28 = v27;

  v29 = [MEMORY[0x1E6996858] stringForTimeInterval:v28 - v15];
  if (*(v50 + 24) == 1)
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *v53 = 138543362;
      v54 = v29;
      _os_log_impl(&dword_1954A0000, v24, OS_LOG_TYPE_DEFAULT, "Did save successfully (%{public}@)", v53, 0xCu);
    }
  }

  else if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    [CNDataMapperContactStore executeSaveRequest:v29 response:v47 authorizationContext:v24 error:?];
  }

  v30 = *(v50 + 24);
  if (a6 && (v50[3] & 1) == 0)
  {
    *a6 = *(v47[0] + 40);
  }

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v49, 8);
  return v30;
}

void __83__CNDataMapperContactStore_executeSaveRequest_response_authorizationContext_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 56) + 8);
  obj = *(v3 + 40);
  v4 = [v2 requestContactsWriteAccessWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(*(a1 + 56) + 8);
    v29 = *(v8 + 40);
    v9 = [v5 isValidSaveRequest:v6 authorizationContext:v7 error:&v29];
    objc_storeStrong((v8 + 40), v29);
    if (v9)
    {
      v10 = [*(a1 + 40) suppressChangeNotifications];
      if ((v10 & 1) == 0)
      {
        v11 = +[CNChangesNotifier sharedNotifier];
        [v11 willSaveChanges];
      }

      v12 = +[CNChangeHistoryTriageLogger saveLogger];
      [v12 willExecuteSaveRequest];
      [*(a1 + 40) acceptChangeHistoryEventVisitor:v12];
      v13 = [*(a1 + 32) mapper];
      v14 = *(*(a1 + 72) + 8);
      v15 = *(v14 + 40);
      v16 = *(a1 + 40);
      v17 = *(a1 + 48);
      v18 = *(*(a1 + 56) + 8);
      v27 = *(v18 + 40);
      v28 = v15;
      v19 = [v13 executeSaveRequest:v16 response:&v28 authorizationContext:v17 error:&v27];
      objc_storeStrong((v14 + 40), v28);
      objc_storeStrong((v18 + 40), v27);
      *(*(*(a1 + 64) + 8) + 24) = v19;

      [v12 didExecuteSaveRequest];
      if ((v10 & 1) == 0)
      {
        v20 = +[CNChangesNotifier sharedNotifier];
        v21 = *(*(*(a1 + 64) + 8) + 24);
        v22 = *(a1 + 32);
        v23 = [*(a1 + 40) saveRequestIdentifier];
        [v20 didSaveChangesSuccessfully:v21 fromContactStore:v22 requestIdentifier:v23];

        if (*(*(*(a1 + 64) + 8) + 24) == 1)
        {
          if ([*(*(*(a1 + 72) + 8) + 40) didAffectMeCard])
          {
            v24 = +[CNChangesNotifier sharedNotifier];
            v25 = *(a1 + 32);
            v26 = [*(a1 + 40) saveRequestIdentifier];
            [v24 didChangeMeContactSuccessfully:1 fromContactStore:v25 requestIdentifier:v26];
          }
        }
      }
    }
  }
}

- (BOOL)isValidSaveRequest:(id)a3 authorizationContext:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [objc_opt_class() storeIdentifier];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__19;
  v28 = __Block_byref_object_dispose__19;
  v29 = 0;
  v10 = [v7 addedContactsByContainerIdentifier];
  v11 = [v10 allValues];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __74__CNDataMapperContactStore_isValidSaveRequest_authorizationContext_error___block_invoke;
  v21[3] = &unk_1E7415780;
  v12 = v9;
  v22 = v12;
  v23 = &v24;
  v13 = [v11 _cn_all:v21];

  if (v13)
  {
    v14 = (v25 + 5);
    obj = v25[5];
    v15 = [CNSaveRequestVerifier isValidSaveRequest:v7 error:&obj];
    objc_storeStrong(v14, obj);
    v16 = !v15;
    if (!v8)
    {
      v16 = 1;
    }

    if ((v16 & 1) == 0)
    {
      v17 = (v25 + 5);
      v19 = v25[5];
      v15 = [CNSaveRequestVerifier isSaveRequest:v7 authorizedForSavingWithContext:v8 error:&v19];
      objc_storeStrong(v17, v19);
    }
  }

  else
  {
    v15 = 0;
  }

  if (a5 && !v15)
  {
    *a5 = v25[5];
  }

  _Block_object_dispose(&v24, 8);
  return v15;
}

uint64_t __74__CNDataMapperContactStore_isValidSaveRequest_authorizationContext_error___block_invoke(uint64_t a1, void *a2)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__CNDataMapperContactStore_isValidSaveRequest_authorizationContext_error___block_invoke_2;
  v8[3] = &unk_1E7415758;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v4;
  v10 = v5;
  v6 = [a2 _cn_all:v8];

  return v6;
}

uint64_t __74__CNDataMapperContactStore_isValidSaveRequest_authorizationContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 storeIdentifier];
  if ((v4 || *(a1 + 32)) && ([v3 storeIdentifier], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqual:", *(a1 + 32)), v5, v4, (v6 & 1) == 0))
  {
    v14 = v3;
    v15 = @"CNInvalidRecords";
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
    v16[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v10 = [CNErrorFactory errorWithCode:302 userInfo:v9];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)defaultContainerIdentifier
{
  v3 = 0;
  if ([(CNDataMapperContactStore *)self requestMetadataAccessWithError:0])
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__19;
    v11 = __Block_byref_object_dispose__19;
    v12 = 0;
    v4 = [(CNDataMapperContactStore *)self logger];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __54__CNDataMapperContactStore_defaultContainerIdentifier__block_invoke;
    v6[3] = &unk_1E74157A8;
    v6[4] = self;
    v6[5] = &v7;
    [v4 fetchingDefaultContainerIdentifier:v6];

    v3 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  return v3;
}

void __54__CNDataMapperContactStore_defaultContainerIdentifier__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) mapper];
  v2 = [v5 defaultContainerIdentifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)legacyTetheredSyncDeviceAnchor
{
  v3 = [(CNDataMapperContactStore *)self mapper];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) != 0 && [(CNDataMapperContactStore *)self requestMetadataAccessWithError:0])
  {
    v5 = [(CNDataMapperContactStore *)self mapper];
    v6 = [v5 legacyTetheredSyncDeviceAnchor];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setLegacyTetheredSyncDeviceAnchor:(id)a3
{
  v7 = a3;
  v4 = [(CNDataMapperContactStore *)self mapper];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) != 0 && [(CNDataMapperContactStore *)self requestMetadataAccessWithError:0])
  {
    v6 = [(CNDataMapperContactStore *)self mapper];
    [v6 setLegacyTetheredSyncDeviceAnchor:v7];
  }
}

- (id)legacyTetheredSyncComputerAnchor
{
  v3 = [(CNDataMapperContactStore *)self mapper];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) != 0 && [(CNDataMapperContactStore *)self requestMetadataAccessWithError:0])
  {
    v5 = [(CNDataMapperContactStore *)self mapper];
    v6 = [v5 legacyTetheredSyncComputerAnchor];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setLegacyTetheredSyncComputerAnchor:(id)a3
{
  v7 = a3;
  v4 = [(CNDataMapperContactStore *)self mapper];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) != 0 && [(CNDataMapperContactStore *)self requestMetadataAccessWithError:0])
  {
    v6 = [(CNDataMapperContactStore *)self mapper];
    [v6 setLegacyTetheredSyncComputerAnchor:v7];
  }
}

- (id)contactWithUserActivityUserInfo:(id)a3 keysToFetch:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((*(*MEMORY[0x1E6996548] + 16))() & 1) == 0 && ([(CNDataMapperContactStore *)self mapper], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_opt_respondsToSelector(), v8, (v9) && [(CNDataMapperContactStore *)self requestContactsReadAccessWithError:0])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__19;
    v21 = __Block_byref_object_dispose__19;
    v22 = 0;
    v10 = [(CNDataMapperContactStore *)self logger];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __72__CNDataMapperContactStore_contactWithUserActivityUserInfo_keysToFetch___block_invoke;
    v13[3] = &unk_1E74157D0;
    v13[4] = self;
    v16 = &v17;
    v14 = v6;
    v15 = v7;
    [v10 fetchingContactWithUserActivity:v13];

    v11 = v18[5];
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __72__CNDataMapperContactStore_contactWithUserActivityUserInfo_keysToFetch___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapper];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v7 = [*(a1 + 32) mapper];
    v4 = [v7 contactWithUserActivityUserInfo:*(a1 + 40) keysToFetch:*(a1 + 48)];
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

- (id)userActivityUserInfoForContact:(id)a3
{
  v4 = a3;
  v5 = 0;
  if ([(CNDataMapperContactStore *)self requestContactsReadAccessWithError:0])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__19;
    v15 = __Block_byref_object_dispose__19;
    v16 = 0;
    v6 = [(CNDataMapperContactStore *)self logger];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__CNDataMapperContactStore_userActivityUserInfoForContact___block_invoke;
    v8[3] = &unk_1E74157F8;
    v8[4] = self;
    v10 = &v11;
    v9 = v4;
    [v6 fetchingContactWithUserActivity:v8];

    v5 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  return v5;
}

void __59__CNDataMapperContactStore_userActivityUserInfoForContact___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapper];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v7 = [*(a1 + 32) mapper];
    v4 = [v7 userActivityUserInfoForContact:*(a1 + 40)];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

- (BOOL)supportsMatchingDictionaries
{
  v2 = [(CNDataMapperContactStore *)self mapper];
  v3 = objc_opt_respondsToSelector();

  return v3 & 1;
}

- (id)descriptorForRequiredKeysForMatchingDictionary
{
  v3 = [(CNDataMapperContactStore *)self mapper];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CNDataMapperContactStore *)self mapper];
    v6 = [v5 descriptorForRequiredKeysForMatchingDictionary];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)contactIdentifierWithMatchingDictionary:(id)a3
{
  v4 = a3;
  v5 = [(CNDataMapperContactStore *)self mapper];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) != 0 && [(CNDataMapperContactStore *)self requestContactsReadAccessWithError:0])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__19;
    v17 = __Block_byref_object_dispose__19;
    v18 = 0;
    v7 = [(CNDataMapperContactStore *)self logger];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __68__CNDataMapperContactStore_contactIdentifierWithMatchingDictionary___block_invoke;
    v10[3] = &unk_1E7415820;
    v12 = &v13;
    v10[4] = self;
    v11 = v4;
    [v7 fetchingContactIdentifierWithMatchingDictionary:v10];

    v8 = v14[5];
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __68__CNDataMapperContactStore_contactIdentifierWithMatchingDictionary___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) mapper];
  v2 = [v5 contactIdentifierWithMatchingDictionary:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)matchingDictionaryForContact:(id)a3
{
  v4 = a3;
  v5 = [(CNDataMapperContactStore *)self mapper];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) != 0 && [(CNDataMapperContactStore *)self requestContactsReadAccessWithError:0])
  {
    v7 = [(CNDataMapperContactStore *)self mapper];
    v8 = [v7 matchingDictionaryForContact:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)registerChangeHistoryClientIdentifier:(id)a3 forContainerIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(CNDataMapperContactStore *)self mapper];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__19;
    v24 = __Block_byref_object_dispose__19;
    v25 = 0;
    v12 = [(CNDataMapperContactStore *)self logger];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __95__CNDataMapperContactStore_registerChangeHistoryClientIdentifier_forContainerIdentifier_error___block_invoke;
    v15[3] = &unk_1E7415580;
    v15[4] = self;
    v18 = &v20;
    v19 = &v26;
    v16 = v8;
    v17 = v9;
    [v12 registeringForChangeHistory:v15];

    v13 = *(v27 + 24);
    if (a5 && (v27[3] & 1) == 0)
    {
      *a5 = v21[5];
    }

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v26, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __95__CNDataMapperContactStore_registerChangeHistoryClientIdentifier_forContainerIdentifier_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 56) + 8);
  obj = *(v3 + 40);
  v4 = [v2 requestMetadataAccessWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = [*(a1 + 32) mapper];
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(*(a1 + 56) + 8);
    v10 = *(v8 + 40);
    v9 = [v5 registerChangeHistoryClientIdentifier:v6 forContainerIdentifier:v7 error:&v10];
    objc_storeStrong((v8 + 40), v10);
    *(*(*(a1 + 64) + 8) + 24) = v9;
  }
}

- (BOOL)unregisterChangeHistoryClientIdentifier:(id)a3 forContainerIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(CNDataMapperContactStore *)self mapper];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__19;
    v24 = __Block_byref_object_dispose__19;
    v25 = 0;
    v12 = [(CNDataMapperContactStore *)self logger];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __97__CNDataMapperContactStore_unregisterChangeHistoryClientIdentifier_forContainerIdentifier_error___block_invoke;
    v15[3] = &unk_1E7415580;
    v15[4] = self;
    v18 = &v20;
    v19 = &v26;
    v16 = v8;
    v17 = v9;
    [v12 unregisteringForChangeHistory:v15];

    v13 = *(v27 + 24);
    if (a5 && (v27[3] & 1) == 0)
    {
      *a5 = v21[5];
    }

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v26, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __97__CNDataMapperContactStore_unregisterChangeHistoryClientIdentifier_forContainerIdentifier_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 56) + 8);
  obj = *(v3 + 40);
  v4 = [v2 requestMetadataAccessWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = [*(a1 + 32) mapper];
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(*(a1 + 56) + 8);
    v10 = *(v8 + 40);
    v9 = [v5 unregisterChangeHistoryClientIdentifier:v6 forContainerIdentifier:v7 error:&v10];
    objc_storeStrong((v8 + 40), v10);
    *(*(*(a1 + 64) + 8) + 24) = v9;
  }
}

- (id)changeHistoryWithFetchRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CNDataMapperContactStore *)self mapper];
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) == 0)
  {
    v16 = 0;
    goto LABEL_18;
  }

  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__19;
  v44 = __Block_byref_object_dispose__19;
  v45 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__19;
  v38 = __Block_byref_object_dispose__19;
  v39 = 0;
  v9 = +[CNChangeHistoryTriageLogger fetchLogger];
  [v9 willFetchHistoryWithRequest:v6];
  v10 = [(CNDataMapperContactStore *)self logger];
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __64__CNDataMapperContactStore_changeHistoryWithFetchRequest_error___block_invoke;
  v29 = &unk_1E7415508;
  v30 = self;
  v32 = &v34;
  v33 = &v40;
  v11 = v6;
  v31 = v11;
  [v10 fetchingChangeHistory:&v26];

  v12 = [v11 resultType];
  if (v41[5])
  {
    v13 = v12;
    if (![v11 resultType] || v13 == 2)
    {
      v17 = [CNChangeHistoryLegacyResultConverter alloc];
      v18 = [v11 additionalContactKeyDescriptors];
      v15 = [(CNChangeHistoryLegacyResultConverter *)v17 initWithContactStore:self additionalContactKeyDescriptors:v18];

      v19 = [(CNChangeHistoryLegacyResultConverter *)v15 eventsFromResult:v41[5]];
      if ([v19 isSuccess])
      {
        v20 = [v19 value];
        v21 = [v41[5] latestChangeAnchor];
        [v9 didFetchHistoryEvents:v20 anchor:v21];
      }

      else
      {
        v20 = [v19 error];
        [v9 fetchDidFailWithError:v20];
      }
    }

    else
    {
      if ([v11 resultType] != 1)
      {
        goto LABEL_14;
      }

      v14 = [v41[5] changesCount];
      v15 = [v41[5] latestChangeAnchor];
      [v9 didFetchHistoryEventsCount:v14 anchor:v15 truncated:{objc_msgSend(v41[5], "changesTruncated")}];
    }
  }

  else
  {
    [v9 fetchDidFailWithError:v35[5]];
  }

LABEL_14:
  v22 = v35[5];
  v23 = v41[5];
  v16 = v23;
  if (a4 && !v23)
  {
    v24 = v22;
    *a4 = v22;
  }

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);

LABEL_18:

  return v16;
}

void __64__CNDataMapperContactStore_changeHistoryWithFetchRequest_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [v2 requestContactsReadAccessWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = [*(a1 + 32) mapper];
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 48) + 8);
    v11 = *(v7 + 40);
    v8 = [v5 changeHistoryWithFetchRequest:v6 error:&v11];
    objc_storeStrong((v7 + 40), v11);
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

- (BOOL)executeChangeHistoryClearRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CNDataMapperContactStore *)self mapper];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__19;
    v20 = __Block_byref_object_dispose__19;
    v21 = 0;
    v9 = [(CNDataMapperContactStore *)self logger];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67__CNDataMapperContactStore_executeChangeHistoryClearRequest_error___block_invoke;
    v12[3] = &unk_1E7415508;
    v12[4] = self;
    v14 = &v16;
    v15 = &v22;
    v13 = v6;
    [v9 clearingChangeHistory:v12];

    v10 = *(v23 + 24);
    if (a4 && (v23[3] & 1) == 0)
    {
      *a4 = v17[5];
    }

    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __67__CNDataMapperContactStore_executeChangeHistoryClearRequest_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [v2 requestMetadataAccessWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = [*(a1 + 32) mapper];
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 48) + 8);
    v9 = *(v7 + 40);
    v8 = [v5 executeChangeHistoryClearRequest:v6 error:&v9];
    objc_storeStrong((v7 + 40), v9);
    *(*(*(a1 + 56) + 8) + 24) = v8;
  }
}

- (BOOL)hasMultipleGroupsOrAccounts
{
  v3 = [(CNDataMapperContactStore *)self mapper];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0 || ![(CNDataMapperContactStore *)self requestMetadataAccessWithError:0])
  {
    return 0;
  }

  v5 = [(CNDataMapperContactStore *)self mapper];
  v6 = [v5 hasMultipleGroupsOrAccounts];

  return v6;
}

- (BOOL)hasGroups
{
  v3 = [(CNDataMapperContactStore *)self mapper];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0 || ![(CNDataMapperContactStore *)self requestMetadataAccessWithError:0])
  {
    return 0;
  }

  v5 = [(CNDataMapperContactStore *)self mapper];
  v6 = [v5 hasGroups];

  return v6;
}

- (id)getBackgroundColorOnImageData:(id)a3 bitmapFormat:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(CNDataMapperContactStore *)self mapper];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__19;
    v34 = __Block_byref_object_dispose__19;
    v35 = 0;
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__19;
    v28 = __Block_byref_object_dispose__19;
    v29 = 0;
    v12 = [(CNDataMapperContactStore *)self logger];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __77__CNDataMapperContactStore_getBackgroundColorOnImageData_bitmapFormat_error___block_invoke;
    v19[3] = &unk_1E7415848;
    v22 = &v30;
    v19[4] = self;
    v20 = v8;
    v21 = v9;
    v23 = &v24;
    [v12 gettingBackgroundColor:v19];

    v13 = v25[5];
    v14 = v31[5];
    v15 = v14;
    if (a5 && !v14)
    {
      v16 = v13;
      *a5 = v13;
    }

    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v30, 8);
  }

  else
  {
    v17 = [CNErrorFactory errorWithCode:1005];
    if (a5)
    {
      v17 = v17;
      *a5 = v17;
    }

    v15 = 0;
  }

  return v15;
}

void __77__CNDataMapperContactStore_getBackgroundColorOnImageData_bitmapFormat_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapper];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(*(a1 + 64) + 8);
  obj = *(v5 + 40);
  v6 = [v2 getBackgroundColorOnImageData:v3 bitmapFormat:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)requestAccessForEntityType:(int64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E69967D0]);
  v6 = [(CNDataMapperContactStore *)self logger];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__CNDataMapperContactStore_requestAccessForEntityType___block_invoke;
  v10[3] = &unk_1E7415898;
  v11 = v5;
  v12 = a3;
  v10[4] = self;
  v7 = v5;
  [v6 requestingAccessForContacts:v10];

  v8 = [v7 future];

  return v8;
}

void __55__CNDataMapperContactStore_requestAccessForEntityType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) mapper];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__CNDataMapperContactStore_requestAccessForEntityType___block_invoke_2;
  v9[3] = &unk_1E7415870;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v11 = v3;
  v9[4] = v5;
  v10 = v6;
  v8 = v3;
  [v4 requestAccessForEntityType:v7 completionHandler:v9];
}

void __55__CNDataMapperContactStore_requestAccessForEntityType___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  (*(*(a1 + 48) + 16))();
  v5 = *(a1 + 32);
  if (v6 || !a2)
  {
    [v5 _logContactsAccessWasDeniedForAccessType:0 error:v6];
    [*(a1 + 40) finishWithError:v6];
  }

  else
  {
    [v5 _logContactsAccessWasGrantedForAccessType:0];
    [*(a1 + 40) finishWithResult:MEMORY[0x1E695E118]];
  }
}

- (void)requestReadAccessForEntityType:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  if ([(CNDataMapperContactStore *)self isContactProvider])
  {
    v6[2](v6, 1, 0);
  }

  v7 = [(CNDataMapperContactStore *)self mapper];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__CNDataMapperContactStore_requestReadAccessForEntityType_completionHandler___block_invoke;
  v9[3] = &unk_1E74158C0;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 requestAccessForEntityType:a3 completionHandler:v9];
}

void __77__CNDataMapperContactStore_requestReadAccessForEntityType_completionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = v7;
  if (a3 || !a2)
  {
    [v6 _logContactsAccessWasDeniedForAccessType:0 error:v7];
  }

  else
  {
    [v6 _logContactsAccessWasGrantedForAccessType:{0, v7}];
  }

  (*(*(a1 + 40) + 16))();
}

- (BOOL)_requestDataMapperAccessType:(unint64_t)a3 error:(id *)a4
{
  if ([(CNDataMapperContactStore *)self isContactProvider])
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v8 = [(CNDataMapperContactStore *)self mapper];
    v12 = 0;
    v7 = [v8 requestAccessForEntityType:0 error:&v12];
    v9 = v12;

    if (v7)
    {
      [(CNDataMapperContactStore *)self _logContactsAccessWasGrantedForAccessType:a3];
    }

    else
    {
      [(CNDataMapperContactStore *)self _logContactsAccessWasDeniedForAccessType:a3 error:v9];
      if (a4)
      {
        v10 = v9;
        *a4 = v9;
      }
    }
  }

  return v7;
}

- (void)_logContactsAccessWasGrantedForAccessType:(unint64_t)a3
{
  v5 = [(CNDataMapperContactStore *)self mapper];
  v6 = [v5 shouldLogContactsAccess];

  if (v6)
  {
    v7 = [(CNDataMapperContactStore *)self logger];
    [v7 contactsAccessWasGranted];

    [(CNDataMapperContactStore *)self _logGreenTeaForAccessType:a3];

    [(CNDataMapperContactStore *)self _logPrivacyAccountingForAccessType:a3];
  }
}

- (void)_logContactsAccessWasDeniedForAccessType:(unint64_t)a3 error:(id)a4
{
  v8 = a4;
  v5 = [(CNDataMapperContactStore *)self mapper];
  v6 = [v5 shouldLogContactsAccess];

  if (v6)
  {
    v7 = [(CNDataMapperContactStore *)self logger];
    [v7 contactsAccessWasDeniedWithError:v8];
  }
}

- (void)_logGreenTeaForAccessType:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = [(CNDataMapperContactStore *)self regulatoryLogger];
    [v3 modifyingContactsData];
  }

  else
  {
    if (a3)
    {
      return;
    }

    v3 = [(CNDataMapperContactStore *)self regulatoryLogger];
    [v3 readingContactsData];
  }
}

- (void)_logPrivacyAccountingForAccessType:(unint64_t)a3
{
  if (a3 != 2 && [(CNDataMapperContactStore *)self shouldLogPrivacyAccountingAccessEvents])
  {
    v4 = [(CNDataMapperContactStore *)self regulatoryLogger];
    [v4 logContactsDataAccessEvent];
  }
}

- (id)fetchLimitedAccessContactIdentifiersForBundle:(id)a3
{
  v4 = a3;
  v5 = [(CNDataMapperContactStore *)self mapper];
  v6 = objc_opt_respondsToSelector();

  if (v6 & 1) != 0 && ([(CNDataMapperContactStore *)self mapper], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, (v8))
  {
    v9 = [(CNDataMapperContactStore *)self mapper];
    v10 = [v9 fetchLimitedAccessContactIdentifiersForBundle:v4];
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  return v10;
}

- (void)addLimitedAccessForBundle:(id)a3 contactIdentifier:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(CNDataMapperContactStore *)self mapper];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CNDataMapperContactStore *)self mapper];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(CNDataMapperContactStore *)self mapper];
      [v11 addLimitedAccessForBundle:v12 contactIdentifier:v6];
    }
  }
}

- (void)addLimitedAccessForBundle:(id)a3 contactIdentifiers:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(CNDataMapperContactStore *)self mapper];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CNDataMapperContactStore *)self mapper];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(CNDataMapperContactStore *)self mapper];
      [v11 addLimitedAccessForBundle:v12 contactIdentifiers:v6];
    }
  }
}

- (void)removeLimitedAccessForBundle:(id)a3 contactIdentifier:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(CNDataMapperContactStore *)self mapper];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CNDataMapperContactStore *)self mapper];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(CNDataMapperContactStore *)self mapper];
      [v11 removeLimitedAccessForBundle:v12 contactIdentifier:v6];
    }
  }
}

- (void)removeLimitedAccessForBundle:(id)a3 contactIdentifiers:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(CNDataMapperContactStore *)self mapper];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CNDataMapperContactStore *)self mapper];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(CNDataMapperContactStore *)self mapper];
      [v11 removeLimitedAccessForBundle:v12 contactIdentifiers:v6];
    }
  }
}

- (id)getLimitedAccessContactsCountForBundle:(id)a3
{
  v4 = a3;
  v5 = [(CNDataMapperContactStore *)self mapper];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CNDataMapperContactStore *)self mapper];
    v8 = [v7 getLimitedAccessContactsCountForBundle:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)populateSyncTableForLimitedAccessAboveSequenceNumber:(id)a3
{
  v4 = a3;
  v5 = [(CNDataMapperContactStore *)self mapper];
  v6 = objc_opt_respondsToSelector();

  if (v6 & 1) != 0 && ([(CNDataMapperContactStore *)self mapper], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, (v8))
  {
    v9 = [(CNDataMapperContactStore *)self mapper];
    v10 = [v9 populateSyncTableForLimitedAccessAboveSequenceNumber:v4];
  }

  else
  {
    v10 = MEMORY[0x1E695E0F8];
  }

  return v10;
}

- (void)purgeLimitedAccessRecordsForBundle:(id)a3
{
  v9 = a3;
  v4 = [(CNDataMapperContactStore *)self mapper];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNDataMapperContactStore *)self mapper];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(CNDataMapperContactStore *)self mapper];
      [v8 purgeLimitedAccessRecordsForBundle:v9];
    }
  }
}

- (void)updateLimitedAccessTable:(id)a3
{
  v9 = a3;
  v4 = [(CNDataMapperContactStore *)self mapper];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNDataMapperContactStore *)self mapper];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(CNDataMapperContactStore *)self mapper];
      [v8 updateLimitedAccessTable:v9];
    }
  }
}

- (id)getLimitedAccessLastSyncSequenceNumber:(id *)a3
{
  v5 = [(CNDataMapperContactStore *)self mapper];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CNDataMapperContactStore *)self mapper];
    v8 = [v7 getLimitedAccessLastSyncSequenceNumber:a3];
  }

  else
  {
    v9 = [CNErrorFactory errorWithCode:1];
    v7 = v9;
    if (a3)
    {
      v10 = v9;
      v8 = 0;
      *a3 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)getWatchLimitedAccessSyncDataStartingAtSequenceNumber:(int64_t)a3
{
  v5 = [(CNDataMapperContactStore *)self mapper];
  v6 = objc_opt_respondsToSelector();

  if (v6 & 1) != 0 && ([(CNDataMapperContactStore *)self mapper], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, (v8))
  {
    v9 = [(CNDataMapperContactStore *)self mapper];
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v11 = [v9 getWatchLimitedAccessSyncDataStartingAtSequenceNumber:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)applyLimitedAccessSyncEvents:(id)a3
{
  v9 = a3;
  v4 = [(CNDataMapperContactStore *)self mapper];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNDataMapperContactStore *)self mapper];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(CNDataMapperContactStore *)self mapper];
      [v8 applyLimitedAccessSyncEvents:v9];
    }
  }
}

- (void)dropAllLimitedAccessRows
{
  v3 = [(CNDataMapperContactStore *)self mapper];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CNDataMapperContactStore *)self mapper];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(CNDataMapperContactStore *)self mapper];
      [v7 dropAllLimitedAccessRows];
    }
  }
}

- (void)dropAllLimitedAccessRowsAndSyncNotify
{
  v3 = [(CNDataMapperContactStore *)self mapper];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CNDataMapperContactStore *)self mapper];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(CNDataMapperContactStore *)self mapper];
      [v7 dropAllLimitedAccessRowsAndSyncNotify];
    }
  }
}

- (void)setLimitedAccessTableCurrentSequenceNumber:(id)a3
{
  v9 = a3;
  v4 = [(CNDataMapperContactStore *)self mapper];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNDataMapperContactStore *)self mapper];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(CNDataMapperContactStore *)self mapper];
      [v8 setLimitedAccessTableCurrentSequenceNumber:v9];
    }
  }
}

- (BOOL)shouldAnalyzeDatabaseWithError:(id *)a3
{
  v5 = [(CNDataMapperContactStore *)self mapper];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = [(CNDataMapperContactStore *)self mapper];
  v8 = [v7 shouldAnalyzeDatabaseWithError:a3];

  return v8;
}

- (BOOL)analyzeDatabaseWithError:(id *)a3
{
  v5 = [(CNDataMapperContactStore *)self mapper];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 1;
  }

  v7 = [(CNDataMapperContactStore *)self mapper];
  v8 = [v7 analyzeDatabaseWithError:a3];

  return v8;
}

- (void)executeSaveRequest:(os_log_t)log response:authorizationContext:error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(*a2 + 40);
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&dword_1954A0000, log, OS_LOG_TYPE_ERROR, "Did fail to save (%{public}@): %{public}@", &v4, 0x16u);
}

@end