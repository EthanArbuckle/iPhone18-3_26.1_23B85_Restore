@interface CNiOSAddressBookDataMapper
+ (const)_copyLocalSourceIfEnabledInAddressBook:;
+ (id)contactBuffersDecoderForFetchRequest:(id)request posterDataStore:(id)store;
+ (id)encodedPeopleFetcherForForFetchRequest:(id)request addressBook:(void *)book managedConfiguration:(id)configuration addressBookCompletionHandler:(id)handler cursorCompletionHandler:(id)completionHandler environment:(id)environment identifierAuditMode:(int64_t)mode authorizationContext:(id)self0;
+ (id)os_log;
+ (void)_copyEligiblePrimarySourceForAccountWithIdentifier:(uint64_t)identifier addressBook:(void *)book error:;
+ (void)initialize;
- (BOOL)_fetchAccountsInSaveContext:(void *)context error:;
- (BOOL)analyzeDatabaseWithError:(id *)error;
- (BOOL)executeChangeHistoryClearRequest:(id)request error:(id *)error;
- (BOOL)executeSaveRequest:(id)request response:(id *)response authorizationContext:(id)context error:(id *)error;
- (BOOL)fetchContactsForFetchRequest:(id)request error:(id *)error batchHandler:(id)handler;
- (BOOL)fetchEncodedContactsForFetchRequest:(id)request error:(id *)error cancelationToken:(id)token batchHandler:(id)handler;
- (BOOL)hasGroups;
- (BOOL)hasMultipleGroupsOrAccounts;
- (BOOL)moveContacts:(id)contacts fromContainer:(id)container toContainer:(id)toContainer error:(id *)error;
- (BOOL)registerChangeHistoryClientIdentifier:(id)identifier forContainerIdentifier:(id)containerIdentifier error:(id *)error;
- (BOOL)requestAccessForEntityType:(int64_t)type error:(id *)error;
- (BOOL)setBestMeIfNeededForGivenName:(id)name familyName:(id)familyName email:(id)email error:(id *)error;
- (BOOL)setDefaultAccountIdentifier:(id)identifier error:(id *)error;
- (BOOL)setMeContact:(id)contact error:(id *)error;
- (BOOL)setMeContact:(id)contact forContainer:(id)container error:(id *)error;
- (BOOL)shouldAnalyzeDatabaseWithError:(id *)error;
- (BOOL)unregisterChangeHistoryClientIdentifier:(id)identifier forContainerIdentifier:(id)containerIdentifier error:(id *)error;
- (CNiOSAddressBookDataMapper)init;
- (CNiOSAddressBookDataMapper)initWithConfiguration:(id)configuration addressBook:(id)book;
- (__CFArray)copyChangeTableRowIDsFromChangeIDs:(__CFArray *)Mutable;
- (id)_containersMatchingPredicate:(char)predicate remote:(void *)remote error:;
- (id)_legacyContactCountForFetchRequest:(void *)request error:;
- (id)accountsMatchingPredicate:(id)predicate error:(id *)error;
- (id)changeHistoryWithFetchRequest:(id)request error:(id *)error;
- (id)contactCountForFetchRequest:(id)request error:(id *)error;
- (id)contactIdentifierWithMatchingDictionary:(id)dictionary;
- (id)contactObservableForFetchRequest:(id)request;
- (id)contactWithUserActivityUserInfo:(id)info keysToFetch:(id)fetch;
- (id)currentHistoryAnchor;
- (id)currentHistoryToken;
- (id)defaultContainerIdentifier;
- (id)defaultContainerIdentifierForAddressBook:(void *)book error:;
- (id)encodedContactsCursorForFetchRequest:(id)request cursorCleanupBlock:(id)block error:(id *)error;
- (id)encodedPeopleFetcherWithAddressBook:(void *)book addressBookCleanupBlock:(void *)block cursorCleanupBlock:(void *)cleanupBlock fetchRequest:;
- (id)executeFetchRequest:(id)request progressiveResults:(id)results completion:(id)completion;
- (id)fetchAndDecodeEncodedContactsForFetchRequest:(void *)request error:(void *)error cancelationToken:(void *)token batchHandler:;
- (id)fetchLimitedAccessContactIdentifiersForBundle:(id)bundle;
- (id)getLimitedAccessContactsCountForBundle:(id)bundle;
- (id)getLimitedAccessLastSyncSequenceNumber:(id *)number;
- (id)getWatchLimitedAccessSyncDataStartingAtSequenceNumber:(id)number;
- (id)groupsMatchingPredicate:(id)predicate error:(id *)error;
- (id)groupsWithIdentifiers:(id)identifiers error:(id *)error;
- (id)identifierWithError:(id *)error;
- (id)legacyTetheredSyncAnchorForKey:(uint64_t)key;
- (id)matchingDictionaryForContact:(id)contact;
- (id)meContactIdentifiers:(id *)identifiers;
- (id)policyForContainerWithIdentifier:(id)identifier error:(id *)error;
- (id)policyWithDescription:(id)description error:(id *)error;
- (id)populateSyncTableForLimitedAccessAboveSequenceNumber:(id)number;
- (id)sectionListOffsetsForSortOrder:(int64_t)order error:(id *)error;
- (id)subgroupsOfGroupWithIdentifier:(id)identifier error:(id *)error;
- (id)unifiedContactCountWithError:(id *)error;
- (id)usedLabelsForPropertyWithKey:(id)key error:(id *)error;
- (id)userActivityUserInfoForContact:(id)contact;
- (int)saveSequenceCount;
- (uint64_t)_canReadUnderManagementRestrictionsFromSource:(uint64_t)source inAddressBook:;
- (uint64_t)_canWriteUnderManagementRestrictionsToSource:(uint64_t)source inAddressBook:;
- (uint64_t)_fetchAllRecordsInSaveContext:error:;
- (uint64_t)_fetchContactsInSaveContext:(void *)context error:;
- (uint64_t)_fetchContainersInSaveContext:(void *)context error:;
- (uint64_t)_fetchGroupsInSaveContext:(void *)context error:;
- (uint64_t)_hasManagedAccessToReadFromAccountCorrespondingToSource:(uint64_t)result fromAddressBook:;
- (uint64_t)_hasManagedAccessToWriteToAccountCorrespondingToSource:(uint64_t)result fromAddressBook:;
- (uint64_t)_hasManagedWriteAccessToAccountContainingPerson:(void *)person fromSaveContext:;
- (uint64_t)_hasManagementRestrictionsEnabled;
- (uint64_t)_processAccountsFromSaveContext:(void *)context error:;
- (uint64_t)_processContactChangeRequestsFromSaveContext:(void *)context error:;
- (uint64_t)_processContactMembershipsFromSaveContext:(void *)context error:;
- (uint64_t)_processContactsFromSaveContext:(void *)context error:;
- (uint64_t)_processContainersFromSaveContext:(void *)context error:;
- (uint64_t)_processGroupsFromSaveContext:(void *)context error:;
- (uint64_t)_processSubgroupMembershipsFromSaveContext:(void *)context error:;
- (uint64_t)_purgeMetadataFromDeletedContactsFromSaveContext:(void *)context error:;
- (uint64_t)addressBook;
- (uint64_t)copySourceForContainerIdentifier:fromAddressBook:;
- (void)_alternativeSourceWithAccessibleAccountFromAddressBook:(uint64_t)book;
- (void)_defaultSourceInAddressBook:(void *)book error:;
- (void)_logDeleteHasError:(uint64_t)error;
- (void)_logDeleteHasFoundAtLeastOnePersistedContactIdentifier:(void *)identifier;
- (void)_logDeleteHasManagedWriteAccess:(void *)access contactIdentifier:;
- (void)_logDeleteHasNoABRecordForContactIdentifier:(void *)identifier;
- (void)_logDeleteHasNoPersistedContactIdentifier:(void *)identifier;
- (void)_logDeleteHasRemovedRecordWithResult:(void *)result err:;
- (void)_logDeleteSuccess:(int)success hasFoundAtLeastOneBackingPerson:(int)person hasDeletedAtLeastOneLinkedContact:(int)contact hasFoundMissingContactWithNoSnapshot:;
- (void)_logIgnoringSuggestedLinkedSetContactIdentifier:(void *)identifier;
- (void)_logIngoringImplicitAugmentationLinkedSetContactIdentifier:(void *)identifier;
- (void)_logWillDeleteLinkedSetContactIdentifier:(void *)identifier;
- (void)_logWillDeleteWithSaveContext:(uint64_t)context;
- (void)_postProcessContactsFromSaveContext:(uint64_t)context;
- (void)_postProcessContainersFromSaveContext:;
- (void)_postProcessGroupsFromSaveContext:;
- (void)applyLimitedAccessSyncEvents:(id)events;
- (void)canExecuteSaveRequest:error:;
- (void)dropAllLimitedAccessRows;
- (void)dropAllLimitedAccessRowsAndSyncNotify;
- (void)purgeLimitedAccessRecordsForBundle:(id)bundle;
- (void)removeContactIdentifiersFromLimitedAcessForAllBundles:(uint64_t)bundles;
- (void)requestAccessForEntityType:(int64_t)type completionHandler:(id)handler;
- (void)setLegacyTetheredSyncAnchor:(uint64_t)anchor forKey:;
- (void)setLimitedAccessTableCurrentSequenceNumber:(id)number;
- (void)updateLimitedAccessListForSaveRequest:authorizationContext:;
- (void)updateLimitedAccessTable:(id)table;
@end

@implementation CNiOSAddressBookDataMapper

+ (void)initialize
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CNiOSAddressBookDataMapper;
  objc_msgSendSuper2(&v2, sel_initialize);
  ABInitialize();
}

- (id)currentHistoryAnchor
{
  selfCopy = self;
  if (self)
  {
    self = self->_authorizationContext;
  }

  if ([(CNiOSAddressBookDataMapper *)self isLimitedAccessGranted])
  {
    +[CNChangeHistoryAnchor limitedAccessHistoryAnchor];
    objc_claimAutoreleasedReturnValue();
    v4 = [OUTLINED_FUNCTION_48() resultWithValue:v2 orError:0];
  }

  else
  {
    v24 = 0;
    v25 = &v24;
    OUTLINED_FUNCTION_2_5();
    v26 = v5;
    v27 = 0;
    if (selfCopy)
    {
      addressBook = selfCopy->_addressBook;
    }

    else
    {
      addressBook = 0;
    }

    v7 = addressBook;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_12();
    v21 = __50__CNiOSAddressBookDataMapper_currentHistoryAnchor__block_invoke;
    v22 = &unk_1E7414128;
    v23 = &v24;
    v9 = [v8 performSynchronousWorkWithInvalidatedAddressBook:v20];

    v10 = MEMORY[0x1E6996810];
    v11 = v25[5];
    error = [v9 error];
    v4 = [v10 resultWithValue:v11 orError:error];

    OUTLINED_FUNCTION_28(v13, v14, v15, v16, v17, v18);
  }

  return v4;
}

uint64_t __50__CNiOSAddressBookDataMapper_currentHistoryAnchor__block_invoke(uint64_t a1)
{
  v2 = [[CNChangeHistoryAnchor alloc] initWithSequenceNumber:ABAddressBookGetSequenceNumber()];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)currentHistoryToken
{
  currentHistoryAnchor = [(CNiOSAddressBookDataMapper *)self currentHistoryAnchor];
  value = [currentHistoryAnchor value];
  historyToken = [value historyToken];

  return historyToken;
}

- (uint64_t)addressBook
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

+ (id)os_log
{
  objc_opt_self();
  if (os_log_cn_once_token_0_9 != -1)
  {
    +[CNiOSAddressBookDataMapper os_log];
  }

  v0 = os_log_cn_once_object_0_9;

  return v0;
}

uint64_t __36__CNiOSAddressBookDataMapper_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "CNiOSAddressBookDataMapper");
  v1 = os_log_cn_once_object_0_9;
  os_log_cn_once_object_0_9 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)contactBuffersDecoderForFetchRequest:(id)request posterDataStore:(id)store
{
  storeCopy = store;
  requestCopy = request;
  v7 = [[CNiOSABContactBuffersDecoder alloc] initWithFetchRequest:requestCopy posterDataStore:storeCopy];

  return v7;
}

+ (id)encodedPeopleFetcherForForFetchRequest:(id)request addressBook:(void *)book managedConfiguration:(id)configuration addressBookCompletionHandler:(id)handler cursorCompletionHandler:(id)completionHandler environment:(id)environment identifierAuditMode:(int64_t)mode authorizationContext:(id)self0
{
  contextCopy = context;
  environmentCopy = environment;
  completionHandlerCopy = completionHandler;
  handlerCopy = handler;
  configurationCopy = configuration;
  requestCopy = request;
  v22 = [[CNiOSEncodedPeopleFetcher alloc] initWithFetchRequest:requestCopy addressBook:book managedConfiguration:configurationCopy addressBookCompletionHandler:handlerCopy cursorCompletionHandler:completionHandlerCopy environment:environmentCopy identifierAuditMode:mode authorizationContext:contextCopy];

  return v22;
}

- (CNiOSAddressBookDataMapper)init
{
  v3 = objc_alloc_init(CNDataMapperConfiguration);
  v4 = [(CNiOSAddressBookDataMapper *)self initWithConfiguration:v3 addressBook:0];

  return v4;
}

- (CNiOSAddressBookDataMapper)initWithConfiguration:(id)configuration addressBook:(id)book
{
  configurationCopy = configuration;
  bookCopy = book;
  v34.receiver = self;
  v34.super_class = CNiOSAddressBookDataMapper;
  v8 = [(CNiOSAddressBookDataMapper *)&v34 init];
  if (v8)
  {
    environment = [configurationCopy environment];
    v10 = environment;
    if (environment)
    {
      v11 = environment;
    }

    else
    {
      v11 = +[CNContactsEnvironment currentEnvironment];
    }

    v12 = v11;

    if (bookCopy)
    {
      addressBook = bookCopy;
    }

    else
    {
      addressBook = [v12 addressBook];
    }

    addressBook = v8->_addressBook;
    v8->_addressBook = addressBook;

    objc_storeStrong(&v8->_environment, v12);
    managedConfiguration = [configurationCopy managedConfiguration];
    managedConfiguration = v8->_managedConfiguration;
    v8->_managedConfiguration = managedConfiguration;

    loggerProvider = [v12 loggerProvider];
    contactsLogger = [loggerProvider contactsLogger];
    logger = v8->_logger;
    v8->_logger = contactsLogger;

    mEMORY[0x1E6996758] = [MEMORY[0x1E6996758] sharedCache];
    managedAccountsCache = v8->_managedAccountsCache;
    v8->_managedAccountsCache = mEMORY[0x1E6996758];

    v22 = [CNAuthorization alloc];
    assumedIdentity = [configurationCopy assumedIdentity];
    v24 = [(CNAuthorization *)v22 initWithAssumedIdentity:assumedIdentity];
    authorization = v8->_authorization;
    v8->_authorization = v24;

    v8->_contactIdentifierAuditMode = [configurationCopy identifierAuditMode];
    authorizationContext = [configurationCopy authorizationContext];
    v27 = authorizationContext;
    if (authorizationContext)
    {
      v28 = authorizationContext;
      authorizationContext = v8->_authorizationContext;
      v8->_authorizationContext = v28;
    }

    else
    {
      authorizationContext = v8->_authorization;
      authorizationContext2 = [(CNAuthorization *)authorizationContext authorizationContext];
      v31 = v8->_authorizationContext;
      v8->_authorizationContext = authorizationContext2;
    }

    v32 = v8;
  }

  return v8;
}

uint64_t __50__CNiOSAddressBookDataMapper_identifierWithError___block_invoke(uint64_t a1)
{
  result = ABAddressBookCopyUniqueIdentifier();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __47__CNiOSAddressBookDataMapper_saveSequenceCount__block_invoke(uint64_t a1)
{
  result = ABAddressBookGetSequenceNumber();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (id)_legacyContactCountForFetchRequest:(void *)request error:
{
  v5 = a2;
  if (self)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__17;
    v22 = __Block_byref_object_dispose__17;
    v23 = 0;
    v6 = *(self + 16);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __71__CNiOSAddressBookDataMapper__legacyContactCountForFetchRequest_error___block_invoke;
    v14[3] = &unk_1E7414178;
    v15 = v5;
    selfCopy = self;
    v17 = &v18;
    v7 = [v6 performSynchronousWorkWithInvalidatedAddressBook:v14];

    v8 = v19[5];
    error = [v7 error];
    v10 = v8;
    v11 = v10;
    if (request && !v10)
    {
      v12 = error;
      *request = error;
    }

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __71__CNiOSAddressBookDataMapper__legacyContactCountForFetchRequest_error___block_invoke(uint64_t a1, const void *a2)
{
  if ([*(a1 + 32) unifyResults])
  {
    PreferredNamePeopleCountForManagedConfiguration = ABAddressBookGetPreferredNamePeopleCountForManagedConfiguration();
  }

  else
  {
    PreferredNamePeopleCountForManagedConfiguration = ABAddressBookGetPersonCount(a2);
  }

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:PreferredNamePeopleCountForManagedConfiguration];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return MEMORY[0x1EEE66BB8](v5, v7);
}

- (id)contactCountForFetchRequest:(id)request error:(id *)error
{
  requestCopy = request;
  predicate = [requestCopy predicate];

  if (predicate)
  {
    v8 = [CNiOSEncodedPeopleCounter alloc];
    if (self)
    {
      v9 = self->_addressBook;
      managedConfiguration = self->_managedConfiguration;
    }

    else
    {
      v9 = 0;
      managedConfiguration = 0;
    }

    v11 = [(CNiOSEncodedPeopleCounter *)v8 initWithFetchRequest:requestCopy addressBook:v9 managedConfiguration:managedConfiguration];

    if ([(CNiOSEncodedPeopleCounter *)v11 supportsCounting])
    {
      v12 = [(CNiOSEncodedPeopleCounter *)v11 fetchContactCountWithError:error];
    }

    else
    {
      v13 = [CNErrorFactory errorWithCode:104];
      if (error)
      {
        v13 = v13;
        *error = v13;
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = [(CNiOSAddressBookDataMapper *)self _legacyContactCountForFetchRequest:requestCopy error:error];
  }

  return v12;
}

- (id)sectionListOffsetsForSortOrder:(int64_t)order error:(id *)error
{
  v5 = 0;
  v6 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__17;
  v26 = __Block_byref_object_dispose__17;
  v27 = 0;
  if ((order & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    if (self)
    {
      addressBook = self->_addressBook;
    }

    else
    {
      addressBook = 0;
    }

    v10 = addressBook;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __67__CNiOSAddressBookDataMapper_sectionListOffsetsForSortOrder_error___block_invoke;
    v20[3] = &unk_1E74141C8;
    v21 = order == 3;
    v20[4] = self;
    v20[5] = &v22;
    v6 = [(CNiOSAddressBook *)v10 performSynchronousWorkWithInvalidatedAddressBook:v20];

    v5 = v23[5];
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v17 = __67__CNiOSAddressBookDataMapper_sectionListOffsetsForSortOrder_error___block_invoke_3;
  v18 = &unk_1E74141F0;
  v11 = v6;
  v19 = v11;
  v12 = v5;
  v13 = v16;
  v14 = v13;
  if (error && !v12)
  {
    *error = v17(v13);
  }

  _Block_object_dispose(&v22, 8);

  return v12;
}

void __67__CNiOSAddressBookDataMapper_sectionListOffsetsForSortOrder_error___block_invoke_2(uint64_t a1, void *a2, CFIndex a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = *(a1 + 40);
  v7 = a2;
  v9 = [v5 numberWithInteger:{CFArrayGetValueAtIndex(v6, a3)}];
  v8 = [MEMORY[0x1E69967A8] pairWithFirst:v7 second:v9];

  [*(a1 + 32) addObject:v8];
}

id __67__CNiOSAddressBookDataMapper_sectionListOffsetsForSortOrder_error___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) error];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = +[CNErrorFactory genericiOSABError];
  }

  v4 = v3;

  return v4;
}

- (BOOL)moveContacts:(id)contacts fromContainer:(id)container toContainer:(id)toContainer error:(id *)error
{
  contactsCopy = contacts;
  containerCopy = container;
  toContainerCopy = toContainer;
  v13 = (*(*MEMORY[0x1E6996530] + 16))();
  if (toContainerCopy && containerCopy && !v13)
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    if (self)
    {
      addressBook = self->_addressBook;
    }

    else
    {
      addressBook = 0;
    }

    v15 = addressBook;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __75__CNiOSAddressBookDataMapper_moveContacts_fromContainer_toContainer_error___block_invoke;
    v27[3] = &unk_1E7414178;
    v28 = containerCopy;
    v29 = toContainerCopy;
    v30 = &v31;
    v16 = [(CNiOSAddressBook *)v15 performSynchronousWorkWithInvalidatedAddressBook:v27];

    v17 = *(v32 + 24);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v24 = __75__CNiOSAddressBookDataMapper_moveContacts_fromContainer_toContainer_error___block_invoke_2;
    v25 = &unk_1E74141F0;
    v18 = v16;
    v26 = v18;
    v19 = v23;
    v20 = v19;
    if (error && (v17 & 1) == 0)
    {
      *error = v24(v19);
    }

    _Block_object_dispose(&v31, 8);
  }

  else
  {
    v21 = [CNErrorFactory errorWithCode:1002];
    if (error)
    {
      v21 = v21;
      *error = v21;
    }

    v17 = 0;
  }

  return v17;
}

uint64_t __75__CNiOSAddressBookDataMapper_moveContacts_fromContainer_toContainer_error___block_invoke(uint64_t a1, const void *a2)
{
  SourceWithRecordID = ABAddressBookGetSourceWithRecordID(a2, [*(a1 + 32) iOSLegacyIdentifier]);
  result = ABAddressBookGetSourceWithRecordID(a2, [*(a1 + 40) iOSLegacyIdentifier]);
  if (SourceWithRecordID)
  {
    v6 = result == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    result = ABAddressBookMoveAllRecordsInSourceToSource();
    *(*(*(a1 + 48) + 8) + 24) = result;
  }

  return result;
}

id __75__CNiOSAddressBookDataMapper_moveContacts_fromContainer_toContainer_error___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) error];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = +[CNErrorFactory genericiOSABError];
  }

  v4 = v3;

  return v4;
}

- (id)contactObservableForFetchRequest:(id)request
{
  requestCopy = request;
  v5 = MEMORY[0x1E6996798];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__CNiOSAddressBookDataMapper_contactObservableForFetchRequest___block_invoke;
  v9[3] = &unk_1E7412F00;
  v10 = requestCopy;
  selfCopy = self;
  v6 = requestCopy;
  v7 = [v5 observableWithBlock:v9];

  return v7;
}

id __63__CNiOSAddressBookDataMapper_contactObservableForFetchRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E6996668]);
  v5 = [*(a1 + 32) effectivePredicate];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__CNiOSAddressBookDataMapper_contactObservableForFetchRequest___block_invoke_2;
  aBlock[3] = &unk_1E7412ED8;
  v6 = v3;
  v21 = v6;
  v7 = _Block_copy(aBlock);
  if (([*(a1 + 32) disallowsEncodedFetch] & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend(v5, "cn_supportsEncodedFetching"))
  {
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v19 = 0;
    v10 = &v19;
    v11 = [(CNiOSAddressBookDataMapper *)v8 fetchAndDecodeEncodedContactsForFetchRequest:v9 error:&v19 cancelationToken:v4 batchHandler:v7];
  }

  else
  {
    v13 = *(a1 + 32);
    v12 = *(a1 + 40);
    v18 = 0;
    v10 = &v18;
    v11 = [v12 fetchContactsForFetchRequest:v13 error:&v18 batchHandler:v7];
  }

  v14 = v11;
  v15 = *v10;
  v16 = v15;
  if ((v14 & 1) != 0 || !v15)
  {
    [v6 observerDidComplete];
  }

  else
  {
    [v6 observerDidFailWithError:v15];
  }

  return v4;
}

void __63__CNiOSAddressBookDataMapper_contactObservableForFetchRequest___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__CNiOSAddressBookDataMapper_contactObservableForFetchRequest___block_invoke_3;
  v8[3] = &unk_1E7412EB0;
  v9 = v5;
  v6 = v5;
  v7 = [a2 _cn_map:v8];
  [*(a1 + 32) observerDidReceiveResult:v7];
}

id __63__CNiOSAddressBookDataMapper_contactObservableForFetchRequest___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69967A8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 identifier];
  v6 = [v3 objectForKeyedSubscript:v5];
  v7 = [v2 pairWithFirst:v4 second:v6];

  return v7;
}

- (id)fetchAndDecodeEncodedContactsForFetchRequest:(void *)request error:(void *)error cancelationToken:(void *)token batchHandler:
{
  v9 = a2;
  errorCopy = error;
  tokenCopy = token;
  if (self)
  {
    v12 = objc_opt_class();
    posterDataStore = [self[3] posterDataStore];
    v14 = [v12 contactBuffersDecoderForFetchRequest:v9 posterDataStore:posterDataStore];

    v15 = self[4];
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__17;
    v40 = __Block_byref_object_dispose__17;
    v41 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 1;
    v31 = 0;
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __111__CNiOSAddressBookDataMapper_fetchAndDecodeEncodedContactsForFetchRequest_error_cancelationToken_batchHandler___block_invoke;
    v25 = &unk_1E7414240;
    v29 = &v32;
    v16 = v14;
    v26 = v16;
    v28 = tokenCopy;
    v17 = v15;
    v27 = v17;
    v30 = &v36;
    self = [self fetchEncodedContactsForFetchRequest:v9 error:&v31 cancelationToken:errorCopy batchHandler:&v22];
    v18 = v31;
    if ((v33[3] & 1) == 0)
    {
      [v17 didFetchContacts:0 error:{v18, v22, v23, v24, v25, v26}];
    }

    v19 = v18;
    if (!v18)
    {
      v19 = v37[5];
    }

    if (request)
    {
      selfCopy = self;
    }

    else
    {
      selfCopy = 1;
    }

    if ((selfCopy & 1) == 0)
    {
      *request = v19;
    }

    _Block_object_dispose(&v32, 8);
    _Block_object_dispose(&v36, 8);
  }

  return self;
}

- (BOOL)fetchContactsForFetchRequest:(id)request error:(id *)error batchHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__17;
  v48 = __Block_byref_object_dispose__17;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__17;
  v42 = __Block_byref_object_dispose__17;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__17;
  v36 = __Block_byref_object_dispose__17;
  v37 = 0;
  effectivePredicate = [requestCopy effectivePredicate];
  if (self)
  {
    logger = self->_logger;
  }

  else
  {
    logger = 0;
  }

  v12 = logger;
  unifyResults = [requestCopy unifyResults];
  keysToFetch = [requestCopy keysToFetch];
  [(CNContactsLogger *)v12 fetchContactsMatchingPredicate:effectivePredicate unifyResults:unifyResults keysToFetch:keysToFetch];

  if (self)
  {
    addressBook = self->_addressBook;
  }

  else
  {
    addressBook = 0;
  }

  v16 = addressBook;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __78__CNiOSAddressBookDataMapper_fetchContactsForFetchRequest_error_batchHandler___block_invoke;
  v26[3] = &unk_1E7414218;
  v29 = &v44;
  v17 = requestCopy;
  v27 = v17;
  selfCopy = self;
  v30 = &v38;
  v31 = &v32;
  v18 = [(CNiOSAddressBook *)v16 performSynchronousWorkWithInvalidatedAddressBook:v26];

  if ([v18 isFailure])
  {
    error = [v18 error];
    v20 = v33[5];
    v33[5] = error;
  }

  v21 = v45[5];
  if (v21)
  {
    handlerCopy[2](handlerCopy, v21, v39[5]);
  }

  if (self)
  {
    v22 = self->_logger;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;
  [(CNContactsLogger *)v23 didFetchContacts:v45[5] error:v33[5]];

  v24 = v45[5];
  if (error && !v24)
  {
    *error = v33[5];
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  _Block_object_dispose(&v44, 8);
  return v24 != 0;
}

void __111__CNiOSAddressBookDataMapper_fetchAndDecodeEncodedContactsForFetchRequest_error_cancelationToken_batchHandler___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = [v5 data];
  if ([v6 length])
  {
    v7 = *(*(*(a1 + 56) + 8) + 24);

    if (v7 == 1)
    {
      v8 = *(a1 + 32);
      v9 = [v5 data];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __111__CNiOSAddressBookDataMapper_fetchAndDecodeEncodedContactsForFetchRequest_error_cancelationToken_batchHandler___block_invoke_2;
      v13[3] = &unk_1E7412F50;
      v14 = *(a1 + 32);
      v15 = v5;
      v17 = *(a1 + 48);
      v16 = *(a1 + 40);
      v10 = *(*(a1 + 64) + 8);
      obj = *(v10 + 40);
      v11 = [v8 decodeContactsFromData:v9 moreComing:a3 ^ 1u replyHandler:v13 error:&obj];
      objc_storeStrong((v10 + 40), obj);
      *(*(*(a1 + 56) + 8) + 24) = v11;
    }
  }

  else
  {
  }
}

void __111__CNiOSAddressBookDataMapper_fetchAndDecodeEncodedContactsForFetchRequest_error_cancelationToken_batchHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) matchInfo];
  v5 = [v3 contactMatchInfosFromABMatchInfos:v4 contacts:v6];

  if (v6)
  {
    (*(*(a1 + 56) + 16))();
    [*(a1 + 48) didFetchContacts:v6 error:0];
  }
}

- (BOOL)fetchEncodedContactsForFetchRequest:(id)request error:(id *)error cancelationToken:(id)token batchHandler:(id)handler
{
  requestCopy = request;
  tokenCopy = token;
  handlerCopy = handler;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__17;
  v44 = __Block_byref_object_dispose__17;
  v45 = 0;
  effectivePredicate = [requestCopy effectivePredicate];
  if (self)
  {
    logger = self->_logger;
  }

  else
  {
    logger = 0;
  }

  v15 = logger;
  unifyResults = [requestCopy unifyResults];
  keysToFetch = [requestCopy keysToFetch];
  [(CNContactsLogger *)v15 fetchEncodedContactsMatchingPredicate:effectivePredicate unifyResults:unifyResults keysToFetch:keysToFetch];

  if (self)
  {
    addressBook = self->_addressBook;
  }

  else
  {
    addressBook = 0;
  }

  v19 = addressBook;
  v30 = MEMORY[0x1E69E9820];
  v31 = 3221225472;
  v32 = __102__CNiOSAddressBookDataMapper_fetchEncodedContactsForFetchRequest_error_cancelationToken_batchHandler___block_invoke;
  v33 = &unk_1E7414290;
  selfCopy = self;
  v20 = requestCopy;
  v35 = v20;
  v38 = &v46;
  v39 = &v40;
  v21 = tokenCopy;
  v36 = v21;
  v22 = handlerCopy;
  v37 = v22;
  v23 = [(CNiOSAddressBook *)v19 performSynchronousWorkWithInvalidatedAddressBook:&v30];

  if ([v23 isFailure])
  {
    error = [v23 error];
    v25 = v41[5];
    v41[5] = error;
  }

  v26 = *(v47 + 24);
  if ((v26 & 1) == 0)
  {
    if (self)
    {
      v27 = self->_logger;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;
    [(CNContactsLogger *)v28 didFetchEncodedContacts:0 error:v41[5]];

    v26 = *(v47 + 24);
  }

  if (error && (v26 & 1) == 0)
  {
    *error = v41[5];
  }

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);

  return v26 & 1;
}

uint64_t __122__CNiOSAddressBookDataMapper_encodedPeopleFetcherWithAddressBook_addressBookCleanupBlock_cursorCleanupBlock_fetchRequest___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __49__CNiOSAddressBookDataMapper_setMeContact_error___block_invoke(uint64_t a1, const void *a2)
{
  v4 = (a1 + 32);
  if (!ABAddressBookGetPersonWithRecordID(a2, [*(a1 + 32) iOSLegacyIdentifier]))
  {
    v5 = +[CNAPITriageLogger os_log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __49__CNiOSAddressBookDataMapper_setMeContact_error___block_invoke_cold_1(v4, v5);
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = ABAddressBookSetMe();
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    v9[4] = a2;
    obj = v7;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__CNiOSAddressBookDataMapper_setMeContact_error___block_invoke_33;
    v9[3] = &__block_descriptor_40_e20_B16__0_____CFError_8l;
    v8 = CNBridgeBoolResultAndErrorFromBlock(&obj, v9);
    objc_storeStrong((v6 + 40), obj);
    *(*(*(a1 + 40) + 8) + 24) = v8;
  }
}

void __62__CNiOSAddressBookDataMapper_setMeContact_forContainer_error___block_invoke(uint64_t a1, const void *a2)
{
  PersonWithRecordID = ABAddressBookGetPersonWithRecordID(a2, [*(a1 + 32) iOSLegacyIdentifier]);
  SourceWithRecordID = ABAddressBookGetSourceWithRecordID(a2, [*(a1 + 40) iOSLegacyIdentifier]);
  v6 = *(*(a1 + 56) + 8);
  v14 = *(v6 + 40);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__CNiOSAddressBookDataMapper_setMeContact_forContainer_error___block_invoke_2;
  v13[3] = &__block_descriptor_48_e20_B16__0_____CFError_8l;
  v13[4] = SourceWithRecordID;
  v13[5] = PersonWithRecordID;
  LOBYTE(PersonWithRecordID) = CNBridgeBoolResultAndErrorFromBlock(&v14, v13);
  objc_storeStrong((v6 + 40), v14);
  *(*(*(a1 + 48) + 8) + 24) = PersonWithRecordID;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v7 = *(*(a1 + 56) + 8);
    v9 = *(v7 + 40);
    v8 = (v7 + 40);
    if (!v9)
    {
      v11[4] = a2;
      obj = 0;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __62__CNiOSAddressBookDataMapper_setMeContact_forContainer_error___block_invoke_3;
      v11[3] = &__block_descriptor_40_e20_B16__0_____CFError_8l;
      v10 = CNBridgeBoolResultAndErrorFromBlock(&obj, v11);
      objc_storeStrong(v8, obj);
      *(*(*(a1 + 48) + 8) + 24) = v10;
    }
  }
}

void __83__CNiOSAddressBookDataMapper_setBestMeIfNeededForGivenName_familyName_email_error___block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 56) + 8) + 24) = ABAddressBookSetBestMeIfNeeded();
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v4 = *(*(a1 + 64) + 8);
    v7 = *(v4 + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __83__CNiOSAddressBookDataMapper_setBestMeIfNeededForGivenName_familyName_email_error___block_invoke_2;
    v6[3] = &__block_descriptor_40_e20_B16__0_____CFError_8l;
    v6[4] = a2;
    v5 = CNBridgeBoolResultAndErrorFromBlock(&v7, v6);
    objc_storeStrong((v4 + 40), v7);
    *(*(*(a1 + 56) + 8) + 24) = v5;
    if (*(*(*(a1 + 56) + 8) + 24) != 1 || *(*(*(a1 + 64) + 8) + 40))
    {
      NSLog(&cfstr_Setbestmeifnee.isa, *(*(*(a1 + 64) + 8) + 40));
    }
  }
}

void __51__CNiOSAddressBookDataMapper_meContactIdentifiers___block_invoke(uint64_t a1)
{
  v2 = ABAddressBookCopyMe();
  if (v2)
  {
    v3 = v2;
    v4 = ABRecordCopyValue(v2, *MEMORY[0x1E698A438]);
    if (v4)
    {
      v5 = CFAutorelease(v4);
      v6 = *(*(a1 + 32) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;
    }

    CFRelease(v3);
  }
}

uint64_t __58__CNiOSAddressBookDataMapper_canExecuteSaveRequest_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 isEqual:v3];

  return v4;
}

- (BOOL)executeSaveRequest:(id)request response:(id *)response authorizationContext:(id)context error:(id *)error
{
  requestCopy = request;
  contextCopy = context;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 1;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__17;
  v39 = __Block_byref_object_dispose__17;
  v40 = 0;
  obj = 0;
  [CNiOSAddressBookDataMapper canExecuteSaveRequest:error:];
  v13 = v12;
  objc_storeStrong(&v40, 0);
  if (v13)
  {
    if (response)
    {
      v14 = objc_alloc_init(CNMutableSaveResponse);
      *response = v14;
    }

    else
    {
      v14 = 0;
    }

    posterDataStore = [(CNContactsEnvironment *)self->_environment posterDataStore];
    v19 = self->_addressBook;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __85__CNiOSAddressBookDataMapper_executeSaveRequest_response_authorizationContext_error___block_invoke;
    v27[3] = &unk_1E74143E8;
    v28 = requestCopy;
    v20 = v14;
    v29 = v20;
    v21 = posterDataStore;
    v32 = &v41;
    v33 = &v35;
    v30 = v21;
    selfCopy = self;
    v22 = [(CNiOSAddressBook *)v19 performSynchronousWorkWithInvalidatedAddressBook:v27];

    if (([v22 isSuccess] & 1) == 0)
    {
      *(v42 + 24) = 0;
      error = [v22 error];
      v24 = v36[5];
      v36[5] = error;
    }

    if (*(v42 + 24) == 1)
    {
      [CNiOSAddressBookDataMapper updateLimitedAccessListForSaveRequest:authorizationContext:];
    }

    else
    {
      v25 = self->_logger;
      [(CNContactsLogger *)v25 saveRequestFailed:v36[5]];
    }

    v17 = *(v42 + 24);
    if (error && (v42[3] & 1) == 0)
    {
      *error = v36[5];
    }
  }

  else
  {
    if (self)
    {
      logger = self->_logger;
    }

    else
    {
      logger = 0;
    }

    v16 = logger;
    [(CNContactsLogger *)v16 saveRequestInvalid:v36[5]];

    v17 = 0;
    if (error)
    {
      *error = v36[5];
    }
  }

  _Block_object_dispose(&v35, 8);

  _Block_object_dispose(&v41, 8);
  return v17;
}

void __85__CNiOSAddressBookDataMapper_executeSaveRequest_response_authorizationContext_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v74 = *MEMORY[0x1E69E9840];
  v3 = [[CNiOSABSaveContext alloc] initWithSaveRequest:*(a1 + 32) response:*(a1 + 40) addressBook:a2 posterDataStore:*(a1 + 48)];
  if (!v3)
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v4 = os_log_create("com.apple.contacts", "data-access-error");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __85__CNiOSAddressBookDataMapper_executeSaveRequest_response_authorizationContext_error___block_invoke_cold_1(v4);
    }

    v5 = [CNErrorFactory errorWithCode:2];
    v6 = *(*(a1 + 72) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  if ([*(a1 + 32) ignoresGuardianRestrictions])
  {
    ABAddressBookSetIgnoresGuardianRestrictions();
  }

  if ([*(a1 + 32) ignoresContactProviderRestrictions])
  {
    ABAddressBookSetIgnoresContactProviderRestrictions();
  }

  [*(a1 + 32) shouldFaultOnPossibleDataLoss];
  ABAddressBookSetShouldFaultOnPossibleDataLoss();
  v8 = [*(a1 + 32) clientLoggingIdentifier];
  ABAddressBookSetClientLoggingIdentifier();

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v9 = *(*(a1 + 72) + 8);
    obj = *(v9 + 40);
    v10 = [CNiOSAddressBookDataMapper _fetchAllRecordsInSaveContext:error:];
    objc_storeStrong((v9 + 40), obj);
    *(*(*(a1 + 64) + 8) + 24) = v10;
    if (*(*(*(a1 + 64) + 8) + 24))
    {
      v11 = *(a1 + 56);
      v12 = *(*(a1 + 72) + 8);
      v68 = *(v12 + 40);
      v13 = [(CNiOSAddressBookDataMapper *)v11 _processAccountsFromSaveContext:v3 error:&v68];
      objc_storeStrong((v12 + 40), v68);
      *(*(*(a1 + 64) + 8) + 24) = v13;
      if (*(*(*(a1 + 64) + 8) + 24))
      {
        v14 = *(a1 + 56);
        v15 = *(*(a1 + 72) + 8);
        v67 = *(v15 + 40);
        v16 = [(CNiOSAddressBookDataMapper *)v14 _processContainersFromSaveContext:v3 error:&v67];
        objc_storeStrong((v15 + 40), v67);
        *(*(*(a1 + 64) + 8) + 24) = v16;
        if (*(*(*(a1 + 64) + 8) + 24))
        {
          v17 = *(a1 + 56);
          v18 = *(*(a1 + 72) + 8);
          v66 = *(v18 + 40);
          v19 = [(CNiOSAddressBookDataMapper *)v17 _processContactsFromSaveContext:v3 error:&v66];
          objc_storeStrong((v18 + 40), v66);
          *(*(*(a1 + 64) + 8) + 24) = v19;
          if (*(*(*(a1 + 64) + 8) + 24))
          {
            v20 = *(a1 + 56);
            v21 = *(*(a1 + 72) + 8);
            v65 = *(v21 + 40);
            v22 = [(CNiOSAddressBookDataMapper *)v20 _processGroupsFromSaveContext:v3 error:&v65];
            objc_storeStrong((v21 + 40), v65);
            *(*(*(a1 + 64) + 8) + 24) = v22;
            if (*(*(*(a1 + 64) + 8) + 24))
            {
              error = 0;
              HasMeCardChanges = ABAddressBookHasMeCardChanges();
              v24 = [*(a1 + 32) transactionAuthor];

              if (v24)
              {
                [(CNiOSABSaveContext *)v3 addressBook];
                v25 = [*(a1 + 32) transactionAuthor];
                ABChangeHistorySetAddressBookClientIdentifier();
              }

              v26 = [*(a1 + 32) saveRequestIdentifier];
              ABAddressBookSetSaveTransactionIdentifier();

              [*(a1 + 32) suppressChangeNotifications];
              ABAddressBookSetSuppressChangeNotifications();
              *(*(*(a1 + 64) + 8) + 24) = ABAddressBookSave([(CNiOSABSaveContext *)v3 addressBook], &error);
              v27 = [*(a1 + 32) transactionAuthor];

              if (v27)
              {
                [(CNiOSABSaveContext *)v3 addressBook];
                ABChangeHistorySetAddressBookClientIdentifier();
              }

              if (*(*(*(a1 + 64) + 8) + 24) == 1)
              {
                [(CNiOSAddressBookDataMapper *)*(a1 + 56) _purgeMetadataFromDeletedContactsFromSaveContext:v3 error:0];
                if ([*(a1 + 32) shouldRefetchContacts])
                {
                  [(CNiOSAddressBookDataMapper *)*(a1 + 56) _postProcessContactsFromSaveContext:v3];
                }

                [CNiOSAddressBookDataMapper _postProcessGroupsFromSaveContext:];
                [CNiOSAddressBookDataMapper _postProcessContainersFromSaveContext:];
                [*(a1 + 40) setDidAffectMeCard:HasMeCardChanges];
              }

              else
              {
                v28 = [CNErrorFactory errorForiOSABError:error];
                v29 = *(*(a1 + 72) + 8);
                v30 = *(v29 + 40);
                *(v29 + 40) = v28;

                if (error)
                {
                  CFRelease(error);
                }
              }

              v31 = [(CNiOSABSaveContext *)v3 posterDataChangeRequests];
              v32 = [CNContactPosterDataChangeRequestClassifier classifyRequests:v31];

              v33 = [_CNContactPosterDataFeatureFlagGuardian alloc];
              v34 = [(CNiOSABSaveContext *)v3 posterDataStore];
              v35 = [(_CNContactPosterDataFeatureFlagGuardian *)v33 initWithStore:v34];

              v63 = 0u;
              v61 = 0u;
              v62 = 0u;
              v60 = 0u;
              v36 = [v32 createRequests];
              v37 = [v36 countByEnumeratingWithState:&v60 objects:v73 count:16];
              if (v37)
              {
                v38 = v37;
                v39 = *v61;
                do
                {
                  v40 = 0;
                  do
                  {
                    if (*v61 != v39)
                    {
                      objc_enumerationMutation(v36);
                    }

                    v41 = *(*(&v60 + 1) + 8 * v40);
                    v59 = 0;
                    v42 = [(_CNContactPosterDataFeatureFlagGuardian *)v35 executeCreateRequest:v41 error:&v59];
                    v43 = v59;
                    if (!v42)
                    {
                      v44 = +[CNContactPosterDataStore log];
                      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138543362;
                        v72 = v43;
                        _os_log_error_impl(&dword_1954A0000, v44, OS_LOG_TYPE_ERROR, "Error creating/updating poster: %{public}@", buf, 0xCu);
                      }
                    }

                    ++v40;
                  }

                  while (v38 != v40);
                  v38 = [v36 countByEnumeratingWithState:&v60 objects:v73 count:16];
                }

                while (v38);
              }

              v57 = 0u;
              v58 = 0u;
              v55 = 0u;
              v56 = 0u;
              v45 = [v32 deleteRequests];
              v46 = [v45 countByEnumeratingWithState:&v55 objects:v70 count:16];
              if (v46)
              {
                v47 = v46;
                v48 = *v56;
                do
                {
                  v49 = 0;
                  do
                  {
                    if (*v56 != v48)
                    {
                      objc_enumerationMutation(v45);
                    }

                    v50 = *(*(&v55 + 1) + 8 * v49);
                    v54 = 0;
                    v51 = [(_CNContactPosterDataFeatureFlagGuardian *)v35 executeDeleteRequest:v50 error:&v54];
                    v52 = v54;
                    if (!v51)
                    {
                      v53 = +[CNContactPosterDataStore log];
                      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138543362;
                        v72 = v52;
                        _os_log_error_impl(&dword_1954A0000, v53, OS_LOG_TYPE_ERROR, "Error creating/updating poster: %{public}@", buf, 0xCu);
                      }
                    }

                    ++v49;
                  }

                  while (v47 != v49);
                  v47 = [v45 countByEnumeratingWithState:&v55 objects:v70 count:16];
                }

                while (v47);
              }
            }
          }
        }
      }
    }
  }
}

- (uint64_t)_processContainersFromSaveContext:(void *)context error:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 1;
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__17;
    v32 = __Block_byref_object_dispose__17;
    v33 = 0;
    saveRequest = [v5 saveRequest];
    addedAccountContainersByParentContainerIdentifier = [saveRequest addedAccountContainersByParentContainerIdentifier];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __70__CNiOSAddressBookDataMapper__processContainersFromSaveContext_error___block_invoke;
    v23[3] = &unk_1E7414438;
    v9 = v6;
    v26 = &v34;
    v27 = &v28;
    v24 = v9;
    selfCopy = self;
    [addedAccountContainersByParentContainerIdentifier enumerateKeysAndObjectsUsingBlock:v23];

    if (*(v35 + 24) == 1 && ([v9 saveRequest], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "deletedContainers"), v11 = objc_claimAutoreleasedReturnValue(), v19[0] = MEMORY[0x1E69E9820], v19[1] = 3221225472, v19[2] = __70__CNiOSAddressBookDataMapper__processContainersFromSaveContext_error___block_invoke_60, v19[3] = &unk_1E7414460, self = v9, v20 = self, v21 = &v34, v22 = &v28, objc_msgSend(v11, "enumerateObjectsUsingBlock:", v19), v11, v10, v20, (v35[3] & 1) != 0))
    {
      saveRequest2 = [self saveRequest];
      updatedContainers = [saveRequest2 updatedContainers];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __70__CNiOSAddressBookDataMapper__processContainersFromSaveContext_error___block_invoke_2;
      v15[3] = &unk_1E7414460;
      selfCopy2 = self;
      v17 = &v34;
      v18 = &v28;
      [updatedContainers enumerateObjectsUsingBlock:v15];

      LOBYTE(self) = *(v35 + 24);
      if (!context)
      {
        goto LABEL_9;
      }
    }

    else
    {
      LOBYTE(self) = 0;
      if (!context)
      {
LABEL_9:
        _Block_object_dispose(&v28, 8);

        _Block_object_dispose(&v34, 8);
        goto LABEL_10;
      }
    }

    if ((self & 1) == 0)
    {
      *context = v29[5];
    }

    goto LABEL_9;
  }

LABEL_10:

  return self & 1;
}

- (uint64_t)_processContactsFromSaveContext:(void *)context error:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 1;
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__17;
    v36 = __Block_byref_object_dispose__17;
    v37 = 0;
    saveRequest = [v5 saveRequest];
    addedContactsByContainerIdentifier = [saveRequest addedContactsByContainerIdentifier];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __68__CNiOSAddressBookDataMapper__processContactsFromSaveContext_error___block_invoke;
    v28[3] = &unk_1E7414488;
    v28[4] = self;
    v9 = v6;
    v29 = v9;
    v30 = &v38;
    v31 = &v32;
    [addedContactsByContainerIdentifier enumerateKeysAndObjectsUsingBlock:v28];

    if (*(v39 + 24) == 1 && (-[CNiOSAddressBookDataMapper _logWillDeleteWithSaveContext:](self, v9), [v9 saveRequest], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "deletedContacts"), v11 = objc_claimAutoreleasedReturnValue(), v24[0] = MEMORY[0x1E69E9820], v24[1] = 3221225472, v24[2] = __68__CNiOSAddressBookDataMapper__processContactsFromSaveContext_error___block_invoke_2, v24[3] = &unk_1E74144B0, v24[4] = self, v12 = v9, v25 = v12, v26 = &v38, v27 = &v32, objc_msgSend(v11, "enumerateObjectsUsingBlock:", v24), v11, v10, v25, (v39[3] & 1) != 0) && (objc_msgSend(v12, "saveRequest"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "updatedContacts"), v14 = objc_claimAutoreleasedReturnValue(), v20[0] = MEMORY[0x1E69E9820], v20[1] = 3221225472, v20[2] = __68__CNiOSAddressBookDataMapper__processContactsFromSaveContext_error___block_invoke_3, v20[3] = &unk_1E74144D8, v20[4] = self, v22 = &v32, v23 = &v38, v15 = v12, v21 = v15, objc_msgSend(v14, "enumerateObjectsUsingBlock:", v20), v14, v13, v21, (v39[3] & 1) != 0))
    {
      v19 = 0;
      v16 = [(CNiOSAddressBookDataMapper *)self _processContactChangeRequestsFromSaveContext:v15 error:&v19];
      v17 = v19;
      self = v19;
      *(v39 + 24) = v16;
      if ((v16 & 1) == 0)
      {
        objc_storeStrong(v33 + 5, v17);
      }

      LOBYTE(self) = *(v39 + 24);
      if (!context)
      {
        goto LABEL_12;
      }
    }

    else
    {
      LOBYTE(self) = 0;
      if (!context)
      {
LABEL_12:
        _Block_object_dispose(&v32, 8);

        _Block_object_dispose(&v38, 8);
        goto LABEL_13;
      }
    }

    if ((self & 1) == 0)
    {
      *context = v33[5];
    }

    goto LABEL_12;
  }

LABEL_13:

  return self & 1;
}

- (uint64_t)_processGroupsFromSaveContext:(void *)context error:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 1;
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__17;
    v38 = __Block_byref_object_dispose__17;
    v39 = 0;
    saveRequest = [v5 saveRequest];
    addedGroupsByContainerIdentifier = [saveRequest addedGroupsByContainerIdentifier];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __66__CNiOSAddressBookDataMapper__processGroupsFromSaveContext_error___block_invoke;
    v30[3] = &unk_1E74145C0;
    v9 = v6;
    v31 = v9;
    v32 = &v40;
    v33 = &v34;
    [addedGroupsByContainerIdentifier enumerateKeysAndObjectsUsingBlock:v30];

    if (*(v41 + 24) == 1 && ([v9 saveRequest], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "deletedGroups"), v11 = objc_claimAutoreleasedReturnValue(), v26[0] = MEMORY[0x1E69E9820], v26[1] = 3221225472, v26[2] = __66__CNiOSAddressBookDataMapper__processGroupsFromSaveContext_error___block_invoke_2, v26[3] = &unk_1E7414460, v12 = v9, v27 = v12, v28 = &v40, v29 = &v34, objc_msgSend(v11, "enumerateObjectsUsingBlock:", v26), v11, v10, v27, (v41[3] & 1) != 0) && (objc_msgSend(v12, "saveRequest"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "updatedGroups"), v14 = objc_claimAutoreleasedReturnValue(), v22[0] = MEMORY[0x1E69E9820], v22[1] = 3221225472, v22[2] = __66__CNiOSAddressBookDataMapper__processGroupsFromSaveContext_error___block_invoke_3, v22[3] = &unk_1E7414460, v15 = v12, v23 = v15, v24 = &v40, v25 = &v34, objc_msgSend(v14, "enumerateObjectsUsingBlock:", v22), v14, v13, v23, (v41[3] & 1) != 0) && (v16 = v35, obj = v35[5], v17 = -[CNiOSAddressBookDataMapper _processContactMembershipsFromSaveContext:error:](self, v15, &obj), objc_storeStrong(v16 + 5, obj), *(v41 + 24) = v17, v17))
    {
      v18 = v35;
      v20 = v35[5];
      self = [(CNiOSAddressBookDataMapper *)self _processSubgroupMembershipsFromSaveContext:v15 error:&v20];
      objc_storeStrong(v18 + 5, v20);
      *(v41 + 24) = self;
    }

    else
    {
      self = 0;
    }

    if (context && (self & 1) == 0)
    {
      *context = v35[5];
    }

    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(&v40, 8);
  }

  return self;
}

- (void)removeContactIdentifiersFromLimitedAcessForAllBundles:(uint64_t)bundles
{
  v3 = a2;
  if (bundles)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v4 = *(bundles + 16);
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __84__CNiOSAddressBookDataMapper_removeContactIdentifiersFromLimitedAcessForAllBundles___block_invoke;
    v12 = &unk_1E74146F0;
    v14 = &v15;
    v13 = v3;
    v5 = [v4 performSynchronousWorkWithInvalidatedAddressBook:&v9];

    if (v5)
    {
      value = [v5 value];
      if ([value isEqual:MEMORY[0x1E695E118]])
      {
        v7 = *(v16 + 24);

        if (v7)
        {
LABEL_10:

          _Block_object_dispose(&v15, 8);
          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    objc_opt_class();
    v8 = +[CNiOSAddressBookDataMapper os_log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CNiOSAddressBookDataMapper removeContactIdentifiersFromLimitedAcessForAllBundles:];
    }

    goto LABEL_10;
  }

LABEL_11:
}

CFArrayRef __68__CNiOSAddressBookDataMapper__processAccountsFromSaveContext_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = ABAddressBookCopyArrayOfAllPeopleInSource([v2 addressBook], v3);

  return v4;
}

CFArrayRef __68__CNiOSAddressBookDataMapper__processAccountsFromSaveContext_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = ABAddressBookCopyArrayOfAllGroupsInSource([v2 addressBook], v3);

  return v4;
}

void __70__CNiOSAddressBookDataMapper__processContainersFromSaveContext_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v69 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = v6;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v7;
  v48 = [obj countByEnumeratingWithState:&v56 objects:v68 count:16];
  if (!v48)
  {
    goto LABEL_42;
  }

  v49 = *v57;
  v47 = *MEMORY[0x1E6996558];
  *&v9 = 138543362;
  v43 = v9;
  v46 = v8;
  while (2)
  {
    v10 = 0;
    do
    {
      if (*v57 != v49)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v56 + 1) + 8 * v10);
      v12 = [*(a1 + 32) abSourcesByIdentifier];
      v13 = [v11 identifier];
      v14 = [v12 objectForKeyedSubscript:v13];

      if (v14)
      {
        *(*(*(a1 + 48) + 8) + 24) = 0;
        v65 = v11;
        v66 = @"CNInvalidRecords";
        v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
        v67 = v37;
        v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
        v39 = 201;
LABEL_41:
        v40 = [CNErrorFactory errorWithCode:v39 userInfo:v38];
        v41 = *(*(a1 + 56) + 8);
        v42 = *(v41 + 40);
        *(v41 + 40) = v40;

        *a4 = 1;
        goto LABEL_42;
      }

      v15 = ABSourceCreate();
      if (v15)
      {
        v16 = CFAutorelease(v15);
      }

      else
      {
        v16 = 0;
      }

      v50 = v10;
      if ((*(v47 + 16))(v47, v8))
      {
        v55 = 0;
        if ((ABRecordSetIntValue() & 1) == 0)
        {
          objc_opt_class();
          v17 = +[CNiOSAddressBookDataMapper os_log];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *cf = v43;
            *&cf[4] = v55;
            _os_log_error_impl(&dword_1954A0000, v17, OS_LOG_TYPE_ERROR, "_processContainersFromSaveContext add container failed to set null account, error: %{public}@", cf, 0xCu);
          }
        }

        goto LABEL_17;
      }

      v18 = [*(a1 + 32) abAccountsByIdentifier];
      v19 = [v18 objectForKeyedSubscript:v8];

      if (!v19)
      {
        *(*(*(a1 + 48) + 8) + 24) = 0;
        v61 = v8;
        v62 = @"CNInvalidRecordIdentifiers";
        v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1];
        v63 = v37;
        v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
        v39 = 200;
        goto LABEL_41;
      }

      *cf = 0;
      [*(a1 + 32) addressBook];
      *(*(*(a1 + 48) + 8) + 24) = ABAddressBookSetAccountForSource();
      if (*(*(*(a1 + 48) + 8) + 24) != 1)
      {
        goto LABEL_36;
      }

LABEL_17:
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v20 = +[CN allContainerProperties];
      v21 = [v20 countByEnumeratingWithState:&v51 objects:v60 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v52;
        while (2)
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v52 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v51 + 1) + 8 * i);
            v26 = +[CN containerAccountIdentifierDescription];

            if (v25 != v26)
            {
              v27 = [v25 CNValueForContainer:v11];
              v28 = [v25 ABValueFromCNValue:v27];
              *cf = 0;
              *(*(*(a1 + 48) + 8) + 24) = [v25 setABValue:v28 onABSource:v16 error:cf];
              if (*(*(*(a1 + 48) + 8) + 24) != 1)
              {
                v29 = [CNErrorFactory errorForiOSABError:*cf];
                v30 = *(*(a1 + 56) + 8);
                v31 = *(v30 + 40);
                *(v30 + 40) = v29;

                if (*cf)
                {
                  CFRelease(*cf);
                }

                *a4 = 1;

                goto LABEL_31;
              }
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v51 objects:v60 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }

LABEL_31:

      v8 = v46;
      if (*(*(*(a1 + 48) + 8) + 24) != 1)
      {
        goto LABEL_42;
      }

      *cf = 0;
      *(*(*(a1 + 48) + 8) + 24) = ABAddressBookAddRecord([*(a1 + 32) addressBook], v16, cf);
      if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
      {
LABEL_36:
        v34 = [CNErrorFactory errorForiOSABError:*cf];
        v35 = *(*(a1 + 56) + 8);
        v36 = *(v35 + 40);
        *(v35 + 40) = v34;

        if (*cf)
        {
          CFRelease(*cf);
        }

        *a4 = 1;
        goto LABEL_42;
      }

      v32 = [*(a1 + 32) abSourcesByIdentifier];
      v33 = [v11 identifier];
      [v32 setObject:v16 forKey:v33];

      v10 = v50 + 1;
    }

    while (v50 + 1 != v48);
    v48 = [obj countByEnumeratingWithState:&v56 objects:v68 count:16];
    if (v48)
    {
      continue;
    }

    break;
  }

LABEL_42:
}

void __70__CNiOSAddressBookDataMapper__processContainersFromSaveContext_error___block_invoke_60(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = [*(a1 + 32) abSourcesByIdentifier];
  v8 = [v6 identifier];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    cf = 0;
    *(*(*(a1 + 40) + 8) + 24) = ABAddressBookRemoveRecord([*(a1 + 32) addressBook], v9, &cf);
    if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
    {
      v22 = v6;
      v23 = @"CNInvalidRecords";
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
      v24 = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v12 = [CNErrorFactory errorForiOSABError:cf];
      v13 = [CNErrorFactory errorByAddingUserInfoEntries:v11 toError:v12];
      v14 = *(*(a1 + 48) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      if (cf)
      {
        CFRelease(cf);
      }

      *a4 = 1;
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v25 = v6;
    v26 = @"CNInvalidRecords";
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    v27[0] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v18 = [CNErrorFactory errorWithCode:200 userInfo:v17];
    v19 = *(*(a1 + 48) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    *a4 = 1;
  }
}

void __70__CNiOSAddressBookDataMapper__processContainersFromSaveContext_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v39[1] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = [*(a1 + 32) abSourcesByIdentifier];
  v8 = [v6 identifier];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    v29 = a1;
    v30 = a4;
    v10 = [v6 snapshot];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v11 = +[CN writableContainerProperties];
    v12 = [v11 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v33;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v33 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v32 + 1) + 8 * i);
          v17 = [v16 CNValueForContainer:v10];
          v18 = [v16 CNValueForContainer:v6];
          v19 = v18;
          if (v17 | v18)
          {
            if (([v18 isEqual:v17] & 1) == 0)
            {
              v20 = [v16 ABValueFromCNValue:v19];
              cf = 0;
              if (([v16 setABValue:v20 onABSource:v9 error:&cf] & 1) == 0)
              {
                v21 = [CNErrorFactory errorForiOSABError:cf];
                v22 = *(*(v29 + 48) + 8);
                v23 = *(v22 + 40);
                *(v22 + 40) = v21;

                if (cf)
                {
                  CFRelease(cf);
                }

                *v30 = 1;
                *(*(*(v29 + 40) + 8) + 24) = 0;
              }
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v13);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v37 = v6;
    v38 = @"CNInvalidRecords";
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
    v39[0] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    v26 = [CNErrorFactory errorWithCode:200 userInfo:v25];
    v27 = *(*(a1 + 48) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;

    *a4 = 1;
  }
}

- (uint64_t)_processContactChangeRequestsFromSaveContext:(void *)context error:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 1;
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__17;
    v19 = __Block_byref_object_dispose__17;
    v20 = 0;
    saveRequest = [v5 saveRequest];
    contactChangeRequests = [saveRequest contactChangeRequests];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __81__CNiOSAddressBookDataMapper__processContactChangeRequestsFromSaveContext_error___block_invoke;
    v10[3] = &unk_1E7414500;
    v11 = v6;
    selfCopy = self;
    v13 = &v21;
    v14 = &v15;
    [contactChangeRequests enumerateObjectsUsingBlock:v10];

    self = *(v22 + 24);
    if (context && (self & 1) == 0)
    {
      *context = v16[5];
    }

    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&v21, 8);
  }

  return self;
}

void __81__CNiOSAddressBookDataMapper__processContactChangeRequestsFromSaveContext_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v7 = [v6 contacts];
  v8 = [v7 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v47;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v47 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v46 + 1) + 8 * i);
        v13 = [*(a1 + 32) saveRequest];
        v14 = [v13 deletedContacts];
        LOBYTE(v12) = [v14 containsObject:v12];

        if (v12)
        {

          goto LABEL_32;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = [v6 kind];
  if (v15 <= 1)
  {
    if (v15)
    {
      if (v15 != 1)
      {
        goto LABEL_30;
      }

      v22 = [v6 contacts];
      v17 = [v22 lastObject];

      v23 = [*(a1 + 32) abPersonsByIdentifier];
      v24 = [v17 identifier];
      v25 = [v23 objectForKeyedSubscript:v24];

      if (v25 && [(CNiOSAddressBookDataMapper *)*(a1 + 40) _hasManagedWriteAccessToAccountContainingPerson:v25 fromSaveContext:*(a1 + 32)])
      {
        *(*(*(a1 + 48) + 8) + 24) = ABPersonUnlink();
      }
    }

    else
    {
      v34 = [v6 contacts];
      v17 = [v34 objectAtIndexedSubscript:0];

      v35 = [v6 contacts];
      v36 = [v35 objectAtIndexedSubscript:1];

      v37 = [*(a1 + 32) abPersonsByIdentifier];
      v38 = [v17 identifier];
      v39 = [v37 objectForKeyedSubscript:v38];

      v40 = [*(a1 + 32) abPersonsByIdentifier];
      v41 = [v36 identifier];
      v42 = [v40 objectForKeyedSubscript:v41];

      if (v39 && [(CNiOSAddressBookDataMapper *)*(a1 + 40) _hasManagedWriteAccessToAccountContainingPerson:v42 fromSaveContext:*(a1 + 32)])
      {
        *(*(*(a1 + 48) + 8) + 24) = ABPersonLinkPerson();
      }
    }
  }

  else
  {
    switch(v15)
    {
      case 2:
        v26 = [v6 contacts];
        v17 = [v26 firstObject];

        v27 = [*(a1 + 32) abPersonsByIdentifier];
        v28 = [v17 identifier];
        v29 = [v27 objectForKeyedSubscript:v28];

        if (v29 && [(CNiOSAddressBookDataMapper *)*(a1 + 40) _hasManagedWriteAccessToAccountContainingPerson:v29 fromSaveContext:*(a1 + 32)])
        {
          ABPersonSetPreferredLinkedPersonForName();
        }

        break;
      case 3:
        v30 = [v6 contacts];
        v17 = [v30 firstObject];

        v31 = [*(a1 + 32) abPersonsByIdentifier];
        v32 = [v17 identifier];
        v33 = [v31 objectForKeyedSubscript:v32];

        if (v33 && [(CNiOSAddressBookDataMapper *)*(a1 + 40) _hasManagedWriteAccessToAccountContainingPerson:v33 fromSaveContext:*(a1 + 32)])
        {
          ABPersonSetPreferredLinkedPersonForImage();
        }

        break;
      case 4:
        v16 = [v6 contacts];
        v17 = [v16 firstObject];

        v18 = [*(a1 + 32) abPersonsByIdentifier];
        v19 = [v17 identifier];
        v20 = [v18 objectForKeyedSubscript:v19];

        v21 = [v6 linkIdentifier];
        if (v20 && [(CNiOSAddressBookDataMapper *)*(a1 + 40) _hasManagedWriteAccessToAccountContainingPerson:v20 fromSaveContext:*(a1 + 32)])
        {
          ABPersonSetLinkUUID();
        }

        break;
      default:
        goto LABEL_30;
    }
  }

LABEL_30:
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v43 = [CNErrorFactory errorForiOSABError:0];
    v44 = *(*(a1 + 56) + 8);
    v45 = *(v44 + 40);
    *(v44 + 40) = v43;

    *a4 = 1;
  }

LABEL_32:
}

uint64_t __85__CNiOSAddressBookDataMapper__alternativeSourceWithAccessibleAccountFromAddressBook___block_invoke_3(uint64_t a1, const void *a2, void *a3)
{
  v4 = a3;
  RecordID = ABRecordGetRecordID(a2);
  v6 = ABRecordGetRecordID(v4);

  v7 = [MEMORY[0x1E696AD98] numberWithInt:RecordID];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:v6];
  v9 = [v7 compare:v8];

  return v9;
}

void __66__CNiOSAddressBookDataMapper__postProcessContactsFromSaveContext___block_invoke(uint64_t a1, void *a2)
{
  v45[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 identifier];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    [v3 setSnapshot:0];
    v7 = [*(a1 + 40) saveResponse];
    v8 = [*(a1 + 40) indexPathForContactInstance:v3];
    [v7 setContactSnapshot:0 forIndexPath:v8];
  }

  else
  {
    v45[0] = v3;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
    v30 = v3;
    if ([v3 isUnified])
    {
      v10 = [v3 mainStoreLinkedContacts];

      v11 = [v3 copyWithSelfAsSnapshot];
      [v3 setSnapshot:v11];
      v12 = [*(a1 + 40) saveResponse];
      v13 = [*(a1 + 40) indexPathForContactInstance:v3];
      [v12 setContactSnapshot:v11 forIndexPath:v13];

      v9 = v10;
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v9;
    v34 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v34)
    {
      v32 = a1;
      v33 = *v40;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v40 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v39 + 1) + 8 * i);
          v16 = [*(a1 + 40) abPersonsByIdentifier];
          v17 = [v15 identifier];
          v18 = [v16 objectForKeyedSubscript:v17];

          if (v18)
          {
            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v19 = *(a1 + 48);
            v20 = [v19 countByEnumeratingWithState:&v35 objects:v43 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v36;
              do
              {
                for (j = 0; j != v21; ++j)
                {
                  if (*v36 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v24 = *(*(&v35 + 1) + 8 * j);
                  v25 = [v24 key];
                  v26 = [v15 isKeyAvailable:v25];

                  if (v26)
                  {
                    [v24 copyFromABPerson:v18 toContact:v15];
                  }
                }

                v21 = [v19 countByEnumeratingWithState:&v35 objects:v43 count:16];
              }

              while (v21);
            }

            a1 = v32;
          }

          v27 = [v15 copyWithSelfAsSnapshot];
          [v15 setSnapshot:v27];
          v28 = [*(a1 + 40) saveResponse];
          v29 = [*(a1 + 40) indexPathForContactInstance:v15];
          [v28 setContactSnapshot:v27 forIndexPath:v29];
        }

        v34 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v34);
    }

    v3 = v30;
  }
}

void __66__CNiOSAddressBookDataMapper__processGroupsFromSaveContext_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v64 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = v7;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v8;
  v10 = [v8 countByEnumeratingWithState:&v50 objects:v63 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v51;
    property = *MEMORY[0x1E698A228];
    v44 = *MEMORY[0x1E698A230];
    v46 = v9;
    v47 = a4;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v51 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v50 + 1) + 8 * i);
        v15 = [*(a1 + 32) abGroupsByIdentifier];
        v16 = [v14 identifier];
        v17 = [v15 objectForKey:v16];

        if (v17)
        {
          *(*(*(a1 + 40) + 8) + 24) = 0;
          v60 = v14;
          v61 = @"CNInvalidRecords";
          v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
          v62 = v18;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
          v20 = [CNErrorFactory errorWithCode:201 userInfo:v19];
          v21 = *(*(a1 + 48) + 8);
          v22 = *(v21 + 40);
          *(v21 + 40) = v20;

          *a4 = 1;
          continue;
        }

        [v14 setSnapshot:0];
        v23 = [*(a1 + 32) saveResponse];
        v24 = [*(a1 + 32) indexPathForGroupInstance:v14];
        [v23 setGroupSnapshot:0 forIndexPath:v24];

        v25 = [MEMORY[0x1E695DFB0] null];
        LODWORD(v24) = [v9 isEqual:v25];

        if (v24)
        {
          v26 = ABGroupCreate();
          if (!v26)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v27 = [*(a1 + 32) abSourcesByIdentifier];
          v28 = [v27 objectForKey:v9];

          if (!v28)
          {
            *(*(*(a1 + 40) + 8) + 24) = 0;
            v57 = v9;
            v58 = @"CNInvalidRecordIdentifiers";
            v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
            v59 = v30;
            v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
            v32 = [CNErrorFactory errorWithCode:200 userInfo:v31];
            v33 = *(*(a1 + 48) + 8);
            v34 = *(v33 + 40);
            *(v33 + 40) = v32;

            *a4 = 1;
LABEL_15:
            v29 = 0;
            *(*(*(a1 + 40) + 8) + 24) = 0;
            goto LABEL_16;
          }

          v26 = ABGroupCreateInSource(v28);
          if (!v26)
          {
            goto LABEL_15;
          }
        }

        v29 = CFAutorelease(v26);
LABEL_16:
        if (*(*(*(a1 + 40) + 8) + 24) == 1)
        {
          error = 0;
          v35 = [v14 identifier];
          *(*(*(a1 + 40) + 8) + 24) = ABRecordSetValue(v29, property, v35, &error);

          if (*(*(*(a1 + 40) + 8) + 24) == 1)
          {
            *(*(*(a1 + 40) + 8) + 24) = ABRecordSetValue(v29, v44, [v14 name], &error);
            if (*(*(*(a1 + 40) + 8) + 24))
            {
              *(*(*(a1 + 40) + 8) + 24) = ABAddressBookAddRecord([*(a1 + 32) addressBook], v29, &error);
              if (*(*(*(a1 + 40) + 8) + 24))
              {
                goto LABEL_23;
              }
            }
          }

          v54 = v14;
          v55 = @"CNInvalidRecords";
          v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
          v56 = v36;
          v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
          v38 = [CNErrorFactory errorForiOSABError:error];
          v39 = [CNErrorFactory errorByAddingUserInfoEntries:v37 toError:v38];
          v40 = *(*(a1 + 48) + 8);
          v41 = *(v40 + 40);
          *(v40 + 40) = v39;

          if (error)
          {
            CFRelease(error);
          }

          v9 = v46;
          a4 = v47;
          *v47 = 1;
          if (*(*(*(a1 + 40) + 8) + 24))
          {
LABEL_23:
            v42 = [*(a1 + 32) abGroupsByIdentifier];
            v43 = [v14 identifier];
            [v42 setObject:v29 forKey:v43];

            a4 = v47;
            v9 = v46;
          }
        }
      }

      v11 = [obj countByEnumeratingWithState:&v50 objects:v63 count:16];
    }

    while (v11);
  }
}

void __66__CNiOSAddressBookDataMapper__processGroupsFromSaveContext_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = [*(a1 + 32) abGroupsByIdentifier];
  v8 = [v6 identifier];
  v9 = [v7 objectForKey:v8];

  if (v9)
  {
    error = 0;
    *(*(*(a1 + 40) + 8) + 24) = ABAddressBookRemoveRecord([*(a1 + 32) addressBook], v9, &error);
    if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
    {
      v17 = v6;
      v18 = @"CNInvalidRecords";
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
      v19[0] = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v12 = [CNErrorFactory errorForiOSABError:error];
      v13 = [CNErrorFactory errorByAddingUserInfoEntries:v11 toError:v12];
      v14 = *(*(a1 + 48) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      if (error)
      {
        CFRelease(error);
      }

      *a4 = 1;
    }
  }
}

void __66__CNiOSAddressBookDataMapper__processGroupsFromSaveContext_error___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v57[1] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = [*(a1 + 32) abGroupsByIdentifier];
  v8 = [v6 identifier];
  v9 = [v7 objectForKey:v8];

  if (v9)
  {
    cf = 0;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      v10 = [v6 name];
      v11 = [v6 snapshot];
      v12 = [v11 name];
      v13 = [v10 isEqual:v12];

      if ((v13 & 1) == 0)
      {
        v14 = *MEMORY[0x1E698A230];
        v15 = [v6 name];
        *(*(*(a1 + 40) + 8) + 24) &= ABRecordSetValue(v9, v14, v15, &cf);
      }
    }

    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      v16 = [v6 externalIdentifier];
      v17 = [v6 snapshot];
      v18 = [v17 externalIdentifier];
      v19 = [v16 isEqual:v18];

      if ((v19 & 1) == 0)
      {
        v20 = *MEMORY[0x1E698A208];
        v21 = [v6 externalIdentifier];
        *(*(*(a1 + 40) + 8) + 24) &= ABRecordSetValue(v9, v20, v21, &cf);
      }
    }

    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      v22 = [v6 externalModificationTag];
      v23 = [v6 snapshot];
      v24 = [v23 externalModificationTag];
      v25 = [v22 isEqual:v24];

      if ((v25 & 1) == 0)
      {
        v26 = *MEMORY[0x1E698A210];
        v27 = [v6 externalModificationTag];
        *(*(*(a1 + 40) + 8) + 24) &= ABRecordSetValue(v9, v26, v27, &cf);
      }
    }

    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      v28 = [v6 externalRepresentation];
      v29 = [v6 snapshot];
      v30 = [v29 externalRepresentation];
      v31 = [v28 isEqual:v30];

      if ((v31 & 1) == 0)
      {
        v32 = *MEMORY[0x1E698A218];
        v33 = [v6 externalRepresentation];
        *(*(*(a1 + 40) + 8) + 24) &= ABRecordSetValue(v9, v32, v33, &cf);
      }
    }

    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      v34 = [v6 externalUUID];
      v35 = [v6 snapshot];
      v36 = [v35 externalUUID];
      v37 = [v34 isEqual:v36];

      if ((v37 & 1) == 0)
      {
        v38 = *MEMORY[0x1E698A220];
        v39 = [v6 externalUUID];
        *(*(*(a1 + 40) + 8) + 24) &= ABRecordSetValue(v9, v38, v39, &cf);
      }
    }

    if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
    {
      *a4 = 1;
      v52 = v6;
      v53 = @"CNInvalidRecords";
      v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
      v54 = v40;
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
      v42 = [CNErrorFactory errorForiOSABError:cf];
      v43 = [CNErrorFactory errorByAddingUserInfoEntries:v41 toError:v42];
      v44 = *(*(a1 + 48) + 8);
      v45 = *(v44 + 40);
      *(v44 + 40) = v43;

      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v55 = v6;
    v56 = @"CNInvalidRecords";
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
    v57[0] = v46;
    v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:&v56 count:1];
    v48 = [CNErrorFactory errorWithCode:200 userInfo:v47];
    v49 = *(*(a1 + 48) + 8);
    v50 = *(v49 + 40);
    *(v49 + 40) = v48;

    *a4 = 1;
  }
}

- (uint64_t)_processContactMembershipsFromSaveContext:(void *)context error:
{
  v5 = a2;
  v6 = v5;
  if (!self)
  {
    v14 = 0;
    goto LABEL_10;
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 1;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__17;
  v28 = __Block_byref_object_dispose__17;
  v29 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__CNiOSAddressBookDataMapper__processContactMembershipsFromSaveContext_error___block_invoke;
  aBlock[3] = &unk_1E7414638;
  v7 = v5;
  v21 = v7;
  v22 = &v30;
  v23 = &v24;
  v8 = _Block_copy(aBlock);
  if (*(v31 + 24) == 1)
  {
    saveRequest = [v7 saveRequest];
    addedMembersByGroupIdentifier = [saveRequest addedMembersByGroupIdentifier];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __78__CNiOSAddressBookDataMapper__processContactMembershipsFromSaveContext_error___block_invoke_5;
    v18[3] = &unk_1E7414680;
    v11 = v7;
    v19 = v11;
    v8[2](v8, addedMembersByGroupIdentifier, &__block_literal_global_81, v18);

    if (v31[3])
    {
      saveRequest2 = [v11 saveRequest];
      removedMembersByGroupIdentifier = [saveRequest2 removedMembersByGroupIdentifier];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __78__CNiOSAddressBookDataMapper__processContactMembershipsFromSaveContext_error___block_invoke_7;
      v16[3] = &unk_1E7414680;
      v17 = v11;
      v8[2](v8, removedMembersByGroupIdentifier, &__block_literal_global_84, v16);

      v14 = *(v31 + 24);
      if (!context)
      {
        goto LABEL_9;
      }

LABEL_7:
      if ((v14 & 1) == 0)
      {
        *context = v25[5];
      }

      goto LABEL_9;
    }
  }

  v14 = 0;
  if (context)
  {
    goto LABEL_7;
  }

LABEL_9:

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);
LABEL_10:

  return v14 & 1;
}

- (uint64_t)_processSubgroupMembershipsFromSaveContext:(void *)context error:
{
  v5 = a2;
  v6 = v5;
  if (!self)
  {
    v14 = 0;
    goto LABEL_10;
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 1;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__17;
  v28 = __Block_byref_object_dispose__17;
  v29 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__CNiOSAddressBookDataMapper__processSubgroupMembershipsFromSaveContext_error___block_invoke;
  aBlock[3] = &unk_1E74146A8;
  v7 = v5;
  v21 = v7;
  v22 = &v30;
  v23 = &v24;
  v8 = _Block_copy(aBlock);
  if (*(v31 + 24) == 1)
  {
    saveRequest = [v7 saveRequest];
    addedSubgroupsByGroupIdentifier = [saveRequest addedSubgroupsByGroupIdentifier];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __79__CNiOSAddressBookDataMapper__processSubgroupMembershipsFromSaveContext_error___block_invoke_4;
    v18[3] = &unk_1E7414680;
    v11 = v7;
    v19 = v11;
    v8[2](v8, addedSubgroupsByGroupIdentifier, &__block_literal_global_88, v18);

    if (v31[3])
    {
      saveRequest2 = [v11 saveRequest];
      removedSubgroupsByGroupIdentifier = [saveRequest2 removedSubgroupsByGroupIdentifier];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __79__CNiOSAddressBookDataMapper__processSubgroupMembershipsFromSaveContext_error___block_invoke_6;
      v16[3] = &unk_1E7414680;
      v17 = v11;
      v8[2](v8, removedSubgroupsByGroupIdentifier, &__block_literal_global_90, v16);

      v14 = *(v31 + 24);
      if (!context)
      {
        goto LABEL_9;
      }

LABEL_7:
      if ((v14 & 1) == 0)
      {
        *context = v25[5];
      }

      goto LABEL_9;
    }
  }

  v14 = 0;
  if (context)
  {
    goto LABEL_7;
  }

LABEL_9:

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);
LABEL_10:

  return v14 & 1;
}

void __78__CNiOSAddressBookDataMapper__processContactMembershipsFromSaveContext_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__CNiOSAddressBookDataMapper__processContactMembershipsFromSaveContext_error___block_invoke_2;
  v11[3] = &unk_1E7414610;
  v12 = *(a1 + 32);
  v13 = v8;
  v15 = *(a1 + 40);
  v14 = v7;
  v9 = v7;
  v10 = v8;
  [a2 enumerateKeysAndObjectsUsingBlock:v11];
}

void __78__CNiOSAddressBookDataMapper__processContactMembershipsFromSaveContext_error___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v51[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) abGroupsByIdentifier];
  v10 = [v9 objectForKeyedSubscript:v7];

  v35 = v10;
  if (v10)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v41 objects:v48 count:16];
    if (v12)
    {
      v13 = v12;
      v33 = v8;
      v34 = v7;
      v14 = *v42;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          v16 = a4;
          if (*v42 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v41 + 1) + 8 * i);
          v18 = [*(a1 + 32) abPersonsByIdentifier];
          v19 = [v17 identifier];
          v20 = [v18 objectForKeyedSubscript:v19];

          if (v20)
          {
            v21 = *(*(a1 + 64) + 8);
            v40 = *(v21 + 40);
            v36[0] = MEMORY[0x1E69E9820];
            v36[1] = 3221225472;
            v36[2] = __78__CNiOSAddressBookDataMapper__processContactMembershipsFromSaveContext_error___block_invoke_3;
            v36[3] = &unk_1E74145E8;
            v37 = *(a1 + 48);
            v38 = v35;
            v39 = v20;
            v22 = CNBridgeBoolResultAndErrorFromBlock(&v40, v36);
            objc_storeStrong((v21 + 40), v40);
            *(*(*(a1 + 56) + 8) + 24) = v22;
            a4 = v16;
            if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
            {
              *v16 = 1;
            }
          }

          else
          {
            *(*(*(a1 + 56) + 8) + 24) = 0;
            v45 = v17;
            v46 = @"CNInvalidRecords";
            v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
            v47 = v23;
            v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
            v25 = [CNErrorFactory errorWithCode:200 userInfo:v24];
            v26 = *(*(a1 + 64) + 8);
            v27 = *(v26 + 40);
            *(v26 + 40) = v25;

            a4 = v16;
            *v16 = 1;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v41 objects:v48 count:16];
      }

      while (v13);
      v8 = v33;
      v7 = v34;
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v11 = (*(*(a1 + 40) + 16))();
    v49 = v11;
    v50 = @"CNInvalidRecords";
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
    v51[0] = v28;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
    v30 = [CNErrorFactory errorWithCode:200 userInfo:v29];
    v31 = *(*(a1 + 64) + 8);
    v32 = *(v31 + 40);
    *(v31 + 40) = v30;

    *a4 = 1;
  }
}

id __78__CNiOSAddressBookDataMapper__processContactMembershipsFromSaveContext_error___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 saveRequest];
  v5 = [v4 groupWithAddedMemberForGroupIdentifier:v3];

  return v5;
}

id __78__CNiOSAddressBookDataMapper__processContactMembershipsFromSaveContext_error___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 saveRequest];
  v5 = [v4 groupWithRemovedMemberForGroupIdentifier:v3];

  return v5;
}

void __79__CNiOSAddressBookDataMapper__processSubgroupMembershipsFromSaveContext_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__CNiOSAddressBookDataMapper__processSubgroupMembershipsFromSaveContext_error___block_invoke_2;
  v11[3] = &unk_1E7414610;
  v12 = *(a1 + 32);
  v13 = v8;
  v15 = *(a1 + 40);
  v14 = v7;
  v9 = v7;
  v10 = v8;
  [a2 enumerateKeysAndObjectsUsingBlock:v11];
}

void __79__CNiOSAddressBookDataMapper__processSubgroupMembershipsFromSaveContext_error___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v47[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) abGroupsByIdentifier];
  v10 = [v9 objectForKeyedSubscript:v7];

  if (!v10)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v11 = (*(*(a1 + 40) + 16))();
    v45 = v11;
    v46 = @"CNInvalidRecords";
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
    v47[0] = v28;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1];
    v29 = v8;
    v31 = v30 = v7;
    v32 = [CNErrorFactory errorWithCode:200 userInfo:v31];
    v33 = *(*(a1 + 64) + 8);
    v34 = *(v33 + 40);
    *(v33 + 40) = v32;

    v7 = v30;
    v8 = v29;

    *a4 = 1;
    goto LABEL_16;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v12)
  {
    v13 = v12;
    v35 = v8;
    v36 = v7;
    v14 = *v38;
    while (1)
    {
      for (i = 0; i != v13; ++i)
      {
        v16 = a4;
        if (*v38 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v37 + 1) + 8 * i);
        v18 = [*(a1 + 32) abGroupsByIdentifier];
        v19 = [v17 identifier];
        v20 = [v18 objectForKeyedSubscript:v19];

        if (v20)
        {
          *(*(*(a1 + 56) + 8) + 24) = (*(*(a1 + 48) + 16))();
          a4 = v16;
          if (*(*(*(a1 + 56) + 8) + 24))
          {
            continue;
          }

          v21 = +[CNErrorFactory genericiOSABError];
          v22 = *(*(a1 + 64) + 8);
          v23 = *(v22 + 40);
          *(v22 + 40) = v21;
        }

        else
        {
          *(*(*(a1 + 56) + 8) + 24) = 0;
          v41 = v17;
          v42 = @"CNInvalidRecords";
          v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
          v43 = v23;
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
          v25 = [CNErrorFactory errorWithCode:200 userInfo:v24];
          v26 = *(*(a1 + 64) + 8);
          v27 = *(v26 + 40);
          *(v26 + 40) = v25;

          a4 = v16;
        }

        *a4 = 1;
      }

      v13 = [v11 countByEnumeratingWithState:&v37 objects:v44 count:16];
      if (!v13)
      {
        v8 = v35;
        v7 = v36;
        break;
      }
    }
  }

LABEL_16:
}

id __79__CNiOSAddressBookDataMapper__processSubgroupMembershipsFromSaveContext_error___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 saveRequest];
  v5 = [v4 groupWithAddedSubgroupForGroupIdentifier:v3];

  return v5;
}

id __79__CNiOSAddressBookDataMapper__processSubgroupMembershipsFromSaveContext_error___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 saveRequest];
  v5 = [v4 groupWithRemovedSubgroupForGroupIdentifier:v3];

  return v5;
}

- (id)_containersMatchingPredicate:(char)predicate remote:(void *)remote error:
{
  v7 = a2;
  v8 = v7;
  if (self)
  {
    if (!v7 || ([v7 conformsToProtocol:&unk_1F0993CD0] & 1) != 0)
    {
      objc_opt_class();
      v9 = v8;
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;

      if (v11 && [v11 type] == 1004)
      {
        self = MEMORY[0x1E695E0F0];
LABEL_19:

        goto LABEL_20;
      }

      v32 = 0;
      v33 = &v32;
      v34 = 0x3032000000;
      v35 = __Block_byref_object_copy__17;
      v36 = __Block_byref_object_dispose__17;
      v37 = 0;
      v30[0] = 0;
      v30[1] = v30;
      v30[2] = 0x3032000000;
      v30[3] = __Block_byref_object_copy__17;
      v30[4] = __Block_byref_object_dispose__17;
      v31 = 0;
      v12 = self[2];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __72__CNiOSAddressBookDataMapper__containersMatchingPredicate_remote_error___block_invoke;
      v24[3] = &unk_1E7414740;
      v25 = v9;
      selfCopy = self;
      v27 = v30;
      v28 = &v32;
      predicateCopy = predicate;
      v13 = [v12 performSynchronousWorkWithInvalidatedAddressBook:v24];

      if ([v13 isSuccess])
      {
        v14 = v33[5];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v21 = __72__CNiOSAddressBookDataMapper__containersMatchingPredicate_remote_error___block_invoke_4;
        v22 = &unk_1E7414768;
        v23 = v30;
        self = v14;
        v15 = v20;
        v16 = v15;
        if (!remote || self)
        {
          goto LABEL_18;
        }

        v17 = v21(v15);
      }

      else
      {
        error = [v13 error];
        v16 = error;
        if (!remote)
        {
          self = 0;
          goto LABEL_18;
        }

        v17 = error;
        self = 0;
      }

      *remote = v17;
LABEL_18:

      _Block_object_dispose(v30, 8);
      _Block_object_dispose(&v32, 8);

      goto LABEL_19;
    }

    [CNiOSAddressBookDataMapper _containersMatchingPredicate:remote remote:? error:?];
    self = 0;
  }

LABEL_20:

  return self;
}

void __72__CNiOSAddressBookDataMapper__containersMatchingPredicate_remote_error___block_invoke(uint64_t a1, const void *a2)
{
  v4 = [*(a1 + 32) conformsToProtocol:&unk_1F0993CD0];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [v5 includesDisabledContainers];
    v7 = *(*(a1 + 48) + 8);
    v18 = *(v7 + 40);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __72__CNiOSAddressBookDataMapper__containersMatchingPredicate_remote_error___block_invoke_2;
    v15[3] = &unk_1E7414718;
    v16 = *(a1 + 32);
    v17 = a2;
    v8 = CNBridgeABCFResultAndErrorFromBlock(&v18, v15);
    objc_storeStrong((v7 + 40), v18);
  }

  else
  {
    if (v5)
    {
      v8 = 0;
    }

    else
    {
      v9 = ABAddressBookCopyArrayOfAllSources(a2);
      if (v9)
      {
        v9 = CFAutorelease(v9);
      }

      v8 = v9;
    }

    v6 = 0;
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__CNiOSAddressBookDataMapper__containersMatchingPredicate_remote_error___block_invoke_3;
  v14[3] = &unk_1E7414528;
  v14[4] = *(a1 + 40);
  v14[5] = a2;
  v10 = [v8 _cn_filter:v14];

  if (v10)
  {
    v11 = [CNiOSABConversions containersFromABSources:v10 remote:*(a1 + 64) includeDisabledSources:v6];
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

id __72__CNiOSAddressBookDataMapper__containersMatchingPredicate_remote_error___block_invoke_4(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = +[CNErrorFactory genericiOSABError];
  }

  return v2;
}

- (id)policyForContainerWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = objc_alloc_init(CNPolicyDescription);
  [(CNPolicyDescription *)v7 setContainerIdentifier:identifierCopy];

  v8 = [(CNiOSAddressBookDataMapper *)self policyWithDescription:v7 error:error];

  return v8;
}

- (id)policyWithDescription:(id)description error:(id *)error
{
  v36[1] = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__17;
  v34 = __Block_byref_object_dispose__17;
  v35 = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__17;
  v28[4] = __Block_byref_object_dispose__17;
  v29 = 0;
  containerIdentifier = [descriptionCopy containerIdentifier];
  if (!containerIdentifier)
  {
    containerIdentifier = [(CNiOSAddressBookDataMapper *)self defaultContainerIdentifier];
    if (!containerIdentifier)
    {
LABEL_9:
      v14 = v31[5];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v20 = __58__CNiOSAddressBookDataMapper_policyWithDescription_error___block_invoke_3;
      v21 = &unk_1E7414768;
      v22 = v28;
      v15 = v14;
      v16 = v19;
      v12 = v16;
      if (error && !v15)
      {
        *error = v20(v16);
      }

      goto LABEL_15;
    }
  }

  v36[0] = containerIdentifier;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  v9 = [CNContainer predicateForContainersWithIdentifiers:v8];

  if (![v9 conformsToProtocol:&unk_1F0993CD0])
  {
LABEL_8:

    goto LABEL_9;
  }

  if (self)
  {
    addressBook = self->_addressBook;
  }

  else
  {
    addressBook = 0;
  }

  v11 = addressBook;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __58__CNiOSAddressBookDataMapper_policyWithDescription_error___block_invoke;
  v23[3] = &unk_1E7414790;
  v26 = v28;
  v12 = v9;
  v24 = v12;
  v25 = descriptionCopy;
  v27 = &v30;
  v13 = [(CNiOSAddressBook *)v11 performSynchronousWorkWithInvalidatedAddressBook:v23];

  if ([v13 isSuccess])
  {

    goto LABEL_8;
  }

  error = [v13 error];
  if (error)
  {
    error = error;
    *error = error;
  }

  v15 = 0;
LABEL_15:

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(&v30, 8);

  return v15;
}

void __58__CNiOSAddressBookDataMapper_policyWithDescription_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 48) + 8);
  v13 = *(v4 + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__CNiOSAddressBookDataMapper_policyWithDescription_error___block_invoke_2;
  v10[3] = &unk_1E7414718;
  v11 = *(a1 + 32);
  v12 = a2;
  v5 = CNBridgeABCFResultAndErrorFromBlock(&v13, v10);
  objc_storeStrong((v4 + 40), v13);
  if ([(__CFArray *)v5 count])
  {
    CFArrayGetValueAtIndex(v5, 0);
    if ([*(a1 + 40) ignoresGuardianRestrictions])
    {
      ABSourceSetShouldIgnoreCapabilitiesRestrictions();
    }

    Policy = ABSourceGetPolicy();
    v7 = [[CNiOSABPolicy alloc] initWithAddressBookPolicy:Policy readOnly:ABSourceIsContentReadonly()];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

id __58__CNiOSAddressBookDataMapper_policyWithDescription_error___block_invoke_3(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = +[CNErrorFactory genericiOSABError];
  }

  return v2;
}

- (id)usedLabelsForPropertyWithKey:(id)key error:(id *)error
{
  keyCopy = key;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__17;
  v29 = __Block_byref_object_dispose__17;
  v30 = 0;
  v7 = +[CN contactPropertiesByKey];
  v8 = [v7 objectForKey:keyCopy];

  if (v8 && (v24 = 0, [v8 abPropertyID:&v24]))
  {
    if (self)
    {
      addressBook = self->_addressBook;
    }

    else
    {
      addressBook = 0;
    }

    v10 = addressBook;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __65__CNiOSAddressBookDataMapper_usedLabelsForPropertyWithKey_error___block_invoke;
    v22[3] = &unk_1E74147B8;
    v22[4] = &v25;
    v23 = v24;
    v11 = [(CNiOSAddressBook *)v10 performSynchronousWorkWithInvalidatedAddressBook:v22];
  }

  else
  {
    v11 = 0;
  }

  v12 = v26[5];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v19 = __65__CNiOSAddressBookDataMapper_usedLabelsForPropertyWithKey_error___block_invoke_2;
  v20 = &unk_1E74141F0;
  v13 = v11;
  v21 = v13;
  v14 = v12;
  v15 = v18;
  v16 = v15;
  if (error && !v14)
  {
    *error = v19(v15);
  }

  _Block_object_dispose(&v25, 8);

  return v14;
}

void __65__CNiOSAddressBookDataMapper_usedLabelsForPropertyWithKey_error___block_invoke(uint64_t a1)
{
  v2 = ABAddressBookCopyAllLabelsForProperty();
  if (v2)
  {
    v3 = CFAutorelease(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(*(a1 + 32) + 8) + 40);

  objc_storeStrong(v4, v3);
}

id __65__CNiOSAddressBookDataMapper_usedLabelsForPropertyWithKey_error___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) error];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = +[CNErrorFactory genericiOSABError];
  }

  v4 = v3;

  return v4;
}

- (id)accountsMatchingPredicate:(id)predicate error:(id *)error
{
  predicateCopy = predicate;
  v7 = predicateCopy;
  if (!predicateCopy || ([predicateCopy conformsToProtocol:&unk_1F0991650] & 1) != 0)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__17;
    v34 = __Block_byref_object_dispose__17;
    v35 = 0;
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x3032000000;
    v28[3] = __Block_byref_object_copy__17;
    v28[4] = __Block_byref_object_dispose__17;
    v29 = 0;
    if (self)
    {
      addressBook = self->_addressBook;
    }

    else
    {
      addressBook = 0;
    }

    v9 = addressBook;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __62__CNiOSAddressBookDataMapper_accountsMatchingPredicate_error___block_invoke;
    v23[3] = &unk_1E74147E0;
    v24 = v7;
    selfCopy = self;
    v26 = v28;
    v27 = &v30;
    v10 = [(CNiOSAddressBook *)v9 performSynchronousWorkWithInvalidatedAddressBook:v23];

    if ([v10 isSuccess])
    {
      v11 = v31[5];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v20 = __62__CNiOSAddressBookDataMapper_accountsMatchingPredicate_error___block_invoke_4;
      v21 = &unk_1E7414768;
      v22 = v28;
      v12 = v11;
      v13 = v19;
      v14 = v13;
      if (!error || v12)
      {
        goto LABEL_16;
      }

      v15 = v20(v13);
    }

    else
    {
      error = [v10 error];
      v14 = error;
      if (!error)
      {
        v12 = 0;
        goto LABEL_16;
      }

      v15 = error;
      v12 = 0;
    }

    *error = v15;
LABEL_16:

    _Block_object_dispose(v28, 8);
    _Block_object_dispose(&v30, 8);

    goto LABEL_17;
  }

  v17 = [CNErrorFactory errorWithCode:400];
  if (error)
  {
    v17 = v17;
    *error = v17;
  }

  v12 = 0;
LABEL_17:

  return v12;
}

id __62__CNiOSAddressBookDataMapper_accountsMatchingPredicate_error___block_invoke_4(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = +[CNErrorFactory genericiOSABError];
  }

  return v2;
}

- (id)groupsMatchingPredicate:(id)predicate error:(id *)error
{
  predicateCopy = predicate;
  v7 = predicateCopy;
  if (!predicateCopy || ([predicateCopy conformsToProtocol:&unk_1F0994930] & 1) != 0)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__17;
    v33 = __Block_byref_object_dispose__17;
    v34 = 0;
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x3032000000;
    v27[3] = __Block_byref_object_copy__17;
    v27[4] = __Block_byref_object_dispose__17;
    v28 = 0;
    if (self)
    {
      addressBook = self->_addressBook;
    }

    else
    {
      addressBook = 0;
    }

    v9 = addressBook;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __60__CNiOSAddressBookDataMapper_groupsMatchingPredicate_error___block_invoke;
    v23[3] = &unk_1E7414328;
    v24 = v7;
    v25 = v27;
    v26 = &v29;
    v10 = [(CNiOSAddressBook *)v9 performSynchronousWorkWithInvalidatedAddressBook:v23];

    if ([v10 isSuccess])
    {
      v11 = v30[5];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v20 = __60__CNiOSAddressBookDataMapper_groupsMatchingPredicate_error___block_invoke_3;
      v21 = &unk_1E7414768;
      v22 = v27;
      v12 = v11;
      v13 = v19;
      v14 = v13;
      if (!error || v12)
      {
        goto LABEL_16;
      }

      v15 = v20(v13);
    }

    else
    {
      error = [v10 error];
      v14 = error;
      if (!error)
      {
        v12 = 0;
        goto LABEL_16;
      }

      v15 = error;
      v12 = 0;
    }

    *error = v15;
LABEL_16:

    _Block_object_dispose(v27, 8);
    _Block_object_dispose(&v29, 8);

    goto LABEL_17;
  }

  v17 = [CNErrorFactory errorWithCode:400];
  if (error)
  {
    v17 = v17;
    *error = v17;
  }

  v12 = 0;
LABEL_17:

  return v12;
}

void __60__CNiOSAddressBookDataMapper_groupsMatchingPredicate_error___block_invoke(uint64_t a1, const void *a2)
{
  if ([*(a1 + 32) conformsToProtocol:&unk_1F0994930])
  {
    v4 = *(*(a1 + 40) + 8);
    v13 = *(v4 + 40);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__CNiOSAddressBookDataMapper_groupsMatchingPredicate_error___block_invoke_2;
    v10[3] = &unk_1E7414718;
    v11 = *(a1 + 32);
    v12 = a2;
    v5 = CNBridgeABCFResultAndErrorFromBlock(&v13, v10);
    objc_storeStrong((v4 + 40), v13);

    if (!v5)
    {
      return;
    }

LABEL_8:
    v7 = [CNiOSABConversions groupsFromABGroups:v5];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    return;
  }

  if (!*(a1 + 32))
  {
    v6 = ABAddressBookCopyArrayOfAllGroups(a2);
    if (v6)
    {
      v6 = CFAutorelease(v6);
    }

    v5 = v6;
    if (v5)
    {
      goto LABEL_8;
    }
  }
}

id __60__CNiOSAddressBookDataMapper_groupsMatchingPredicate_error___block_invoke_3(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = +[CNErrorFactory genericiOSABError];
  }

  return v2;
}

- (id)groupsWithIdentifiers:(id)identifiers error:(id *)error
{
  v6 = [CNGroup predicateForGroupsWithIdentifiers:identifiers];
  v7 = [(CNiOSAddressBookDataMapper *)self groupsMatchingPredicate:v6 error:error];

  return v7;
}

- (id)subgroupsOfGroupWithIdentifier:(id)identifier error:(id *)error
{
  v5 = [CNErrorFactory errorWithCode:1005];
  if (error)
  {
    v5 = v5;
    *error = v5;
  }

  return 0;
}

void __80__CNiOSAddressBookDataMapper_executeFetchRequest_progressiveResults_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 didFetchContacts:v7 error:0];
  (*(*(a1 + 40) + 16))();
}

void __80__CNiOSAddressBookDataMapper_executeFetchRequest_progressiveResults_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    [*(a1 + 32) didFetchContacts:0 error:v4];
  }

  (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (id)legacyTetheredSyncAnchorForKey:(uint64_t)key
{
  if (key)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v3 = *(key + 16);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__CNiOSAddressBookDataMapper_legacyTetheredSyncAnchorForKey___block_invoke;
    v7[3] = &unk_1E7414880;
    v7[4] = &v8;
    v7[5] = a2;
    v4 = [v3 performSynchronousWorkWithInvalidatedAddressBook:v7];

    v5 = v9[3];
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __61__CNiOSAddressBookDataMapper_legacyTetheredSyncAnchorForKey___block_invoke(uint64_t a1)
{
  result = ABAddressBookCopyValue();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __74__CNiOSAddressBookDataMapper_contactWithUserActivityUserInfo_keysToFetch___block_invoke(uint64_t a1)
{
  PersonMatchingUserActivityUserInfo = ABAddressBookFindPersonMatchingUserActivityUserInfo();
  v3 = [CNiOSABConversions contactFromABPerson:*(a1 + 40) keysToConvert:0 mutable:?];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

ABRecordRef __61__CNiOSAddressBookDataMapper_userActivityUserInfoForContact___block_invoke(uint64_t a1, const void *a2)
{
  result = ABAddressBookGetPersonWithRecordID(a2, [*(a1 + 32) iOSLegacyIdentifier]);
  if (result)
  {
    [*(a1 + 32) isUnified];
    v4 = ABPersonGetUserActivityUserInfo();
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    return MEMORY[0x1EEE66BB8](v4, v6);
  }

  return result;
}

- (id)matchingDictionaryForContact:(id)contact
{
  contactCopy = contact;
  if ([contactCopy hasBeenPersisted])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__17;
    v17 = __Block_byref_object_dispose__17;
    v18 = 0;
    if (self)
    {
      addressBook = self->_addressBook;
    }

    else
    {
      addressBook = 0;
    }

    v6 = addressBook;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__CNiOSAddressBookDataMapper_matchingDictionaryForContact___block_invoke;
    v10[3] = &unk_1E7414150;
    v11 = contactCopy;
    v12 = &v13;
    v7 = [(CNiOSAddressBook *)v6 performSynchronousWorkWithInvalidatedAddressBook:v10];

    v8 = v14[5];
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

ABRecordRef __59__CNiOSAddressBookDataMapper_matchingDictionaryForContact___block_invoke(uint64_t a1, const void *a2)
{
  result = ABAddressBookGetPersonWithRecordID(a2, [*(a1 + 32) iOSLegacyIdentifier]);
  if (result)
  {
    [*(a1 + 32) isUnified];
    v4 = ABPersonGetMatchingDictionary();
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    return MEMORY[0x1EEE66BB8](v4, v6);
  }

  return result;
}

uint64_t __70__CNiOSAddressBookDataMapper_contactIdentifierWithMatchingDictionary___block_invoke(uint64_t a1)
{
  PersonMatchingMatchingDictionary = ABAddressBookFindPersonMatchingMatchingDictionary();
  v3 = [CNiOSABConversions contactIdentifierFromABPerson:?];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

- (BOOL)registerChangeHistoryClientIdentifier:(id)identifier forContainerIdentifier:(id)containerIdentifier error:(id *)error
{
  identifierCopy = identifier;
  containerIdentifierCopy = containerIdentifier;
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    v10 = [CNErrorFactory errorWithCode:600];
    if (error)
    {
      v10 = v10;
      *error = v10;
    }

    isSuccess = 0;
  }

  else
  {
    if (self)
    {
      addressBook = self->_addressBook;
    }

    else
    {
      addressBook = 0;
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __97__CNiOSAddressBookDataMapper_registerChangeHistoryClientIdentifier_forContainerIdentifier_error___block_invoke;
    v16[3] = &unk_1E74148F0;
    v16[4] = self;
    v17 = containerIdentifierCopy;
    v18 = identifierCopy;
    v13 = [(CNiOSAddressBook *)addressBook performSynchronousWorkWithInvalidatedAddressBook:v16];
    isSuccess = [v13 isSuccess];
    error = [v13 error];
    if (error && (isSuccess & 1) == 0)
    {
      error = error;
      *error = error;
    }
  }

  return isSuccess;
}

void __97__CNiOSAddressBookDataMapper_registerChangeHistoryClientIdentifier_forContainerIdentifier_error___block_invoke()
{
  v0 = [CNiOSAddressBookDataMapper copySourceForContainerIdentifier:fromAddressBook:];
  ABChangeHistoryRegisterClientForSource();
  if (v0)
  {

    CFRelease(v0);
  }
}

- (BOOL)unregisterChangeHistoryClientIdentifier:(id)identifier forContainerIdentifier:(id)containerIdentifier error:(id *)error
{
  identifierCopy = identifier;
  containerIdentifierCopy = containerIdentifier;
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    v10 = [CNErrorFactory errorWithCode:600];
    if (error)
    {
      v10 = v10;
      *error = v10;
    }

    v11 = 0;
  }

  else
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__17;
    v27 = __Block_byref_object_dispose__17;
    v28 = 0;
    if (self)
    {
      addressBook = self->_addressBook;
    }

    else
    {
      addressBook = 0;
    }

    v13 = addressBook;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __99__CNiOSAddressBookDataMapper_unregisterChangeHistoryClientIdentifier_forContainerIdentifier_error___block_invoke;
    v17[3] = &unk_1E7414918;
    v21 = &v23;
    v18 = identifierCopy;
    selfCopy = self;
    v20 = containerIdentifierCopy;
    v22 = &v29;
    v14 = [(CNiOSAddressBook *)v13 performSynchronousWorkWithInvalidatedAddressBook:v17];

    if ([v14 isSuccess])
    {
      v11 = *(v30 + 24);
      if (error && (v30[3] & 1) == 0)
      {
        v11 = 0;
        *error = v24[5];
      }
    }

    else
    {
      error = [v14 error];
      if (error)
      {
        error = error;
        *error = error;
      }

      v11 = 0;
    }

    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v29, 8);
  }

  return v11 & 1;
}

void __99__CNiOSAddressBookDataMapper_unregisterChangeHistoryClientIdentifier_forContainerIdentifier_error___block_invoke(uint64_t a1)
{
  if (ABChangeHistoryHasClientWithIdentifier())
  {
    __99__CNiOSAddressBookDataMapper_unregisterChangeHistoryClientIdentifier_forContainerIdentifier_error___block_invoke_cold_1(a1);
  }

  else
  {
    v2 = *(*(a1 + 56) + 8);
    obj = [CNErrorFactory errorWithCode:601];
    v3 = obj;
    objc_storeStrong((v2 + 40), obj);
  }
}

- (id)changeHistoryWithFetchRequest:(id)request error:(id *)error
{
  requestCopy = request;
  if (![requestCopy shouldEnforceClientIdentifer] || (v7 = *MEMORY[0x1E6996568], objc_msgSend(requestCopy, "clientIdentifier"), v8 = objc_claimAutoreleasedReturnValue(), LODWORD(v7) = (*(v7 + 16))(v7, v8), v8, !v7))
  {
    if ([requestCopy shouldUnifyResults] && objc_msgSend(requestCopy, "includeLinkingChanges"))
    {
      v9 = 605;
      goto LABEL_7;
    }

    if (self)
    {
      addressBook = self->_addressBook;
    }

    else
    {
      addressBook = 0;
    }

    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __66__CNiOSAddressBookDataMapper_changeHistoryWithFetchRequest_error___block_invoke;
    v22 = &unk_1E7414968;
    v23 = requestCopy;
    selfCopy = self;
    v13 = [(CNiOSAddressBook *)addressBook resultWithInvalidatedAddressBook:&v19];
    if ([v13 isSuccess])
    {
      value = [v13 value];
      if ((*(*MEMORY[0x1E6996490] + 16))())
      {
        left = [value left];
LABEL_21:

        goto LABEL_22;
      }

      right = [value right];
      if (error)
      {
        right = right;
        *error = right;
      }
    }

    else
    {
      error = [v13 error];
      value = error;
      if (error)
      {
        v16 = error;
        left = 0;
        *error = value;
        goto LABEL_21;
      }
    }

    left = 0;
    goto LABEL_21;
  }

  v9 = 600;
LABEL_7:
  v10 = [CNErrorFactory errorWithCode:v9];
  if (error)
  {
    v10 = v10;
    *error = v10;
  }

  left = 0;
LABEL_22:

  return left;
}

id __66__CNiOSAddressBookDataMapper_changeHistoryWithFetchRequest_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) shouldEnforceClientIdentifer];
  if (v4)
  {
    v5 = [*(a1 + 32) clientIdentifier];
    HasClientWithIdentifier = ABChangeHistoryHasClientWithIdentifier();

    if ((HasClientWithIdentifier & 1) == 0)
    {
      v7 = MEMORY[0x1E69966C0];
      v8 = [CNErrorFactory errorWithCode:601];
      v9 = [v7 eitherWithRight:v8];

      goto LABEL_4;
    }
  }

  v11 = objc_alloc_init(CNChangeHistoryResult);
  v12 = [*(a1 + 32) containerIdentifier];
  v13 = [CNiOSAddressBookDataMapper copySourceForContainerIdentifier:fromAddressBook:];

  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __66__CNiOSAddressBookDataMapper_changeHistoryWithFetchRequest_error___block_invoke_2;
  v26 = &unk_1E7414940;
  v27 = *(a1 + 32);
  v29 = a2;
  v30 = v13;
  v14 = v11;
  v28 = v14;
  v15 = _Block_copy(&v23);
  if (v4)
  {
    v16 = [*(a1 + 32) clientIdentifier];
    LatestConsumedSequenceNumberForClient = ABChangeHistoryGetLatestConsumedSequenceNumberForClient();

    if (LatestConsumedSequenceNumberForClient == -1)
    {
      v22 = [[CNChangeHistoryAnchor alloc] initWithSequenceNumber:ABAddressBookGetSequenceNumber()];
      [(CNChangeHistoryResult *)v14 setLatestChangeAnchor:v22];

      [(CNChangeHistoryResult *)v14 setChangesTruncated:1];
LABEL_17:
      v21 = 0;
      goto LABEL_18;
    }
  }

  v18 = v15[2](v15, 0);
  [(CNChangeHistoryResult *)v14 setContactChanges:v18];

  if ([*(a1 + 32) includeGroupChanges])
  {
    v19 = v15[2](v15, 1);
    [(CNChangeHistoryResult *)v14 setGroupChanges:v19];
  }

  if ([*(a1 + 32) includeLabeledValueChanges])
  {
    v20 = v15[2](v15, 2);
    [(CNChangeHistoryResult *)v14 setLabeledValueChanges:v20];
  }

  if (!-[CNChangeHistoryResult changesTruncated](v14, "changesTruncated") || [*(a1 + 32) resultType] != 1)
  {
    goto LABEL_17;
  }

  v21 = [CNErrorFactory errorWithCode:603];
LABEL_18:
  if (v13)
  {
    CFRelease(v13);
  }

  if (v21)
  {
    [MEMORY[0x1E69966C0] eitherWithRight:v21];
  }

  else
  {
    [MEMORY[0x1E69966C0] eitherWithLeft:v14];
  }
  v9 = ;

LABEL_4:

  return v9;
}

id __66__CNiOSAddressBookDataMapper_changeHistoryWithFetchRequest_error___block_invoke_2(uint64_t a1, int a2)
{
  v71[12] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E698A1A8];
  v5 = *MEMORY[0x1E698A1C8];
  v71[0] = *MEMORY[0x1E698A1A8];
  v71[1] = v5;
  v6 = *MEMORY[0x1E698A1F0];
  v7 = *MEMORY[0x1E698A1B0];
  v71[2] = *MEMORY[0x1E698A1F0];
  v71[3] = v7;
  key = v7;
  v8 = *MEMORY[0x1E698A1A0];
  theArray = *MEMORY[0x1E698A1F8];
  v71[4] = *MEMORY[0x1E698A1F8];
  v71[5] = v8;
  v53 = v8;
  v9 = *MEMORY[0x1E698A1C0];
  v55 = *MEMORY[0x1E698A1B8];
  v71[6] = *MEMORY[0x1E698A1B8];
  v71[7] = v9;
  v64 = v9;
  v10 = *MEMORY[0x1E698A1D8];
  v68 = *MEMORY[0x1E698A1E8];
  v71[8] = *MEMORY[0x1E698A1E8];
  v71[9] = v10;
  v57 = v10;
  v11 = *MEMORY[0x1E698A1E0];
  v66 = *MEMORY[0x1E698A1D0];
  v71[10] = *MEMORY[0x1E698A1D0];
  v71[11] = v11;
  v69 = v11;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:12];
  if (!a2)
  {
    [*(a1 + 32) shouldUnifyResults];
    [*(a1 + 32) includeLinkingChanges];
    [*(a1 + 32) includeMeCardChanges];
  }

  v12 = [*(a1 + 32) startingAnchor];

  if (v12)
  {
    v13 = [*(a1 + 32) startingAnchor];
    [v13 sequenceNumber];
  }

  v63 = a2;
  if ([*(a1 + 32) shouldEnforceClientIdentifer])
  {
    [*(a1 + 32) clientIdentifier];
  }

  v14 = [*(a1 + 32) excludedTransactionAuthors];

  if (v14)
  {
    [*(a1 + 32) excludedTransactionAuthors];
  }

  v45 = *(a1 + 56);
  v15 = ABChangeHistoryGetChanges();
  if ((*(*MEMORY[0x1E6996548] + 16))(*MEMORY[0x1E6996548]))
  {
    goto LABEL_13;
  }

  if (!v63)
  {
    [*(a1 + 40) setUnifyResults:{objc_msgSend(*(a1 + 32), "shouldUnifyResults", v45)}];
  }

  v16 = *(a1 + 40);
  v17 = [v15 objectForKeyedSubscript:{v4, v45}];
  [v16 setChangesTruncated:{objc_msgSend(v17, "BOOLValue") | objc_msgSend(v16, "changesTruncated")}];

  if ([*(a1 + 40) changesTruncated])
  {
LABEL_13:
    v67 = MEMORY[0x1E695E0F0];
    goto LABEL_47;
  }

  v18 = [v15 objectForKeyedSubscript:v5];
  v19 = [v18 intValue];

  v20 = [*(a1 + 40) latestChangeAnchor];
  if (!v20 || (v21 = v20, [*(a1 + 40) latestChangeAnchor], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "sequenceNumber"), v22, v21, v23 < v19))
  {
    v24 = [[CNChangeHistoryAnchor alloc] initWithSequenceNumber:v19];
    [*(a1 + 40) setLatestChangeAnchor:v24];
  }

  v25 = [v15 objectForKeyedSubscript:v6];
  if ([*(a1 + 32) resultType] != 1)
  {
    keya = CFDictionaryGetValue(v15, key);
    theArraya = CFDictionaryGetValue(v15, theArray);
    Value = CFDictionaryGetValue(v15, v53);
    v54 = [v15 objectForKeyedSubscript:v55];
    v47 = CFDictionaryGetValue(v15, v64);
    v51 = [v15 objectForKeyedSubscript:v57];
    v48 = CFDictionaryGetValue(v15, v68);
    v50 = [v15 objectForKeyedSubscript:v66];
    v49 = [v15 objectForKeyedSubscript:v69];
    v26 = [v25 count];
    if (!v26)
    {
      v67 = MEMORY[0x1E695E0F0];
LABEL_45:

      goto LABEL_46;
    }

    v27 = v26;
    v46 = v15;
    v67 = [MEMORY[0x1E695DF70] arrayWithCapacity:v26];
    v28 = 0;
    v29 = *MEMORY[0x1E6996590];
    v30 = v63;
    v56 = v25;
    v58 = v27;
    while (1)
    {
      v31 = [v25 objectAtIndexedSubscript:v28];
      v70 = (*(v29 + 16))(v29, v31);

      ValueAtIndex = CFArrayGetValueAtIndex(keya, v28);
      v32 = [[CNChangeHistoryAnchor alloc] initWithSequenceNumber:CFArrayGetValueAtIndex(theArraya, v28)];
      if ([*(a1 + 32) includeChangeIDs])
      {
        v33 = [MEMORY[0x1E696AD98] numberWithInt:{CFArrayGetValueAtIndex(Value, v28)}];
      }

      else
      {
        v33 = 0;
      }

      if ([*(a1 + 32) includeExternalIDs])
      {
        v34 = [v54 objectAtIndexedSubscript:v28];
        v35 = (*(v29 + 16))(v29, v34);

        if (!v30)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v35 = 0;
        if (!v30)
        {
LABEL_26:
          if ([*(a1 + 32) includeImagesChanged])
          {
            v36 = [MEMORY[0x1E696AD98] numberWithBool:{CFArrayGetValueAtIndex(v47, v28) != 0}];
          }

          else
          {
            v36 = 0;
          }

          if ([*(a1 + 32) includeLinkingChanges])
          {
            v39 = [v50 objectAtIndexedSubscript:v28];
            v40 = (*(v29 + 16))(v29, v39);
          }

          else
          {
            v40 = 0;
          }

          if ([*(a1 + 32) includeLinkingChanges])
          {
            v41 = [v49 objectAtIndexedSubscript:v28];
            v42 = (*(v29 + 16))(v29, v41);
          }

          else
          {
            v42 = 0;
          }

          v43 = [[CNChangeHistoryContactChange alloc] initWithIdentifier:v70 changeType:ValueAtIndex changeAnchor:v32 changeID:v33 externalID:v35 imagesChanged:v36 linkToPersonUUID:v40 personLinkUUID:v42];
          [v67 addObject:v43];

          v30 = v63;
          v25 = v56;
          goto LABEL_41;
        }
      }

      if (v30 == 2)
      {
        break;
      }

      if (v30 == 1)
      {
        v36 = [[CNChangeHistoryGroupChange alloc] initWithIdentifier:v70 changeType:ValueAtIndex changeAnchor:v32 changeID:v33 externalID:v35];
        [v67 addObject:v36];
LABEL_41:

        v27 = v58;
      }

      if (v27 == ++v28)
      {
        v15 = v46;
        goto LABEL_45;
      }
    }

    v36 = [v51 objectAtIndexedSubscript:v28];
    v37 = [CNContact contactPropertyKeyFromABPropertyID:CFArrayGetValueAtIndex(v48, v28)];
    v38 = [[CNChangeHistoryLabeledValueChange alloc] initWithContactIdentifier:v70 propertyKey:v37 labeledValueIdentifier:v36 changeType:2];
    [v67 addObject:v38];

    v25 = v56;
    goto LABEL_41;
  }

  [*(a1 + 40) setChangesCount:{objc_msgSend(*(a1 + 40), "changesCount") + objc_msgSend(v25, "count")}];
  v67 = MEMORY[0x1E695E0F0];
LABEL_46:

LABEL_47:

  return v67;
}

- (BOOL)executeChangeHistoryClearRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v7 = *MEMORY[0x1E6996568];
  clientIdentifier = [requestCopy clientIdentifier];
  LODWORD(v7) = (*(v7 + 16))(v7, clientIdentifier);

  if (v7)
  {
    v9 = 600;
LABEL_3:
    v10 = [CNErrorFactory errorWithCode:v9];
    if (error)
    {
      v10 = v10;
      *error = v10;
    }

    v11 = 0;
    goto LABEL_19;
  }

  toChangeAnchor = [requestCopy toChangeAnchor];
  if (toChangeAnchor || ([requestCopy contactChangeIDs], toChangeAnchor = objc_claimAutoreleasedReturnValue(), objc_msgSend(toChangeAnchor, "count")))
  {
  }

  else
  {
    groupChangeIDs = [requestCopy groupChangeIDs];
    v19 = [groupChangeIDs count];

    if (!v19)
    {
      v9 = 1002;
      goto LABEL_3;
    }
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__17;
  v32 = __Block_byref_object_dispose__17;
  v33 = 0;
  if (self)
  {
    addressBook = self->_addressBook;
  }

  else
  {
    addressBook = 0;
  }

  v14 = addressBook;
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __69__CNiOSAddressBookDataMapper_executeChangeHistoryClearRequest_error___block_invoke;
  v23 = &unk_1E74147E0;
  v24 = requestCopy;
  selfCopy = self;
  v26 = &v28;
  v27 = &v34;
  v15 = [(CNiOSAddressBook *)v14 performSynchronousWorkWithInvalidatedAddressBook:&v20];

  if ([v15 isSuccess])
  {
    v11 = *(v35 + 24);
    if (error && (v35[3] & 1) == 0)
    {
      v11 = 0;
      *error = v29[5];
    }
  }

  else
  {
    error = [v15 error];
    if (error)
    {
      error = error;
      *error = error;
    }

    v11 = 0;
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);
LABEL_19:

  return v11 & 1;
}

void __69__CNiOSAddressBookDataMapper_executeChangeHistoryClearRequest_error___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  [*(a1 + 32) clientIdentifier];

  if (ABChangeHistoryHasClientWithIdentifier())
  {
    __69__CNiOSAddressBookDataMapper_executeChangeHistoryClearRequest_error___block_invoke_cold_1(a1, v2);
  }

  else
  {
    v3 = *(*(a1 + 48) + 8);
    obj = [CNErrorFactory errorWithCode:601];
    v4 = obj;
    objc_storeStrong((v3 + 40), obj);
  }
}

+ (void)_copyEligiblePrimarySourceForAccountWithIdentifier:(uint64_t)identifier addressBook:(void *)book error:
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  objc_opt_self();
  v23[0] = v5;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v6 = ABAddressBookCopyAccountsWithUUIDs();
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v6;
  if (CFArrayGetCount(v6) < 1)
  {
    CFRelease(v7);
LABEL_14:
    v17 = [CNErrorFactory errorWithCode:200];
    v13 = 0;
    goto LABEL_19;
  }

  CFArrayGetValueAtIndex(v7, 0);
  DefaultSourceForAccount = ABAddressBookGetDefaultSourceForAccount();
  if (!DefaultSourceForAccount || ((v9 = DefaultSourceForAccount, IntValue = ABRecordGetIntValue(), v11 = ABRecordGetIntValue() & 0x1000000, IntValue == 1) ? (v12 = v11 == 0) : (v12 = 0), !v12 || (v13 = CFRetain(v9)) == 0))
  {
    v14 = ABAddressBookCopyArrayOfAllSourcesInAccount();
    if (v14)
    {
      v15 = v14;
      v16 = [v14 _cn_firstObjectPassingTest:&__block_literal_global_167];
      if (v16)
      {
        v13 = CFRetain(v16);
      }

      else
      {
        v13 = 0;
      }

      CFRelease(v15);
    }

    else
    {
      v13 = 0;
    }
  }

  CFRelease(v7);
  v17 = 0;
LABEL_19:
  v18 = v13;
  v19 = v18;
  if (book && !v18)
  {
    v20 = v17;
    *book = v17;
  }

  v21 = v19;

  return v19;
}

+ (const)_copyLocalSourceIfEnabledInAddressBook:
{
  objc_opt_self();
  v0 = ABAddressBookCopyLocalSource();
  if (v0)
  {
    IntValue = ABRecordGetIntValue();
    v2 = ABRecordGetIntValue() & 0x1000000;
    if (IntValue != 1 || v2 != 0)
    {
      CFRelease(v0);
      return 0;
    }
  }

  return v0;
}

- (BOOL)setDefaultAccountIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    v7 = [CNErrorFactory errorWithCode:200];
    if (error)
    {
      v7 = v7;
      *error = v7;
    }

    v8 = 0;
  }

  else
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__17;
    v22 = __Block_byref_object_dispose__17;
    v23 = 0;
    if (self)
    {
      addressBook = self->_addressBook;
    }

    else
    {
      addressBook = 0;
    }

    v10 = addressBook;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __64__CNiOSAddressBookDataMapper_setDefaultAccountIdentifier_error___block_invoke;
    v14[3] = &unk_1E7414328;
    v15 = identifierCopy;
    v16 = &v18;
    v17 = &v24;
    v11 = [(CNiOSAddressBook *)v10 performSynchronousWorkWithInvalidatedAddressBook:v14];

    if ([v11 isSuccess])
    {
      v8 = *(v25 + 24);
      if (error && (v25[3] & 1) == 0)
      {
        v8 = 0;
        *error = v19[5];
      }
    }

    else
    {
      error = [v11 error];
      if (error)
      {
        error = error;
        *error = error;
      }

      v8 = 0;
    }

    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v24, 8);
  }

  return v8 & 1;
}

void __64__CNiOSAddressBookDataMapper_setDefaultAccountIdentifier_error___block_invoke(void *a1, uint64_t a2)
{
  v4 = a1[4];
  v5 = +[CNAccount localAccount];
  v6 = [v5 identifier];
  LODWORD(v4) = [v4 isEqualToString:v6];

  if (v4)
  {
    v7 = +[CNiOSAddressBookDataMapper _copyLocalSourceIfEnabledInAddressBook:];
    if (v7)
    {
LABEL_3:
      ABAddressBookSetDefaultSource();
      CFRelease(v7);
      *(*(a1[6] + 8) + 24) = 1;
      return;
    }
  }

  else
  {
    v8 = a1[4];
    v9 = *(a1[5] + 8);
    obj = *(v9 + 40);
    v7 = [CNiOSAddressBookDataMapper _copyEligiblePrimarySourceForAccountWithIdentifier:v8 addressBook:a2 error:&obj];
    objc_storeStrong((v9 + 40), obj);
    if (v7)
    {
      goto LABEL_3;
    }
  }

  if (!*(*(a1[5] + 8) + 40))
  {
    v10 = [CNErrorFactory errorWithCode:1002];
    v11 = *(a1[5] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

CFIndex __57__CNiOSAddressBookDataMapper_hasMultipleGroupsOrAccounts__block_invoke(uint64_t a1, ABAddressBookRef addressBook)
{
  result = ABAddressBookGetGroupCount(addressBook);
  if (result > 0 || (result = ABAddressBookGetSourceCountIncludingDisabled(), result >= 2))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

CFIndex __39__CNiOSAddressBookDataMapper_hasGroups__block_invoke(uint64_t a1, ABAddressBookRef addressBook)
{
  result = ABAddressBookGetGroupCount(addressBook);
  if (result >= 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

uint64_t __76__CNiOSAddressBookDataMapper_fetchLimitedAccessContactIdentifiersForBundle___block_invoke(uint64_t a1)
{
  v2 = ABLimitedAccessContactIdentifiersForBundle();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t __74__CNiOSAddressBookDataMapper_addLimitedAccessForBundle_contactIdentifier___block_invoke(uint64_t a1)
{
  result = ABAddLimitedAccessForBundle();
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t __75__CNiOSAddressBookDataMapper_addLimitedAccessForBundle_contactIdentifiers___block_invoke(uint64_t a1)
{
  result = ABAddLimitedAccessIdentifiersForBundle();
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t __84__CNiOSAddressBookDataMapper_removeContactIdentifiersFromLimitedAcessForAllBundles___block_invoke(uint64_t a1)
{
  result = ABRemoveContactIdentifiersFromLimitedAccessForAllBundles();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __77__CNiOSAddressBookDataMapper_removeLimitedAccessForBundle_contactIdentifier___block_invoke(uint64_t a1)
{
  result = ABRemoveLimitedAccessForBundle();
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t __78__CNiOSAddressBookDataMapper_removeLimitedAccessForBundle_contactIdentifiers___block_invoke(uint64_t a1)
{
  result = ABRemoveLimitedAccessIdentifiersForBundle();
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t __83__CNiOSAddressBookDataMapper_populateSyncTableForLimitedAccessAboveSequenceNumber___block_invoke(uint64_t a1)
{
  v2 = ABPopulateSyncTableForLimitedAccessAboveSequenceNumber();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t __65__CNiOSAddressBookDataMapper_purgeLimitedAccessRecordsForBundle___block_invoke(uint64_t a1)
{
  result = ABPurgeLimitedAccessRecordsForBundle();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __55__CNiOSAddressBookDataMapper_updateLimitedAccessTable___block_invoke(uint64_t a1)
{
  result = ABLimitedAccessUpdateTable();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __69__CNiOSAddressBookDataMapper_getLimitedAccessContactsCountForBundle___block_invoke(uint64_t a1)
{
  v2 = ABLimitedAccessContactsCountForBundle();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t __69__CNiOSAddressBookDataMapper_getLimitedAccessLastSyncSequenceNumber___block_invoke(uint64_t a1)
{
  v2 = ABGetLimitedAccessLastSyncSequenceNumber();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void __84__CNiOSAddressBookDataMapper_getWatchLimitedAccessSyncDataStartingAtSequenceNumber___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) integerValue];
  v2 = ABGetWatchLimitedAccessSyncDataStartingAtSequenceNumber();
  v3 = [MEMORY[0x1E695DF70] array];
  [*(*(*(a1 + 40) + 8) + 40) setFullSyncRequired:{objc_msgSend(v2, "fullSyncRequired")}];
  v13 = a1;
  [*(*(*(a1 + 40) + 8) + 40) setCurrentSequenceNumber:{objc_msgSend(v2, "currentSequenceNumber")}];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v2 syncEvents];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = objc_alloc_init(CNLimitedAccessSyncEvent);
        v11 = [v9 bundleID];
        [(CNLimitedAccessSyncEvent *)v10 setBundleID:v11];

        v12 = [v9 contactID];
        [(CNLimitedAccessSyncEvent *)v10 setContactID:v12];

        -[CNLimitedAccessSyncEvent setSequenceNumber:](v10, "setSequenceNumber:", [v9 sequenceNumber]);
        -[CNLimitedAccessSyncEvent setIsActive:](v10, "setIsActive:", [v9 isActive]);
        [v3 addObject:v10];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  [*(*(*(v13 + 40) + 8) + 40) setSyncEventsArray:v3];
}

- (void)applyLimitedAccessSyncEvents:(id)events
{
  v36 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  array = [MEMORY[0x1E695DF70] array];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = eventsCopy;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v7)
  {
    v8 = *v28;
    do
    {
      v9 = 0;
      do
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        v11 = objc_alloc_init(MEMORY[0x1E698A118]);
        bundleID = [v10 bundleID];
        [v11 setBundleID:bundleID];

        contactID = [v10 contactID];
        [v11 setContactID:contactID];

        [v11 setSequenceNumber:{objc_msgSend(v10, "sequenceNumber")}];
        [v11 setIsActive:{objc_msgSend(v10, "isActive")}];
        [array addObject:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v7);
  }

  if (self)
  {
    addressBook = self->_addressBook;
  }

  else
  {
    addressBook = 0;
  }

  v15 = addressBook;
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __59__CNiOSAddressBookDataMapper_applyLimitedAccessSyncEvents___block_invoke;
  v24 = &unk_1E74146F0;
  v26 = &v31;
  v16 = array;
  v25 = v16;
  v17 = [(CNiOSAddressBook *)v15 performSynchronousWorkWithInvalidatedAddressBook:&v21];

  if (v17)
  {
    value = [v17 value];
    if ([value isEqual:MEMORY[0x1E695E118]])
    {
      v19 = *(v32 + 24);

      if (v19)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }
  }

  objc_opt_class();
  v20 = +[CNiOSAddressBookDataMapper os_log];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [CNiOSAddressBookDataMapper applyLimitedAccessSyncEvents:];
  }

LABEL_18:
  _Block_object_dispose(&v31, 8);
}

uint64_t __59__CNiOSAddressBookDataMapper_applyLimitedAccessSyncEvents___block_invoke(uint64_t a1)
{
  result = ABApplyLimitedAccessSyncEvents();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __54__CNiOSAddressBookDataMapper_dropAllLimitedAccessRows__block_invoke(uint64_t a1)
{
  result = ABDropAllLimitedAccessRows();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __67__CNiOSAddressBookDataMapper_dropAllLimitedAccessRowsAndSyncNotify__block_invoke(uint64_t a1)
{
  result = ABDropAllLimitedAccessRows();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __73__CNiOSAddressBookDataMapper_setLimitedAccessTableCurrentSequenceNumber___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) integerValue];

  return MEMORY[0x1EEDEB3D0](a2, v3);
}

uint64_t __61__CNiOSAddressBookDataMapper_shouldAnalyzeDatabaseWithError___block_invoke(uint64_t a1, ABAddressBookRef addressBook)
{
  ABAddressBookGetPersonCount(addressBook);
  result = ABAddressBookShouldAnalyzeDatabase();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __55__CNiOSAddressBookDataMapper_analyzeDatabaseWithError___block_invoke(int a1, ABAddressBookRef addressBook)
{
  PersonCount = ABAddressBookGetPersonCount(addressBook);

  return MEMORY[0x1EEDEAD40](addressBook, PersonCount);
}

- (void)requestAccessForEntityType:(int64_t)type completionHandler:(id)handler
{
  if (self)
  {
    self = self->_authorization;
  }

  [(CNiOSAddressBookDataMapper *)self requestAccessForEntityType:type completionHandler:handler];
}

- (BOOL)requestAccessForEntityType:(int64_t)type error:(id *)error
{
  if (self)
  {
    authorization = self->_authorization;
  }

  else
  {
    authorization = 0;
  }

  v11 = 0;
  v6 = authorization;
  v7 = [(CNAuthorization *)v6 requestAccessForEntityType:0 error:&v11];
  v8 = v11;

  if (error && !v7)
  {
    v9 = v8;
    *error = v8;
  }

  return v7;
}

- (id)identifierWithError:(id *)error
{
  OUTLINED_FUNCTION_27();
  v28 = 0x2020000000;
  v29 = 0;
  if (v5)
  {
    v6 = *(v5 + 16);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  v24 = __50__CNiOSAddressBookDataMapper_identifierWithError___block_invoke;
  v25 = &unk_1E7414128;
  v26 = v3;
  v9 = [v8 performSynchronousWorkWithInvalidatedAddressBook:v23];

  v10 = *(v27 + 24);
  if (v10)
  {
    CFAutorelease(v10);
    v11 = *(v27 + 24);
  }

  else
  {
    v11 = 0;
  }

  error = [v9 error];
  v13 = v11;
  v14 = v13;
  if (error && !v13)
  {
    v15 = error;
    *error = error;
  }

  OUTLINED_FUNCTION_28(v16, v17, v18, v19, v20, v21);

  return v14;
}

- (int)saveSequenceCount
{
  OUTLINED_FUNCTION_27();
  v20 = 0x2020000000;
  v21 = -1;
  if (v3)
  {
    v4 = *(v3 + 16);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  v16 = __47__CNiOSAddressBookDataMapper_saveSequenceCount__block_invoke;
  v17 = &unk_1E7414128;
  v18 = v2;
  v7 = [v6 performSynchronousWorkWithInvalidatedAddressBook:v15];

  LODWORD(v5) = *(v19 + 24);
  OUTLINED_FUNCTION_28(v8, v9, v10, v11, v12, v13);
  return v5;
}

- (id)unifiedContactCountWithError:(id *)error
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_4_2();
  if (v5)
  {
    addressBook = self->_addressBook;
  }

  else
  {
    addressBook = 0;
  }

  v7 = addressBook;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_15_0();
  v22[2] = __59__CNiOSAddressBookDataMapper_unifiedContactCountWithError___block_invoke;
  v22[3] = &unk_1E7414150;
  v22[4] = self;
  v22[5] = &v23;
  v9 = [v8 performSynchronousWorkWithInvalidatedAddressBook:v22];

  v10 = v24[5];
  error = [v9 error];
  v12 = v10;
  v13 = v12;
  if (error && !v12)
  {
    v14 = error;
    *error = error;
  }

  OUTLINED_FUNCTION_28(v15, v16, v17, v18, v19, v20);

  return v13;
}

uint64_t __59__CNiOSAddressBookDataMapper_unifiedContactCountWithError___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:ABAddressBookGetPreferredNamePeopleCountForManagedConfiguration()];
  v3 = OUTLINED_FUNCTION_41(v2, *(a1 + 40));

  return MEMORY[0x1EEE66BB8](v3, v4);
}

void __78__CNiOSAddressBookDataMapper_fetchContactsForFetchRequest_error_batchHandler___block_invoke()
{
  OUTLINED_FUNCTION_34();
  v3 = *(v2[7] + 8);
  obj = 0;
  v5 = v2[4];
  v4 = v2[5];
  if (v4)
  {
    v6 = *(v4 + 24);
  }

  else
  {
    v6 = 0;
  }

  v7 = v0[5];
  if (v7)
  {
    v7 = v7[5];
  }

  v8 = *(v0[8] + 8);
  v14 = 0;
  v9 = v7;
  v10 = v6;
  v11 = [CNiOSContactFetcher contactsForFetchRequest:v5 matchInfos:&obj inAddressBook:v1 environment:v10 managedConfiguration:v9 error:&v14];
  objc_storeStrong((v3 + 40), obj);
  objc_storeStrong((v8 + 40), v14);
  v12 = *(v0[6] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

void __102__CNiOSAddressBookDataMapper_fetchEncodedContactsForFetchRequest_error_cancelationToken_batchHandler___block_invoke()
{
  OUTLINED_FUNCTION_34();
  v2 = objc_opt_class();
  v3 = *(v0 + 32);
  if (v3)
  {
    v4 = *(v3 + 40);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  if (v5)
  {
    v5 = v5[3];
  }

  v7 = *(v0 + 32);
  if (v7)
  {
    v9 = *(v7 + 64);
    v8 = *(v7 + 72);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = v5;
  v11 = v4;
  v12 = [v2 encodedPeopleFetcherForForFetchRequest:v6 addressBook:v1 managedConfiguration:v11 addressBookCompletionHandler:0 cursorCompletionHandler:0 environment:v10 identifierAuditMode:v8 authorizationContext:v9];

  v13 = *(*(v0 + 72) + 8);
  obj = *(v13 + 40);
  OUTLINED_FUNCTION_16_0();
  v16 = 3221225472;
  v17 = __102__CNiOSAddressBookDataMapper_fetchEncodedContactsForFetchRequest_error_cancelationToken_batchHandler___block_invoke_2;
  v18 = &unk_1E7414268;
  v19 = *(v0 + 32);
  v14 = *(v0 + 48);
  v20 = *(v0 + 56);
  LOBYTE(v14) = [v12 fetchEncodedPeopleWithError:&obj cancelationToken:v14 batchHandler:v15];
  objc_storeStrong((v13 + 40), obj);
  *(*(*(v0 + 64) + 8) + 24) = v14;
}

void __102__CNiOSAddressBookDataMapper_fetchEncodedContactsForFetchRequest_error_cancelationToken_batchHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[4];
  }

  v5 = v4;
  v7 = a2;
  v6 = [v7 data];
  [v5 didFetchEncodedContacts:v6 error:0];

  (*(*(a1 + 40) + 16))();
}

- (id)encodedPeopleFetcherWithAddressBook:(void *)book addressBookCleanupBlock:(void *)block cursorCleanupBlock:(void *)cleanupBlock fetchRequest:
{
  bookCopy = book;
  if (self)
  {
    OUTLINED_FUNCTION_16_0();
    v22 = 3221225472;
    v23 = __122__CNiOSAddressBookDataMapper_encodedPeopleFetcherWithAddressBook_addressBookCleanupBlock_cursorCleanupBlock_fetchRequest___block_invoke;
    v24 = &unk_1E74142B8;
    v25 = bookCopy;
    cleanupBlockCopy = cleanupBlock;
    blockCopy = block;
    v12 = _Block_copy(aBlock);
    v13 = objc_opt_class();
    v14 = *(self + 40);
    v16 = *(self + 64);
    v15 = *(self + 72);
    v17 = *(self + 24);
    v18 = v14;
    v19 = [v13 encodedPeopleFetcherForForFetchRequest:cleanupBlockCopy addressBook:a2 managedConfiguration:v18 addressBookCompletionHandler:v12 cursorCompletionHandler:blockCopy environment:v17 identifierAuditMode:v15 authorizationContext:v16];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)encodedContactsCursorForFetchRequest:(id)request cursorCleanupBlock:(id)block error:(id *)error
{
  requestCopy = request;
  blockCopy = block;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__17;
  OUTLINED_FUNCTION_5_1();
  if (self)
  {
    logger = self->_logger;
  }

  else
  {
    logger = 0;
  }

  v11 = logger;
  effectivePredicate = [requestCopy effectivePredicate];
  unifyResults = [requestCopy unifyResults];
  keysToFetch = [requestCopy keysToFetch];
  [(CNContactsLogger *)v11 fetchEncodedContactsMatchingPredicate:effectivePredicate unifyResults:unifyResults keysToFetch:keysToFetch];

  if (self)
  {
    addressBook = self->_addressBook;
  }

  else
  {
    addressBook = 0;
  }

  v16 = addressBook;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_15_0();
  v34[2] = __92__CNiOSAddressBookDataMapper_encodedContactsCursorForFetchRequest_cursorCleanupBlock_error___block_invoke;
  v34[3] = &unk_1E74142E0;
  v37 = &v38;
  v34[4] = self;
  v17 = blockCopy;
  v36 = v17;
  v18 = requestCopy;
  v35 = v18;
  v19 = [(CNiOSAddressBook *)v16 performAsynchronousWorkWithInvalidatedAddressBook:v34];

  v20 = v39[5];
  error = [v19 error];
  v22 = v20;
  v23 = v22;
  if (error && !v22)
  {
    v24 = error;
    *error = error;
  }

  OUTLINED_FUNCTION_33(v25, v26, v27, v28, v29, v30, v31, v32);

  return v23;
}

uint64_t __92__CNiOSAddressBookDataMapper_encodedContactsCursorForFetchRequest_cursorCleanupBlock_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [(CNiOSAddressBookDataMapper *)*(a1 + 32) encodedPeopleFetcherWithAddressBook:a2 addressBookCleanupBlock:a3 cursorCleanupBlock:*(a1 + 48) fetchRequest:*(a1 + 40)];
  v5 = OUTLINED_FUNCTION_41(v4, *(a1 + 56));

  return MEMORY[0x1EEE66BB8](v5, v6);
}

- (BOOL)setMeContact:(id)contact error:(id *)error
{
  OUTLINED_FUNCTION_72();
  v42 = v4;
  v43 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_5_1();
  if (v9)
  {
    v12 = *(v9 + 16);
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  v29 = __49__CNiOSAddressBookDataMapper_setMeContact_error___block_invoke;
  v30 = &unk_1E7414328;
  v14 = v11;
  v31 = v14;
  v32 = &v38;
  v33 = &v34;
  v15 = [v13 performSynchronousWorkWithInvalidatedAddressBook:v28];

  v16 = *(v39 + 24);
  error = [v15 error];
  v18 = error;
  if (!error)
  {
    error = v35[5];
  }

  if (v7 && (v16 & 1) == 0)
  {
    *v7 = error;
  }

  OUTLINED_FUNCTION_33(v19, v20, v21, v22, v23, v24, v25, v26);
  OUTLINED_FUNCTION_70();

  OUTLINED_FUNCTION_71();
  return result;
}

- (BOOL)setMeContact:(id)contact forContainer:(id)container error:(id *)error
{
  OUTLINED_FUNCTION_72();
  v41 = v5;
  v42 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v10;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_5_1();
  if (v12)
  {
    v16 = *(v12 + 16);
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_15_0();
  v18 = v14;
  v19 = v15;
  v20 = [OUTLINED_FUNCTION_31() performSynchronousWorkWithInvalidatedAddressBook:?];

  v21 = *(v38 + 24);
  error = [v20 error];
  v23 = error;
  if (!error)
  {
    error = v34[5];
  }

  if (v8 && (v21 & 1) == 0)
  {
    *v8 = error;
  }

  OUTLINED_FUNCTION_33(v24, v25, v26, v27, v28, v29, v30, v31);
  OUTLINED_FUNCTION_70();

  OUTLINED_FUNCTION_71();
  return result;
}

- (BOOL)setBestMeIfNeededForGivenName:(id)name familyName:(id)familyName email:(id)email error:(id *)error
{
  nameCopy = name;
  familyNameCopy = familyName;
  emailCopy = email;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__17;
  v27 = __Block_byref_object_dispose__17;
  v28 = 0;
  if (self)
  {
    addressBook = self->_addressBook;
  }

  else
  {
    addressBook = 0;
  }

  v14 = addressBook;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  v15 = nameCopy;
  v16 = familyNameCopy;
  v17 = emailCopy;
  v18 = [OUTLINED_FUNCTION_37() performSynchronousWorkWithInvalidatedAddressBook:?];

  v19 = *(v30 + 24);
  v20 = v24[5];
  error = v20;
  if (!v20)
  {
    error = [v18 error];
  }

  if (error && (v19 & 1) == 0)
  {
    error = error;
    *error = error;
  }

  if (!v20)
  {
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v19;
}

- (id)meContactIdentifiers:(id *)identifiers
{
  v32[1] = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_27();
  v30 = 0x3032000000;
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_4_2();
  if (v5)
  {
    v6 = *(v5 + 16);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  v27 = __51__CNiOSAddressBookDataMapper_meContactIdentifiers___block_invoke;
  v28 = &unk_1E7414128;
  v29 = v3;
  v9 = [v8 performSynchronousWorkWithInvalidatedAddressBook:v26];

  if ([v9 isSuccess])
  {
    OUTLINED_FUNCTION_19();
    if (v10)
    {
      v32[0] = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
    }

    else
    {
      v11 = 0;
    }

    v16 = [CNErrorFactory errorWithCode:200];
    v17 = v11;
    v13 = v17;
    if (identifiers && !v17)
    {
      v18 = v16;
      *identifiers = v16;
    }

    v15 = v13;
  }

  else
  {
    error = [v9 error];
    v13 = error;
    if (identifiers)
    {
      v14 = error;
      v15 = 0;
      *identifiers = v13;
    }

    else
    {
      v15 = 0;
    }
  }

  OUTLINED_FUNCTION_28(v19, v20, v21, v22, v23, v24);

  return v15;
}

- (void)canExecuteSaveRequest:error:
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_54();
  v120[17] = *MEMORY[0x1E69E9840];
  v3 = v2;
  v4 = v3;
  if (v1)
  {
    if ([v3 hasConflictingSaveOperations])
    {
      v5 = [CNErrorFactory errorWithCode:302];
      if (v0)
      {
        v5 = v5;
        *v0 = v5;
      }
    }

    else
    {
      addedAccounts = [v4 addedAccounts];
      v7 = [addedAccounts valueForKey:@"identifier"];

      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      addedAccountContainersByParentContainerIdentifier = [v4 addedAccountContainersByParentContainerIdentifier];
      allKeys = [addedAccountContainersByParentContainerIdentifier allKeys];

      v18 = OUTLINED_FUNCTION_66(v10, v11, v12, v13, v14, v15, v16, v17, v70, v73, v76, *(&v76 + 1), v77, *(&v77 + 1), v78, *(&v78 + 1), v79, *(&v79 + 1), v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, 0);
      if (v18)
      {
        addedAccountContainersByParentContainerIdentifier = v18;
        v19 = *v95;
        while (2)
        {
          for (i = 0; i != addedAccountContainersByParentContainerIdentifier; i = i + 1)
          {
            if (*v95 != v19)
            {
              objc_enumerationMutation(allKeys);
            }

            v21 = *(*(&v94 + 1) + 8 * i);
            v22 = [v7 containsObject:v21];
            if (v22)
            {
              if (v0)
              {
                addedAccounts2 = [v4 addedAccounts];
                v89 = MEMORY[0x1E69E9820];
                v90 = 3221225472;
                v91 = __58__CNiOSAddressBookDataMapper_canExecuteSaveRequest_error___block_invoke;
                v92 = &unk_1E74143C0;
                v93 = v21;
                v32 = [addedAccounts2 _cn_firstObjectPassingTest:&v89];

                if (v32)
                {
                  v118 = v32;
                  v119 = @"CNInvalidRecords";
                  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v118 count:1];
                  v120[0] = v33;
                  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v120 forKeys:&v119 count:1];
                }

                else
                {
                  v34 = 0;
                }

                *v0 = [CNErrorFactory errorWithCode:200 userInfo:v34];
              }

              goto LABEL_42;
            }
          }

          addedAccountContainersByParentContainerIdentifier = OUTLINED_FUNCTION_66(v22, v23, v24, v25, v26, v27, v28, v29, v71, v74, v76, *(&v76 + 1), v77, *(&v77 + 1), v78, *(&v78 + 1), v79, *(&v79 + 1), v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);
          if (addedAccountContainersByParentContainerIdentifier)
          {
            continue;
          }

          break;
        }
      }

      addedMembersByGroupIdentifier = [v4 addedMembersByGroupIdentifier];
      if ([addedMembersByGroupIdentifier count])
      {
      }

      else
      {
        addedSubgroupsByGroupIdentifier = [v4 addedSubgroupsByGroupIdentifier];
        addedAccountContainersByParentContainerIdentifier = [addedSubgroupsByGroupIdentifier count];

        if (!addedAccountContainersByParentContainerIdentifier)
        {
          goto LABEL_42;
        }
      }

      [MEMORY[0x1E695DFA8] set];
      objc_claimAutoreleasedReturnValue();
      addedMembersByGroupIdentifier2 = [OUTLINED_FUNCTION_48() addedMembersByGroupIdentifier];
      [addedMembersByGroupIdentifier2 allKeys];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_40() addObjectsFromArray:?];

      addedSubgroupsByGroupIdentifier2 = [v4 addedSubgroupsByGroupIdentifier];
      [addedSubgroupsByGroupIdentifier2 allKeys];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_40() addObjectsFromArray:?];

      addedGroupsByContainerIdentifier = [v4 addedGroupsByContainerIdentifier];
      allValues = [addedGroupsByContainerIdentifier allValues];

      v75 = OUTLINED_FUNCTION_69(v40, v41, v42, v43, v44, v45, v46, v47, v71, v74, v76, *(&v76 + 1), v77, *(&v77 + 1), v78, *(&v78 + 1), v79, *(&v79 + 1), 0, 0, 0, 0, 0, 0, 0, 0, v88, v89, v90, v91, v92, v93, v94, *(&v94 + 1), v95, *(&v95 + 1), v96, *(&v96 + 1), v97, *(&v97 + 1), v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117);
      if (v75)
      {
        v72 = *v82;
        do
        {
          for (j = 0; j != v75; ++j)
          {
            OUTLINED_FUNCTION_53();
            if (!v49)
            {
              objc_enumerationMutation(allValues);
            }

            v50 = allValues;
            v51 = *(v81 + 8 * j);
            v76 = 0u;
            v77 = 0u;
            v78 = 0u;
            v79 = 0u;
            v52 = v51;
            v53 = [v52 countByEnumeratingWithState:&v76 objects:&v101 count:16];
            if (v53)
            {
              v54 = v53;
              v55 = *v77;
              while (2)
              {
                for (k = 0; k != v54; ++k)
                {
                  if (*v77 != v55)
                  {
                    objc_enumerationMutation(v52);
                  }

                  identifier = [*(*(&v76 + 1) + 8 * k) identifier];
                  if ([addedMembersByGroupIdentifier containsObject:identifier])
                  {
                    allValues = v50;
                    if (v0)
                    {
                      v66 = [v4 groupWithAddedSubgroupForGroupIdentifier:identifier];
                      v67 = v66;
                      if (v66)
                      {
                        v98 = v66;
                        v99 = @"CNInvalidRecords";
                        v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v98 count:1];
                        v100 = v68;
                        v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
                      }

                      else
                      {
                        v69 = 0;
                      }

                      *v0 = [CNErrorFactory errorWithCode:200 userInfo:v69];
                    }

                    goto LABEL_48;
                  }
                }

                v54 = [v52 countByEnumeratingWithState:&v76 objects:&v101 count:16];
                if (v54)
                {
                  continue;
                }

                break;
              }
            }

            allValues = v50;
          }

          v75 = OUTLINED_FUNCTION_69(v58, v59, v60, v61, v62, v63, v64, v65, v72, v75, v76, *(&v76 + 1), v77, *(&v77 + 1), v78, *(&v78 + 1), v79, *(&v79 + 1), v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, *(&v94 + 1), v95, *(&v95 + 1), v96, *(&v96 + 1), v97, *(&v97 + 1), v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117);
        }

        while (v75);
      }

LABEL_48:
    }
  }

LABEL_42:

  OUTLINED_FUNCTION_68();
}

- (uint64_t)_fetchAllRecordsInSaveContext:error:
{
  OUTLINED_FUNCTION_54();
  v2 = v1;
  if (v0 && (v3 = OUTLINED_FUNCTION_24(), [(CNiOSAddressBookDataMapper *)v3 _fetchAccountsInSaveContext:v4 error:v5]) && (v8 = OUTLINED_FUNCTION_24(), [(CNiOSAddressBookDataMapper *)v8 _fetchContainersInSaveContext:v9 error:v10]) && (v11 = OUTLINED_FUNCTION_24(), [(CNiOSAddressBookDataMapper *)v11 _fetchContactsInSaveContext:v12 error:v13]))
  {
    v14 = OUTLINED_FUNCTION_24();
    v6 = [(CNiOSAddressBookDataMapper *)v14 _fetchGroupsInSaveContext:v15 error:v16];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)_processAccountsFromSaveContext:(void *)context error:
{
  contextCopy = context;
  v124 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = v4;
  if (!self)
  {
    goto LABEL_76;
  }

  memset(v103, 0, sizeof(v103));
  saveRequest = [v4 saveRequest];
  addedAccounts = [saveRequest addedAccounts];

  v10 = OUTLINED_FUNCTION_50(v8, v9, v103, v123);
  v11 = &CNErrorUserInfoAffectedRecordsKey;
  if (v10)
  {
    v12 = v10;
    v13 = 0;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        OUTLINED_FUNCTION_53();
        if (!v15)
        {
          objc_enumerationMutation(addedAccounts);
        }

        v16 = *(*(&v103[0] + 1) + 8 * i);
        abAccountsByIdentifier = [v5 abAccountsByIdentifier];
        [v16 identifier];
        objc_claimAutoreleasedReturnValue();
        v18 = [OUTLINED_FUNCTION_42() objectForKey:?];

        if (v18)
        {
          v121 = @"CNInvalidRecords";
          v120 = v16;
          identifier2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v120 count:1];
          v122 = identifier2;
          v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v122 forKeys:&v121 count:1];
          v30 = [CNErrorFactory errorWithCode:201 userInfo:v29];
          goto LABEL_70;
        }

        v19 = ABAccountCreate();
        if (v19)
        {
          v20 = v19;
          error = 0;
          [v16 identifier];
          if (ABAccountSetInternalUUID() && ([v16 externalIdentifierString], ABAccountSetIdentifier()) && ABAddressBookAddRecord(objc_msgSend(v5, "addressBook"), v20, &error))
          {
            abAccountsByIdentifier2 = [v5 abAccountsByIdentifier];
            identifier = [v16 identifier];
            [abAccountsByIdentifier2 setObject:v20 forKey:identifier];

            v11 = 1;
          }

          else
          {
            v23 = [CNErrorFactory errorForiOSABError:error];

            if (error)
            {
              CFRelease(error);
            }

            v11 = 0;
            v13 = v23;
          }

          CFRelease(v20);
        }

        else
        {
          v26 = +[CNErrorFactory genericiOSABError];

          v11 = 0;
          v13 = v26;
        }
      }

      v12 = OUTLINED_FUNCTION_50(v24, v25, v103, v123);
    }

    while (v12);

    if (!v11)
    {
      v55 = 0;
      v27 = v13;
      goto LABEL_72;
    }

    v27 = v13;
  }

  else
  {

    v27 = 0;
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  saveRequest2 = [v5 saveRequest];
  addedAccounts = [saveRequest2 removedAccounts];

  v84 = v5;
  v81 = OUTLINED_FUNCTION_50(v32, v33, &v98, v119);
  if (!v81)
  {

    goto LABEL_53;
  }

  v80 = *v99;
  v34 = *MEMORY[0x1E6996530];
  v35 = 1;
  v82 = addedAccounts;
  v79 = *MEMORY[0x1E6996530];
  do
  {
    v36 = 0;
    do
    {
      if (*v99 != v80)
      {
        objc_enumerationMutation(addedAccounts);
      }

      v37 = *(*(&v98 + 1) + 8 * v36);
      [v5 addressBook];
      externalIdentifierString = [v37 externalIdentifierString];
      v39 = ABAddressBookCopyAccountWithIdentifier();
      if (!v39)
      {

LABEL_65:
        v117 = @"CNInvalidRecordIdentifiers";
        identifier2 = [v37 identifier];
        v116 = identifier2;
        v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v116 count:1];
        v118 = v29;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
        v30 = [CNErrorFactory errorWithCode:200 userInfo:v13];

LABEL_70:
        v55 = 0;
        v27 = v30;
        goto LABEL_71;
      }

      v40 = CFAutorelease(v39);

      if (!v40)
      {
        goto LABEL_65;
      }

      [v5 addressBook];
      v41 = ABAddressBookCopyArrayOfAllSourcesInAccount();
      v96[0] = MEMORY[0x1E69E9820];
      v96[1] = 3221225472;
      v96[2] = __68__CNiOSAddressBookDataMapper__processAccountsFromSaveContext_error___block_invoke;
      v96[3] = &unk_1E7414410;
      v42 = v5;
      v97 = v42;
      v43 = [v41 _cn_flatMap:v96];
      v94[0] = MEMORY[0x1E69E9820];
      v94[1] = 3221225472;
      v94[2] = __68__CNiOSAddressBookDataMapper__processAccountsFromSaveContext_error___block_invoke_2;
      v94[3] = &unk_1E7414410;
      v91 = v42;
      v95 = v91;
      v88 = v41;
      v87 = [v41 _cn_flatMap:v94];
      array = [MEMORY[0x1E695DF70] array];
      v86 = v43;
      if (((*(v34 + 16))(v34, v43) & 1) == 0)
      {
        [array addObjectsFromArray:v43];
      }

      if (((*(v34 + 16))(v34, v87) & 1) == 0)
      {
        [array addObjectsFromArray:v87];
      }

      if (((*(v34 + 16))(v34, v41) & 1) == 0)
      {
        [array addObjectsFromArray:v41];
      }

      v85 = v36;
      [array addObject:v40];
      memset(v93, 0, sizeof(v93));
      obj = array;
      v45 = [obj countByEnumeratingWithState:v93 objects:v115 count:16];
      if (v45)
      {
        v46 = v45;
        do
        {
          for (j = 0; j != v46; ++j)
          {
            OUTLINED_FUNCTION_53();
            if (!v15)
            {
              objc_enumerationMutation(obj);
            }

            v48 = *(*(&v93[0] + 1) + 8 * j);
            error = 0;
            v35 &= ABAddressBookRemoveRecord([v91 addressBook], v48, &error);
            if ((v35 & 1) == 0)
            {
              v113 = @"CNInvalidRecords";
              v112 = v48;
              [MEMORY[0x1E695DEC8] arrayWithObjects:&v112 count:1];
              v50 = v49 = v27;
              v114 = v50;
              v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
              [CNErrorFactory errorForiOSABError:error];
              objc_claimAutoreleasedReturnValue();
              v52 = [OUTLINED_FUNCTION_48() errorByAddingUserInfoEntries:v51 toError:0x1E7410000uLL];

              if (error)
              {
                CFRelease(error);
              }

              v27 = v52;
            }
          }

          v46 = [obj countByEnumeratingWithState:v93 objects:v115 count:16];
        }

        while (v46);
      }

      v5 = v84;
      ++v36;
      addedAccounts = v82;
      v34 = v79;
    }

    while (v85 + 1 != v81);
    v81 = OUTLINED_FUNCTION_50(v53, v54, &v98, v119);
  }

  while (v81);

  if ((v35 & 1) == 0)
  {
    v55 = 0;
    goto LABEL_72;
  }

LABEL_53:
  memset(v92, 0, sizeof(v92));
  saveRequest3 = [v5 saveRequest];
  defaultAccountContainersByAccountIdentifier = [saveRequest3 defaultAccountContainersByAccountIdentifier];
  addedAccounts = [defaultAccountContainersByAccountIdentifier allKeys];

  v60 = OUTLINED_FUNCTION_50(v58, v59, v92, v111);
  if (!v60)
  {
    v55 = 1;
    goto LABEL_71;
  }

  v61 = v60;
  obja = v27;
  v83 = addedAccounts;
  while (2)
  {
    v62 = 0;
    while (2)
    {
      OUTLINED_FUNCTION_53();
      if (!v15)
      {
        objc_enumerationMutation(v83);
      }

      v63 = *(*(&v92[0] + 1) + 8 * v62);
      abAccountsByIdentifier3 = [v84 abAccountsByIdentifier];
      v65 = [abAccountsByIdentifier3 objectForKeyedSubscript:v63];

      saveRequest4 = [v84 saveRequest];
      defaultAccountContainersByAccountIdentifier2 = [saveRequest4 defaultAccountContainersByAccountIdentifier];
      v68 = [defaultAccountContainersByAccountIdentifier2 objectForKeyedSubscript:v63];
      identifier2 = [v68 firstObject];

      abSourcesByIdentifier = [v84 abSourcesByIdentifier];
      [identifier2 identifier];
      objc_claimAutoreleasedReturnValue();
      v70 = [OUTLINED_FUNCTION_65() objectForKeyedSubscript:defaultAccountContainersByAccountIdentifier2];

      if (!v65 || !v70)
      {
        v109 = @"CNInvalidRecordIdentifiers";
        v108 = v63;
        v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v108 count:1];
        v110 = v29;
        v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
        v75 = 200;
LABEL_69:
        v30 = [CNErrorFactory errorWithCode:v75 userInfo:v74];

        v13 = v74;
        addedAccounts = v83;
        v5 = v84;
        goto LABEL_70;
      }

      IntValue = ABRecordGetIntValue();
      if (IntValue != ABRecordGetRecordID(v65))
      {
        v105 = v63;
        v106 = @"CNInvalidRecordIdentifiers";
        v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v105 count:1];
        v107 = v29;
        v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v107 forKeys:&v106 count:1];
        v75 = 204;
        goto LABEL_69;
      }

      [v84 addressBook];
      ABAddressBookSetDefaultSourceForAccount();

      if (v61 != ++v62)
      {
        continue;
      }

      break;
    }

    addedAccounts = v83;
    v61 = OUTLINED_FUNCTION_50(v72, v73, v92, v111);
    v55 = 1;
    if (v61)
    {
      continue;
    }

    break;
  }

  v5 = v84;
  v27 = obja;
LABEL_71:

LABEL_72:
  if (contextCopy && (v55 & 1) == 0)
  {
    v76 = v27;
    *contextCopy = v27;
  }

  v104 = v55;

  self = v104;
LABEL_76:

  return self;
}

- (uint64_t)_purgeMetadataFromDeletedContactsFromSaveContext:(void *)context error:
{
  v6 = a2;
  if (self)
  {
    v7 = objc_autoreleasePoolPush();
    contactIdentifiersNeedingMetadataPurge = [OUTLINED_FUNCTION_48() contactIdentifiersNeedingMetadataPurge];
    v9 = [contactIdentifiersNeedingMetadataPurge count];

    if (v9)
    {
      contextCopy = context;
      v10 = objc_alloc_init(CNContactImageStore);
      contactIdentifiersNeedingMetadataPurge2 = [v6 contactIdentifiersNeedingMetadataPurge];
      v12 = [CNContactImageDeleteRequest requestToDeleteImagesForContactIdentifiers:contactIdentifiersNeedingMetadataPurge2];

      v26 = 0;
      v13 = [(CNContactImageStore *)v10 performDeleteRequest:v12 error:&v26];
      v14 = v26;
      if (!v13)
      {
        [*(self + 32) deleteImageRecentsMetadataRequestFailed:v14];
      }

      v15 = objc_alloc_init(CNContactPosterStore);
      contactIdentifiersNeedingMetadataPurge3 = [v6 contactIdentifiersNeedingMetadataPurge];
      v17 = [CNContactPosterDeleteRequest requestToDeletePostersForContactIdentifiers:contactIdentifiersNeedingMetadataPurge3];

      v18 = [OUTLINED_FUNCTION_36() performDeleteRequest:? error:?];
      v19 = v14;

      if ((v18 & 1) == 0)
      {
        [*(self + 32) deletePosterRecentsMetadataRequestFailed:v19];
      }

      objc_autoreleasePoolPop(v3);
      v20 = v19;
      v21 = v20;
      if (contextCopy)
      {
        v22 = v18;
      }

      else
      {
        v22 = 1;
      }

      if ((v22 & 1) == 0)
      {
        v23 = v20;
        v18 = 0;
        *contextCopy = v21;
      }
    }

    else
    {
      objc_autoreleasePoolPop(v3);
      v21 = 0;
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)_postProcessContactsFromSaveContext:(uint64_t)context
{
  v4 = a2;
  v5 = v4;
  if (context)
  {
    saveRequest = [v4 saveRequest];
    deletedContactsByIdentifier = [saveRequest deletedContactsByIdentifier];

    +[CN writableContactProperties];
    objc_claimAutoreleasedReturnValue();
    saveRequest2 = [OUTLINED_FUNCTION_65() saveRequest];
    allContacts = [saveRequest2 allContacts];
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_12();
    v12 = deletedContactsByIdentifier;
    v13 = v5;
    v14 = v2;
    v10 = v2;
    v11 = deletedContactsByIdentifier;
    [OUTLINED_FUNCTION_37() enumerateObjectsUsingBlock:?];
  }
}

- (void)_postProcessGroupsFromSaveContext:
{
  OUTLINED_FUNCTION_67();
  v5 = v4;
  v46[16] = *MEMORY[0x1E69E9840];
  v7 = v6;
  v8 = v7;
  if (v5)
  {
    saveRequest = [v7 saveRequest];
    [saveRequest allGroups];
    objc_claimAutoreleasedReturnValue();
    v10 = [OUTLINED_FUNCTION_42() setWithArray:?];

    saveRequest2 = [v8 saveRequest];
    [saveRequest2 deletedGroups];
    objc_claimAutoreleasedReturnValue();
    v12 = [OUTLINED_FUNCTION_40() setWithArray:?];

    v35 = v12;
    [v10 minusSet:v12];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v10;
    v13 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v42;
      v16 = *MEMORY[0x1E698A230];
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v42 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v41 + 1) + 8 * i);
          [v8 abGroupsByIdentifier];
          objc_claimAutoreleasedReturnValue();
          identifier = [OUTLINED_FUNCTION_62() identifier];
          v20 = [v3 objectForKeyedSubscript:identifier];

          RecordID = ABRecordGetRecordID(v20);
          if (RecordID != [v18 iOSLegacyIdentifier])
          {
            [v18 setIOSLegacyIdentifier:RecordID];
          }

          v22 = ABRecordCopyValue(v20, v16);
          if (v22)
          {
            v22 = CFAutorelease(v22);
          }

          v23 = v22;
          name = [v18 name];
          v25 = [name isEqual:v23];

          if ((v25 & 1) == 0)
          {
            [v18 setName:v23];
          }

          v3 = [v18 mutableCopy];
          freezeWithSelfAsSnapshot = [v3 freezeWithSelfAsSnapshot];
          [v18 setSnapshot:freezeWithSelfAsSnapshot];
          saveResponse = [v8 saveResponse];
          v2 = [v8 indexPathForGroupInstance:v18];
          [saveResponse setGroupSnapshot:freezeWithSelfAsSnapshot forIndexPath:v2];
        }

        v14 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v14);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v28 = v35;
    v29 = [v28 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v38;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v38 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v37 + 1) + 8 * j);
          [v33 setSnapshot:0];
          [v8 saveResponse];
          objc_claimAutoreleasedReturnValue();
          v34 = [OUTLINED_FUNCTION_55() indexPathForGroupInstance:v33];
          [v2 setGroupSnapshot:0 forIndexPath:v34];
        }

        v30 = [v28 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v30);
    }
  }

  OUTLINED_FUNCTION_68();
}

- (void)_postProcessContainersFromSaveContext:
{
  OUTLINED_FUNCTION_67();
  v1 = v0;
  v38 = *MEMORY[0x1E69E9840];
  v3 = v2;
  v4 = v3;
  if (v1)
  {
    saveRequest = [v3 saveRequest];
    allContainers = [saveRequest allContainers];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v7 = allContainers;
    OUTLINED_FUNCTION_57();
    obj = v8;
    v28 = [v8 countByEnumeratingWithState:? objects:? count:?];
    if (v28)
    {
      v26 = *v34;
      v27 = v4;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v34 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v33 + 1) + 8 * i);
          abSourcesByIdentifier = [v4 abSourcesByIdentifier];
          identifier = [v10 identifier];
          v13 = [abSourcesByIdentifier objectForKeyedSubscript:identifier];

          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v14 = +[CN writableContainerProperties];
          v15 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v30;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v30 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v29 + 1) + 8 * j);
                [v19 ABValueForABSource:v13];
                if ([OUTLINED_FUNCTION_36() isConvertibleABValue:?])
                {
                  v20 = [OUTLINED_FUNCTION_36() CNValueFromABValue:?];
                  [OUTLINED_FUNCTION_36() setCNValue:? onContainer:?];
                }

                else
                {
                  v20 = [v19 key];
                  NSLog(&cfstr_WeProcessedACo.isa, v20);
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
            }

            while (v16);
          }

          v21 = [v10 mutableCopy];
          freezeWithSelfAsSnapshot = [v21 freezeWithSelfAsSnapshot];
          [v10 setSnapshot:freezeWithSelfAsSnapshot];
          v4 = v27;
          saveResponse = [v27 saveResponse];
          v24 = [v27 indexPathForContainerInstance:v10];
          [saveResponse setContainerSnapshot:freezeWithSelfAsSnapshot forIndexPath:v24];
        }

        OUTLINED_FUNCTION_57();
        v28 = [obj countByEnumeratingWithState:? objects:? count:?];
      }

      while (v28);
    }
  }

  OUTLINED_FUNCTION_68();
}

- (void)updateLimitedAccessListForSaveRequest:authorizationContext:
{
  OUTLINED_FUNCTION_54();
  v19 = *MEMORY[0x1E69E9840];
  v3 = v2;
  v4 = v0;
  v5 = v4;
  if (v1)
  {
    if (!v4)
    {
      objc_opt_class();
      deletedContacts = +[CNiOSAddressBookDataMapper os_log];
      if (os_log_type_enabled(deletedContacts, OS_LOG_TYPE_ERROR))
      {
        v15 = v1[5];
        clientBundleIdentifier = [v15 clientBundleIdentifier];
        OUTLINED_FUNCTION_1();
        OUTLINED_FUNCTION_38(&dword_1954A0000, deletedContacts, v17, "authorization context is nil (Client: %@)", v18);
      }

      goto LABEL_8;
    }

    if ([v4 isLimitedAccessGranted])
    {
      v6 = *MEMORY[0x1E6996570];
      clientBundleIdentifier2 = [v5 clientBundleIdentifier];
      v8 = (*(v6 + 16))(v6, clientBundleIdentifier2);

      if (v8)
      {
        [v5 clientBundleIdentifier];
        objc_claimAutoreleasedReturnValue();
        addedContactsByContainerIdentifier = [OUTLINED_FUNCTION_65() addedContactsByContainerIdentifier];
        allValues = [addedContactsByContainerIdentifier allValues];
        _cn_flatten = [allValues _cn_flatten];
        v12 = [_cn_flatten _cn_map:CNContactToIdentifier];
        [v1 addLimitedAccessForBundle:v8 contactIdentifiers:v12];

        deletedContacts = [v3 deletedContacts];
        v14 = [deletedContacts _cn_map:CNContactToIdentifier];
        [(CNiOSAddressBookDataMapper *)v1 removeContactIdentifiersFromLimitedAcessForAllBundles:v14];

LABEL_8:
      }
    }
  }
}

- (BOOL)_fetchAccountsInSaveContext:(void *)context error:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    [v5 addressBook];
    v7 = ABAddressBookCopyArrayOfAllAccounts();
    self = v7 != 0;
    if (v7)
    {
      v8 = v7;
      if (CFArrayGetCount(v7) >= 1)
      {
        v9 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v8, v9);
          v11 = ABAccountCopyInternalUUID();
          abAccountsByIdentifier = [v6 abAccountsByIdentifier];
          [abAccountsByIdentifier setObject:ValueAtIndex forKey:v11];

          if (v11)
          {
            CFRelease(v11);
          }

          ++v9;
        }

        while (v9 < CFArrayGetCount(v8));
      }

      CFRelease(v8);
      v13 = 0;
    }

    else
    {
      v14 = +[CNErrorFactory genericiOSABError];
      v13 = v14;
      if (context)
      {
        v15 = v14;
        *context = v13;
      }
    }
  }

  return self;
}

- (uint64_t)_fetchContainersInSaveContext:(void *)context error:
{
  v31[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = v7;
  if (!self)
  {
    v20 = 0;
    goto LABEL_13;
  }

  v29 = 0;
  saveRequest = [v7 saveRequest];
  v10 = [saveRequest allContainerIdentifierStrings:&v29];

  if (v29 == 1)
  {
    v28 = 0;
    v24 = -[CNiOSAddressBookDataMapper defaultContainerIdentifierForAddressBook:error:](self, [v8 addressBook], &v28);
    v25 = v28;
    v26 = v25;
    if (v24)
    {
      v31[0] = v24;
      v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
      v27 = [v3 arrayByAddingObjectsFromArray:v10];

      v10 = v27;
    }

    else if (v25)
    {
      NSLog(&cfstr_ErrorFetchingD.isa, v25);
    }

    else
    {
      NSLog(&cfstr_WeGotNoIdentif.isa);
    }
  }

  if ([v10 count])
  {
    [v8 addressBook];
    v11 = ABAddressBookCopySourcesWithUUIDs();
    if (!v11)
    {
      v22 = +[CNErrorFactory genericiOSABError];
      v18 = v22;
      if (context)
      {
        v23 = v22;
        v19 = 0;
        *context = v18;
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_12;
    }

    v12 = v11;
    if (CFArrayGetCount(v11) >= 1)
    {
      v13 = 0;
      v14 = *MEMORY[0x1E698A6A8];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v12, v13);
        ABRecordCopyValue(ValueAtIndex, v14);
        abSourcesByIdentifier = [OUTLINED_FUNCTION_55() abSourcesByIdentifier];
        OUTLINED_FUNCTION_51(abSourcesByIdentifier, v17);

        if (v3)
        {
          CFRelease(v3);
        }

        ++v13;
      }

      while (v13 < CFArrayGetCount(v12));
    }

    CFRelease(v12);
  }

  v18 = 0;
  v19 = 1;
LABEL_12:

  v30 = v19;
  v20 = v30;
LABEL_13:

  return v20;
}

- (uint64_t)_fetchContactsInSaveContext:(void *)context error:
{
  v7 = a2;
  v8 = v7;
  if (!self)
  {
    v19 = 0;
    goto LABEL_12;
  }

  saveRequest = [v7 saveRequest];
  allContactIdentifiers = [saveRequest allContactIdentifiers];

  if ([allContactIdentifiers count])
  {
    [v8 addressBook];
    v11 = ABAddressBookCopyPeopleWithUUIDs();
    if (!v11)
    {
      v21 = +[CNErrorFactory genericiOSABError];
      v18 = v21;
      if (context)
      {
        v22 = v21;
        v19 = 0;
        *context = v18;
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_11;
    }

    v12 = v11;
    if (CFArrayGetCount(v11) >= 1)
    {
      v13 = 0;
      v14 = *MEMORY[0x1E698A438];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v12, v13);
        ABRecordCopyValue(ValueAtIndex, v14);
        abPersonsByIdentifier = [OUTLINED_FUNCTION_55() abPersonsByIdentifier];
        OUTLINED_FUNCTION_51(abPersonsByIdentifier, v17);

        if (v3)
        {
          CFRelease(v3);
        }

        ++v13;
      }

      while (v13 < CFArrayGetCount(v12));
    }

    CFRelease(v12);
  }

  v18 = 0;
  v19 = 1;
LABEL_11:

LABEL_12:
  return v19;
}

- (uint64_t)_fetchGroupsInSaveContext:(void *)context error:
{
  v7 = a2;
  v8 = v7;
  if (!self)
  {
    v19 = 0;
    goto LABEL_12;
  }

  saveRequest = [v7 saveRequest];
  allGroupIdentifiers = [saveRequest allGroupIdentifiers];

  if ([allGroupIdentifiers count])
  {
    [v8 addressBook];
    v11 = ABAddressBookCopyGroupsWithUUIDs();
    if (!v11)
    {
      v21 = +[CNErrorFactory genericiOSABError];
      v18 = v21;
      if (context)
      {
        v22 = v21;
        v19 = 0;
        *context = v18;
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_11;
    }

    v12 = v11;
    if (CFArrayGetCount(v11) >= 1)
    {
      v13 = 0;
      v14 = *MEMORY[0x1E698A228];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v12, v13);
        ABRecordCopyValue(ValueAtIndex, v14);
        abGroupsByIdentifier = [OUTLINED_FUNCTION_55() abGroupsByIdentifier];
        OUTLINED_FUNCTION_51(abGroupsByIdentifier, v17);

        if (v3)
        {
          CFRelease(v3);
        }

        ++v13;
      }

      while (v13 < CFArrayGetCount(v12));
    }

    CFRelease(v12);
  }

  v18 = 0;
  v19 = 1;
LABEL_11:

LABEL_12:
  return v19;
}

- (id)defaultContainerIdentifierForAddressBook:(void *)book error:
{
  if (self)
  {
    v3 = [(CNiOSAddressBookDataMapper *)self _defaultSourceInAddressBook:a2 error:book];
    if (v3)
    {
      v4 = +[CN containerIdentifierDescription];
      v3 = [v4 CNValueFromABValue:{objc_msgSend(v4, "ABValueForABSource:", v3)}];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __68__CNiOSAddressBookDataMapper__processContactsFromSaveContext_error___block_invoke()
{
  OUTLINED_FUNCTION_67();
  v1 = v0;
  v3 = v2;
  v105[17] = *MEMORY[0x1E69E9840];
  v5 = v4;
  v6 = v1;
  context = objc_autoreleasePoolPush();
  v7 = v6;
  v8 = v5;
  v9 = *(v3 + 32);
  if (v9)
  {
    v10 = *(v9 + 32);
  }

  else
  {
    v10 = 0;
  }

  [v10 addingContacts:v7 toContainerWithIdentifier:{v8, context}];
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v11 = v7;
  OUTLINED_FUNCTION_57();
  obj = v12;
  v13 = [v12 countByEnumeratingWithState:? objects:? count:?];
  if (v13)
  {
    v14 = v13;
    v15 = *v85;
    property = *MEMORY[0x1E698A438];
    v74 = v8;
    v76 = *v85;
    do
    {
      v16 = 0;
      v77 = v14;
      do
      {
        if (*v85 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v84 + 1) + 8 * v16);
        v18 = [*(v3 + 40) abPersonsByIdentifier];
        v19 = [v17 identifier];
        v20 = [v18 objectForKey:v19];

        if (v20)
        {
          OUTLINED_FUNCTION_12_1();
          v103 = v17;
          v104 = @"CNInvalidRecords";
          v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v103 count:1];
          v105[0] = v21;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v105 forKeys:&v104 count:1];
          v23 = [CNErrorFactory errorWithCode:201 userInfo:v22];
          OUTLINED_FUNCTION_14(v23, *(v3 + 56));

          OUTLINED_FUNCTION_44();
          goto LABEL_34;
        }

        cf = 0;
        [v17 setSnapshot:0];
        v24 = [*(v3 + 40) saveResponse];
        v25 = [*(v3 + 40) indexPathForContactInstance:v17];
        [v24 setContactSnapshot:0 forIndexPath:v25];

        v26 = [MEMORY[0x1E695DFB0] null];
        LODWORD(v25) = [v8 isEqual:v26];

        if (!v25)
        {
          v27 = [*(v3 + 40) abSourcesByIdentifier];
          v28 = [v27 objectForKey:v8];

          if (!v28)
          {
            OUTLINED_FUNCTION_12_1();
            v100 = v8;
            v101 = @"CNInvalidRecordIdentifiers";
            v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v100 count:1];
            v102 = v29;
            v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
            v31 = 200;
LABEL_13:
            v32 = [CNErrorFactory errorWithCode:v31 userInfo:v30];
            OUTLINED_FUNCTION_14(v32, *(v3 + 56));

            OUTLINED_FUNCTION_44();
LABEL_14:
            OUTLINED_FUNCTION_12_1();
            if (!*(*(*(v3 + 56) + 8) + 40))
            {
              v94 = v17;
              v95 = @"CNInvalidRecords";
              v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v94 count:1];
              v96 = v33;
              v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
              v35 = [CNErrorFactory errorForiOSABError:cf];
              v36 = [CNErrorFactory errorByAddingUserInfoEntries:v34 toError:v35];
              OUTLINED_FUNCTION_14(v36, *(v3 + 56));

              v14 = v77;
            }

            if (cf)
            {
              CFRelease(cf);
            }

            v37 = 0;
            goto LABEL_19;
          }

          v64 = *(v3 + 32);
          [*(v3 + 40) addressBook];
          if (([CNiOSAddressBookDataMapper _hasManagedAccessToWriteToAccountCorrespondingToSource:v64 fromAddressBook:?]& 1) == 0)
          {
            OUTLINED_FUNCTION_12_1();
            v97 = v8;
            v98 = @"CNInvalidRecordIdentifiers";
            v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v97 count:1];
            v99 = v29;
            v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
            v31 = 207;
            goto LABEL_13;
          }

          v63 = ABPersonCreateInSourceAndReturnError();
          goto LABEL_40;
        }

        if (![(CNiOSAddressBookDataMapper *)*(v3 + 32) _hasManagementRestrictionsEnabled])
        {
          v63 = ABPersonCreate();
LABEL_40:
          v65 = v63;
          if (!v63)
          {
            goto LABEL_14;
          }

          goto LABEL_41;
        }

        v66 = *(v3 + 32);
        v67 = [*(v3 + 40) addressBook];
        v82 = 0;
        v68 = [(CNiOSAddressBookDataMapper *)v66 _defaultSourceInAddressBook:v67 error:&v82];
        v69 = v82;
        v70 = v82;
        if (v68)
        {
          v65 = ABPersonCreateInSourceAndReturnError();
        }

        else
        {
          OUTLINED_FUNCTION_12_1();
          objc_storeStrong((*(*(v3 + 56) + 8) + 40), v69);
          v65 = 0;
          OUTLINED_FUNCTION_44();
        }

        if (!v65)
        {
          goto LABEL_14;
        }

LABEL_41:
        v37 = CFAutorelease(v65);
LABEL_19:
        OUTLINED_FUNCTION_11_1();
        if (v38 == 1)
        {
          error = 0;
          v39 = [v17 identifier];
          *(*(*(v3 + 48) + 8) + 24) = ABRecordSetValue(v37, property, v39, &error);

          [v17 identifier];
          OUTLINED_FUNCTION_11_1();
          if (v40 == 1)
          {
            *(*(*(v3 + 48) + 8) + 24) = ABAddressBookAddRecord([*(v3 + 40) addressBook], v37, &error);
            OUTLINED_FUNCTION_11_1();
            if (v41)
            {
              goto LABEL_25;
            }
          }

          v91 = v17;
          v92 = @"CNInvalidRecords";
          v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v91 count:1];
          v93 = v42;
          v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
          v44 = [CNErrorFactory errorForiOSABError:error];
          v45 = [CNErrorFactory errorByAddingUserInfoEntries:v43 toError:v44];
          OUTLINED_FUNCTION_14(v45, *(v3 + 56));

          if (error)
          {
            CFRelease(error);
          }

          OUTLINED_FUNCTION_44();
          OUTLINED_FUNCTION_11_1();
          v15 = v76;
          v14 = v77;
          if (v46)
          {
LABEL_25:
            [CNAddressingGrammarHelper addNoisyValueToContact:v17];
            v80 = 0;
            v47 = [CNContactDiff diffContact:0 to:v17 error:&v80];
            v48 = v80;
            v49 = v48;
            if (v47)
            {
              v50 = *(v3 + 32);
              if (v50)
              {
                v50 = v50[4];
              }

              v79 = v48;
              v51 = v50;
              v52 = [v47 applyToABPerson:v37 isUnified:0 logger:v51 error:&v79];
              v53 = v79;

              *(*(*(v3 + 48) + 8) + 24) = v52;
              v49 = v53;
              v15 = v76;
            }

            else
            {
              OUTLINED_FUNCTION_12_1();
            }

            v54 = [v17 identifier];
            v55 = [v47 posterDataRequestsForContactWithIdentifier:v54];

            v56 = [*(v3 + 40) posterDataChangeRequests];
            [(__objc2_class *)v56 addObjectsFromArray:v55];

            OUTLINED_FUNCTION_11_1();
            if ((v57 & 1) == 0)
            {
              OUTLINED_FUNCTION_44();
              v56 = CNErrorFactory;
              v88 = v17;
              v89 = @"CNInvalidRecords";
              v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v88 count:1];
              v90 = v58;
              v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
              v60 = [CNErrorFactory errorByAddingUserInfoEntries:v59 toError:v49];
              OUTLINED_FUNCTION_14(v60, *(v3 + 56));

              v15 = v76;
            }

            OUTLINED_FUNCTION_11_1();
            v8 = v74;
            v14 = v77;
            if (v61)
            {
              v62 = [*(v3 + 40) abPersonsByIdentifier];
              [v17 identifier];
              objc_claimAutoreleasedReturnValue();
              [OUTLINED_FUNCTION_48() setObject:v37 forKey:v56];
            }
          }
        }

LABEL_34:
        ++v16;
      }

      while (v14 != v16);
      OUTLINED_FUNCTION_57();
      v71 = [obj countByEnumeratingWithState:? objects:? count:?];
      v14 = v71;
    }

    while (v71);
  }

  objc_autoreleasePoolPop(contexta);
  OUTLINED_FUNCTION_68();
}

- (uint64_t)_hasManagementRestrictionsEnabled
{
  if (self && *(self + 40))
  {
    return [*(self + 40) deviceHasManagementRestrictions];
  }

  else
  {
    return 0;
  }
}

- (void)_defaultSourceInAddressBook:(void *)book error:
{
  if (!self)
  {
    return 0;
  }

  v6 = ABAddressBookCopyDefaultSource(addressBook);
  if (v6)
  {
    v7 = CFAutorelease(v6);
  }

  else
  {
    v7 = 0;
  }

  if ([(CNiOSAddressBookDataMapper *)self _hasManagementRestrictionsEnabled]&& ([CNiOSAddressBookDataMapper _canWriteUnderManagementRestrictionsToSource:self inAddressBook:?]& 1) == 0)
  {
    v7 = [(CNiOSAddressBookDataMapper *)self _alternativeSourceWithAccessibleAccountFromAddressBook:?];
  }

  if (v7)
  {
    v8 = v7;
    v9 = 0;
  }

  else
  {
    v10 = [CNErrorFactory errorWithCode:101];
    v9 = v10;
    if (book)
    {
      v11 = v10;
      *book = v9;
    }
  }

  v12 = v7;
  return v7;
}

- (uint64_t)_hasManagedAccessToWriteToAccountCorrespondingToSource:(uint64_t)result fromAddressBook:
{
  if (result)
  {
    if ([(CNiOSAddressBookDataMapper *)result _hasManagementRestrictionsEnabled])
    {
      v1 = OUTLINED_FUNCTION_64();

      return [CNiOSAddressBookDataMapper _canWriteUnderManagementRestrictionsToSource:v1 inAddressBook:?];
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (void)_logWillDeleteWithSaveContext:(uint64_t)context
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (context)
  {
    saveRequest = [v3 saveRequest];
    deletedContacts = [saveRequest deletedContacts];
    *(context + 8) = [deletedContacts count] == 1;

    if (*(context + 8) == 1)
    {
      saveRequest2 = [v4 saveRequest];
      allContactIdentifiers = [saveRequest2 allContactIdentifiers];

      abPersonsByIdentifier = [v4 abPersonsByIdentifier];
      allKeys = [abPersonsByIdentifier allKeys];

      objc_opt_class();
      v11 = +[CNiOSAddressBookDataMapper os_log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        [allContactIdentifiers count];
        OUTLINED_FUNCTION_1();
        v14 = 2114;
        v15 = allContactIdentifiers;
        _os_log_impl(&dword_1954A0000, v11, OS_LOG_TYPE_DEFAULT, "_processContactsFromSaveContext delete, save context contact identifiers (%ld):%{public}@", v13, 0x16u);
      }

      objc_opt_class();
      v12 = +[CNiOSAddressBookDataMapper os_log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        [allKeys count];
        OUTLINED_FUNCTION_1();
        v14 = 2114;
        v15 = allKeys;
        _os_log_impl(&dword_1954A0000, v12, OS_LOG_TYPE_DEFAULT, "_processContactsFromSaveContext delete, fetched contact identifiers (%ld):%{public}@", v13, 0x16u);
      }
    }
  }
}

void __68__CNiOSAddressBookDataMapper__processContactsFromSaveContext_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v83 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  context = v7;
  if (v8)
  {
    v9 = *(v8 + 32);
  }

  else
  {
    v9 = 0;
  }

  [v9 deletingContact:{v6, a4}];
  v10 = [v6 linkedContacts];
  if ([v10 count])
  {
    [v6 linkedContacts];
  }

  else
  {
    [OUTLINED_FUNCTION_59(0x1E695D000) arrayWithObjects:? count:?];
  }
  v11 = ;
  v64 = v6;

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v69 objects:v82 count:16];
  v66 = v12;
  if (v13)
  {
    v14 = v13;
    v65 = 0;
    v67 = 0;
    v15 = *v70;
    do
    {
      v16 = 0;
      do
      {
        if (*v70 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v69 + 1) + 8 * v16);
        v18 = [v17 identifier];
        if ([v17 isSuggested])
        {
          v19 = OUTLINED_FUNCTION_47();
          [(CNiOSAddressBookDataMapper *)v19 _logIgnoringSuggestedLinkedSetContactIdentifier:v20];
        }

        else
        {
          [v17 isImplicitAugmentation];
          v21 = OUTLINED_FUNCTION_47();
          if (v23)
          {
            [(CNiOSAddressBookDataMapper *)v21 _logIngoringImplicitAugmentationLinkedSetContactIdentifier:v22];
          }

          else
          {
            [(CNiOSAddressBookDataMapper *)v21 _logWillDeleteLinkedSetContactIdentifier:v22];
            v24 = [*(a1 + 40) abPersonsByIdentifier];
            v25 = [v24 objectForKey:v18];

            if (v25)
            {
              v30 = OUTLINED_FUNCTION_47();
              [(CNiOSAddressBookDataMapper *)v30 _logDeleteHasFoundAtLeastOnePersistedContactIdentifier:v31];
              v32 = [(CNiOSAddressBookDataMapper *)*(a1 + 32) _hasManagedWriteAccessToAccountContainingPerson:v25 fromSaveContext:*(a1 + 40)];
              v33 = v32;
              [(CNiOSAddressBookDataMapper *)*(a1 + 32) _logDeleteHasManagedWriteAccess:v32 contactIdentifier:v18];
              if (v33)
              {
                error = 0;
                *(*(*(a1 + 48) + 8) + 24) = ABAddressBookRemoveRecord([*(a1 + 40) addressBook], v25, &error);
                v40 = OUTLINED_FUNCTION_63();
                [(CNiOSAddressBookDataMapper *)v40 _logDeleteHasRemovedRecordWithResult:v41 err:error];
                OUTLINED_FUNCTION_21();
                if (v42 == 1)
                {
                  v43 = [*(a1 + 40) contactIdentifiersNeedingMetadataPurge];
                  v44 = [v17 identifier];
                  [v43 addObject:v44];
                }

                else if (!*(*(*(a1 + 56) + 8) + 40))
                {
                  v79 = v17;
                  v80 = @"CNInvalidRecords";
                  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v79 count:1];
                  v81 = v45;
                  v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
                  v47 = [CNErrorFactory errorForiOSABError:error];
                  v48 = [OUTLINED_FUNCTION_36() errorByAddingUserInfoEntries:? toError:?];
                  OUTLINED_FUNCTION_14(v48, *(a1 + 56));

                  if (error)
                  {
                    CFRelease(error);
                  }
                }

                OUTLINED_FUNCTION_21();
                LOBYTE(v65) = (v49 | v65 & 1) != 0;
              }

              v77 = v18;
              v67 = 1;
              v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v77 count:1];
              v35 = [CNContactPosterDeleteRequest requestToDeletePostersForContactIdentifiers:v34];
              v78[0] = v35;
              v76 = v18;
              v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
              v37 = [OUTLINED_FUNCTION_36() requestToDeleteImagesForContactIdentifiers:?];
              v78[1] = v37;
              v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:2];

              v39 = [*(a1 + 40) posterDataChangeRequests];
              [v39 addObjectsFromArray:v38];

              v12 = v66;
            }

            else
            {
              if (([v17 hasBeenPersisted] & 1) == 0)
              {
                v26 = OUTLINED_FUNCTION_47();
                [(CNiOSAddressBookDataMapper *)v26 _logDeleteHasNoPersistedContactIdentifier:v27];
                BYTE4(v65) = 1;
              }

              v28 = OUTLINED_FUNCTION_47();
              [(CNiOSAddressBookDataMapper *)v28 _logDeleteHasNoABRecordForContactIdentifier:v29];
            }
          }
        }

        ++v16;
      }

      while (v14 != v16);
      v50 = [v12 countByEnumeratingWithState:&v69 objects:v82 count:16];
      v14 = v50;
    }

    while (v50);
  }

  else
  {
    v65 = 0;
    v67 = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = (v65 | ~v67) & ~BYTE4(v65) & 1;
  v51 = OUTLINED_FUNCTION_63();
  [(CNiOSAddressBookDataMapper *)v51 _logDeleteSuccess:v54 hasFoundAtLeastOneBackingPerson:v52 & 1 hasDeletedAtLeastOneLinkedContact:v53 & 1 hasFoundMissingContactWithNoSnapshot:BYTE4(v65) & 1];
  OUTLINED_FUNCTION_21();
  if ((v55 & 1) == 0)
  {
    v56 = *(*(*(a1 + 56) + 8) + 40);
    if (!v56)
    {
      if ((v65 & 0x100000000) != 0)
      {
        v57 = 200;
      }

      else
      {
        v57 = 207;
      }

      v73 = v64;
      v74 = @"CNInvalidRecords";
      v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
      v75 = v58;
      v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
      v60 = [CNErrorFactory errorWithCode:v57];
      v12 = v66;
      v61 = [CNErrorFactory errorByAddingUserInfoEntries:v59 toError:v60];
      OUTLINED_FUNCTION_14(v61, *(a1 + 56));

      v56 = *(*(*(a1 + 56) + 8) + 40);
    }

    [(CNiOSAddressBookDataMapper *)*(a1 + 32) _logDeleteHasError:v56];
    *v62 = 1;
  }

  objc_autoreleasePoolPop(context);
}

- (void)_logIgnoringSuggestedLinkedSetContactIdentifier:(void *)identifier
{
  v3 = a2;
  if (identifier)
  {
    OUTLINED_FUNCTION_25();
    if (v4)
    {
      objc_opt_class();
      v5 = +[CNiOSAddressBookDataMapper os_log];
      if (OUTLINED_FUNCTION_49(v5))
      {
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_9_2();
        _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
      }
    }
  }
}

- (void)_logIngoringImplicitAugmentationLinkedSetContactIdentifier:(void *)identifier
{
  v3 = a2;
  if (identifier)
  {
    OUTLINED_FUNCTION_25();
    if (v4)
    {
      objc_opt_class();
      v5 = +[CNiOSAddressBookDataMapper os_log];
      if (OUTLINED_FUNCTION_49(v5))
      {
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_9_2();
        _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
      }
    }
  }
}

- (void)_logWillDeleteLinkedSetContactIdentifier:(void *)identifier
{
  v3 = a2;
  if (identifier)
  {
    OUTLINED_FUNCTION_25();
    if (v4)
    {
      objc_opt_class();
      v5 = +[CNiOSAddressBookDataMapper os_log];
      if (OUTLINED_FUNCTION_49(v5))
      {
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_9_2();
        _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
      }
    }
  }
}

- (void)_logDeleteHasNoPersistedContactIdentifier:(void *)identifier
{
  v3 = a2;
  if (identifier)
  {
    OUTLINED_FUNCTION_25();
    if (v4)
    {
      objc_opt_class();
      v5 = +[CNiOSAddressBookDataMapper os_log];
      if (OUTLINED_FUNCTION_49(v5))
      {
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_9_2();
        _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
      }
    }
  }
}

- (void)_logDeleteHasNoABRecordForContactIdentifier:(void *)identifier
{
  v3 = a2;
  if (identifier)
  {
    OUTLINED_FUNCTION_25();
    if (v4)
    {
      objc_opt_class();
      v5 = +[CNiOSAddressBookDataMapper os_log];
      if (OUTLINED_FUNCTION_49(v5))
      {
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_9_2();
        _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
      }
    }
  }
}

- (void)_logDeleteHasFoundAtLeastOnePersistedContactIdentifier:(void *)identifier
{
  v3 = a2;
  if (identifier)
  {
    OUTLINED_FUNCTION_25();
    if (v4)
    {
      objc_opt_class();
      v5 = +[CNiOSAddressBookDataMapper os_log];
      if (OUTLINED_FUNCTION_49(v5))
      {
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_9_2();
        _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
      }
    }
  }
}

- (uint64_t)_hasManagedWriteAccessToAccountContainingPerson:(void *)person fromSaveContext:
{
  personCopy = person;
  if (self)
  {
    v6 = ABPersonCopySource(a2);
    if (v6)
    {
      CFAutorelease(v6);
    }

    [personCopy addressBook];
    if ([(CNiOSAddressBookDataMapper *)self _hasManagementRestrictionsEnabled])
    {
      self = [CNiOSAddressBookDataMapper _canWriteUnderManagementRestrictionsToSource:self inAddressBook:?];
    }

    else
    {
      self = 1;
    }
  }

  return self;
}

- (void)_logDeleteHasManagedWriteAccess:(void *)access contactIdentifier:
{
  accessCopy = access;
  if (self)
  {
    OUTLINED_FUNCTION_25();
    if (v5)
    {
      objc_opt_class();
      v6 = +[CNiOSAddressBookDataMapper os_log];
      if (OUTLINED_FUNCTION_49(v6))
      {
        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_9_2();
        _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
      }
    }
  }
}

- (void)_logDeleteHasRemovedRecordWithResult:(void *)result err:
{
  v6 = *MEMORY[0x1E69E9840];
  if (self && *(self + 8) == 1)
  {
    resultCopy = result;
    objc_opt_class();
    v4 = +[CNiOSAddressBookDataMapper os_log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_29();
      _os_log_debug_impl(&dword_1954A0000, v4, OS_LOG_TYPE_DEBUG, "_processContactsFromSaveContext delete, ABAddressBookRemoveRecord %{public}@, error: %{public}@", v5, 0x16u);
    }
  }
}

- (void)_logDeleteSuccess:(int)success hasFoundAtLeastOneBackingPerson:(int)person hasDeletedAtLeastOneLinkedContact:(int)contact hasFoundMissingContactWithNoSnapshot:
{
  v22 = *MEMORY[0x1E69E9840];
  if (self && *(self + 8) == 1)
  {
    objc_opt_class();
    v9 = +[CNiOSAddressBookDataMapper os_log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"failed";
      if (a2)
      {
        v10 = @"success";
      }

      if (success)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      v14 = 138544130;
      v15 = v10;
      if (person)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v16 = 2114;
      v17 = v11;
      v18 = 2114;
      v19 = v12;
      if (contact)
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      v20 = 2114;
      v21 = v13;
      _os_log_impl(&dword_1954A0000, v9, OS_LOG_TYPE_DEFAULT, "_processContactsFromSaveContext delete, %{public}@, hasFoundAtLeastOneBackingPerson:%{public}@, hasDeletedAtLeastOneLinkedContact:%{public}@, hasFoundMissingContactWithNoSnapshot:%{public}@", &v14, 0x2Au);
    }
  }
}

- (void)_logDeleteHasError:(uint64_t)error
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (error)
  {
    OUTLINED_FUNCTION_25();
    if (v4)
    {
      objc_opt_class();
      v5 = +[CNiOSAddressBookDataMapper os_log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_30();
        _os_log_debug_impl(&dword_1954A0000, v5, OS_LOG_TYPE_DEBUG, "_processContactsFromSaveContext delete, error: %{public}@", v6, 0xCu);
      }
    }
  }
}

void __68__CNiOSAddressBookDataMapper__processContactsFromSaveContext_error___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v69 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = objc_autoreleasePoolPush();
  v9 = v7;
  [CNAddressingGrammarHelper addNoisyValueToContact:v9];
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = *(v10 + 32);
  }

  else
  {
    v11 = 0;
  }

  [v11 updatingContact:v9];
  v61 = 0;
  v12 = [v9 diffToSnapshotAndReturnError:&v61];
  v13 = v61;
  v51 = v61;
  v52 = v12;
  if (v12 || (v37 = *(*(a1 + 48) + 8), v39 = *(v37 + 40), v38 = (v37 + 40), !v39))
  {
    v48 = [v9 isUnified];
    v45 = v9;
    v46 = v8;
    if (v48)
    {
      [v9 mainStoreLinkedContacts];
    }

    else
    {
      [OUTLINED_FUNCTION_59(0x1E695D000) arrayWithObjects:? count:?];
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    obj = v58 = 0u;
    v14 = [obj countByEnumeratingWithState:&v57 objects:v68 count:16];
    if (v14)
    {
      v15 = v14;
      v50 = 0;
      v16 = *v58;
      v47 = a4;
      do
      {
        v17 = 0;
        do
        {
          if (*v58 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v57 + 1) + 8 * v17);
          v19 = [*(a1 + 40) abPersonsByIdentifier];
          [v18 identifier];
          objc_claimAutoreleasedReturnValue();
          v20 = [OUTLINED_FUNCTION_62() objectForKey:v4];

          if (v20 && ([(CNiOSAddressBookDataMapper *)*(a1 + 32) _hasManagedWriteAccessToAccountContainingPerson:v20 fromSaveContext:*(a1 + 40)]& 1) != 0)
          {
            v23 = *(a1 + 32);
            if (v23)
            {
              v23 = v23[4];
            }

            v56 = 0;
            v24 = v23;
            v25 = [v52 applyToABPerson:v20 isUnified:v48 logger:v24 error:&v56];
            v26 = v56;

            if (v25)
            {
              v49 = v26;
              LOBYTE(v27) = 1;
              v28 = v51;
            }

            else
            {
              v29 = [*(a1 + 40) saveRequest];
              LODWORD(v27) = [v29 canIgnoreError:v26];

              os_log_create("com.apple.contacts", "data-access-error");
              v30 = OUTLINED_FUNCTION_62();
              if (CNIsErrorWithCode(v30, 1015))
              {
                if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
                {
                  *buf = 0;
                  _os_log_fault_impl(&dword_1954A0000, v29, OS_LOG_TYPE_FAULT, "Attempt to save fullscreen image data without setting image data", buf, 2u);
                }

                v31 = [CNErrorFactory errorWithCode:2];

                v26 = v31;
              }

              if (v27)
              {
                if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1954A0000, v29, OS_LOG_TYPE_INFO, "Ignoring data access error and continuing", buf, 2u);
                }

                v28 = 0;
              }

              else
              {
                v28 = v26;
              }

              v49 = v28;
            }

            v32 = [v18 identifier];
            v4 = [v52 posterDataRequestsForContactWithIdentifier:v32];

            v33 = [*(a1 + 40) posterDataChangeRequests];
            [v33 addObjectsFromArray:v4];

            if ((v27 & 1) != 0 || !v28)
            {
              v51 = v28;
            }

            else
            {
              v62 = v18;
              v63 = @"CNInvalidRecords";
              v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1];
              v64 = v34;
              [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
              v27 = v53 = v27;
              v35 = [CNErrorFactory errorByAddingUserInfoEntries:v27 toError:v28];

              LOBYTE(v27) = v53;
              v51 = v35;
            }

            v50 |= v27;

            a4 = v47;
          }

          else
          {
            *(*(*(a1 + 56) + 8) + 24) = 0;
            v65 = v18;
            v66 = @"CNInvalidRecords";
            v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
            v67 = v21;
            v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
            v22 = [CNErrorFactory errorWithCode:200 userInfo:v4];
            OUTLINED_FUNCTION_14(v22, *(a1 + 48));

            *a4 = 1;
          }

          ++v17;
        }

        while (v15 != v17);
        v36 = [obj countByEnumeratingWithState:&v57 objects:v68 count:16];
        v15 = v36;
      }

      while (v36);
    }

    else
    {
      v50 = 0;
    }

    *(*(*(a1 + 56) + 8) + 24) = v50 & 1;
    OUTLINED_FUNCTION_21();
    v40 = v51;
    if ((v41 & 1) == 0)
    {
      *a4 = 1;
      v42 = *(*(a1 + 48) + 8);
      v44 = *(v42 + 40);
      v43 = (v42 + 40);
      if (!v44)
      {
        objc_storeStrong(v43, v51);
      }
    }

    v9 = v45;
    v8 = v46;
  }

  else
  {
    objc_storeStrong(v38, v13);
    *a4 = 1;
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v40 = v51;
  }

  objc_autoreleasePoolPop(v8);
}

- (void)_alternativeSourceWithAccessibleAccountFromAddressBook:(uint64_t)book
{
  v26[2] = *MEMORY[0x1E69E9840];
  if (!book)
  {
    return 0;
  }

  v4 = ABAddressBookCopyArrayOfAllSources(addressBook);
  OUTLINED_FUNCTION_18();
  v21 = 3221225472;
  v22 = __85__CNiOSAddressBookDataMapper__alternativeSourceWithAccessibleAccountFromAddressBook___block_invoke;
  v23 = &unk_1E7414528;
  bookCopy = book;
  v25 = addressBook;
  v6 = [v5 _cn_filter:v20];
  OUTLINED_FUNCTION_0();
  v15 = 3221225472;
  v16 = __85__CNiOSAddressBookDataMapper__alternativeSourceWithAccessibleAccountFromAddressBook___block_invoke_2;
  v17 = &unk_1E7414550;
  bookCopy2 = book;
  v19 = addressBook;
  v7 = _Block_copy(aBlock);
  v8 = _Block_copy(v7);
  v26[0] = v8;
  v26[1] = &__block_literal_global_74;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v10 = CNAggregateComparator();
  v11 = [v6 sortedArrayUsingComparator:v10];

  firstObject = [v11 firstObject];

  return firstObject;
}

uint64_t __85__CNiOSAddressBookDataMapper__alternativeSourceWithAccessibleAccountFromAddressBook___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v24[6] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = ABAddressBookCopyAccountIdentifierForSource();
  v6 = ABAddressBookCopyAccountIdentifierForSource();

  v7 = *MEMORY[0x1E6959868];
  v24[0] = *MEMORY[0x1E69597F8];
  v24[1] = v7;
  v8 = *MEMORY[0x1E6959820];
  v24[2] = *MEMORY[0x1E6959918];
  v24[3] = v8;
  v9 = *MEMORY[0x1E6959840];
  v24[4] = *MEMORY[0x1E6959878];
  v24[5] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:6];
  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = *(v11 + 48);
  }

  else
  {
    v12 = 0;
  }

  v13 = [v12 accountForIdentifier:v5];
  v14 = [v13 accountType];
  v15 = [v14 identifier];

  v16 = *(a1 + 32);
  if (v16)
  {
    v17 = *(v16 + 48);
  }

  else
  {
    v17 = 0;
  }

  v18 = [v17 accountForIdentifier:v6];
  v19 = [v18 accountType];
  v20 = [v19 identifier];

  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v10, "indexOfObject:", v15)}];
  [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v10, "indexOfObject:", v20)}];
  objc_claimAutoreleasedReturnValue();
  v22 = [OUTLINED_FUNCTION_62() compare:0x1E696A000uLL];

  return v22;
}

- (uint64_t)_canWriteUnderManagementRestrictionsToSource:(uint64_t)source inAddressBook:
{
  if (!source)
  {
    return 0;
  }

  OUTLINED_FUNCTION_34();
  if (ABRecordGetIntValue() == 6 || (ABSourceIsRemote() & 1) != 0 || (ABSourceIsReadonly() & 1) != 0 || !ABRecordGetIntValue() && ![*(v1 + 40) canWriteToLocalAccount])
  {
    return 0;
  }

  OUTLINED_FUNCTION_64();
  v3 = ABAddressBookCopyAccountIdentifierForSource();
  v4 = [*(v1 + 40) canWriteToAccountWithIdentifier:v3];

  return v4;
}

- (uint64_t)_hasManagedAccessToReadFromAccountCorrespondingToSource:(uint64_t)result fromAddressBook:
{
  if (result)
  {
    if ([(CNiOSAddressBookDataMapper *)result _hasManagementRestrictionsEnabled])
    {
      v1 = OUTLINED_FUNCTION_64();

      return [CNiOSAddressBookDataMapper _canReadUnderManagementRestrictionsFromSource:v1 inAddressBook:?];
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (uint64_t)_canReadUnderManagementRestrictionsFromSource:(uint64_t)source inAddressBook:
{
  if (!source)
  {
    return 0;
  }

  OUTLINED_FUNCTION_34();
  if (!ABRecordGetIntValue() && ![*(v1 + 40) canReadFromLocalAccount])
  {
    return 0;
  }

  OUTLINED_FUNCTION_64();
  v2 = ABAddressBookCopyAccountIdentifierForSource();
  v3 = [*(v1 + 40) canReadFromAccountWithIdentifier:v2];

  return v3;
}

- (id)defaultContainerIdentifier
{
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_2_5();
  v18[10] = v4;
  v19 = 0;
  if (v5)
  {
    v6 = v2[2];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_15_0();
  v18[2] = __56__CNiOSAddressBookDataMapper_defaultContainerIdentifier__block_invoke;
  v18[3] = &unk_1E74146F0;
  v18[4] = v2;
  v18[5] = v3;
  v9 = [v8 performSynchronousWorkWithInvalidatedAddressBook:v18];

  OUTLINED_FUNCTION_19();
  v11 = v10;
  OUTLINED_FUNCTION_11(v11, v12, v13, v14, v15, v16);

  return v2;
}

uint64_t __56__CNiOSAddressBookDataMapper_defaultContainerIdentifier__block_invoke(uint64_t a1, const void *a2)
{
  v3 = [(CNiOSAddressBookDataMapper *)*(a1 + 32) defaultContainerIdentifierForAddressBook:a2 error:0];
  v4 = OUTLINED_FUNCTION_41(v3, *(a1 + 40));

  return MEMORY[0x1EEE66BB8](v4, v5);
}

void __62__CNiOSAddressBookDataMapper_accountsMatchingPredicate_error___block_invoke()
{
  OUTLINED_FUNCTION_34();
  if ([*(v3 + 32) conformsToProtocol:&unk_1F0991650])
  {
    v4 = *(*(v0 + 48) + 8);
    v5 = *(v4 + 40);
    v2 = (v4 + 40);
    v27 = v5;
    OUTLINED_FUNCTION_18();
    v22 = 3221225472;
    v23 = __62__CNiOSAddressBookDataMapper_accountsMatchingPredicate_error___block_invoke_2;
    v24 = &unk_1E7414718;
    v25 = *(v0 + 32);
    v26 = v1;
    v6 = CNBridgeABCFResultAndErrorFromBlock(&v27, v21);
    objc_storeStrong(v2, v27);

LABEL_3:
    v7 = 0;
    goto LABEL_18;
  }

  if (*(v0 + 32))
  {
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v8 = ABAddressBookCopyArrayOfAllAccounts();
    if (v8)
    {
      v8 = CFAutorelease(v8);
    }

    v6 = v8;
    v9 = ABAddressBookCopyLocalSource();
    if (!v9)
    {
      goto LABEL_3;
    }

    v2 = v9;
    v10 = ABRecordCopyValue(v9, *MEMORY[0x1E698A688]);
    v7 = (!-[CNiOSAddressBookDataMapper _hasManagementRestrictionsEnabled](*(v0 + 40)) || ((v11 = *(v0 + 40)) == 0 ? (v12 = 0) : (v12 = *(v11 + 40)), [v12 canReadFromLocalAccount])) && ((objc_msgSend(v10, "BOOLValue") & 1) != 0 || !objc_msgSend(v6, "count"));
    CFRelease(v2);
  }

LABEL_18:
  if ([(CNiOSAddressBookDataMapper *)*(v0 + 40) _hasManagementRestrictionsEnabled])
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_12();
    v17 = __62__CNiOSAddressBookDataMapper_accountsMatchingPredicate_error___block_invoke_3;
    v18 = &unk_1E7414528;
    v19 = *(v0 + 40);
    v20 = v1;
    v13 = [v6 _cn_filter:v16];

    v6 = v13;
  }

  if (v6)
  {
    v14 = [CNiOSABConversions accountsFromABAccounts:v6];
    OUTLINED_FUNCTION_14(v14, *(v0 + 56));
  }

  if (v7 && *(*(*(v0 + 56) + 8) + 40))
  {
    +[CNAccount localAccount];
    objc_claimAutoreleasedReturnValue();
    v15 = [OUTLINED_FUNCTION_42() arrayByAddingObject:?];
    OUTLINED_FUNCTION_14(v15, *(v0 + 56));
  }
}

uint64_t __62__CNiOSAddressBookDataMapper_accountsMatchingPredicate_error___block_invoke_3(uint64_t a1)
{
  ABAddressBookGetDefaultSourceForAccount();
  v2 = *(a1 + 32);

  return [CNiOSAddressBookDataMapper _hasManagedAccessToReadFromAccountCorrespondingToSource:v2 fromAddressBook:?];
}

- (id)executeFetchRequest:(id)request progressiveResults:(id)results completion:(id)completion
{
  requestCopy = request;
  resultsCopy = results;
  completionCopy = completion;
  if (self)
  {
    logger = self->_logger;
  }

  else
  {
    logger = 0;
  }

  v13 = logger;
  predicate = [OUTLINED_FUNCTION_65() predicate];
  unifyResults = [requestCopy unifyResults];
  keysToFetch = [requestCopy keysToFetch];
  [v5 fetchContactsProgressivelyMatchingPredicate:predicate unifyResults:unifyResults keysToFetch:keysToFetch];

  effectivePredicate = [requestCopy effectivePredicate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = objc_alloc_init(MEMORY[0x1E6996668]);
    if (self)
    {
      addressBook = self->_addressBook;
    }

    else
    {
      addressBook = 0;
    }

    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_15_0();
    v28[2] = __80__CNiOSAddressBookDataMapper_executeFetchRequest_progressiveResults_completion___block_invoke;
    v28[3] = &unk_1E7414858;
    v29 = requestCopy;
    selfCopy = self;
    v31 = v5;
    v33 = resultsCopy;
    v20 = completionCopy;
    v34 = v20;
    v21 = v18;
    v32 = v21;
    v22 = [(CNiOSAddressBook *)addressBook performAsynchronousWorkWithInvalidatedAddressBook:v28];
    isSuccess = [v22 isSuccess];
    if (v20 && (isSuccess & 1) == 0)
    {
      error = [v22 error];
      (*(v20 + 2))(v20, error);
    }

    v25 = v21;
  }

  else
  {
    v26 = [CNErrorFactory errorWithCode:400];
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v26);
    }

    v25 = 0;
  }

  return v25;
}

void __80__CNiOSAddressBookDataMapper_executeFetchRequest_progressiveResults_completion___block_invoke()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  v4 = [CNiOSContactFetcher alloc];
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  if (v5)
  {
    v5 = v5[3];
  }

  v7 = *(v0 + 40);
  if (v7)
  {
    v8 = *(v7 + 40);
  }

  else
  {
    v8 = 0;
  }

  v9 = v5;
  v10 = [(CNiOSContactFetcher *)v4 initWithFetchRequest:v6 addressBook:v1 environment:v9 managedConfiguration:v8];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __80__CNiOSAddressBookDataMapper_executeFetchRequest_progressiveResults_completion___block_invoke_2;
  v20[3] = &unk_1E7414808;
  v21 = *(v0 + 48);
  v22 = *(v0 + 64);
  OUTLINED_FUNCTION_0();
  v14 = 3221225472;
  v15 = __80__CNiOSAddressBookDataMapper_executeFetchRequest_progressiveResults_completion___block_invoke_3;
  v16 = &unk_1E7414830;
  v17 = *(v0 + 48);
  v11 = v3;
  v18 = v11;
  v19 = *(v0 + 72);
  v12 = [(CNiOSContactFetcher *)v10 executeFetchRequestWithProgressiveResults:v20 completion:v13];
  if (v12)
  {
    [*(v0 + 56) addCancelable:v12];
  }
}

- (void)setLegacyTetheredSyncAnchor:(uint64_t)anchor forKey:
{
  if (anchor)
  {
    v1 = *(anchor + 16);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_15_0();
    v6[2] = __65__CNiOSAddressBookDataMapper_setLegacyTetheredSyncAnchor_forKey___block_invoke;
    v6[3] = &__block_descriptor_48_e9_v16__0_v8l;
    v6[4] = v3;
    v6[5] = v2;
    v4 = v2;
    v5 = [v1 performSynchronousWorkWithInvalidatedAddressBook:v6];
  }
}

- (id)contactWithUserActivityUserInfo:(id)info keysToFetch:(id)fetch
{
  infoCopy = info;
  fetchCopy = fetch;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_5_1();
  if (self)
  {
    addressBook = self->_addressBook;
  }

  else
  {
    addressBook = 0;
  }

  v9 = addressBook;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  v24 = __74__CNiOSAddressBookDataMapper_contactWithUserActivityUserInfo_keysToFetch___block_invoke;
  v25 = &unk_1E74148C8;
  v10 = infoCopy;
  v26 = v10;
  v28 = &v29;
  v11 = fetchCopy;
  v27 = v11;
  v12 = [(CNiOSAddressBook *)v9 performSynchronousWorkWithInvalidatedAddressBook:v23];

  v13 = v30[5];
  OUTLINED_FUNCTION_33(v14, v15, v16, v17, v18, v19, v20, v21);

  return v13;
}

- (id)userActivityUserInfoForContact:(id)contact
{
  contactCopy = contact;
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_2_5();
  v24 = v7;
  v25 = 0;
  if (self)
  {
    addressBook = self->_addressBook;
  }

  else
  {
    addressBook = 0;
  }

  v9 = addressBook;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_15_0();
  v21[2] = __61__CNiOSAddressBookDataMapper_userActivityUserInfoForContact___block_invoke;
  v21[3] = &unk_1E7414150;
  v10 = v3;
  v22 = v10;
  v23 = v4;
  v11 = [(CNiOSAddressBook *)v9 performSynchronousWorkWithInvalidatedAddressBook:v21];

  OUTLINED_FUNCTION_19();
  v13 = v12;

  OUTLINED_FUNCTION_28(v14, v15, v16, v17, v18, v19);

  return v13;
}

- (id)contactIdentifierWithMatchingDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_2_5();
  v24 = v7;
  v25 = 0;
  if (self)
  {
    addressBook = self->_addressBook;
  }

  else
  {
    addressBook = 0;
  }

  v9 = addressBook;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_15_0();
  v21[2] = __70__CNiOSAddressBookDataMapper_contactIdentifierWithMatchingDictionary___block_invoke;
  v21[3] = &unk_1E7414150;
  v10 = v3;
  v22 = v10;
  v23 = v4;
  v11 = [(CNiOSAddressBook *)v9 performSynchronousWorkWithInvalidatedAddressBook:v21];

  OUTLINED_FUNCTION_19();
  v13 = v12;

  OUTLINED_FUNCTION_28(v14, v15, v16, v17, v18, v19);

  return v13;
}

- (uint64_t)copySourceForContainerIdentifier:fromAddressBook:
{
  OUTLINED_FUNCTION_54();
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = v1;
  if (v0 && ((*(*MEMORY[0x1E6996568] + 16))() & 1) == 0)
  {
    v6[0] = v2;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    v4 = ABAddressBookCopySourcesWithUUIDs();
    firstObject = [v4 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (__CFArray)copyChangeTableRowIDsFromChangeIDs:(__CFArray *)Mutable
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (Mutable)
  {
    Mutable = CFArrayCreateMutable(0, 0, 0);
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          CFArrayAppendValue(Mutable, [*(*(&v10 + 1) + 8 * v8++) intValue]);
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  return Mutable;
}

- (BOOL)hasMultipleGroupsOrAccounts
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  if (v3)
  {
    v4 = *(v3 + 16);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  v16 = __57__CNiOSAddressBookDataMapper_hasMultipleGroupsOrAccounts__block_invoke;
  v17 = &unk_1E7414128;
  v18 = v2;
  v7 = [v6 performSynchronousWorkWithInvalidatedAddressBook:v15];

  LOBYTE(v5) = *(v19 + 24);
  OUTLINED_FUNCTION_28(v8, v9, v10, v11, v12, v13);
  return v5;
}

- (BOOL)hasGroups
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  if (v3)
  {
    v4 = *(v3 + 16);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  v16 = __39__CNiOSAddressBookDataMapper_hasGroups__block_invoke;
  v17 = &unk_1E7414128;
  v18 = v2;
  v7 = [v6 performSynchronousWorkWithInvalidatedAddressBook:v15];

  LOBYTE(v5) = *(v19 + 24);
  OUTLINED_FUNCTION_28(v8, v9, v10, v11, v12, v13);
  return v5;
}

- (id)fetchLimitedAccessContactIdentifiersForBundle:(id)bundle
{
  bundleCopy = bundle;
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_2_5();
  v29 = MEMORY[0x1E695E0F0];
  if (self)
  {
    addressBook = self->_addressBook;
  }

  else
  {
    addressBook = 0;
  }

  v7 = addressBook;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_15_0();
  v8 = v3;
  OUTLINED_FUNCTION_46();
  v9 = [OUTLINED_FUNCTION_31() performSynchronousWorkWithInvalidatedAddressBook:?];

  if (v9)
  {
    value = [v9 value];
    if ([value isEqual:MEMORY[0x1E695E118]])
    {
      OUTLINED_FUNCTION_19();
      v12 = v11 == 0;

      if (!v12)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  objc_opt_class();
  v13 = +[CNiOSAddressBookDataMapper os_log];
  if (OUTLINED_FUNCTION_15(v13))
  {
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_22();
    _os_log_error_impl(v23, v24, v25, v26, v27, 0x16u);
  }

LABEL_11:
  OUTLINED_FUNCTION_19();
  v15 = v14;

  OUTLINED_FUNCTION_28(v16, v17, v18, v19, v20, v21);

  return v15;
}

- (id)populateSyncTableForLimitedAccessAboveSequenceNumber:(id)number
{
  numberCopy = number;
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_2_5();
  v29 = MEMORY[0x1E695E0F8];
  if (self)
  {
    addressBook = self->_addressBook;
  }

  else
  {
    addressBook = 0;
  }

  v7 = addressBook;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_15_0();
  v8 = v3;
  OUTLINED_FUNCTION_46();
  v9 = [OUTLINED_FUNCTION_31() performSynchronousWorkWithInvalidatedAddressBook:?];

  if (!v9 || (([v9 value], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqual:", MEMORY[0x1E695E118]), v3) ? (v12 = v11) : (v12 = 0), v10, (v12 & 1) == 0))
  {
    objc_opt_class();
    v13 = +[CNiOSAddressBookDataMapper os_log];
    if (OUTLINED_FUNCTION_15(v13))
    {
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_22();
      _os_log_error_impl(v23, v24, v25, v26, v27, 0x16u);
    }
  }

  OUTLINED_FUNCTION_19();
  v15 = v14;

  OUTLINED_FUNCTION_28(v16, v17, v18, v19, v20, v21);

  return v15;
}

- (void)purgeLimitedAccessRecordsForBundle:(id)bundle
{
  v24 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  if (self)
  {
    addressBook = self->_addressBook;
  }

  else
  {
    addressBook = 0;
  }

  v6 = addressBook;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_15_0();
  v7 = bundleCopy;
  OUTLINED_FUNCTION_46();
  v8 = [OUTLINED_FUNCTION_31() performSynchronousWorkWithInvalidatedAddressBook:?];

  if (v8)
  {
    value = [v8 value];
    if ([value isEqual:MEMORY[0x1E695E118]])
    {
      v10 = *(v19 + 24);

      if (v10)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  objc_opt_class();
  v11 = +[CNiOSAddressBookDataMapper os_log];
  if (OUTLINED_FUNCTION_52(v11))
  {
    *buf = 138412546;
    v21 = bundleCopy;
    v22 = 2112;
    v23 = v8;
    _os_log_error_impl(&dword_1954A0000, &self->super, OS_LOG_TYPE_ERROR, "purgeLimitedAccessRecordsForBundle: %@ failed: %@", buf, 0x16u);
  }

LABEL_11:
  OUTLINED_FUNCTION_28(v12, v13, v14, v15, v16, v17);
}

- (void)updateLimitedAccessTable:(id)table
{
  tableCopy = table;
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_32();
  if (self)
  {
    addressBook = self->_addressBook;
  }

  else
  {
    addressBook = 0;
  }

  v7 = addressBook;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_15_0();
  v8 = v3;
  OUTLINED_FUNCTION_46();
  v9 = [OUTLINED_FUNCTION_31() performSynchronousWorkWithInvalidatedAddressBook:?];

  if (v9)
  {
    value = [v9 value];
    if ([value isEqual:MEMORY[0x1E695E118]])
    {
      v11 = *(v25 + 24);

      if (v11)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  objc_opt_class();
  v12 = +[CNiOSAddressBookDataMapper os_log];
  if (OUTLINED_FUNCTION_15(v12))
  {
    OUTLINED_FUNCTION_26();
    _os_log_error_impl(v19, v20, v21, v22, v23, 0xCu);
  }

LABEL_11:
  OUTLINED_FUNCTION_28(v13, v14, v15, v16, v17, v18);
}

- (id)getLimitedAccessContactsCountForBundle:(id)bundle
{
  bundleCopy = bundle;
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_2_5();
  if (self)
  {
    addressBook = self->_addressBook;
  }

  else
  {
    addressBook = 0;
  }

  v7 = addressBook;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_15_0();
  v8 = v3;
  OUTLINED_FUNCTION_46();
  v9 = [OUTLINED_FUNCTION_31() performSynchronousWorkWithInvalidatedAddressBook:?];

  if (v9)
  {
    value = [v9 value];
    if ([value isEqual:MEMORY[0x1E695E118]])
    {
      OUTLINED_FUNCTION_19();
      v12 = v11 == 0;

      if (!v12)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  objc_opt_class();
  v13 = +[CNiOSAddressBookDataMapper os_log];
  if (OUTLINED_FUNCTION_15(v13))
  {
    OUTLINED_FUNCTION_22();
    _os_log_error_impl(v23, v24, v25, v26, v27, 0xCu);
  }

LABEL_11:
  OUTLINED_FUNCTION_19();
  v15 = v14;

  OUTLINED_FUNCTION_28(v16, v17, v18, v19, v20, v21);

  return v15;
}

- (id)getLimitedAccessLastSyncSequenceNumber:(id *)number
{
  v35 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_27();
  v31 = 0x3032000000;
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_4_2();
  if (v6)
  {
    addressBook = self->_addressBook;
  }

  else
  {
    addressBook = 0;
  }

  v8 = addressBook;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  v28 = __69__CNiOSAddressBookDataMapper_getLimitedAccessLastSyncSequenceNumber___block_invoke;
  v29 = &unk_1E7414128;
  v30 = v3;
  v10 = [v9 performSynchronousWorkWithInvalidatedAddressBook:v27];

  if (v10 && ([v10 value], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqual:", MEMORY[0x1E695E118]), v11, (v12 & 1) != 0))
  {
    v13 = 0;
  }

  else
  {
    objc_opt_class();
    v14 = +[CNiOSAddressBookDataMapper os_log];
    if (OUTLINED_FUNCTION_52(v14))
    {
      v33 = 138412290;
      v34 = v10;
      OUTLINED_FUNCTION_38(&dword_1954A0000, &self->super, v15, "getLimitedAccessLastSyncSequenceNumber failed: %@", &v33);
    }

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNErrorDomain" code:1 userInfo:0];
  }

  OUTLINED_FUNCTION_19();
  v17 = v16;
  v18 = v17;
  if (number && !v17)
  {
    v19 = v13;
    *number = v13;
  }

  OUTLINED_FUNCTION_28(v20, v21, v22, v23, v24, v25);

  return v18;
}

- (id)getWatchLimitedAccessSyncDataStartingAtSequenceNumber:(id)number
{
  numberCopy = number;
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_2_5();
  *(v4 + 40) = objc_alloc_init(CNLimitedAccessSyncData);
  if (self)
  {
    addressBook = self->_addressBook;
  }

  else
  {
    addressBook = 0;
  }

  v8 = addressBook;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_15_0();
  v9 = v3;
  v10 = [OUTLINED_FUNCTION_31() performSynchronousWorkWithInvalidatedAddressBook:?];

  if (!v10 || ([v10 value], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqual:", MEMORY[0x1E695E118]), v11, (v12 & 1) == 0))
  {
    objc_opt_class();
    v13 = +[CNiOSAddressBookDataMapper os_log];
    if (OUTLINED_FUNCTION_15(v13))
    {
      [v9 integerValue];
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_22();
      _os_log_error_impl(v23, v24, v25, v26, v27, 0x16u);
    }
  }

  OUTLINED_FUNCTION_19();
  v15 = v14;

  OUTLINED_FUNCTION_28(v16, v17, v18, v19, v20, v21);

  return v15;
}

- (void)dropAllLimitedAccessRows
{
  v30 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v27 = &v26;
  OUTLINED_FUNCTION_32();
  if (v3)
  {
    addressBook = self->_addressBook;
  }

  else
  {
    addressBook = 0;
  }

  v5 = addressBook;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  v23 = __54__CNiOSAddressBookDataMapper_dropAllLimitedAccessRows__block_invoke;
  v24 = &unk_1E7414128;
  v25 = &v26;
  v7 = [v6 performSynchronousWorkWithInvalidatedAddressBook:v22];

  if (v7)
  {
    value = [v7 value];
    if ([value isEqual:MEMORY[0x1E695E118]])
    {
      v9 = *(v27 + 24);

      if (v9)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  objc_opt_class();
  v10 = +[CNiOSAddressBookDataMapper os_log];
  if (OUTLINED_FUNCTION_15(v10))
  {
    v28 = 138412290;
    v29 = v7;
    OUTLINED_FUNCTION_26();
    _os_log_error_impl(v17, v18, v19, v20, v21, 0xCu);
  }

LABEL_11:
  OUTLINED_FUNCTION_28(v11, v12, v13, v14, v15, v16);
}

- (void)dropAllLimitedAccessRowsAndSyncNotify
{
  v30 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v27 = &v26;
  OUTLINED_FUNCTION_32();
  if (v3)
  {
    addressBook = self->_addressBook;
  }

  else
  {
    addressBook = 0;
  }

  v5 = addressBook;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  v23 = __67__CNiOSAddressBookDataMapper_dropAllLimitedAccessRowsAndSyncNotify__block_invoke;
  v24 = &unk_1E7414128;
  v25 = &v26;
  v7 = [v6 performSynchronousWorkWithInvalidatedAddressBook:v22];

  if (v7)
  {
    value = [v7 value];
    if ([value isEqual:MEMORY[0x1E695E118]])
    {
      v9 = *(v27 + 24);

      if (v9)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  objc_opt_class();
  v10 = +[CNiOSAddressBookDataMapper os_log];
  if (OUTLINED_FUNCTION_15(v10))
  {
    v28 = 138412290;
    v29 = v7;
    OUTLINED_FUNCTION_26();
    _os_log_error_impl(v17, v18, v19, v20, v21, 0xCu);
  }

LABEL_11:
  OUTLINED_FUNCTION_28(v11, v12, v13, v14, v15, v16);
}

- (void)setLimitedAccessTableCurrentSequenceNumber:(id)number
{
  v25 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  if (self)
  {
    addressBook = self->_addressBook;
  }

  else
  {
    addressBook = 0;
  }

  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  v20 = __73__CNiOSAddressBookDataMapper_setLimitedAccessTableCurrentSequenceNumber___block_invoke;
  v21 = &unk_1E74149D8;
  v8 = v7;
  OUTLINED_FUNCTION_45();
  v9 = addressBook;
  v10 = [(CNiOSAddressBook *)v9 performSynchronousWorkWithInvalidatedAddressBook:v19];

  if (!v10 || ([v10 value], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqual:", MEMORY[0x1E695E118]), v11, (v12 & 1) == 0))
  {
    objc_opt_class();
    v13 = +[CNiOSAddressBookDataMapper os_log];
    if (OUTLINED_FUNCTION_15(v13))
    {
      v23 = 138412290;
      v24 = v10;
      OUTLINED_FUNCTION_26();
      _os_log_error_impl(v14, v15, v16, v17, v18, 0xCu);
    }
  }
}

- (BOOL)shouldAnalyzeDatabaseWithError:(id *)error
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  if (v5)
  {
    v6 = *(v5 + 16);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  v20 = __61__CNiOSAddressBookDataMapper_shouldAnalyzeDatabaseWithError___block_invoke;
  v21 = &unk_1E7414128;
  v22 = v3;
  v9 = [v8 performSynchronousWorkWithInvalidatedAddressBook:v19];

  if ([v9 isSuccess])
  {
    v10 = *(v23 + 24);
  }

  else
  {
    error = [v9 error];
    if (error)
    {
      error = error;
      *error = error;
    }

    v10 = 0;
  }

  OUTLINED_FUNCTION_28(v12, v13, v14, v15, v16, v17);
  return v10 & 1;
}

- (BOOL)analyzeDatabaseWithError:(id *)error
{
  if (self)
  {
    self = self->_addressBook;
  }

  v4 = [(CNiOSAddressBookDataMapper *)self performSynchronousWorkWithInvalidatedAddressBook:&__block_literal_global_173_0];
  value = [v4 value];

  if (value)
  {
    value2 = [v4 value];
    v7 = value2;
  }

  else
  {
    value2 = [v4 error];
    if (error)
    {
      value2 = value2;
      v7 = 0;
      *error = value2;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 != 0;
}

void __49__CNiOSAddressBookDataMapper_setMeContact_error___block_invoke_cold_1(id *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [*a1 identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_38(&dword_1954A0000, a2, v4, "No contact with identifier %{public}@ could be found to set as the me card", v5);
}

- (void)removeContactIdentifiersFromLimitedAcessForAllBundles:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_38(&dword_1954A0000, v0, v1, "removeContactIdentifiersFromLimitedAcessForAllBundles failed; id: %@", v2);
}

- (void)_containersMatchingPredicate:(void *)a1 remote:error:.cold.1(void *a1)
{
  v2 = [CNErrorFactory errorWithCode:400];
  if (a1)
  {
    v2 = v2;
    *a1 = v2;
  }
}

void __99__CNiOSAddressBookDataMapper_unregisterChangeHistoryClientIdentifier_forContainerIdentifier_error___block_invoke_cold_1(uint64_t a1)
{
  v2 = [CNiOSAddressBookDataMapper copySourceForContainerIdentifier:fromAddressBook:];
  ABChangeHistoryUnregisterClientForSource();
  if (v2)
  {
    CFRelease(v2);
  }

  *(*(*(a1 + 64) + 8) + 24) = 1;
}

void __69__CNiOSAddressBookDataMapper_executeChangeHistoryClearRequest_error___block_invoke_cold_1(uint64_t a1, id *a2)
{
  v4 = [*a2 containerIdentifier];
  v5 = [CNiOSAddressBookDataMapper copySourceForContainerIdentifier:fromAddressBook:];

  v6 = [*a2 toChangeAnchor];

  v7 = *a2;
  if (v6)
  {
    v8 = [v7 toChangeAnchor];
    [v8 sequenceNumber];
    ABChangeHistoryClearChangesUpToSequenceNumberForClient();

    if (!v5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v9 = [v7 contactChangeIDs];

  if (v9)
  {
    v11 = *(a1 + 40);
    v12 = [*a2 contactChangeIDs];
    v13 = [(CNiOSAddressBookDataMapper *)v11 copyChangeTableRowIDsFromChangeIDs:v12];

    ABChangeHistoryClearEntityChangeTableRowIDsForClient();
    CFRelease(v13);
  }

  v10 = [*a2 groupChangeIDs];

  if (v10)
  {
    v14 = *(a1 + 40);
    v15 = [*a2 groupChangeIDs];
    v16 = [(CNiOSAddressBookDataMapper *)v14 copyChangeTableRowIDsFromChangeIDs:v15];

    ABChangeHistoryClearEntityChangeTableRowIDsForClient();
    CFRelease(v16);
    if (!v5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v5)
  {
LABEL_8:
    CFRelease(v5);
  }

LABEL_9:
  *(*(*(a1 + 56) + 8) + 24) = 1;
}

- (void)applyLimitedAccessSyncEvents:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_38(&dword_1954A0000, v0, v1, "applyLimitedAccessSyncEvents failed: %@", v2);
}

@end