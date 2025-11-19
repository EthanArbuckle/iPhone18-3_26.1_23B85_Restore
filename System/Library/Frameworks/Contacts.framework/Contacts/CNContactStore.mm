@interface CNContactStore
+ (BOOL)eraseAllDataAtLocationWithName:(id)a3 error:(id *)a4;
+ (BOOL)eraseAllDataAtURL:(id)a3 error:(id *)a4;
+ (BOOL)isAccessLimitedForEntityType:(int64_t)a3;
+ (BOOL)isAccessRestrictedForEntityType:(int64_t)a3;
+ (BOOL)isSharedNamePhotoEnabled;
+ (BOOL)isStoreForContactIdentifier:(id)a3;
+ (BOOL)isXPCDataMapperStoreForFavorites:(id)a3;
+ (CNAuthorizationStatus)authorizationStatusForEntityType:(CNEntityType)entityType;
+ (CNContactStore)storeWithDelegateInfo:(id)a3;
+ (CNContactStore)storeWithEnvironment:(id)a3 options:(unint64_t)a4;
+ (CNContactStore)storeWithOptions:(unint64_t)a3;
+ (Class)storeClassWithIdentifier:(id)a3;
+ (id)_contactStoreForPublicAddressBook:(void *)a3;
+ (id)authorizationForCurrentProcess;
+ (id)contactIdentifierFromInternalIdentifier:(id)a3;
+ (id)internalIdentifierFromContactIdentifier:(id)a3;
+ (id)standardLabelsForPropertyWithKey:(id)a3 options:(unint64_t)a4;
+ (id)storeForFamilyMember:(id)a3;
+ (id)storeIdentifier;
+ (id)storeIdentifierFromContactIdentifier:(id)a3;
+ (int64_t)authorizationStatusForEntityType:(int64_t)a3 assumedIdentity:(id)a4;
+ (void)initialize;
- (BOOL)clearChangeHistoryForClientIdentifier:(id)a3 toChangeAnchor:(id)a4 error:(id *)a5;
- (BOOL)enumerateContactsAndMatchInfoWithFetchRequest:(id)a3 error:(id *)a4 usingBlock:(id)a5;
- (BOOL)enumerateContactsWithFetchRequest:(CNContactFetchRequest *)fetchRequest error:(NSError *)error usingBlock:(void *)block;
- (BOOL)enumerateNonUnifiedContactsWithFetchRequest:(id)a3 error:(id *)a4 usingBlock:(id)a5;
- (BOOL)hasAccountFirstSyncCompleted;
- (BOOL)resetSortDataIfNeededWithError:(id *)a3;
- (BOOL)setDefaultAccountIdentifier:(id)a3 error:(id *)a4;
- (BOOL)setDefaultContainer:(id)a3 forAccount:(id)a4 error:(id *)a5;
- (BOOL)setMeContact:(id)a3 error:(id *)a4;
- (BOOL)setMeContact:(id)a3 forContainer:(id)a4 error:(id *)a5;
- (BOOL)supportsSaveRequest:(id)a3;
- (CNContact)unifiedContactWithIdentifier:(NSString *)identifier keysToFetch:(NSArray *)keys error:(NSError *)error;
- (CNContact)unifiedMeContactWithKeysToFetch:(NSArray *)keys error:(NSError *)error;
- (CNContactStore)init;
- (CNContactStore)initWithConfiguration:(id)a3;
- (CNContactStore)initWithEnvironment:(id)a3 options:(unint64_t)a4 managedConfiguration:(id)a5;
- (CNFetchResult)enumeratorForChangeHistoryFetchRequest:(CNChangeHistoryFetchRequest *)request error:(NSError *)error;
- (CNFetchResult)enumeratorForContactFetchRequest:(CNContactFetchRequest *)request error:(NSError *)error;
- (CNResult)currentHistoryAnchor;
- (CNiOSAddressBook)addressBook;
- (id)_contactFromPersonID:(int)a3 keysToFetch:(id)a4;
- (id)_contactFromPublicABPerson:(void *)a3 keysToFetch:(id)a4;
- (id)_executeFetchRequestsWithInfos:(id)a3 unifyResults:(BOOL)a4 keysToFetch:(id)a5 error:(id *)a6;
- (id)_fetchRequestInfosForEmailOrPhoneForContact:(id)a3 additionalRequiredKeys:(id)a4;
- (id)_ios_meContactIdentifierWithError:(id *)a3;
- (id)_labeledValueFromPublicMultiValueIdentifier:(int)a3 contact:(id)a4 key:(id)a5;
- (id)_unifiedMeContactWithKeysToFetch:(uint64_t)a3 error:;
- (id)authorizedKeysForContactKeys:(id)a3;
- (id)contactFromPerson:(void *)a3 mutable:(BOOL)a4;
- (id)contactFromPersonID:(int)a3;
- (id)contactIdentifierFromPersonID:(int)a3;
- (id)contactWithMatchingDictionary:(id)a3 keysToFetch:(id)a4;
- (id)contactsMatchingPropertiesOfContact:(id)a3 unifyResults:(BOOL)a4 keysToFetch:(id)a5 ignoreAvailableKeys:(BOOL)a6 error:(id *)a7;
- (id)countForFetchRequest:(id)a3 error:(id *)a4;
- (id)descriptorForRequiredKeysForMatchingDictionary;
- (id)descriptorForRequiredKeysForUserActivityUserInfo;
- (id)executeFetchRequest:(id)a3 completion:(id)a4;
- (id)executeFetchRequest:(id)a3 error:(id *)a4;
- (id)executeFetchRequestAndCountResults:(void *)a1;
- (id)getLimitedAccessLastSyncSequenceNumber:(id *)a3;
- (id)labeledValueFromMultiValueIdentifier:(int)a3 contact:(id)a4 key:(id)a5;
- (id)mainContactStore;
- (id)policyForContainerWithIdentifier:(id)a3 error:(id *)a4;
- (id)requestAccessForEntityType:(int64_t)a3;
- (id)sectionListOffsetsForSortOrder:(int64_t)a3 error:(id *)a4;
- (id)unifiedMeContactMatchingEmailAddress:(id)a3 keysToFetch:(id)a4 error:(id *)a5;
- (id)unifiedMeContactMatchingEmailAddresses:(id)a3 keysToFetch:(id)a4 error:(id *)a5;
- (int)_publicMultiValueIdentifierFromLabeledValue:(id)a3;
- (void)_publicABPersonFromContact:(id)a3 publicAddressBook:(const void *)a4;
- (void)personFromContact:(id)a3;
- (void)pool_enumerateContactsWithFetchRequest:(void *)a3 error:(void *)a4 usingBlock:;
- (void)requestAccessForEntityType:(CNEntityType)entityType completionHandler:(void *)completionHandler;
- (void)requestAuthorization:(int64_t)a3 entityType:(int64_t)a4 completionHandler:(id)a5;
@end

@implementation CNContactStore

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    +[CNContactStore initialize];
  }
}

- (CNContactStore)init
{
  if ([(CNContactStore *)self isMemberOfClass:objc_opt_class()])
  {
    v3 = objc_alloc_init(CNContactStoreConfiguration);
    v4 = [(CNContactStore *)self initWithConfiguration:v3];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CNContactStore;
    v4 = [(CNContactStore *)&v6 init];
  }

  return v4;
}

uint64_t __48__CNContactStore_authorizationForCurrentProcess__block_invoke()
{
  authorizationForCurrentProcess_cn_once_object_0 = objc_alloc_init(CNAuthorization);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)authorizationForCurrentProcess
{
  objc_opt_self();
  if (authorizationForCurrentProcess_cn_once_token_0 != -1)
  {
    +[CNContactStore authorizationForCurrentProcess];
  }

  v0 = authorizationForCurrentProcess_cn_once_object_0;

  return v0;
}

+ (id)storeIdentifier
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    v4 = 0;
  }

  else
  {
    v4 = NSStringFromClass(a1);
  }

  return v4;
}

+ (id)storeForFamilyMember:(id)a3
{
  v4 = MEMORY[0x1E6996688];
  v5 = a3;
  v6 = [[v4 alloc] initWithFamilyMember:v5];

  v7 = [a1 storeWithDelegateInfo:v6];

  return v7;
}

+ (CNContactStore)storeWithDelegateInfo:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[CNContactsEnvironment currentEnvironment];
  v11[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v7 = [v5 copyWithDelegateInfos:v6];

  v8 = objc_alloc_init(CNContactStoreConfiguration);
  [(CNContactStoreConfiguration *)v8 setEnvironment:v7];
  v9 = [[a1 alloc] initWithConfiguration:v8];

  return v9;
}

+ (BOOL)eraseAllDataAtLocationWithName:(id)a3 error:(id *)a4
{
  v6 = [CNContactsEnvironment baseURLWithDataLocationName:a3];
  if (v6)
  {
    v7 = [a1 eraseAllDataAtURL:v6 error:a4];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

+ (BOOL)eraseAllDataAtURL:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x1E696AC08];
  v6 = a3;
  v7 = objc_alloc_init(v5);
  v13 = 0;
  v8 = [v7 removeItemAtURL:v6 error:&v13];

  v9 = v13;
  if ((v8 & 1) == 0)
  {
    if (![MEMORY[0x1E6996708] isError:v9 errorWithDomain:*MEMORY[0x1E696A250] code:4])
    {
      v10 = 0;
      goto LABEL_6;
    }

    v9 = 0;
  }

  v10 = 1;
LABEL_6:
  v11 = [MEMORY[0x1E6996708] ifResultIsNo:v10 setOutputError:a4 toError:v9];

  return v11;
}

+ (CNContactStore)storeWithOptions:(unint64_t)a3
{
  v5 = +[CNContactsEnvironment currentEnvironment];
  v6 = [a1 storeWithEnvironment:v5 options:a3];

  return v6;
}

+ (CNContactStore)storeWithEnvironment:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithEnvironment:v6 options:a4];

  return v7;
}

+ (Class)storeClassWithIdentifier:(id)a3
{
  if (a3)
  {
    NSClassFromString(a3);
  }

  else
  {
    objc_opt_class();
  }
  v3 = ;

  return v3;
}

+ (id)contactIdentifierFromInternalIdentifier:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = +[CNContact makeIdentifierString];
  }

  v5 = [a1 storeIdentifier];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v5, @"://", v4];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

+ (BOOL)isStoreForContactIdentifier:(id)a3
{
  v4 = [a1 storeIdentifierFromContactIdentifier:a3];
  if (v4)
  {
    v5 = [a1 storeIdentifier];
    v6 = [v4 isEqualToString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)storeIdentifierFromContactIdentifier:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@"://"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 substringToIndex:v4];
  }

  return v5;
}

+ (id)internalIdentifierFromContactIdentifier:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@"://"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v3;
  }

  else
  {
    v6 = [v3 substringFromIndex:v4 + v5];
  }

  v7 = v6;

  return v7;
}

+ (BOOL)isSharedNamePhotoEnabled
{
  v2 = [MEMORY[0x1E69966E8] currentEnvironment];
  v3 = [v2 featureFlags];
  v4 = [v3 isFeatureEnabled:25];

  return v4;
}

- (CNContactStore)initWithEnvironment:(id)a3 options:(unint64_t)a4 managedConfiguration:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = objc_alloc_init(CNContactStoreConfiguration);
  [(CNContactStoreConfiguration *)v10 setIncludeLocalContacts:a4 & 1];
  [(CNContactStoreConfiguration *)v10 setIncludeSuggestedContacts:(a4 >> 1) & 1];
  [(CNContactStoreConfiguration *)v10 setIncludeDonatedContacts:(a4 >> 2) & 1];
  [(CNContactStoreConfiguration *)v10 setIncludeIncludeManagedAppleIDs:(a4 >> 3) & 1];
  [(CNContactStoreConfiguration *)v10 setIncludeAcceptedIntroductions:(a4 >> 5) & 1];
  [(CNContactStoreConfiguration *)v10 setUseInProcessMapperExclusively:(a4 >> 4) & 1];
  [(CNContactStoreConfiguration *)v10 setEnvironment:v9];

  [(CNContactStoreConfiguration *)v10 setManagedConfiguration:v8];
  v11 = [(CNContactStore *)self initWithConfiguration:v10];

  return v11;
}

- (CNContactStore)initWithConfiguration:(id)a3
{
  v36[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 environment];

  if (!v6)
  {
    v29 = MEMORY[0x1E695DF30];
    v30 = *MEMORY[0x1E695D940];
    v31 = MEMORY[0x1E696AEC0];
    v32 = NSStringFromSelector(a2);
    v33 = [v31 stringWithFormat:@"CNContactStoreConfiguration.environment is unexpectedly nil for %@", v32];
    v34 = [v29 exceptionWithName:v30 reason:v33 userInfo:0];
    v35 = v34;

    objc_exception_throw(v34);
  }

  v7 = [MEMORY[0x1E695DF70] array];
  if ([v5 includeAcceptedIntroductions])
  {
    v8 = getCRRecentsDomainAcceptedIntroductions();

    if (v8)
    {
      v9 = [CNCoreRecentsContactStore alloc];
      v10 = getCRRecentsDomainAcceptedIntroductions();
      v36[0] = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
      v12 = [(CNCoreRecentsContactStore *)v9 initWithConfiguration:v5 domains:v11];

      [v7 addObject:v12];
    }
  }

  if ([v5 includeSuggestedContacts])
  {
    v13 = [CNSuggestedContactStore alloc];
    v14 = [v5 environment];
    v15 = [v14 suggestionsService];
    v16 = [v5 environment];
    v17 = [v16 siriIntelligenceSettings];
    v18 = [(CNSuggestedContactStore *)v13 initWithSuggestionsService:v15 siriIntelligenceSettings:v17];

    [v7 addObject:v18];
  }

  if ([v5 includeDonatedContacts])
  {
    v19 = [[CNDataMapperConfiguration alloc] initWithContactStoreConfiguration:v5];
    v20 = [[CNDonationMapper alloc] initWithConfiguration:v19];
    v21 = [[CNDataMapperContactStore alloc] initWithDataMapper:v20 dataMapperConfiguration:v19];
    [v7 addObject:v21];
  }

  if ([v5 includeIncludeManagedAppleIDs])
  {
    v22 = [[CNDataMapperConfiguration alloc] initWithContactStoreConfiguration:v5];
    v23 = [[CNMAIDMapper alloc] initWithConfiguration:v22];
    v24 = [[CNDataMapperContactStore alloc] initWithDataMapper:v23 dataMapperConfiguration:v22];
    [v7 addObject:v24];
  }

  if (([v5 includeLocalContacts] & 1) != 0 || !objc_msgSend(v7, "count"))
  {
    v25 = [[CNDataMapperContactStore alloc] initWithConfiguration:v5];
    [v7 insertObject:v25 atIndex:0];
  }

  if ([v7 count] == 1 && objc_msgSend(v5, "leaveSingleStoresUnwrapped"))
  {
    v26 = [v7 firstObject];
  }

  else
  {
    v26 = [[CNAggregateContactStore alloc] initWithContactStores:v7 configuration:v5];
  }

  p_super = &v26->super;

  return p_super;
}

+ (CNAuthorizationStatus)authorizationStatusForEntityType:(CNEntityType)entityType
{
  if (entityType)
  {
    return 0;
  }

  v4 = +[CNContactStore authorizationForCurrentProcess];
  v5 = [v4 authorizationStatusForEntityType:0];

  return v5;
}

- (void)requestAccessForEntityType:(CNEntityType)entityType completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v7 = [(CNContactStore *)self requestAccessForEntityType:entityType];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__CNContactStore_requestAccessForEntityType_completionHandler___block_invoke;
  v12[3] = &unk_1E7413D70;
  v8 = v6;
  v13 = v8;
  [v7 addSuccessBlock:v12];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__CNContactStore_requestAccessForEntityType_completionHandler___block_invoke_2;
  v10[3] = &unk_1E7413D98;
  v11 = v8;
  v9 = v8;
  [v7 addFailureBlock:v10];
}

- (id)requestAccessForEntityType:(int64_t)a3
{
  v3 = self;
  v4 = CNAbstractMethodException();
  objc_exception_throw(v4);
}

- (CNContact)unifiedContactWithIdentifier:(NSString *)identifier keysToFetch:(NSArray *)keys error:(NSError *)error
{
  v53[1] = *MEMORY[0x1E69E9840];
  v9 = identifier;
  v10 = keys;
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
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __65__CNContactStore_unifiedContactWithIdentifier_keysToFetch_error___block_invoke;
  v51[3] = &__block_descriptor_40_e5_v8__0l;
  v51[4] = v12;
  v16 = [v51 copy];
  v17 = objc_opt_self();
  v18 = _Block_copy(v17);
  [v15 push:v18];

  v19 = [[CNContactFetchRequest alloc] initWithKeysToFetch:v10];
  if (v9)
  {
    v53[0] = v9;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];
  }

  else
  {
    v20 = MEMORY[0x1E695E0F0];
  }

  v21 = [CNContact predicateForContactsWithIdentifiers:v20];
  [(CNContactFetchRequest *)v19 setPredicate:v21];

  if (v9)
  {
  }

  v22 = [[CNAPITriageSession alloc] initWithRequest:v19];
  [(CNAPITriageSession *)v22 open];
  *buf = 0;
  v46 = buf;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__14;
  v49 = __Block_byref_object_dispose__14;
  v50 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v35[6] = &v37;
  v36 = 0;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __65__CNContactStore_unifiedContactWithIdentifier_keysToFetch_error___block_invoke_53;
  v35[3] = &unk_1E7413DC0;
  v35[4] = buf;
  v35[5] = &v41;
  v23 = [(CNContactStore *)self enumerateContactsAndMatchInfoWithFetchRequest:v19 error:&v36 usingBlock:v35];
  v24 = v36;
  v25 = v24;
  if (v23)
  {
    if ((v42[3] & 1) == 0)
    {
      CNSetError(error, 200, 0);
    }

    if (*(v38 + 24) == 1)
    {
      v26 = os_log_create("com.apple.contacts", "data-access-error");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [CNContactStore unifiedContactWithIdentifier:keysToFetch:error:];
      }

      CNSetError(error, 2, 0);
    }

    v27 = (*(*MEMORY[0x1E6996590] + 16))();
    v28 = *(v46 + 5);
    *(v46 + 5) = v27;

    if (error && *error)
    {
      [(CNAPITriageSession *)v22 closeWithError:?];
    }

    else if (*(v46 + 5))
    {
      v52 = *(v46 + 5);
      v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
      [(CNAPITriageSession *)v22 closeWithContacts:v32];
    }

    else
    {
      [(CNAPITriageSession *)v22 close];
    }

    v31 = *(v46 + 5);
  }

  else
  {
    if (!v24)
    {
      v29 = os_log_create("com.apple.contacts", "data-access-error");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [CNContactStore unifiedContactWithIdentifier:keysToFetch:error:];
      }

      v25 = [CNErrorFactory errorWithCode:2];
    }

    [(CNAPITriageSession *)v22 closeWithError:v25];
    if (error)
    {
      v30 = v25;
      v31 = 0;
      *error = v25;
    }

    else
    {
      v31 = 0;
    }
  }

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(buf, 8);

  [v15 popAllWithHandler:&__block_literal_global_61];
  v33 = objc_opt_self();

  return v31;
}

void __65__CNContactStore_unifiedContactWithIdentifier_keysToFetch_error___block_invoke(uint64_t a1)
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

void __65__CNContactStore_unifiedContactWithIdentifier_keysToFetch_error___block_invoke_53(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v7 = *(*(a1 + 32) + 8);
  v10 = *(v7 + 40);
  v8 = (v7 + 40);
  v9 = v10;
  if (v10)
  {
    *v8 = 0;

    *a4 = 1;
    v11 = 48;
  }

  else
  {
    objc_storeStrong(v8, a2);
    v11 = 40;
  }

  *(*(*(a1 + v11) + 8) + 24) = 1;
}

- (id)_ios_meContactIdentifierWithError:(id *)a3
{
  v3 = [(CNContactStore *)self meContactIdentifiers:a3];
  v4 = [v3 firstObject];

  return v4;
}

- (CNContact)unifiedMeContactWithKeysToFetch:(NSArray *)keys error:(NSError *)error
{
  v7 = keys;
  [CNAPITriageLogger setThreadEntryPoint:a2];
  v8 = +[CNAPITriageLogger os_log];
  v9 = os_signpost_id_generate(v8);

  v10 = +[CNAPITriageLogger os_log];
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1954A0000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Fetching", "", buf, 2u);
  }

  v12 = objc_alloc_init(MEMORY[0x1E6996838]);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __56__CNContactStore_unifiedMeContactWithKeysToFetch_error___block_invoke;
  v19[3] = &__block_descriptor_40_e5_v8__0l;
  v19[4] = v9;
  v13 = [v19 copy];
  v14 = objc_opt_self();
  v15 = _Block_copy(v14);
  [v12 push:v15];

  v16 = [(CNContactStore *)self _unifiedMeContactWithKeysToFetch:v7 error:error];
  [v12 popAllWithHandler:&__block_literal_global_64];
  v17 = objc_opt_self();

  return v16;
}

void __56__CNContactStore_unifiedMeContactWithKeysToFetch_error___block_invoke(uint64_t a1)
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

- (id)unifiedMeContactMatchingEmailAddresses:(id)a3 keysToFetch:(id)a4 error:(id *)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(CNContactStore *)self _crossPlatformUnifiedMeContactWithKeysToFetch:a4 error:a5];
  v10 = [MEMORY[0x1E695DFA8] set];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = [v9 emailAddresses];
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      v15 = 0;
      do
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v24 + 1) + 8 * v15) value];
        v17 = [v16 lowercaseString];
        [v10 addObject:v17];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  v18 = MEMORY[0x1E695DFD8];
  v19 = [v8 _cn_map:&__block_literal_global_70];
  v20 = [v18 setWithArray:v19];

  if ([v10 intersectsSet:v20])
  {
    v21 = v9;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  return v21;
}

- (id)unifiedMeContactMatchingEmailAddress:(id)a3 keysToFetch:(id)a4 error:(id *)a5
{
  v13[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    v10 = 0;
  }

  else
  {
    v13[0] = v8;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v10 = [(CNContactStore *)self unifiedMeContactMatchingEmailAddresses:v11 keysToFetch:v9 error:a5];
  }

  return v10;
}

- (BOOL)setMeContact:(id)a3 error:(id *)a4
{
  v5 = [CNErrorFactory errorObject:self doesNotImplementSelector:sel_setMeContact_error_];
  if (a4)
  {
    v5 = v5;
    *a4 = v5;
  }

  return 0;
}

- (BOOL)setMeContact:(id)a3 forContainer:(id)a4 error:(id *)a5
{
  v6 = [CNErrorFactory errorObject:self doesNotImplementSelector:sel_setMeContact_forContainer_error_];
  if (a5)
  {
    v6 = v6;
    *a5 = v6;
  }

  return 0;
}

- (BOOL)enumerateContactsWithFetchRequest:(CNContactFetchRequest *)fetchRequest error:(NSError *)error usingBlock:(void *)block
{
  v9 = fetchRequest;
  v10 = block;
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
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __69__CNContactStore_enumerateContactsWithFetchRequest_error_usingBlock___block_invoke;
  v34[3] = &__block_descriptor_40_e5_v8__0l;
  v34[4] = v12;
  v16 = [v34 copy];
  v17 = objc_opt_self();
  v18 = _Block_copy(v17);
  [v15 push:v18];

  v19 = [(CNContactFetchRequest *)v9 predicate];

  if (!v19 && pthread_main_np() == 1)
  {
    v20 = [MEMORY[0x1E69C75D0] currentProcess];
    if (([v20 isApplication] & 1) == 0)
    {

      goto LABEL_19;
    }

    v21 = [MEMORY[0x1E696AE30] processInfo];
    v22 = [v21 environment];
    v23 = [v22 objectForKeyedSubscript:@"CN_UNIT_TESTING"];
    v24 = v23;
    if (!v23 || ![v23 length] || (objc_msgSend(v24, "_cn_caseInsensitiveIsEqual:", @"NO") & 1) != 0 || (objc_msgSend(v24, "_cn_caseInsensitiveIsEqual:", @"N") & 1) != 0 || (objc_msgSend(v24, "_cn_caseInsensitiveIsEqual:", @"FALSE") & 1) != 0 || (objc_msgSend(v24, "_cn_caseInsensitiveIsEqual:", @"F") & 1) != 0)
    {
    }

    else
    {
      v32 = [v24 isEqual:@"0"];

      if ((v32 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    if (enumerateContactsWithFetchRequest_error_usingBlock__cn_once_token_15 != -1)
    {
      [CNContactStore enumerateContactsWithFetchRequest:error:usingBlock:];
    }

    if (os_log_type_enabled(enumerateContactsWithFetchRequest_error_usingBlock__cn_once_object_15, OS_LOG_TYPE_FAULT))
    {
      [CNContactStore enumerateContactsWithFetchRequest:error:usingBlock:];
    }
  }

LABEL_19:
  v25 = objc_autoreleasePoolPush();
  v33 = 0;
  v26 = [(CNContactStore *)self pool_enumerateContactsWithFetchRequest:v9 error:&v33 usingBlock:v10];
  v27 = v33;
  objc_autoreleasePoolPop(v25);
  if (error)
  {
    v28 = v26;
  }

  else
  {
    v28 = 1;
  }

  if ((v28 & 1) == 0)
  {
    v29 = v27;
    *error = v27;
  }

  [v15 popAllWithHandler:&__block_literal_global_87];
  v30 = objc_opt_self();

  return v26 & 1;
}

void __69__CNContactStore_enumerateContactsWithFetchRequest_error_usingBlock___block_invoke(uint64_t a1)
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

uint64_t __69__CNContactStore_enumerateContactsWithFetchRequest_error_usingBlock___block_invoke_80()
{
  v0 = os_log_create("com.apple.runtime-issues", "Contacts");
  v1 = enumerateContactsWithFetchRequest_error_usingBlock__cn_once_object_15;
  enumerateContactsWithFetchRequest_error_usingBlock__cn_once_object_15 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)pool_enumerateContactsWithFetchRequest:(void *)a3 error:(void *)a4 usingBlock:
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    v9 = [[CNAPITriageSession alloc] initWithRequest:v7];
    [(CNAPITriageSession *)v9 open];
    if ([v7 shouldFailIfAccountNotYetSynced] && (objc_msgSend(a1, "hasAccountFirstSyncCompleted") & 1) == 0)
    {
      [CNContactStore pool_enumerateContactsWithFetchRequest:v9 error:a3 usingBlock:?];
      a1 = 0;
    }

    else
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v25 = 0;
      v21 = 0;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __74__CNContactStore_pool_enumerateContactsWithFetchRequest_error_usingBlock___block_invoke;
      v16[3] = &unk_1E7413E58;
      v10 = v7;
      v17 = v10;
      v11 = v9;
      v18 = v11;
      v19 = v8;
      v20 = &v22;
      a1 = [a1 enumerateContactsAndMatchInfoWithFetchRequest:v10 error:&v21 usingBlock:v16];
      v12 = v21;
      if ((v23[3] & 1) == 0)
      {
        v13 = [(CNAPITriageSession *)v11 logger];
        [v13 didReturnAllResultsForContactFetchRequest:v10];
      }

      if (a1)
      {
        [(CNAPITriageSession *)v11 close];
      }

      else
      {
        [(CNAPITriageSession *)v11 closeWithError:v12];
        if (a3)
        {
          v14 = v12;
          *a3 = v12;
        }
      }

      _Block_object_dispose(&v22, 8);
    }
  }

  return a1;
}

void __74__CNContactStore_pool_enumerateContactsWithFetchRequest_error_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([*(a1 + 32) mutableObjects])
  {
    v7 = [v6 selfOrMutableCopy];
  }

  else
  {
    v7 = 0;
  }

  v8 = [*(a1 + 40) logger];
  [v8 request:*(a1 + 32) containsContact:v6];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__CNContactStore_pool_enumerateContactsWithFetchRequest_error_usingBlock___block_invoke_2;
  v12[3] = &unk_1E7413E30;
  v13 = *(a1 + 40);
  v16 = *(a1 + 48);
  v9 = v7;
  v14 = v9;
  v10 = v6;
  v15 = v10;
  v17 = a4;
  __74__CNContactStore_pool_enumerateContactsWithFetchRequest_error_usingBlock___block_invoke_2(v12);
  if (*a4 == 1)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v11 = [*(a1 + 40) logger];
    [v11 clientStoppedEnumerationForRequest:*(a1 + 32)];
  }
}

void __74__CNContactStore_pool_enumerateContactsWithFetchRequest_error_usingBlock___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) timeProvider];
  [v2 timestamp];
  v4 = v3;

  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __74__CNContactStore_pool_enumerateContactsWithFetchRequest_error_usingBlock___block_invoke_3;
  v16 = &unk_1E7413E08;
  v5 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v5;
  *(&v9 + 1) = *(a1 + 64);
  v17 = v8;
  v18 = v9;
  __74__CNContactStore_pool_enumerateContactsWithFetchRequest_error_usingBlock___block_invoke_3(&v13);
  v10 = [*(a1 + 32) timeProvider];
  [v10 timestamp];
  v12 = v11;

  [*(a1 + 32) addClientCalloutTime:v12 - v4];
}

uint64_t __74__CNContactStore_pool_enumerateContactsWithFetchRequest_error_usingBlock___block_invoke_3(void *a1)
{
  v2 = a1[6];
  v3 = a1[4];
  if (!v3)
  {
    v3 = a1[5];
  }

  return (*(v2 + 16))(v2, v3, a1[7]);
}

- (BOOL)enumerateNonUnifiedContactsWithFetchRequest:(id)a3 error:(id *)a4 usingBlock:(id)a5
{
  v9 = a3;
  v10 = a5;
  if ([v9 unifyResults])
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D930];
    v15 = MEMORY[0x1E696AEC0];
    v16 = NSStringFromSelector(a2);
    v17 = [v15 stringWithFormat:@"Can't set -[CNContactFetchRequest unifyResults] to YES with %@", v16];
    v18 = [v13 exceptionWithName:v14 reason:v17 userInfo:0];
    v19 = v18;

    objc_exception_throw(v18);
  }

  v11 = [(CNContactStore *)self enumerateContactsWithFetchRequest:v9 error:a4 usingBlock:v10];

  return v11;
}

- (BOOL)enumerateContactsAndMatchInfoWithFetchRequest:(id)a3 error:(id *)a4 usingBlock:(id)a5
{
  v6 = [CNErrorFactory errorWithCode:1005, a4, a5];
  if (a4)
  {
    v6 = v6;
    *a4 = v6;
  }

  return 0;
}

- (BOOL)supportsSaveRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 storeIdentifier];
  if (!v5)
  {
    v3 = [objc_opt_class() storeIdentifier];
    if (!v3)
    {
      v8 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v6 = [v4 storeIdentifier];
  v7 = [objc_opt_class() storeIdentifier];
  v8 = [v6 isEqual:v7];

  if (!v5)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v8;
}

- (id)executeFetchRequest:(id)a3 error:(id *)a4
{
  v7 = a3;
  [CNAPITriageLogger setThreadEntryPoint:a2];
  v8 = +[CNAPITriageLogger os_log];
  v9 = os_signpost_id_generate(v8);

  v10 = +[CNAPITriageLogger os_log];
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1954A0000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Fetching", "", buf, 2u);
  }

  v12 = objc_alloc_init(MEMORY[0x1E6996838]);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __44__CNContactStore_executeFetchRequest_error___block_invoke;
  v26[3] = &__block_descriptor_40_e5_v8__0l;
  v26[4] = v9;
  v13 = [v26 copy];
  v14 = objc_opt_self();
  v15 = _Block_copy(v14);
  [v12 push:v15];

  objc_opt_class();
  v16 = v7;
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  if (v18)
  {
    [v18 setResultType:0];
  }

  v19 = [[CNContactStoreFetchExecutor alloc] initWithContactStore:self];
  v20 = [(CNContactStoreFetchExecutor *)v19 executeFetchRequest:v16];
  v21 = [v20 value];

  if (v21)
  {
    v22 = [v20 value];
  }

  else
  {
    v23 = [v20 error];
    if (a4)
    {
      v23 = v23;
      *a4 = v23;
    }

    v22 = 0;
  }

  [v12 popAllWithHandler:&__block_literal_global_95];
  v24 = objc_opt_self();

  return v22;
}

void __44__CNContactStore_executeFetchRequest_error___block_invoke(uint64_t a1)
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

- (id)countForFetchRequest:(id)a3 error:(id *)a4
{
  v7 = a3;
  [CNAPITriageLogger setThreadEntryPoint:a2];
  v8 = +[CNAPITriageLogger os_log];
  v9 = os_signpost_id_generate(v8);

  v10 = +[CNAPITriageLogger os_log];
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1954A0000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Fetching", "", buf, 2u);
  }

  v12 = objc_alloc_init(MEMORY[0x1E6996838]);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __45__CNContactStore_countForFetchRequest_error___block_invoke;
  v27[3] = &__block_descriptor_40_e5_v8__0l;
  v27[4] = v9;
  v13 = [v27 copy];
  v14 = objc_opt_self();
  v15 = _Block_copy(v14);
  [v12 push:v15];

  objc_opt_class();
  v16 = v7;
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  if (v18)
  {
    [v18 setResultType:1];
    v19 = [[CNContactStoreFetchExecutor alloc] initWithContactStore:self];
    v20 = [(CNContactStoreFetchExecutor *)v19 countForFetchRequest:v16];
  }

  else
  {
    v20 = [(CNContactStore *)self executeFetchRequestAndCountResults:v16];
  }

  v21 = v20;
  v22 = [v21 value];

  if (v22)
  {
    v23 = [v21 value];
  }

  else
  {
    v24 = [v21 error];
    if (a4)
    {
      v24 = v24;
      *a4 = v24;
    }

    v23 = 0;
  }

  [v12 popAllWithHandler:&__block_literal_global_101_0];
  v25 = objc_opt_self();

  return v23;
}

void __45__CNContactStore_countForFetchRequest_error___block_invoke(uint64_t a1)
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

- (CNFetchResult)enumeratorForContactFetchRequest:(CNContactFetchRequest *)request error:(NSError *)error
{
  v7 = request;
  [CNAPITriageLogger setThreadEntryPoint:a2];
  v8 = +[CNAPITriageLogger os_log];
  v9 = os_signpost_id_generate(v8);

  v10 = +[CNAPITriageLogger os_log];
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1954A0000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Fetching", "", buf, 2u);
  }

  v12 = objc_alloc_init(MEMORY[0x1E6996838]);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __57__CNContactStore_enumeratorForContactFetchRequest_error___block_invoke;
  v31[3] = &__block_descriptor_40_e5_v8__0l;
  v31[4] = v9;
  v13 = [v31 copy];
  v14 = objc_opt_self();
  v15 = _Block_copy(v14);
  [v12 push:v15];

  v16 = [(CNContactFetchRequest *)v7 predicate];

  if (!v16 && pthread_main_np() == 1)
  {
    v17 = [MEMORY[0x1E69C75D0] currentProcess];
    if (([v17 isApplication] & 1) == 0)
    {

      goto LABEL_19;
    }

    v18 = [MEMORY[0x1E696AE30] processInfo];
    v19 = [v18 environment];
    v20 = [v19 objectForKeyedSubscript:@"CN_UNIT_TESTING"];
    v21 = v20;
    if (!v20 || ![v20 length] || (objc_msgSend(v21, "_cn_caseInsensitiveIsEqual:", @"NO") & 1) != 0 || (objc_msgSend(v21, "_cn_caseInsensitiveIsEqual:", @"N") & 1) != 0 || (objc_msgSend(v21, "_cn_caseInsensitiveIsEqual:", @"FALSE") & 1) != 0 || (objc_msgSend(v21, "_cn_caseInsensitiveIsEqual:", @"F") & 1) != 0)
    {
    }

    else
    {
      v30 = [v21 isEqual:@"0"];

      if ((v30 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    if (enumeratorForContactFetchRequest_error__cn_once_token_29 != -1)
    {
      [CNContactStore enumeratorForContactFetchRequest:error:];
    }

    if (os_log_type_enabled(enumeratorForContactFetchRequest_error__cn_once_object_29, OS_LOG_TYPE_FAULT))
    {
      [CNContactStore enumerateContactsWithFetchRequest:error:usingBlock:];
    }
  }

LABEL_19:
  v22 = [(CNContactStore *)self executeFetchRequest:v7 error:error];
  if (v22)
  {
    v23 = [CNFetchResult alloc];
    v24 = [v22 value];
    v25 = [v24 objectEnumerator];
    v26 = [v22 currentHistoryToken];
    v27 = [(CNFetchResult *)v23 initWithValue:v25 currentHistoryToken:v26];
  }

  else
  {
    v27 = 0;
  }

  [v12 popAllWithHandler:&__block_literal_global_107_0];
  v28 = objc_opt_self();

  return v27;
}

void __57__CNContactStore_enumeratorForContactFetchRequest_error___block_invoke(uint64_t a1)
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

uint64_t __57__CNContactStore_enumeratorForContactFetchRequest_error___block_invoke_102()
{
  v0 = os_log_create("com.apple.runtime-issues", "Contacts");
  v1 = enumeratorForContactFetchRequest_error__cn_once_object_29;
  enumeratorForContactFetchRequest_error__cn_once_object_29 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNFetchResult)enumeratorForChangeHistoryFetchRequest:(CNChangeHistoryFetchRequest *)request error:(NSError *)error
{
  v4 = [(CNContactStore *)self executeFetchRequest:request error:error];
  if (v4)
  {
    v5 = [CNFetchResult alloc];
    v6 = [v4 value];
    v7 = [v6 objectEnumerator];
    v8 = [v4 currentHistoryToken];
    v9 = [(CNFetchResult *)v5 initWithValue:v7 currentHistoryToken:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)executeFetchRequest:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  [CNAPITriageLogger setThreadEntryPoint:a2];
  v9 = +[CNAPITriageLogger os_log];
  v10 = os_signpost_id_generate(v9);

  v11 = +[CNAPITriageLogger os_log];
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1954A0000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "Fetching", "", buf, 2u);
  }

  v13 = objc_alloc_init(MEMORY[0x1E6996838]);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __49__CNContactStore_executeFetchRequest_completion___block_invoke;
  v38[3] = &__block_descriptor_40_e5_v8__0l;
  v38[4] = v10;
  v14 = [v38 copy];
  v15 = objc_opt_self();
  v16 = _Block_copy(v15);
  [v13 push:v16];

  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MEMORY[0x1E695DF90] dictionary];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__CNContactStore_executeFetchRequest_completion___block_invoke_109;
  aBlock[3] = &unk_1E7413E80;
  v19 = v17;
  v36 = v19;
  v20 = v18;
  v37 = v20;
  v21 = _Block_copy(aBlock);
  v28 = MEMORY[0x1E69E9820];
  v29 = 3221225472;
  v30 = __49__CNContactStore_executeFetchRequest_completion___block_invoke_2;
  v31 = &unk_1E7413EA8;
  v34 = v8;
  v22 = v19;
  v32 = v22;
  v23 = v20;
  v33 = v23;
  v24 = _Block_copy(&v28);
  v25 = [(CNContactStore *)self executeFetchRequest:v7 progressiveResults:v21 completion:v24, v28, v29, v30, v31];

  [v13 popAllWithHandler:&__block_literal_global_112];
  v26 = objc_opt_self();

  return v25;
}

void __49__CNContactStore_executeFetchRequest_completion___block_invoke(uint64_t a1)
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

void __49__CNContactStore_executeFetchRequest_completion___block_invoke_109(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v6 count])
  {
    [*(a1 + 32) addObjectsFromArray:v6];
    [*(a1 + 40) addEntriesFromDictionary:v5];
  }
}

void __49__CNContactStore_executeFetchRequest_completion___block_invoke_2(void *a1, uint64_t a2)
{
  v2 = a1[6];
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = a1[6];

    v3(v4, 0, 0, a2);
  }

  else
  {
    v6 = [MEMORY[0x1E695DEC8] arrayWithArray:a1[4]];
    (*(v2 + 16))(v2, v6, a1[5], 0);
  }
}

- (id)policyForContainerWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(CNPolicyDescription);
  [(CNPolicyDescription *)v7 setContainerIdentifier:v6];

  v8 = [(CNContactStore *)self policyWithDescription:v7 error:a4];

  return v8;
}

+ (id)standardLabelsForPropertyWithKey:(id)a3 options:(unint64_t)a4
{
  v5 = a3;
  v6 = +[CN contactPropertiesByKey];
  v7 = [v6 objectForKey:v5];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 standardLabelsWithOptions:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)mainContactStore
{
  v3 = [objc_opt_class() storeIdentifier];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = self;
  }

  return v4;
}

- (BOOL)resetSortDataIfNeededWithError:(id *)a3
{
  v4 = [CNErrorFactory errorObject:self doesNotImplementSelector:sel_resetSortDataIfNeededWithError_];
  if (a3)
  {
    v4 = v4;
    *a3 = v4;
  }

  return 0;
}

- (BOOL)setDefaultAccountIdentifier:(id)a3 error:(id *)a4
{
  v5 = [CNErrorFactory errorObject:self doesNotImplementSelector:sel_setDefaultAccountIdentifier_error_];
  if (a4)
  {
    v5 = v5;
    *a4 = v5;
  }

  return 0;
}

- (id)sectionListOffsetsForSortOrder:(int64_t)a3 error:(id *)a4
{
  v5 = [CNErrorFactory errorObject:self doesNotImplementSelector:sel_sectionListOffsetsForSortOrder_error_];
  if (a4)
  {
    v5 = v5;
    *a4 = v5;
  }

  return 0;
}

- (id)descriptorForRequiredKeysForUserActivityUserInfo
{
  v2 = self;
  v3 = CNAbstractMethodException();
  objc_exception_throw(v3);
}

- (id)descriptorForRequiredKeysForMatchingDictionary
{
  v2 = self;
  v3 = CNAbstractMethodException();
  objc_exception_throw(v3);
}

- (id)contactWithMatchingDictionary:(id)a3 keysToFetch:(id)a4
{
  v6 = a4;
  v7 = [(CNContactStore *)self contactIdentifierWithMatchingDictionary:a3];
  if (v7)
  {
    v8 = [(CNContactStore *)self unifiedContactWithIdentifier:v7 keysToFetch:v6 error:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CNResult)currentHistoryAnchor
{
  v2 = MEMORY[0x1E6996810];
  v3 = [CNErrorFactory errorWithCode:1005];
  v4 = [v2 failureWithError:v3];

  return v4;
}

- (BOOL)clearChangeHistoryForClientIdentifier:(id)a3 toChangeAnchor:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[CNChangeHistoryClearRequest alloc] initWithClientIdentifier:v9];

  [(CNChangeHistoryClearRequest *)v10 setToChangeAnchor:v8];
  LOBYTE(a5) = [(CNContactStore *)self executeChangeHistoryClearRequest:v10 error:a5];

  return a5;
}

+ (BOOL)isAccessRestrictedForEntityType:(int64_t)a3
{
  v4 = +[CNContactStore authorizationForCurrentProcess];
  LOBYTE(a3) = [v4 isAccessRestrictedForEntityType:a3];

  return a3;
}

+ (BOOL)isAccessLimitedForEntityType:(int64_t)a3
{
  v4 = +[CNContactStore authorizationForCurrentProcess];
  v5 = [v4 authorizationStatusForEntityType:a3];

  return v5 == 4;
}

+ (int64_t)authorizationStatusForEntityType:(int64_t)a3 assumedIdentity:(id)a4
{
  v5 = a4;
  v6 = [[CNAuthorization alloc] initWithAssumedIdentity:v5];

  v7 = [(CNAuthorization *)v6 authorizationStatusForEntityType:a3];
  return v7;
}

- (void)requestAuthorization:(int64_t)a3 entityType:(int64_t)a4 completionHandler:(id)a5
{
  v7 = a5;
  if ([objc_opt_class() isAccessRestrictedForEntityType:a4])
  {
    v7[2](v7, 4, 0);
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __68__CNContactStore_requestAuthorization_entityType_completionHandler___block_invoke;
    v8[3] = &unk_1E74130B8;
    v9 = v7;
    [(CNContactStore *)self requestAccessForEntityType:a4 completionHandler:v8];
  }
}

uint64_t __68__CNContactStore_requestAuthorization_entityType_completionHandler___block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = 6;
  }

  else
  {
    v3 = 4;
  }

  return (*(v2 + 16))(v2, v3);
}

- (id)authorizedKeysForContactKeys:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = self;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  objc_opt_class();
  v8 = [(CNContactStore *)v7 mapper];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v11 = [v10 authorizedKeysForContactKeys:v4 error:0];
  }

  else
  {
    v11 = v4;
  }

  v12 = v11;

  return v12;
}

- (BOOL)hasAccountFirstSyncCompleted
{
  containerCache = self->_containerCache;
  if (!containerCache)
  {
    v4 = [[CNContainerCache alloc] initWithContactStore:self];
    v5 = self->_containerCache;
    self->_containerCache = v4;

    containerCache = self->_containerCache;
  }

  v6 = [(CNContainerCache *)containerCache primaryiCloudContainer];
  v7 = [v6 lastSyncDate];
  v8 = v7 != 0;

  return v8;
}

- (id)getLimitedAccessLastSyncSequenceNumber:(id *)a3
{
  v4 = [CNErrorFactory errorWithCode:1];
  if (a3)
  {
    v4 = v4;
    *a3 = v4;
  }

  return 0;
}

- (CNiOSAddressBook)addressBook
{
  v2 = [(CNContactStore *)self iOSMapper];
  v3 = [(CNiOSAddressBookDataMapper *)v2 addressBook];

  return v3;
}

- (BOOL)setDefaultContainer:(id)a3 forAccount:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 1;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__26;
  v30 = __Block_byref_object_dispose__26;
  v31 = 0;
  v10 = [(CNContactStore *)self iOSMapper];
  v11 = [(CNiOSAddressBookDataMapper *)v10 addressBook];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __73__CNContactStore_iOSABUnitTesting__setDefaultContainer_forAccount_error___block_invoke;
  v21 = &unk_1E74165B8;
  v12 = v8;
  v22 = v12;
  v24 = &v32;
  v25 = &v26;
  v13 = v9;
  v23 = v13;
  v14 = [v11 performSynchronousWorkWithInvalidatedAddressBook:&v18];

  if ([v14 isSuccess])
  {
    v15 = *(v33 + 24);
    if (a5 && (v33[3] & 1) == 0)
    {
      v15 = 0;
      *a5 = v27[5];
    }
  }

  else
  {
    v16 = [v14 error];
    if (a5)
    {
      v16 = v16;
      *a5 = v16;
    }

    v15 = 0;
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  return v15 & 1;
}

void __73__CNContactStore_iOSABUnitTesting__setDefaultContainer_forAccount_error___block_invoke(uint64_t a1, const void *a2)
{
  v34[1] = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) identifier];
  v34[0] = v4;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
  v5 = ABAddressBookCopySourcesWithUUIDs();

  if (v5 && CFArrayGetCount(v5) == 1)
  {
    CFArrayGetValueAtIndex(v5, 0);
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    v31 = *(a1 + 32);
    v32 = @"CNInvalidRecords";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
    v33 = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v8 = [CNErrorFactory errorWithCode:200 userInfo:v7];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v11 = ABAddressBookCopyArrayOfAllAccounts();
    v12 = v11;
    if (!v11 || CFArrayGetCount(v11) < 1)
    {
      goto LABEL_16;
    }

    v13 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v12, v13);
      v15 = ABAccountCopyInternalUUID();
      v16 = [*(a1 + 40) identifier];
      v17 = CFEqual(v15, v16);

      if (v15)
      {
        CFRelease(v15);
      }

      if (v17)
      {
        break;
      }

      if (++v13 >= CFArrayGetCount(v12))
      {
        goto LABEL_16;
      }
    }

    v18 = CFRetain(ValueAtIndex);
    if (!v18)
    {
LABEL_16:
      *(*(*(a1 + 48) + 8) + 24) = 0;
      v28 = *(a1 + 40);
      v29 = @"CNInvalidRecords";
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
      v30 = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v21 = [CNErrorFactory errorWithCode:200 userInfo:v20];
      v22 = *(*(a1 + 56) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;

      v18 = 0;
    }

    if (v12)
    {
      CFRelease(v12);
    }
  }

  else
  {
    v18 = 0;
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    error = 0;
    *(*(*(a1 + 48) + 8) + 24) = ABAddressBookSetDefaultSourceForAccount();
    if (*(*(*(a1 + 48) + 8) + 24) != 1 || (*(*(*(a1 + 48) + 8) + 24) = ABAddressBookSave(a2, &error), (*(*(*(a1 + 48) + 8) + 24) & 1) == 0))
    {
      v24 = [CNErrorFactory errorForiOSABError:error];
      v25 = *(*(a1 + 56) + 8);
      v26 = *(v25 + 40);
      *(v25 + 40) = v24;

      if (error)
      {
        CFRelease(error);
      }
    }
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

- (id)contactFromPerson:(void *)a3 mutable:(BOOL)a4
{
  v4 = a4;
  v15[1] = *MEMORY[0x1E69E9840];
  v8 = +[CN contactPropertiesByKey];
  v9 = [v8 allKeys];
  v10 = NSStringFromSelector(a2);
  v11 = [CNContact descriptorWithKeyDescriptors:v9 description:v10];
  v15[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v13 = [(CNContactStore *)self contactFromPerson:a3 keysToFetch:v12 mutable:v4];

  return v13;
}

- (id)contactFromPersonID:(int)a3
{
  v3 = *&a3;
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = +[CN contactPropertiesByKey];
  v7 = [v6 allKeys];
  v8 = NSStringFromSelector(a2);
  v9 = [CNContact descriptorWithKeyDescriptors:v7 description:v8];
  v13[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v11 = [(CNContactStore *)self contactFromPersonID:v3 keysToFetch:v10];

  return v11;
}

- (id)_contactFromPersonID:(int)a3 keysToFetch:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = [[CNContactFetchRequest alloc] initWithKeysToFetch:v6];
  v8 = [CNContact predicateForLegacyIdentifier:v4];
  [(CNContactFetchRequest *)v7 setPredicate:v8];

  [(CNContactFetchRequest *)v7 setUnifyResults:0];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__30;
  v18 = __Block_byref_object_dispose__30;
  v19 = 0;
  v12[4] = &v14;
  v13 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__CNContactStore_iOSABLegacyCompatibility___contactFromPersonID_keysToFetch___block_invoke;
  v12[3] = &unk_1E7412670;
  [(CNContactStore *)self enumerateContactsWithFetchRequest:v7 error:&v13 usingBlock:v12];
  v9 = v13;
  v10 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v10;
}

void __77__CNContactStore_iOSABLegacyCompatibility___contactFromPersonID_keysToFetch___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  if (v4)
  {
    *(v3 + 40) = 0;

    *a3 = 1;
  }

  else
  {
    v7 = [a2 copy];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    MEMORY[0x1EEE66BB8](v7, v9);
  }
}

- (id)contactIdentifierFromPersonID:(int)a3
{
  v3 = *&a3;
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = @"identifier";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v6 = [(CNContactStore *)self _contactFromPersonID:v3 keysToFetch:v5];

  v7 = [v6 identifier];
  v8 = [v7 copy];

  return v8;
}

- (void)personFromContact:(id)a3
{
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  if ([v4 hasBeenPersisted] && ABAddressBookGetAuthorizationStatus() == kABAuthorizationStatusAuthorized)
  {
    v5 = [(CNContactStore *)self iOSMapper];
    v6 = [v4 isUnified];
    v7 = v6;
    if (v6)
    {
      v8 = [v4 linkedContacts];
      v9 = [v8 objectAtIndexedSubscript:0];
      v10 = [v9 identifier];

      if (!v10)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v10 = [v4 identifier];
      if (!v10)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    v11 = [(CNiOSAddressBookDataMapper *)v5 addressBook];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __62__CNContactStore_iOSABLegacyCompatibility__personFromContact___block_invoke;
    v15[3] = &unk_1E7417000;
    v17 = &v19;
    v16 = v10;
    v18 = v7;
    v12 = [v11 performSynchronousWorkWithInvalidatedAddressBook:v15];

    goto LABEL_8;
  }

LABEL_9:
  v13 = v20[3];
  if (!v13)
  {
    if ([v4 isUnified])
    {
      v13 = v20[3];
    }

    else
    {
      v13 = [v4 detachedPerson];
      v20[3] = v13;
    }
  }

  _Block_object_dispose(&v19, 8);

  return v13;
}

const void *__62__CNContactStore_iOSABLegacyCompatibility__personFromContact___block_invoke(uint64_t a1)
{
  v2 = ABAddressBookCopyPersonMatchingInternalUUID();
  if (v2)
  {
    v2 = CFAutorelease(v2);
  }

  *(*(*(a1 + 40) + 8) + 24) = v2;
  result = *(*(*(a1 + 40) + 8) + 24);
  if (result && *(a1 + 48) == 1)
  {
    result = ABPersonCreateUnifiedPerson();
    if (result)
    {
      result = CFAutorelease(result);
    }

    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (id)labeledValueFromMultiValueIdentifier:(int)a3 contact:(id)a4 key:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = +[CN contactPropertiesByKey];
  v10 = [v9 objectForKeyedSubscript:v7];

  v11 = [v10 CNValueForContact:v8];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __93__CNContactStore_iOSABLegacyCompatibility__labeledValueFromMultiValueIdentifier_contact_key___block_invoke;
  v14[3] = &__block_descriptor_36_e24_B16__0__CNLabeledValue_8l;
  v15 = a3;
  v12 = [v11 _cn_firstObjectPassingTest:v14];

  return v12;
}

- (id)_fetchRequestInfosForEmailOrPhoneForContact:(id)a3 additionalRequiredKeys:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  if ([v5 isKeyAvailable:@"emailAddresses"])
  {
    v8 = [v5 emailAddresses];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __104__CNContactStore_ElaborateSearches___fetchRequestInfosForEmailOrPhoneForContact_additionalRequiredKeys___block_invoke;
    v18[3] = &unk_1E7417328;
    v19 = v7;
    v20 = v6;
    [v8 enumerateObjectsUsingBlock:v18];
  }

  if ([v5 isKeyAvailable:@"phoneNumbers"])
  {
    v9 = [v5 phoneNumbers];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __104__CNContactStore_ElaborateSearches___fetchRequestInfosForEmailOrPhoneForContact_additionalRequiredKeys___block_invoke_2;
    v15 = &unk_1E7417328;
    v16 = v7;
    v17 = v6;
    [v9 enumerateObjectsUsingBlock:&v12];
  }

  v10 = [v7 copy];

  return v10;
}

void __104__CNContactStore_ElaborateSearches___fetchRequestInfosForEmailOrPhoneForContact_additionalRequiredKeys___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (([v7 isSuggested] & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = [v7 value];
    v5 = [CNContact predicateForContactsMatchingEmailAddress:v4];
    v6 = [_CNContactMatchingFetchRequestInfos fetchRequestInfoForPredicate:v5 properties:0];
    [v3 addObject:v6];

    [*(a1 + 40) addObject:@"emailAddresses"];
  }
}

void __104__CNContactStore_ElaborateSearches___fetchRequestInfosForEmailOrPhoneForContact_additionalRequiredKeys___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  if (([v7 isSuggested] & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = [v7 value];
    v5 = [CNContact predicateForContactsMatchingPhoneNumber:v4];
    v6 = [_CNContactMatchingFetchRequestInfos fetchRequestInfoForPredicate:v5 properties:0];
    [v3 addObject:v6];

    [*(a1 + 40) addObject:@"phoneNumbers"];
  }
}

- (id)_executeFetchRequestsWithInfos:(id)a3 unifyResults:(BOOL)a4 keysToFetch:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__31;
  v32 = __Block_byref_object_dispose__31;
  v33 = [MEMORY[0x1E695DFA0] orderedSet];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__31;
  v26 = __Block_byref_object_dispose__31;
  v27 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __99__CNContactStore_ElaborateSearches___executeFetchRequestsWithInfos_unifyResults_keysToFetch_error___block_invoke;
  v16[3] = &unk_1E7417378;
  v12 = v11;
  v21 = a4;
  v17 = v12;
  v18 = self;
  v19 = &v22;
  v20 = &v28;
  [v10 enumerateObjectsUsingBlock:v16];
  if (a6)
  {
    v13 = v23[5];
    if (v13)
    {
      *a6 = v13;
    }
  }

  v14 = [v29[5] copy];

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v14;
}

void __99__CNContactStore_ElaborateSearches___executeFetchRequestsWithInfos_unifyResults_keysToFetch_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [[CNContactFetchRequest alloc] initWithKeysToFetch:*(a1 + 32)];
  [(CNContactFetchRequest *)v7 setUnifyResults:*(a1 + 64)];
  v8 = [v6 predicate];

  [(CNContactFetchRequest *)v7 setPredicate:v8];
  v9 = *(a1 + 40);
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __99__CNContactStore_ElaborateSearches___executeFetchRequestsWithInfos_unifyResults_keysToFetch_error___block_invoke_2;
  v14[3] = &unk_1E7417350;
  v14[4] = *(a1 + 56);
  obj = v11;
  LOBYTE(v8) = [v9 enumerateContactsAndMatchInfoWithFetchRequest:v7 error:&obj usingBlock:v14];
  objc_storeStrong((v10 + 40), obj);
  if ((v8 & 1) == 0)
  {
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = 0;

    *a4 = 1;
  }
}

- (id)contactsMatchingPropertiesOfContact:(id)a3 unifyResults:(BOOL)a4 keysToFetch:(id)a5 ignoreAvailableKeys:(BOOL)a6 error:(id *)a7
{
  v10 = a4;
  v29[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = [MEMORY[0x1E695DF70] array];
  v15 = [MEMORY[0x1E695DF70] array];
  if ([v12 hasBeenPersisted])
  {
    if (!a6 && [v12 areKeysAvailable:v13])
    {
      v16 = [MEMORY[0x1E695DFB8] orderedSetWithObject:v12];
      goto LABEL_17;
    }

    v28 = v10;
    v18 = a7;
    v19 = [v12 identifier];
    v29[0] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    v21 = [CNContact predicateForContactsWithIdentifiers:v20];
    v22 = [_CNContactMatchingFetchRequestInfos fetchRequestInfoForPredicate:v21 properties:0];
    [v14 addObject:v22];

    a7 = v18;
    v10 = v28;
  }

  else
  {
    v17 = [(CNContactStore *)self _fetchRequestInfosForEmailOrPhoneForContact:v12 additionalRequiredKeys:v15];
    [v14 addObjectsFromArray:v17];
  }

  v23 = [v13 arrayByAddingObjectsFromArray:v15];
  if (![v14 count])
  {
    goto LABEL_13;
  }

  v24 = [(CNContactStore *)self _executeFetchRequestsWithInfos:v14 unifyResults:v10 keysToFetch:v23 error:a7];
  v16 = v24;
  if (v24)
  {
    if ([v24 count])
    {
      v25 = v16;
      goto LABEL_11;
    }

LABEL_13:
    if ([v12 areKeysAvailable:v23])
    {
      v16 = [MEMORY[0x1E695DFB8] orderedSetWithObject:v12];
    }

    else
    {
      v26 = [CNContact newContactWithPropertyKeys:v23 withValuesFromContact:v12];
      v16 = [MEMORY[0x1E695DFB8] orderedSetWithObject:v26];
    }

    goto LABEL_16;
  }

LABEL_11:

LABEL_16:
LABEL_17:

  return v16;
}

- (id)_contactFromPublicABPerson:(void *)a3 keysToFetch:(id)a4
{
  v5 = a4;
  v6 = [getABSPublicABCNCompatibilityClass_0() contactFromPublicABPerson:a3 keysToFetch:v5];

  return v6;
}

- (void)_publicABPersonFromContact:(id)a3 publicAddressBook:(const void *)a4
{
  v6 = a3;
  v7 = [getABSPublicABCNCompatibilityClass_0() publicABPersonFromContact:v6 contactStore:self publicAddressBook:a4];

  return v7;
}

- (int)_publicMultiValueIdentifierFromLabeledValue:(id)a3
{
  v4 = a3;
  LODWORD(self) = [getABSPublicABCNCompatibilityClass_0() publicMultiValueIdentifierFromLabeledValue:v4 contactStore:self];

  return self;
}

- (id)_labeledValueFromPublicMultiValueIdentifier:(int)a3 contact:(id)a4 key:(id)a5
{
  v6 = *&a3;
  v8 = a5;
  v9 = a4;
  v10 = [getABSPublicABCNCompatibilityClass_0() labeledValueFromPublicMultiValueIdentifier:v6 contact:v9 key:v8 contactStore:self];

  return v10;
}

+ (id)_contactStoreForPublicAddressBook:(void *)a3
{
  if (a3)
  {
    v4 = [getABSPublicABCNCompatibilityClass_0() contactStoreForPublicAddressBook:a3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)isXPCDataMapperStoreForFavorites:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [v6 mapper];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (id)_unifiedMeContactWithKeysToFetch:(uint64_t)a3 error:
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a1)
  {
    v6 = [a1 meContactIdentifiers:a3];
    if ([v6 count] > 1)
    {
      v34 = v5;
      v8 = [a1 defaultContainerIdentifier];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v33 = v6;
      v9 = v6;
      v28 = [v9 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v28)
      {
        v10 = 0;
        v7 = 0;
        v11 = *v42;
        v12 = 0x1E7410000uLL;
        v31 = a1;
        v32 = a3;
        v30 = v9;
        v27 = *v42;
        do
        {
          v13 = 0;
          do
          {
            if (*v42 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v29 = v13;
            v36 = *(*(&v41 + 1) + 8 * v13);
            v35 = [*(v12 + 1632) predicateForContainerOfContactWithIdentifier:v27];
            v14 = [a1 containersMatchingPredicate:? error:?];
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            v40 = 0u;
            v15 = v14;
            v16 = [v15 countByEnumeratingWithState:&v37 objects:v45 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v38;
              while (2)
              {
                for (i = 0; i != v17; ++i)
                {
                  if (*v38 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v20 = *(*(&v37 + 1) + 8 * i);
                  v21 = [v20 identifier];
                  v22 = [v21 isEqualToString:v8];

                  if (v22)
                  {
                    v5 = v34;
                    v25 = [v31 unifiedContactWithIdentifier:v36 keysToFetch:v34 error:v32];

                    v6 = v33;
                    goto LABEL_35;
                  }

                  if ([v20 type] == 1)
                  {
                    v23 = 2;
                  }

                  else if ([v20 type] == 2)
                  {
                    v23 = 3;
                  }

                  else if ([v20 type] == 3)
                  {
                    v23 = 4;
                  }

                  else
                  {
                    v23 = 1;
                  }

                  if (v23 > v10)
                  {
                    v24 = v36;

                    v10 = v23;
                    v7 = v24;
                  }
                }

                v17 = [v15 countByEnumeratingWithState:&v37 objects:v45 count:16];
                if (v17)
                {
                  continue;
                }

                break;
              }
            }

            v13 = v29 + 1;
            a1 = v31;
            a3 = v32;
            v9 = v30;
            v11 = v27;
            v12 = 0x1E7410000;
          }

          while (v29 + 1 != v28);
          v28 = [v30 countByEnumeratingWithState:&v41 objects:v46 count:16];
        }

        while (v28);
      }

      else
      {
        v7 = 0;
      }

      v6 = v33;
      v5 = v34;
    }

    else
    {
      v7 = [v6 firstObject];
    }

    if ((*(*MEMORY[0x1E6996568] + 16))())
    {
      v25 = 0;
    }

    else
    {
      v25 = [a1 unifiedContactWithIdentifier:v7 keysToFetch:v5 error:a3];
    }

LABEL_35:
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)executeFetchRequestAndCountResults:(void *)a1
{
  if (a1)
  {
    v12 = 0;
    v2 = [a1 executeFetchRequest:a2 error:&v12];
    v3 = v12;
    if (v3)
    {
      v4 = [MEMORY[0x1E6996810] failureWithError:v3];
    }

    else
    {
      v5 = [CNFetchResult alloc];
      v6 = MEMORY[0x1E696AD98];
      v7 = [v2 value];
      v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
      v9 = [v2 currentHistoryToken];
      v10 = [(CNFetchResult *)v5 initWithValue:v8 currentHistoryToken:v9];

      v4 = [MEMORY[0x1E6996810] successWithValue:v10];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)pool_enumerateContactsWithFetchRequest:(void *)a1 error:(void *)a2 usingBlock:.cold.1(void *a1, void *a2)
{
  v4 = [CNErrorFactory errorWithCode:1007];
  [a1 closeWithError:?];
  if (a2)
  {
    *a2 = v4;
  }
}

@end