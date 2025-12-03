@interface CNDataMapperContactStore
+ (BOOL)hasEnvironmentSettingsEnabledContactsOutOfProcess;
+ (Class)dataMapperClassForConfiguration:(id)configuration;
- (BOOL)_requestDataMapperAccessType:(unint64_t)type error:(id *)error;
- (BOOL)analyzeDatabaseWithError:(id *)error;
- (BOOL)enumerateContactsAndMatchInfoWithFetchRequest:(id)request error:(id *)error usingBlock:(id)block;
- (BOOL)executeChangeHistoryClearRequest:(id)request error:(id *)error;
- (BOOL)executeSaveRequest:(id)request response:(id *)response authorizationContext:(id)context error:(id *)error;
- (BOOL)hasGroups;
- (BOOL)hasMultipleGroupsOrAccounts;
- (BOOL)isValidSaveRequest:(id)request authorizationContext:(id)context error:(id *)error;
- (BOOL)moveContacts:(id)contacts fromContainer:(id)container toContainer:(id)toContainer error:(id *)error;
- (BOOL)registerChangeHistoryClientIdentifier:(id)identifier forContainerIdentifier:(id)containerIdentifier error:(id *)error;
- (BOOL)resetSortDataIfNeededWithError:(id *)error;
- (BOOL)setBestMeIfNeededForGivenName:(id)name familyName:(id)familyName email:(id)email error:(id *)error;
- (BOOL)setDefaultAccountIdentifier:(id)identifier error:(id *)error;
- (BOOL)setMeContact:(id)contact error:(id *)error;
- (BOOL)setMeContact:(id)contact forContainer:(id)container error:(id *)error;
- (BOOL)shouldAnalyzeDatabaseWithError:(id *)error;
- (BOOL)supportsMatchingDictionaries;
- (BOOL)unregisterChangeHistoryClientIdentifier:(id)identifier forContainerIdentifier:(id)containerIdentifier error:(id *)error;
- (CNDataMapperContactStore)init;
- (CNDataMapperContactStore)initWithConfiguration:(id)configuration;
- (CNDataMapperContactStore)initWithDataMapper:(id)mapper dataMapperConfiguration:(id)configuration;
- (CNDataMapperContactStore)initWithEnvironment:(id)environment managedConfiguration:(id)configuration;
- (id)accountsMatchingPredicate:(id)predicate error:(id *)error;
- (id)changeHistoryWithFetchRequest:(id)request error:(id *)error;
- (id)contactCountForFetchRequest:(id)request error:(id *)error;
- (id)contactIdentifierWithMatchingDictionary:(id)dictionary;
- (id)contactWithUserActivityUserInfo:(id)info keysToFetch:(id)fetch;
- (id)contactsForFetchRequest:(id)request matchInfos:(id *)infos error:(id *)error;
- (id)containersMatchingPredicate:(id)predicate error:(id *)error;
- (id)currentHistoryAnchor;
- (id)currentHistoryToken;
- (id)defaultContainerIdentifier;
- (id)description;
- (id)descriptorForRequiredKeysForMatchingDictionary;
- (id)executeFetchRequest:(id)request progressiveResults:(id)results completion:(id)completion;
- (id)fetchLimitedAccessContactIdentifiersForBundle:(id)bundle;
- (id)getBackgroundColorOnImageData:(id)data bitmapFormat:(id)format error:(id *)error;
- (id)getLimitedAccessContactsCountForBundle:(id)bundle;
- (id)getLimitedAccessLastSyncSequenceNumber:(id *)number;
- (id)getWatchLimitedAccessSyncDataStartingAtSequenceNumber:(int64_t)number;
- (id)groupWithIdentifier:(id)identifier error:(id *)error;
- (id)groupsMatchingPredicate:(id)predicate error:(id *)error;
- (id)iOSMapper;
- (id)identifierWithError:(id *)error;
- (id)legacyTetheredSyncComputerAnchor;
- (id)legacyTetheredSyncDeviceAnchor;
- (id)matchingDictionaryForContact:(id)contact;
- (id)meContactIdentifiers:(id *)identifiers;
- (id)membersOfGroupWithIdentifier:(id)identifier keysToFetch:(id)fetch error:(id *)error;
- (id)policyWithDescription:(id)description error:(id *)error;
- (id)populateSyncTableForLimitedAccessAboveSequenceNumber:(id)number;
- (id)requestAccessForEntityType:(int64_t)type;
- (id)sectionListOffsetsForSortOrder:(int64_t)order error:(id *)error;
- (id)serverSearchContainersMatchingPredicate:(id)predicate error:(id *)error;
- (id)subgroupsOfGroupWithIdentifier:(id)identifier error:(id *)error;
- (id)unifiedContactCountWithError:(id *)error;
- (id)unifiedContactsMatchingPredicate:(id)predicate keysToFetch:(id)fetch error:(id *)error;
- (id)usedLabelsForPropertyWithKey:(id)key error:(id *)error;
- (id)userActivityUserInfoForContact:(id)contact;
- (int)saveSequenceCount;
- (void)_logContactsAccessWasDeniedForAccessType:(unint64_t)type error:(id)error;
- (void)_logContactsAccessWasGrantedForAccessType:(unint64_t)type;
- (void)_logGreenTeaForAccessType:(unint64_t)type;
- (void)_logPrivacyAccountingForAccessType:(unint64_t)type;
- (void)addLimitedAccessForBundle:(id)bundle contactIdentifier:(id)identifier;
- (void)addLimitedAccessForBundle:(id)bundle contactIdentifiers:(id)identifiers;
- (void)applyLimitedAccessSyncEvents:(id)events;
- (void)dropAllLimitedAccessRows;
- (void)dropAllLimitedAccessRowsAndSyncNotify;
- (void)purgeLimitedAccessRecordsForBundle:(id)bundle;
- (void)removeLimitedAccessForBundle:(id)bundle contactIdentifier:(id)identifier;
- (void)removeLimitedAccessForBundle:(id)bundle contactIdentifiers:(id)identifiers;
- (void)requestReadAccessForEntityType:(int64_t)type completionHandler:(id)handler;
- (void)setLegacyTetheredSyncComputerAnchor:(id)anchor;
- (void)setLegacyTetheredSyncDeviceAnchor:(id)anchor;
- (void)setLimitedAccessTableCurrentSequenceNumber:(id)number;
- (void)updateLimitedAccessTable:(id)table;
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
  standardPreferences = [MEMORY[0x1E6996888] standardPreferences];
  v3 = [standardPreferences objectForKey:@"SUDO_OOP"];
  v4 = v3;
  if (!v3)
  {
    if (([standardPreferences userHasOptedOutOfPreference:@"TESTING_OUT_OF_PROCESS"] & 1) == 0)
    {
      if (_block_invoke_cn_once_token_0 != -1)
      {
        +[CNDataMapperContactStore hasEnvironmentSettingsEnabledContactsOutOfProcess];
      }

      if (![_block_invoke_cn_once_object_0 BOOLValue])
      {
        bOOLValue = 1;
        goto LABEL_10;
      }
    }

    if (_block_invoke_2_cn_once_token_1 != -1)
    {
      +[CNDataMapperContactStore hasEnvironmentSettingsEnabledContactsOutOfProcess];
    }

    v3 = _block_invoke_2_cn_once_object_1;
  }

  bOOLValue = [v3 BOOLValue];
LABEL_10:

  return bOOLValue;
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
  mapper = [(CNDataMapperContactStore *)self mapper];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) != 0 && [(CNDataMapperContactStore *)self requestMetadataAccessWithError:0])
  {
    mapper2 = [(CNDataMapperContactStore *)self mapper];
    currentHistoryToken = [mapper2 currentHistoryToken];
  }

  else
  {
    currentHistoryToken = 0;
  }

  return currentHistoryToken;
}

- (id)currentHistoryAnchor
{
  mapper = [(CNDataMapperContactStore *)self mapper];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v12 = 0;
    v5 = [(CNDataMapperContactStore *)self requestMetadataAccessWithError:&v12];
    v6 = v12;
    if (v5)
    {
      mapper2 = [(CNDataMapperContactStore *)self mapper];
      currentHistoryAnchor = [mapper2 currentHistoryAnchor];

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

  currentHistoryAnchor = [v10 failureWithError:v6];
LABEL_7:

  return currentHistoryAnchor;
}

- (id)iOSMapper
{
  objc_opt_class();
  mapper = [(CNDataMapperContactStore *)self mapper];
  if (objc_opt_isKindOfClass())
  {
    v4 = mapper;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

+ (Class)dataMapperClassForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ([configurationCopy useOutOfProcessMapperExclusively] || !objc_msgSend(configurationCopy, "useInProcessMapperExclusively") && objc_msgSend(self, "hasEnvironmentSettingsEnabledContactsOutOfProcess"))
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

- (CNDataMapperContactStore)initWithEnvironment:(id)environment managedConfiguration:(id)configuration
{
  configurationCopy = configuration;
  environmentCopy = environment;
  v8 = objc_alloc_init(CNContactStoreConfiguration);
  [(CNContactStoreConfiguration *)v8 setEnvironment:environmentCopy];

  [(CNContactStoreConfiguration *)v8 setManagedConfiguration:configurationCopy];
  v9 = [(CNDataMapperContactStore *)self initWithConfiguration:v8];

  return v9;
}

- (CNDataMapperContactStore)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [[CNDataMapperConfiguration alloc] initWithContactStoreConfiguration:configurationCopy];
  v6 = [objc_opt_class() dataMapperClassForConfiguration:configurationCopy];

  v7 = [[v6 alloc] initWithConfiguration:v5];
  v8 = [(CNDataMapperContactStore *)self initWithDataMapper:v7 dataMapperConfiguration:v5];

  return v8;
}

- (CNDataMapperContactStore)initWithDataMapper:(id)mapper dataMapperConfiguration:(id)configuration
{
  mapperCopy = mapper;
  configurationCopy = configuration;
  v29.receiver = self;
  v29.super_class = CNDataMapperContactStore;
  v9 = [(CNContactStore *)&v29 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_11;
  }

  objc_storeStrong(&v9->_mapper, mapper);
  environment = [configurationCopy environment];
  loggerProvider = [environment loggerProvider];
  contactsLogger = [loggerProvider contactsLogger];
  logger = v10->_logger;
  v10->_logger = contactsLogger;

  v10->_isContactProvider = [configurationCopy isContactProvider];
  v15 = objc_alloc(MEMORY[0x1E6996800]);
  assumedIdentity = [configurationCopy assumedIdentity];
  v17 = [v15 initWithAuditToken:0 assumedIdentity:assumedIdentity];
  regulatoryLogger = v10->_regulatoryLogger;
  v10->_regulatoryLogger = v17;

  v10->_shouldLogPrivacyAccountingAccessEvents = 1;
  mapper = [(CNDataMapperContactStore *)v10 mapper];
  LOBYTE(assumedIdentity) = objc_opt_respondsToSelector();

  if (assumedIdentity)
  {
    mapper2 = [(CNDataMapperContactStore *)v10 mapper];
    v10->_shouldLogPrivacyAccountingAccessEvents = [mapper2 shouldLogPrivacyAccountingAccessEvents];
  }

  mapper3 = [(CNDataMapperContactStore *)v10 mapper];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_7;
  }

  mapper4 = [(CNDataMapperContactStore *)v10 mapper];
  shouldCaptureMetricsForQueries = [mapper4 shouldCaptureMetricsForQueries];

  if (shouldCaptureMetricsForQueries)
  {
    v24 = [CNQueryAnalyticsLogger alloc];
    mapper3 = [configurationCopy assumedIdentity];
    v25 = [(CNQueryAnalyticsLogger *)v24 initWithAuditToken:0 assumedIdentity:mapper3];
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

- (BOOL)setDefaultAccountIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
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
  logger = [(CNDataMapperContactStore *)self logger];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__CNDataMapperContactStore_setDefaultAccountIdentifier_error___block_invoke;
  v11[3] = &unk_1E7415508;
  v11[4] = self;
  v13 = &v19;
  v14 = &v15;
  v8 = identifierCopy;
  v12 = v8;
  [logger settingDefaultAccount:v11];

  v9 = *(v16 + 24);
  if (error && (v16[3] & 1) == 0)
  {
    *error = v20[5];
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

- (BOOL)resetSortDataIfNeededWithError:(id *)error
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
  logger = [(CNDataMapperContactStore *)self logger];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__CNDataMapperContactStore_resetSortDataIfNeededWithError___block_invoke;
  v8[3] = &unk_1E7415530;
  v8[4] = self;
  v8[5] = &v13;
  v8[6] = &v9;
  [logger resettingSortDataIfNeeded:v8];

  if (error)
  {
    *error = v14[5];
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
  mapper = [(CNDataMapperContactStore *)self mapper];
  v5 = [v3 appendName:@"mapper" object:mapper];

  build = [v3 build];

  return build;
}

- (id)identifierWithError:(id *)error
{
  if ([(CNDataMapperContactStore *)self requestMetadataAccessWithError:?]&& ([(CNDataMapperContactStore *)self mapper], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) != 0))
  {
    mapper = [(CNDataMapperContactStore *)self mapper];
    v8 = [mapper identifierWithError:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int)saveSequenceCount
{
  mapper = [(CNDataMapperContactStore *)self mapper];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0 || ![(CNDataMapperContactStore *)self requestMetadataAccessWithError:0])
  {
    return -1;
  }

  mapper2 = [(CNDataMapperContactStore *)self mapper];
  saveSequenceCount = [mapper2 saveSequenceCount];

  return saveSequenceCount;
}

- (id)meContactIdentifiers:(id *)identifiers
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__19;
  v15 = __Block_byref_object_dispose__19;
  v16 = 0;
  logger = [(CNDataMapperContactStore *)self logger];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__CNDataMapperContactStore_meContactIdentifiers___block_invoke;
  v10[3] = &unk_1E7415558;
  v10[4] = self;
  v10[5] = &v11;
  [logger fetchingMeContactIdentifier:v10];

  v6 = v12[5];
  if ((*(*MEMORY[0x1E6996490] + 16))())
  {
    left = [v6 left];
  }

  else
  {
    right = [v6 right];
    if (identifiers)
    {
      right = right;
      *identifiers = right;
    }

    left = 0;
  }

  _Block_object_dispose(&v11, 8);

  return left;
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

- (BOOL)setMeContact:(id)contact error:(id *)error
{
  contactCopy = contact;
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
  logger = [(CNDataMapperContactStore *)self logger];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__CNDataMapperContactStore_setMeContact_error___block_invoke;
  v11[3] = &unk_1E7415508;
  v11[4] = self;
  v13 = &v15;
  v14 = &v21;
  v8 = contactCopy;
  v12 = v8;
  [logger changingMeContact:v11];

  v9 = *(v22 + 24);
  if (error && (v22[3] & 1) == 0)
  {
    *error = v16[5];
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

- (BOOL)setMeContact:(id)contact forContainer:(id)container error:(id *)error
{
  contactCopy = contact;
  containerCopy = container;
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
  logger = [(CNDataMapperContactStore *)self logger];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60__CNDataMapperContactStore_setMeContact_forContainer_error___block_invoke;
  v15[3] = &unk_1E7415580;
  v15[4] = self;
  v18 = &v20;
  v19 = &v26;
  v11 = contactCopy;
  v16 = v11;
  v12 = containerCopy;
  v17 = v12;
  [logger changingMeContact:v15];

  v13 = *(v27 + 24);
  if (error && (v27[3] & 1) == 0)
  {
    *error = v21[5];
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

- (BOOL)setBestMeIfNeededForGivenName:(id)name familyName:(id)familyName email:(id)email error:(id *)error
{
  nameCopy = name;
  familyNameCopy = familyName;
  emailCopy = email;
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
  logger = [(CNDataMapperContactStore *)self logger];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __81__CNDataMapperContactStore_setBestMeIfNeededForGivenName_familyName_email_error___block_invoke;
  v19[3] = &unk_1E74155A8;
  v19[4] = self;
  v23 = &v25;
  v24 = &v31;
  v14 = nameCopy;
  v20 = v14;
  v15 = familyNameCopy;
  v21 = v15;
  v16 = emailCopy;
  v22 = v16;
  [logger changingMeContact:v19];

  v17 = *(v32 + 24);
  if (error && (v32[3] & 1) == 0)
  {
    *error = v26[5];
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

- (id)unifiedContactCountWithError:(id *)error
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
  logger = [(CNDataMapperContactStore *)self logger];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__CNDataMapperContactStore_unifiedContactCountWithError___block_invoke;
  v11[3] = &unk_1E7415530;
  v11[4] = self;
  v11[5] = &v12;
  v11[6] = &v18;
  [logger fetchingContactCount:v11];

  v6 = v13[5];
  v7 = v19[5];
  v8 = v7;
  if (error && !v7)
  {
    v9 = v6;
    *error = v6;
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

- (id)contactCountForFetchRequest:(id)request error:(id *)error
{
  requestCopy = request;
  if ([requestCopy shouldFailIfAccountNotYetSynced] && !-[CNContactStore hasAccountFirstSyncCompleted](self, "hasAccountFirstSyncCompleted"))
  {
    v12 = [CNErrorFactory errorWithCode:1007];
    if (error)
    {
      v12 = v12;
      *error = v12;
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
    logger = [(CNDataMapperContactStore *)self logger];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __62__CNDataMapperContactStore_contactCountForFetchRequest_error___block_invoke;
    v14[3] = &unk_1E7415508;
    v14[4] = self;
    v16 = &v18;
    v17 = &v24;
    v15 = requestCopy;
    [logger fetchingContactCount:v14];

    v8 = v19[5];
    v9 = v25[5];
    v10 = v9;
    if (error && !v9)
    {
      v11 = v8;
      *error = v8;
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

- (id)sectionListOffsetsForSortOrder:(int64_t)order error:(id *)error
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
  logger = [(CNDataMapperContactStore *)self logger];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__CNDataMapperContactStore_sectionListOffsetsForSortOrder_error___block_invoke;
  v13[3] = &unk_1E74155D0;
  v13[4] = self;
  v13[5] = &v14;
  v13[6] = &v20;
  v13[7] = order;
  [logger fetchingContactSectionCounts:v13];

  v8 = v15[5];
  v9 = v21[5];
  v10 = v9;
  if (error && !v9)
  {
    v11 = v8;
    *error = v8;
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

- (BOOL)moveContacts:(id)contacts fromContainer:(id)container toContainer:(id)toContainer error:(id *)error
{
  contactsCopy = contacts;
  containerCopy = container;
  toContainerCopy = toContainer;
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
  logger = [(CNDataMapperContactStore *)self logger];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __73__CNDataMapperContactStore_moveContacts_fromContainer_toContainer_error___block_invoke;
  v19[3] = &unk_1E74155A8;
  v19[4] = self;
  v23 = &v29;
  v24 = &v25;
  v14 = contactsCopy;
  v20 = v14;
  v15 = containerCopy;
  v21 = v15;
  v16 = toContainerCopy;
  v22 = v16;
  [logger fetchingContactSectionCounts:v19];

  v17 = *(v26 + 24);
  if (error && (v26[3] & 1) == 0)
  {
    *error = v30[5];
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

- (id)unifiedContactsMatchingPredicate:(id)predicate keysToFetch:(id)fetch error:(id *)error
{
  predicateCopy = predicate;
  fetchCopy = fetch;
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

  if (!predicateCopy && pthread_main_np() == 1)
  {
    currentProcess = [MEMORY[0x1E69C75D0] currentProcess];
    if ([currentProcess isApplication])
    {
      processInfo = [MEMORY[0x1E696AE30] processInfo];
      environment = [processInfo environment];
      v22 = [environment objectForKeyedSubscript:@"CN_UNIT_TESTING"];
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
  logger = [(CNDataMapperContactStore *)self logger];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __79__CNDataMapperContactStore_unifiedContactsMatchingPredicate_keysToFetch_error___block_invoke_67;
  v33[3] = &unk_1E74155F8;
  v33[4] = self;
  v36 = &v38;
  v34 = fetchCopy;
  v35 = predicateCopy;
  v37 = buf;
  [logger fetchingContacts:v33];

  v26 = v39[5];
  v27 = *(v45 + 5);
  v28 = v27;
  if (error && !v27)
  {
    v29 = v26;
    *error = v26;
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

- (BOOL)enumerateContactsAndMatchInfoWithFetchRequest:(id)request error:(id *)error usingBlock:(id)block
{
  requestCopy = request;
  blockCopy = block;
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

  queryAnalyticsLogger = [(CNDataMapperContactStore *)self queryAnalyticsLogger];
  [queryAnalyticsLogger recordQueryWithFetchRequest:requestCopy];

  *buf = 0;
  v38 = buf;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__19;
  v41 = __Block_byref_object_dispose__19;
  v42 = 0;
  logger = [(CNDataMapperContactStore *)self logger];
  v29 = MEMORY[0x1E69E9820];
  v30 = 3221225472;
  v31 = __91__CNDataMapperContactStore_enumerateContactsAndMatchInfoWithFetchRequest_error_usingBlock___block_invoke_71;
  v32 = &unk_1E7415698;
  selfCopy = self;
  v36 = buf;
  v34 = requestCopy;
  v35 = blockCopy;
  [logger fetchingContacts:&v29];

  v21 = *(v38 + 5);
  v25 = (*(*MEMORY[0x1E6996490] + 16))(*MEMORY[0x1E6996490], v21, v22, v23, v24);
  if ((v25 & 1) == 0)
  {
    right = [v21 right];
    if (error)
    {
      right = right;
      *error = right;
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

- (id)contactsForFetchRequest:(id)request matchInfos:(id *)infos error:(id *)error
{
  requestCopy = request;
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

  queryAnalyticsLogger = [(CNDataMapperContactStore *)self queryAnalyticsLogger];
  [queryAnalyticsLogger recordQueryWithFetchRequest:requestCopy];

  v19 = [CNContactFetchRequestExecutor alloc];
  mapper = [(CNDataMapperContactStore *)self mapper];
  v21 = [(CNContactFetchRequestExecutor *)&v19->super.isa initWithDataMapper:mapper];

  v22 = [(CNContactFetchRequestExecutor *)v21 observableForFetchRequest:requestCopy];
  v23 = [v22 allObjects:error];
  _cn_flatten = [v23 _cn_flatten];

  v25 = [_cn_flatten _cn_map:*MEMORY[0x1E69965A0]];
  if (infos)
  {
    v26 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(_cn_flatten, "count")}];
    v27 = [_cn_flatten _cn_reduce:&__block_literal_global_89_0 initialValue:v26];

    v28 = v27;
    *infos = v27;
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

- (id)executeFetchRequest:(id)request progressiveResults:(id)results completion:(id)completion
{
  requestCopy = request;
  resultsCopy = results;
  completionCopy = completion;
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
  logger = [(CNDataMapperContactStore *)self logger];
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __78__CNDataMapperContactStore_executeFetchRequest_progressiveResults_completion___block_invoke_94;
  v30 = &unk_1E7415708;
  v34 = completionCopy;
  v31 = requestCopy;
  selfCopy = self;
  v22 = v20;
  v33 = v22;
  v35 = resultsCopy;
  [logger fetchingContacts:&v27];

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

- (id)groupsMatchingPredicate:(id)predicate error:(id *)error
{
  predicateCopy = predicate;
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
  logger = [(CNDataMapperContactStore *)self logger];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__CNDataMapperContactStore_groupsMatchingPredicate_error___block_invoke;
  v14[3] = &unk_1E7415508;
  v14[4] = self;
  v16 = &v18;
  v17 = &v24;
  v8 = predicateCopy;
  v15 = v8;
  [logger fetchingGroups:v14];

  v9 = v19[5];
  v10 = v25[5];
  v11 = v10;
  if (error && !v10)
  {
    v12 = v9;
    *error = v9;
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

- (id)groupWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
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
  logger = [(CNDataMapperContactStore *)self logger];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__CNDataMapperContactStore_groupWithIdentifier_error___block_invoke;
  v14[3] = &unk_1E7415508;
  v14[4] = self;
  v16 = &v18;
  v17 = &v24;
  v8 = identifierCopy;
  v15 = v8;
  [logger fetchingGroups:v14];

  v9 = v19[5];
  v10 = v25[5];
  v11 = v10;
  if (error && !v10)
  {
    v12 = v9;
    *error = v9;
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

- (id)membersOfGroupWithIdentifier:(id)identifier keysToFetch:(id)fetch error:(id *)error
{
  identifierCopy = identifier;
  fetchCopy = fetch;
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
  logger = [(CNDataMapperContactStore *)self logger];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75__CNDataMapperContactStore_membersOfGroupWithIdentifier_keysToFetch_error___block_invoke;
  v18[3] = &unk_1E74155F8;
  v18[4] = self;
  v21 = &v23;
  v11 = identifierCopy;
  v19 = v11;
  v12 = fetchCopy;
  v20 = v12;
  v22 = &v29;
  [logger fetchingContacts:v18];

  v13 = v24[5];
  v14 = v30[5];
  v15 = v14;
  if (error && !v14)
  {
    v16 = v13;
    *error = v13;
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

- (id)subgroupsOfGroupWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
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
  logger = [(CNDataMapperContactStore *)self logger];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__CNDataMapperContactStore_subgroupsOfGroupWithIdentifier_error___block_invoke;
  v14[3] = &unk_1E7415508;
  v14[4] = self;
  v16 = &v18;
  v17 = &v24;
  v8 = identifierCopy;
  v15 = v8;
  [logger fetchingGroups:v14];

  v9 = v19[5];
  v10 = v25[5];
  v11 = v10;
  if (error && !v10)
  {
    v12 = v9;
    *error = v9;
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

- (id)containersMatchingPredicate:(id)predicate error:(id *)error
{
  predicateCopy = predicate;
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
  logger = [(CNDataMapperContactStore *)self logger];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__CNDataMapperContactStore_containersMatchingPredicate_error___block_invoke;
  v14[3] = &unk_1E7415508;
  v14[4] = self;
  v16 = &v18;
  v17 = &v24;
  v8 = predicateCopy;
  v15 = v8;
  [logger fetchingContainers:v14];

  v9 = v19[5];
  v10 = v25[5];
  v11 = v10;
  if (error && !v10)
  {
    v12 = v9;
    *error = v9;
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

- (id)serverSearchContainersMatchingPredicate:(id)predicate error:(id *)error
{
  predicateCopy = predicate;
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
  logger = [(CNDataMapperContactStore *)self logger];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__CNDataMapperContactStore_serverSearchContainersMatchingPredicate_error___block_invoke;
  v14[3] = &unk_1E7415508;
  v14[4] = self;
  v16 = &v18;
  v17 = &v24;
  v8 = predicateCopy;
  v15 = v8;
  [logger fetchingContainers:v14];

  v9 = v19[5];
  v10 = v25[5];
  v11 = v10;
  if (error && !v10)
  {
    v12 = v9;
    *error = v9;
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

- (id)policyWithDescription:(id)description error:(id *)error
{
  descriptionCopy = description;
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
  logger = [(CNDataMapperContactStore *)self logger];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__CNDataMapperContactStore_policyWithDescription_error___block_invoke;
  v14[3] = &unk_1E7415508;
  v14[4] = self;
  v16 = &v18;
  v17 = &v24;
  v8 = descriptionCopy;
  v15 = v8;
  [logger fetchingContainers:v14];

  v9 = v19[5];
  v10 = v25[5];
  v11 = v10;
  if (error && !v10)
  {
    v12 = v9;
    *error = v9;
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

- (id)usedLabelsForPropertyWithKey:(id)key error:(id *)error
{
  keyCopy = key;
  mapper = [(CNDataMapperContactStore *)self mapper];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    mapper2 = [(CNDataMapperContactStore *)self mapper];
    v10 = [mapper2 usedLabelsForPropertyWithKey:keyCopy error:error];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)accountsMatchingPredicate:(id)predicate error:(id *)error
{
  predicateCopy = predicate;
  if ([(CNDataMapperContactStore *)self requestMetadataAccessWithError:error])
  {
    mapper = [(CNDataMapperContactStore *)self mapper];
    v8 = [mapper accountsMatchingPredicate:predicateCopy error:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)executeSaveRequest:(id)request response:(id *)response authorizationContext:(id)context error:(id *)error
{
  v55 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  contextCopy = context;
  v10 = +[CNAPITriageLogger os_log];
  v11 = os_signpost_id_generate(v10);
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  timeProvider = [currentEnvironment timeProvider];
  [timeProvider timestamp];
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
  logger = [(CNDataMapperContactStore *)self logger];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __83__CNDataMapperContactStore_executeSaveRequest_response_authorizationContext_error___block_invoke;
  v34[3] = &unk_1E7415730;
  v34[4] = self;
  v37 = buf;
  v21 = requestCopy;
  v35 = v21;
  v22 = contextCopy;
  v36 = v22;
  v38 = &v49;
  v39 = &v40;
  [logger saving:v34];

  v23 = v17;
  v24 = v23;
  if (v18 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v23))
  {
    *v53 = 0;
    _os_signpost_emit_with_name_impl(&dword_1954A0000, v24, OS_SIGNPOST_INTERVAL_END, v19, "Saving Contacts", "", v53, 2u);
  }

  if (response)
  {
    *response = v41[5];
  }

  currentEnvironment2 = [MEMORY[0x1E69966E8] currentEnvironment];
  timeProvider2 = [currentEnvironment2 timeProvider];
  [timeProvider2 timestamp];
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
  if (error && (v50[3] & 1) == 0)
  {
    *error = *(v47[0] + 40);
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

- (BOOL)isValidSaveRequest:(id)request authorizationContext:(id)context error:(id *)error
{
  requestCopy = request;
  contextCopy = context;
  storeIdentifier = [objc_opt_class() storeIdentifier];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__19;
  v28 = __Block_byref_object_dispose__19;
  v29 = 0;
  addedContactsByContainerIdentifier = [requestCopy addedContactsByContainerIdentifier];
  allValues = [addedContactsByContainerIdentifier allValues];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __74__CNDataMapperContactStore_isValidSaveRequest_authorizationContext_error___block_invoke;
  v21[3] = &unk_1E7415780;
  v12 = storeIdentifier;
  v22 = v12;
  v23 = &v24;
  v13 = [allValues _cn_all:v21];

  if (v13)
  {
    v14 = (v25 + 5);
    obj = v25[5];
    v15 = [CNSaveRequestVerifier isValidSaveRequest:requestCopy error:&obj];
    objc_storeStrong(v14, obj);
    v16 = !v15;
    if (!contextCopy)
    {
      v16 = 1;
    }

    if ((v16 & 1) == 0)
    {
      v17 = (v25 + 5);
      v19 = v25[5];
      v15 = [CNSaveRequestVerifier isSaveRequest:requestCopy authorizedForSavingWithContext:contextCopy error:&v19];
      objc_storeStrong(v17, v19);
    }
  }

  else
  {
    v15 = 0;
  }

  if (error && !v15)
  {
    *error = v25[5];
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
    logger = [(CNDataMapperContactStore *)self logger];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __54__CNDataMapperContactStore_defaultContainerIdentifier__block_invoke;
    v6[3] = &unk_1E74157A8;
    v6[4] = self;
    v6[5] = &v7;
    [logger fetchingDefaultContainerIdentifier:v6];

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
  mapper = [(CNDataMapperContactStore *)self mapper];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) != 0 && [(CNDataMapperContactStore *)self requestMetadataAccessWithError:0])
  {
    mapper2 = [(CNDataMapperContactStore *)self mapper];
    legacyTetheredSyncDeviceAnchor = [mapper2 legacyTetheredSyncDeviceAnchor];
  }

  else
  {
    legacyTetheredSyncDeviceAnchor = 0;
  }

  return legacyTetheredSyncDeviceAnchor;
}

- (void)setLegacyTetheredSyncDeviceAnchor:(id)anchor
{
  anchorCopy = anchor;
  mapper = [(CNDataMapperContactStore *)self mapper];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) != 0 && [(CNDataMapperContactStore *)self requestMetadataAccessWithError:0])
  {
    mapper2 = [(CNDataMapperContactStore *)self mapper];
    [mapper2 setLegacyTetheredSyncDeviceAnchor:anchorCopy];
  }
}

- (id)legacyTetheredSyncComputerAnchor
{
  mapper = [(CNDataMapperContactStore *)self mapper];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) != 0 && [(CNDataMapperContactStore *)self requestMetadataAccessWithError:0])
  {
    mapper2 = [(CNDataMapperContactStore *)self mapper];
    legacyTetheredSyncComputerAnchor = [mapper2 legacyTetheredSyncComputerAnchor];
  }

  else
  {
    legacyTetheredSyncComputerAnchor = 0;
  }

  return legacyTetheredSyncComputerAnchor;
}

- (void)setLegacyTetheredSyncComputerAnchor:(id)anchor
{
  anchorCopy = anchor;
  mapper = [(CNDataMapperContactStore *)self mapper];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) != 0 && [(CNDataMapperContactStore *)self requestMetadataAccessWithError:0])
  {
    mapper2 = [(CNDataMapperContactStore *)self mapper];
    [mapper2 setLegacyTetheredSyncComputerAnchor:anchorCopy];
  }
}

- (id)contactWithUserActivityUserInfo:(id)info keysToFetch:(id)fetch
{
  infoCopy = info;
  fetchCopy = fetch;
  if ((*(*MEMORY[0x1E6996548] + 16))() & 1) == 0 && ([(CNDataMapperContactStore *)self mapper], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_opt_respondsToSelector(), v8, (v9) && [(CNDataMapperContactStore *)self requestContactsReadAccessWithError:0])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__19;
    v21 = __Block_byref_object_dispose__19;
    v22 = 0;
    logger = [(CNDataMapperContactStore *)self logger];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __72__CNDataMapperContactStore_contactWithUserActivityUserInfo_keysToFetch___block_invoke;
    v13[3] = &unk_1E74157D0;
    v13[4] = self;
    v16 = &v17;
    v14 = infoCopy;
    v15 = fetchCopy;
    [logger fetchingContactWithUserActivity:v13];

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

- (id)userActivityUserInfoForContact:(id)contact
{
  contactCopy = contact;
  v5 = 0;
  if ([(CNDataMapperContactStore *)self requestContactsReadAccessWithError:0])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__19;
    v15 = __Block_byref_object_dispose__19;
    v16 = 0;
    logger = [(CNDataMapperContactStore *)self logger];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__CNDataMapperContactStore_userActivityUserInfoForContact___block_invoke;
    v8[3] = &unk_1E74157F8;
    v8[4] = self;
    v10 = &v11;
    v9 = contactCopy;
    [logger fetchingContactWithUserActivity:v8];

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
  mapper = [(CNDataMapperContactStore *)self mapper];
  v3 = objc_opt_respondsToSelector();

  return v3 & 1;
}

- (id)descriptorForRequiredKeysForMatchingDictionary
{
  mapper = [(CNDataMapperContactStore *)self mapper];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    mapper2 = [(CNDataMapperContactStore *)self mapper];
    descriptorForRequiredKeysForMatchingDictionary = [mapper2 descriptorForRequiredKeysForMatchingDictionary];
  }

  else
  {
    descriptorForRequiredKeysForMatchingDictionary = 0;
  }

  return descriptorForRequiredKeysForMatchingDictionary;
}

- (id)contactIdentifierWithMatchingDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  mapper = [(CNDataMapperContactStore *)self mapper];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) != 0 && [(CNDataMapperContactStore *)self requestContactsReadAccessWithError:0])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__19;
    v17 = __Block_byref_object_dispose__19;
    v18 = 0;
    logger = [(CNDataMapperContactStore *)self logger];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __68__CNDataMapperContactStore_contactIdentifierWithMatchingDictionary___block_invoke;
    v10[3] = &unk_1E7415820;
    v12 = &v13;
    v10[4] = self;
    v11 = dictionaryCopy;
    [logger fetchingContactIdentifierWithMatchingDictionary:v10];

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

- (id)matchingDictionaryForContact:(id)contact
{
  contactCopy = contact;
  mapper = [(CNDataMapperContactStore *)self mapper];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) != 0 && [(CNDataMapperContactStore *)self requestContactsReadAccessWithError:0])
  {
    mapper2 = [(CNDataMapperContactStore *)self mapper];
    v8 = [mapper2 matchingDictionaryForContact:contactCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)registerChangeHistoryClientIdentifier:(id)identifier forContainerIdentifier:(id)containerIdentifier error:(id *)error
{
  identifierCopy = identifier;
  containerIdentifierCopy = containerIdentifier;
  mapper = [(CNDataMapperContactStore *)self mapper];
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
    logger = [(CNDataMapperContactStore *)self logger];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __95__CNDataMapperContactStore_registerChangeHistoryClientIdentifier_forContainerIdentifier_error___block_invoke;
    v15[3] = &unk_1E7415580;
    v15[4] = self;
    v18 = &v20;
    v19 = &v26;
    v16 = identifierCopy;
    v17 = containerIdentifierCopy;
    [logger registeringForChangeHistory:v15];

    v13 = *(v27 + 24);
    if (error && (v27[3] & 1) == 0)
    {
      *error = v21[5];
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

- (BOOL)unregisterChangeHistoryClientIdentifier:(id)identifier forContainerIdentifier:(id)containerIdentifier error:(id *)error
{
  identifierCopy = identifier;
  containerIdentifierCopy = containerIdentifier;
  mapper = [(CNDataMapperContactStore *)self mapper];
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
    logger = [(CNDataMapperContactStore *)self logger];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __97__CNDataMapperContactStore_unregisterChangeHistoryClientIdentifier_forContainerIdentifier_error___block_invoke;
    v15[3] = &unk_1E7415580;
    v15[4] = self;
    v18 = &v20;
    v19 = &v26;
    v16 = identifierCopy;
    v17 = containerIdentifierCopy;
    [logger unregisteringForChangeHistory:v15];

    v13 = *(v27 + 24);
    if (error && (v27[3] & 1) == 0)
    {
      *error = v21[5];
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

- (id)changeHistoryWithFetchRequest:(id)request error:(id *)error
{
  requestCopy = request;
  mapper = [(CNDataMapperContactStore *)self mapper];
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
  [v9 willFetchHistoryWithRequest:requestCopy];
  logger = [(CNDataMapperContactStore *)self logger];
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __64__CNDataMapperContactStore_changeHistoryWithFetchRequest_error___block_invoke;
  v29 = &unk_1E7415508;
  selfCopy = self;
  v32 = &v34;
  v33 = &v40;
  v11 = requestCopy;
  v31 = v11;
  [logger fetchingChangeHistory:&v26];

  resultType = [v11 resultType];
  if (v41[5])
  {
    v13 = resultType;
    if (![v11 resultType] || v13 == 2)
    {
      v17 = [CNChangeHistoryLegacyResultConverter alloc];
      additionalContactKeyDescriptors = [v11 additionalContactKeyDescriptors];
      latestChangeAnchor2 = [(CNChangeHistoryLegacyResultConverter *)v17 initWithContactStore:self additionalContactKeyDescriptors:additionalContactKeyDescriptors];

      v19 = [(CNChangeHistoryLegacyResultConverter *)latestChangeAnchor2 eventsFromResult:v41[5]];
      if ([v19 isSuccess])
      {
        value = [v19 value];
        latestChangeAnchor = [v41[5] latestChangeAnchor];
        [v9 didFetchHistoryEvents:value anchor:latestChangeAnchor];
      }

      else
      {
        value = [v19 error];
        [v9 fetchDidFailWithError:value];
      }
    }

    else
    {
      if ([v11 resultType] != 1)
      {
        goto LABEL_14;
      }

      changesCount = [v41[5] changesCount];
      latestChangeAnchor2 = [v41[5] latestChangeAnchor];
      [v9 didFetchHistoryEventsCount:changesCount anchor:latestChangeAnchor2 truncated:{objc_msgSend(v41[5], "changesTruncated")}];
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
  if (error && !v23)
  {
    v24 = v22;
    *error = v22;
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

- (BOOL)executeChangeHistoryClearRequest:(id)request error:(id *)error
{
  requestCopy = request;
  mapper = [(CNDataMapperContactStore *)self mapper];
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
    logger = [(CNDataMapperContactStore *)self logger];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67__CNDataMapperContactStore_executeChangeHistoryClearRequest_error___block_invoke;
    v12[3] = &unk_1E7415508;
    v12[4] = self;
    v14 = &v16;
    v15 = &v22;
    v13 = requestCopy;
    [logger clearingChangeHistory:v12];

    v10 = *(v23 + 24);
    if (error && (v23[3] & 1) == 0)
    {
      *error = v17[5];
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
  mapper = [(CNDataMapperContactStore *)self mapper];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0 || ![(CNDataMapperContactStore *)self requestMetadataAccessWithError:0])
  {
    return 0;
  }

  mapper2 = [(CNDataMapperContactStore *)self mapper];
  hasMultipleGroupsOrAccounts = [mapper2 hasMultipleGroupsOrAccounts];

  return hasMultipleGroupsOrAccounts;
}

- (BOOL)hasGroups
{
  mapper = [(CNDataMapperContactStore *)self mapper];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0 || ![(CNDataMapperContactStore *)self requestMetadataAccessWithError:0])
  {
    return 0;
  }

  mapper2 = [(CNDataMapperContactStore *)self mapper];
  hasGroups = [mapper2 hasGroups];

  return hasGroups;
}

- (id)getBackgroundColorOnImageData:(id)data bitmapFormat:(id)format error:(id *)error
{
  dataCopy = data;
  formatCopy = format;
  mapper = [(CNDataMapperContactStore *)self mapper];
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
    logger = [(CNDataMapperContactStore *)self logger];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __77__CNDataMapperContactStore_getBackgroundColorOnImageData_bitmapFormat_error___block_invoke;
    v19[3] = &unk_1E7415848;
    v22 = &v30;
    v19[4] = self;
    v20 = dataCopy;
    v21 = formatCopy;
    v23 = &v24;
    [logger gettingBackgroundColor:v19];

    v13 = v25[5];
    v14 = v31[5];
    v15 = v14;
    if (error && !v14)
    {
      v16 = v13;
      *error = v13;
    }

    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v30, 8);
  }

  else
  {
    v17 = [CNErrorFactory errorWithCode:1005];
    if (error)
    {
      v17 = v17;
      *error = v17;
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

- (id)requestAccessForEntityType:(int64_t)type
{
  v5 = objc_alloc_init(MEMORY[0x1E69967D0]);
  logger = [(CNDataMapperContactStore *)self logger];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__CNDataMapperContactStore_requestAccessForEntityType___block_invoke;
  v10[3] = &unk_1E7415898;
  v11 = v5;
  typeCopy = type;
  v10[4] = self;
  v7 = v5;
  [logger requestingAccessForContacts:v10];

  future = [v7 future];

  return future;
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

- (void)requestReadAccessForEntityType:(int64_t)type completionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(CNDataMapperContactStore *)self isContactProvider])
  {
    handlerCopy[2](handlerCopy, 1, 0);
  }

  mapper = [(CNDataMapperContactStore *)self mapper];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__CNDataMapperContactStore_requestReadAccessForEntityType_completionHandler___block_invoke;
  v9[3] = &unk_1E74158C0;
  v9[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [mapper requestAccessForEntityType:type completionHandler:v9];
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

- (BOOL)_requestDataMapperAccessType:(unint64_t)type error:(id *)error
{
  if ([(CNDataMapperContactStore *)self isContactProvider])
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    mapper = [(CNDataMapperContactStore *)self mapper];
    v12 = 0;
    v7 = [mapper requestAccessForEntityType:0 error:&v12];
    v9 = v12;

    if (v7)
    {
      [(CNDataMapperContactStore *)self _logContactsAccessWasGrantedForAccessType:type];
    }

    else
    {
      [(CNDataMapperContactStore *)self _logContactsAccessWasDeniedForAccessType:type error:v9];
      if (error)
      {
        v10 = v9;
        *error = v9;
      }
    }
  }

  return v7;
}

- (void)_logContactsAccessWasGrantedForAccessType:(unint64_t)type
{
  mapper = [(CNDataMapperContactStore *)self mapper];
  shouldLogContactsAccess = [mapper shouldLogContactsAccess];

  if (shouldLogContactsAccess)
  {
    logger = [(CNDataMapperContactStore *)self logger];
    [logger contactsAccessWasGranted];

    [(CNDataMapperContactStore *)self _logGreenTeaForAccessType:type];

    [(CNDataMapperContactStore *)self _logPrivacyAccountingForAccessType:type];
  }
}

- (void)_logContactsAccessWasDeniedForAccessType:(unint64_t)type error:(id)error
{
  errorCopy = error;
  mapper = [(CNDataMapperContactStore *)self mapper];
  shouldLogContactsAccess = [mapper shouldLogContactsAccess];

  if (shouldLogContactsAccess)
  {
    logger = [(CNDataMapperContactStore *)self logger];
    [logger contactsAccessWasDeniedWithError:errorCopy];
  }
}

- (void)_logGreenTeaForAccessType:(unint64_t)type
{
  if (type == 1)
  {
    regulatoryLogger = [(CNDataMapperContactStore *)self regulatoryLogger];
    [regulatoryLogger modifyingContactsData];
  }

  else
  {
    if (type)
    {
      return;
    }

    regulatoryLogger = [(CNDataMapperContactStore *)self regulatoryLogger];
    [regulatoryLogger readingContactsData];
  }
}

- (void)_logPrivacyAccountingForAccessType:(unint64_t)type
{
  if (type != 2 && [(CNDataMapperContactStore *)self shouldLogPrivacyAccountingAccessEvents])
  {
    regulatoryLogger = [(CNDataMapperContactStore *)self regulatoryLogger];
    [regulatoryLogger logContactsDataAccessEvent];
  }
}

- (id)fetchLimitedAccessContactIdentifiersForBundle:(id)bundle
{
  bundleCopy = bundle;
  mapper = [(CNDataMapperContactStore *)self mapper];
  v6 = objc_opt_respondsToSelector();

  if (v6 & 1) != 0 && ([(CNDataMapperContactStore *)self mapper], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, (v8))
  {
    mapper2 = [(CNDataMapperContactStore *)self mapper];
    v10 = [mapper2 fetchLimitedAccessContactIdentifiersForBundle:bundleCopy];
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  return v10;
}

- (void)addLimitedAccessForBundle:(id)bundle contactIdentifier:(id)identifier
{
  bundleCopy = bundle;
  identifierCopy = identifier;
  mapper = [(CNDataMapperContactStore *)self mapper];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    mapper2 = [(CNDataMapperContactStore *)self mapper];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      mapper3 = [(CNDataMapperContactStore *)self mapper];
      [mapper3 addLimitedAccessForBundle:bundleCopy contactIdentifier:identifierCopy];
    }
  }
}

- (void)addLimitedAccessForBundle:(id)bundle contactIdentifiers:(id)identifiers
{
  bundleCopy = bundle;
  identifiersCopy = identifiers;
  mapper = [(CNDataMapperContactStore *)self mapper];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    mapper2 = [(CNDataMapperContactStore *)self mapper];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      mapper3 = [(CNDataMapperContactStore *)self mapper];
      [mapper3 addLimitedAccessForBundle:bundleCopy contactIdentifiers:identifiersCopy];
    }
  }
}

- (void)removeLimitedAccessForBundle:(id)bundle contactIdentifier:(id)identifier
{
  bundleCopy = bundle;
  identifierCopy = identifier;
  mapper = [(CNDataMapperContactStore *)self mapper];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    mapper2 = [(CNDataMapperContactStore *)self mapper];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      mapper3 = [(CNDataMapperContactStore *)self mapper];
      [mapper3 removeLimitedAccessForBundle:bundleCopy contactIdentifier:identifierCopy];
    }
  }
}

- (void)removeLimitedAccessForBundle:(id)bundle contactIdentifiers:(id)identifiers
{
  bundleCopy = bundle;
  identifiersCopy = identifiers;
  mapper = [(CNDataMapperContactStore *)self mapper];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    mapper2 = [(CNDataMapperContactStore *)self mapper];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      mapper3 = [(CNDataMapperContactStore *)self mapper];
      [mapper3 removeLimitedAccessForBundle:bundleCopy contactIdentifiers:identifiersCopy];
    }
  }
}

- (id)getLimitedAccessContactsCountForBundle:(id)bundle
{
  bundleCopy = bundle;
  mapper = [(CNDataMapperContactStore *)self mapper];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    mapper2 = [(CNDataMapperContactStore *)self mapper];
    v8 = [mapper2 getLimitedAccessContactsCountForBundle:bundleCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)populateSyncTableForLimitedAccessAboveSequenceNumber:(id)number
{
  numberCopy = number;
  mapper = [(CNDataMapperContactStore *)self mapper];
  v6 = objc_opt_respondsToSelector();

  if (v6 & 1) != 0 && ([(CNDataMapperContactStore *)self mapper], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, (v8))
  {
    mapper2 = [(CNDataMapperContactStore *)self mapper];
    v10 = [mapper2 populateSyncTableForLimitedAccessAboveSequenceNumber:numberCopy];
  }

  else
  {
    v10 = MEMORY[0x1E695E0F8];
  }

  return v10;
}

- (void)purgeLimitedAccessRecordsForBundle:(id)bundle
{
  bundleCopy = bundle;
  mapper = [(CNDataMapperContactStore *)self mapper];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    mapper2 = [(CNDataMapperContactStore *)self mapper];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      mapper3 = [(CNDataMapperContactStore *)self mapper];
      [mapper3 purgeLimitedAccessRecordsForBundle:bundleCopy];
    }
  }
}

- (void)updateLimitedAccessTable:(id)table
{
  tableCopy = table;
  mapper = [(CNDataMapperContactStore *)self mapper];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    mapper2 = [(CNDataMapperContactStore *)self mapper];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      mapper3 = [(CNDataMapperContactStore *)self mapper];
      [mapper3 updateLimitedAccessTable:tableCopy];
    }
  }
}

- (id)getLimitedAccessLastSyncSequenceNumber:(id *)number
{
  mapper = [(CNDataMapperContactStore *)self mapper];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    mapper2 = [(CNDataMapperContactStore *)self mapper];
    v8 = [mapper2 getLimitedAccessLastSyncSequenceNumber:number];
  }

  else
  {
    v9 = [CNErrorFactory errorWithCode:1];
    mapper2 = v9;
    if (number)
    {
      v10 = v9;
      v8 = 0;
      *number = mapper2;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)getWatchLimitedAccessSyncDataStartingAtSequenceNumber:(int64_t)number
{
  mapper = [(CNDataMapperContactStore *)self mapper];
  v6 = objc_opt_respondsToSelector();

  if (v6 & 1) != 0 && ([(CNDataMapperContactStore *)self mapper], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, (v8))
  {
    mapper2 = [(CNDataMapperContactStore *)self mapper];
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:number];
    v11 = [mapper2 getWatchLimitedAccessSyncDataStartingAtSequenceNumber:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)applyLimitedAccessSyncEvents:(id)events
{
  eventsCopy = events;
  mapper = [(CNDataMapperContactStore *)self mapper];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    mapper2 = [(CNDataMapperContactStore *)self mapper];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      mapper3 = [(CNDataMapperContactStore *)self mapper];
      [mapper3 applyLimitedAccessSyncEvents:eventsCopy];
    }
  }
}

- (void)dropAllLimitedAccessRows
{
  mapper = [(CNDataMapperContactStore *)self mapper];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    mapper2 = [(CNDataMapperContactStore *)self mapper];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      mapper3 = [(CNDataMapperContactStore *)self mapper];
      [mapper3 dropAllLimitedAccessRows];
    }
  }
}

- (void)dropAllLimitedAccessRowsAndSyncNotify
{
  mapper = [(CNDataMapperContactStore *)self mapper];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    mapper2 = [(CNDataMapperContactStore *)self mapper];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      mapper3 = [(CNDataMapperContactStore *)self mapper];
      [mapper3 dropAllLimitedAccessRowsAndSyncNotify];
    }
  }
}

- (void)setLimitedAccessTableCurrentSequenceNumber:(id)number
{
  numberCopy = number;
  mapper = [(CNDataMapperContactStore *)self mapper];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    mapper2 = [(CNDataMapperContactStore *)self mapper];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      mapper3 = [(CNDataMapperContactStore *)self mapper];
      [mapper3 setLimitedAccessTableCurrentSequenceNumber:numberCopy];
    }
  }
}

- (BOOL)shouldAnalyzeDatabaseWithError:(id *)error
{
  mapper = [(CNDataMapperContactStore *)self mapper];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  mapper2 = [(CNDataMapperContactStore *)self mapper];
  v8 = [mapper2 shouldAnalyzeDatabaseWithError:error];

  return v8;
}

- (BOOL)analyzeDatabaseWithError:(id *)error
{
  mapper = [(CNDataMapperContactStore *)self mapper];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 1;
  }

  mapper2 = [(CNDataMapperContactStore *)self mapper];
  v8 = [mapper2 analyzeDatabaseWithError:error];

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