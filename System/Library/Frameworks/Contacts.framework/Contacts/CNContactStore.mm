@interface CNContactStore
+ (BOOL)eraseAllDataAtLocationWithName:(id)name error:(id *)error;
+ (BOOL)eraseAllDataAtURL:(id)l error:(id *)error;
+ (BOOL)isAccessLimitedForEntityType:(int64_t)type;
+ (BOOL)isAccessRestrictedForEntityType:(int64_t)type;
+ (BOOL)isSharedNamePhotoEnabled;
+ (BOOL)isStoreForContactIdentifier:(id)identifier;
+ (BOOL)isXPCDataMapperStoreForFavorites:(id)favorites;
+ (CNAuthorizationStatus)authorizationStatusForEntityType:(CNEntityType)entityType;
+ (CNContactStore)storeWithDelegateInfo:(id)info;
+ (CNContactStore)storeWithEnvironment:(id)environment options:(unint64_t)options;
+ (CNContactStore)storeWithOptions:(unint64_t)options;
+ (Class)storeClassWithIdentifier:(id)identifier;
+ (id)_contactStoreForPublicAddressBook:(void *)book;
+ (id)authorizationForCurrentProcess;
+ (id)contactIdentifierFromInternalIdentifier:(id)identifier;
+ (id)internalIdentifierFromContactIdentifier:(id)identifier;
+ (id)standardLabelsForPropertyWithKey:(id)key options:(unint64_t)options;
+ (id)storeForFamilyMember:(id)member;
+ (id)storeIdentifier;
+ (id)storeIdentifierFromContactIdentifier:(id)identifier;
+ (int64_t)authorizationStatusForEntityType:(int64_t)type assumedIdentity:(id)identity;
+ (void)initialize;
- (BOOL)clearChangeHistoryForClientIdentifier:(id)identifier toChangeAnchor:(id)anchor error:(id *)error;
- (BOOL)enumerateContactsAndMatchInfoWithFetchRequest:(id)request error:(id *)error usingBlock:(id)block;
- (BOOL)enumerateContactsWithFetchRequest:(CNContactFetchRequest *)fetchRequest error:(NSError *)error usingBlock:(void *)block;
- (BOOL)enumerateNonUnifiedContactsWithFetchRequest:(id)request error:(id *)error usingBlock:(id)block;
- (BOOL)hasAccountFirstSyncCompleted;
- (BOOL)resetSortDataIfNeededWithError:(id *)error;
- (BOOL)setDefaultAccountIdentifier:(id)identifier error:(id *)error;
- (BOOL)setDefaultContainer:(id)container forAccount:(id)account error:(id *)error;
- (BOOL)setMeContact:(id)contact error:(id *)error;
- (BOOL)setMeContact:(id)contact forContainer:(id)container error:(id *)error;
- (BOOL)supportsSaveRequest:(id)request;
- (CNContact)unifiedContactWithIdentifier:(NSString *)identifier keysToFetch:(NSArray *)keys error:(NSError *)error;
- (CNContact)unifiedMeContactWithKeysToFetch:(NSArray *)keys error:(NSError *)error;
- (CNContactStore)init;
- (CNContactStore)initWithConfiguration:(id)configuration;
- (CNContactStore)initWithEnvironment:(id)environment options:(unint64_t)options managedConfiguration:(id)configuration;
- (CNFetchResult)enumeratorForChangeHistoryFetchRequest:(CNChangeHistoryFetchRequest *)request error:(NSError *)error;
- (CNFetchResult)enumeratorForContactFetchRequest:(CNContactFetchRequest *)request error:(NSError *)error;
- (CNResult)currentHistoryAnchor;
- (CNiOSAddressBook)addressBook;
- (id)_contactFromPersonID:(int)d keysToFetch:(id)fetch;
- (id)_contactFromPublicABPerson:(void *)person keysToFetch:(id)fetch;
- (id)_executeFetchRequestsWithInfos:(id)infos unifyResults:(BOOL)results keysToFetch:(id)fetch error:(id *)error;
- (id)_fetchRequestInfosForEmailOrPhoneForContact:(id)contact additionalRequiredKeys:(id)keys;
- (id)_ios_meContactIdentifierWithError:(id *)error;
- (id)_labeledValueFromPublicMultiValueIdentifier:(int)identifier contact:(id)contact key:(id)key;
- (id)_unifiedMeContactWithKeysToFetch:(uint64_t)fetch error:;
- (id)authorizedKeysForContactKeys:(id)keys;
- (id)contactFromPerson:(void *)person mutable:(BOOL)mutable;
- (id)contactFromPersonID:(int)d;
- (id)contactIdentifierFromPersonID:(int)d;
- (id)contactWithMatchingDictionary:(id)dictionary keysToFetch:(id)fetch;
- (id)contactsMatchingPropertiesOfContact:(id)contact unifyResults:(BOOL)results keysToFetch:(id)fetch ignoreAvailableKeys:(BOOL)keys error:(id *)error;
- (id)countForFetchRequest:(id)request error:(id *)error;
- (id)descriptorForRequiredKeysForMatchingDictionary;
- (id)descriptorForRequiredKeysForUserActivityUserInfo;
- (id)executeFetchRequest:(id)request completion:(id)completion;
- (id)executeFetchRequest:(id)request error:(id *)error;
- (id)executeFetchRequestAndCountResults:(void *)results;
- (id)getLimitedAccessLastSyncSequenceNumber:(id *)number;
- (id)labeledValueFromMultiValueIdentifier:(int)identifier contact:(id)contact key:(id)key;
- (id)mainContactStore;
- (id)policyForContainerWithIdentifier:(id)identifier error:(id *)error;
- (id)requestAccessForEntityType:(int64_t)type;
- (id)sectionListOffsetsForSortOrder:(int64_t)order error:(id *)error;
- (id)unifiedMeContactMatchingEmailAddress:(id)address keysToFetch:(id)fetch error:(id *)error;
- (id)unifiedMeContactMatchingEmailAddresses:(id)addresses keysToFetch:(id)fetch error:(id *)error;
- (int)_publicMultiValueIdentifierFromLabeledValue:(id)value;
- (void)_publicABPersonFromContact:(id)contact publicAddressBook:(const void *)book;
- (void)personFromContact:(id)contact;
- (void)pool_enumerateContactsWithFetchRequest:(void *)request error:(void *)error usingBlock:;
- (void)requestAccessForEntityType:(CNEntityType)entityType completionHandler:(void *)completionHandler;
- (void)requestAuthorization:(int64_t)authorization entityType:(int64_t)type completionHandler:(id)handler;
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
    v4 = NSStringFromClass(self);
  }

  return v4;
}

+ (id)storeForFamilyMember:(id)member
{
  v4 = MEMORY[0x1E6996688];
  memberCopy = member;
  v6 = [[v4 alloc] initWithFamilyMember:memberCopy];

  v7 = [self storeWithDelegateInfo:v6];

  return v7;
}

+ (CNContactStore)storeWithDelegateInfo:(id)info
{
  v11[1] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v5 = +[CNContactsEnvironment currentEnvironment];
  v11[0] = infoCopy;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v7 = [v5 copyWithDelegateInfos:v6];

  v8 = objc_alloc_init(CNContactStoreConfiguration);
  [(CNContactStoreConfiguration *)v8 setEnvironment:v7];
  v9 = [[self alloc] initWithConfiguration:v8];

  return v9;
}

+ (BOOL)eraseAllDataAtLocationWithName:(id)name error:(id *)error
{
  v6 = [CNContactsEnvironment baseURLWithDataLocationName:name];
  if (v6)
  {
    v7 = [self eraseAllDataAtURL:v6 error:error];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

+ (BOOL)eraseAllDataAtURL:(id)l error:(id *)error
{
  v5 = MEMORY[0x1E696AC08];
  lCopy = l;
  v7 = objc_alloc_init(v5);
  v13 = 0;
  v8 = [v7 removeItemAtURL:lCopy error:&v13];

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
  v11 = [MEMORY[0x1E6996708] ifResultIsNo:v10 setOutputError:error toError:v9];

  return v11;
}

+ (CNContactStore)storeWithOptions:(unint64_t)options
{
  v5 = +[CNContactsEnvironment currentEnvironment];
  v6 = [self storeWithEnvironment:v5 options:options];

  return v6;
}

+ (CNContactStore)storeWithEnvironment:(id)environment options:(unint64_t)options
{
  environmentCopy = environment;
  v7 = [[self alloc] initWithEnvironment:environmentCopy options:options];

  return v7;
}

+ (Class)storeClassWithIdentifier:(id)identifier
{
  if (identifier)
  {
    NSClassFromString(identifier);
  }

  else
  {
    objc_opt_class();
  }
  v3 = ;

  return v3;
}

+ (id)contactIdentifierFromInternalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    identifierCopy = +[CNContact makeIdentifierString];
  }

  storeIdentifier = [self storeIdentifier];
  if (storeIdentifier)
  {
    identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", storeIdentifier, @"://", identifierCopy];
  }

  else
  {
    identifierCopy = identifierCopy;
  }

  v7 = identifierCopy;

  return v7;
}

+ (BOOL)isStoreForContactIdentifier:(id)identifier
{
  v4 = [self storeIdentifierFromContactIdentifier:identifier];
  if (v4)
  {
    storeIdentifier = [self storeIdentifier];
    v6 = [v4 isEqualToString:storeIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)storeIdentifierFromContactIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [identifierCopy rangeOfString:@"://"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [identifierCopy substringToIndex:v4];
  }

  return v5;
}

+ (id)internalIdentifierFromContactIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [identifierCopy rangeOfString:@"://"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = identifierCopy;
  }

  else
  {
    v6 = [identifierCopy substringFromIndex:v4 + v5];
  }

  v7 = v6;

  return v7;
}

+ (BOOL)isSharedNamePhotoEnabled
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v4 = [featureFlags isFeatureEnabled:25];

  return v4;
}

- (CNContactStore)initWithEnvironment:(id)environment options:(unint64_t)options managedConfiguration:(id)configuration
{
  configurationCopy = configuration;
  environmentCopy = environment;
  v10 = objc_alloc_init(CNContactStoreConfiguration);
  [(CNContactStoreConfiguration *)v10 setIncludeLocalContacts:options & 1];
  [(CNContactStoreConfiguration *)v10 setIncludeSuggestedContacts:(options >> 1) & 1];
  [(CNContactStoreConfiguration *)v10 setIncludeDonatedContacts:(options >> 2) & 1];
  [(CNContactStoreConfiguration *)v10 setIncludeIncludeManagedAppleIDs:(options >> 3) & 1];
  [(CNContactStoreConfiguration *)v10 setIncludeAcceptedIntroductions:(options >> 5) & 1];
  [(CNContactStoreConfiguration *)v10 setUseInProcessMapperExclusively:(options >> 4) & 1];
  [(CNContactStoreConfiguration *)v10 setEnvironment:environmentCopy];

  [(CNContactStoreConfiguration *)v10 setManagedConfiguration:configurationCopy];
  v11 = [(CNContactStore *)self initWithConfiguration:v10];

  return v11;
}

- (CNContactStore)initWithConfiguration:(id)configuration
{
  v36[1] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  environment = [configurationCopy environment];

  if (!environment)
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

  array = [MEMORY[0x1E695DF70] array];
  if ([configurationCopy includeAcceptedIntroductions])
  {
    v8 = getCRRecentsDomainAcceptedIntroductions();

    if (v8)
    {
      v9 = [CNCoreRecentsContactStore alloc];
      v10 = getCRRecentsDomainAcceptedIntroductions();
      v36[0] = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
      v12 = [(CNCoreRecentsContactStore *)v9 initWithConfiguration:configurationCopy domains:v11];

      [array addObject:v12];
    }
  }

  if ([configurationCopy includeSuggestedContacts])
  {
    v13 = [CNSuggestedContactStore alloc];
    environment2 = [configurationCopy environment];
    suggestionsService = [environment2 suggestionsService];
    environment3 = [configurationCopy environment];
    siriIntelligenceSettings = [environment3 siriIntelligenceSettings];
    v18 = [(CNSuggestedContactStore *)v13 initWithSuggestionsService:suggestionsService siriIntelligenceSettings:siriIntelligenceSettings];

    [array addObject:v18];
  }

  if ([configurationCopy includeDonatedContacts])
  {
    v19 = [[CNDataMapperConfiguration alloc] initWithContactStoreConfiguration:configurationCopy];
    v20 = [[CNDonationMapper alloc] initWithConfiguration:v19];
    v21 = [[CNDataMapperContactStore alloc] initWithDataMapper:v20 dataMapperConfiguration:v19];
    [array addObject:v21];
  }

  if ([configurationCopy includeIncludeManagedAppleIDs])
  {
    v22 = [[CNDataMapperConfiguration alloc] initWithContactStoreConfiguration:configurationCopy];
    v23 = [[CNMAIDMapper alloc] initWithConfiguration:v22];
    v24 = [[CNDataMapperContactStore alloc] initWithDataMapper:v23 dataMapperConfiguration:v22];
    [array addObject:v24];
  }

  if (([configurationCopy includeLocalContacts] & 1) != 0 || !objc_msgSend(array, "count"))
  {
    v25 = [[CNDataMapperContactStore alloc] initWithConfiguration:configurationCopy];
    [array insertObject:v25 atIndex:0];
  }

  if ([array count] == 1 && objc_msgSend(configurationCopy, "leaveSingleStoresUnwrapped"))
  {
    firstObject = [array firstObject];
  }

  else
  {
    firstObject = [[CNAggregateContactStore alloc] initWithContactStores:array configuration:configurationCopy];
  }

  p_super = &firstObject->super;

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

- (id)requestAccessForEntityType:(int64_t)type
{
  selfCopy = self;
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

- (id)_ios_meContactIdentifierWithError:(id *)error
{
  v3 = [(CNContactStore *)self meContactIdentifiers:error];
  firstObject = [v3 firstObject];

  return firstObject;
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

- (id)unifiedMeContactMatchingEmailAddresses:(id)addresses keysToFetch:(id)fetch error:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  addressesCopy = addresses;
  v9 = [(CNContactStore *)self _crossPlatformUnifiedMeContactWithKeysToFetch:fetch error:error];
  v10 = [MEMORY[0x1E695DFA8] set];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  emailAddresses = [v9 emailAddresses];
  v12 = [emailAddresses countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(emailAddresses);
        }

        value = [*(*(&v24 + 1) + 8 * v15) value];
        lowercaseString = [value lowercaseString];
        [v10 addObject:lowercaseString];

        ++v15;
      }

      while (v13 != v15);
      v13 = [emailAddresses countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  v18 = MEMORY[0x1E695DFD8];
  v19 = [addressesCopy _cn_map:&__block_literal_global_70];
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

- (id)unifiedMeContactMatchingEmailAddress:(id)address keysToFetch:(id)fetch error:(id *)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  addressCopy = address;
  fetchCopy = fetch;
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    v10 = 0;
  }

  else
  {
    v13[0] = addressCopy;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v10 = [(CNContactStore *)self unifiedMeContactMatchingEmailAddresses:v11 keysToFetch:fetchCopy error:error];
  }

  return v10;
}

- (BOOL)setMeContact:(id)contact error:(id *)error
{
  v5 = [CNErrorFactory errorObject:self doesNotImplementSelector:sel_setMeContact_error_];
  if (error)
  {
    v5 = v5;
    *error = v5;
  }

  return 0;
}

- (BOOL)setMeContact:(id)contact forContainer:(id)container error:(id *)error
{
  v6 = [CNErrorFactory errorObject:self doesNotImplementSelector:sel_setMeContact_forContainer_error_];
  if (error)
  {
    v6 = v6;
    *error = v6;
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

  predicate = [(CNContactFetchRequest *)v9 predicate];

  if (!predicate && pthread_main_np() == 1)
  {
    currentProcess = [MEMORY[0x1E69C75D0] currentProcess];
    if (([currentProcess isApplication] & 1) == 0)
    {

      goto LABEL_19;
    }

    processInfo = [MEMORY[0x1E696AE30] processInfo];
    environment = [processInfo environment];
    v23 = [environment objectForKeyedSubscript:@"CN_UNIT_TESTING"];
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

- (void)pool_enumerateContactsWithFetchRequest:(void *)request error:(void *)error usingBlock:
{
  v7 = a2;
  errorCopy = error;
  if (self)
  {
    v9 = [[CNAPITriageSession alloc] initWithRequest:v7];
    [(CNAPITriageSession *)v9 open];
    if ([v7 shouldFailIfAccountNotYetSynced] && (objc_msgSend(self, "hasAccountFirstSyncCompleted") & 1) == 0)
    {
      [CNContactStore pool_enumerateContactsWithFetchRequest:v9 error:request usingBlock:?];
      self = 0;
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
      v19 = errorCopy;
      v20 = &v22;
      self = [self enumerateContactsAndMatchInfoWithFetchRequest:v10 error:&v21 usingBlock:v16];
      v12 = v21;
      if ((v23[3] & 1) == 0)
      {
        logger = [(CNAPITriageSession *)v11 logger];
        [logger didReturnAllResultsForContactFetchRequest:v10];
      }

      if (self)
      {
        [(CNAPITriageSession *)v11 close];
      }

      else
      {
        [(CNAPITriageSession *)v11 closeWithError:v12];
        if (request)
        {
          v14 = v12;
          *request = v12;
        }
      }

      _Block_object_dispose(&v22, 8);
    }
  }

  return self;
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

- (BOOL)enumerateNonUnifiedContactsWithFetchRequest:(id)request error:(id *)error usingBlock:(id)block
{
  requestCopy = request;
  blockCopy = block;
  if ([requestCopy unifyResults])
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

  v11 = [(CNContactStore *)self enumerateContactsWithFetchRequest:requestCopy error:error usingBlock:blockCopy];

  return v11;
}

- (BOOL)enumerateContactsAndMatchInfoWithFetchRequest:(id)request error:(id *)error usingBlock:(id)block
{
  block = [CNErrorFactory errorWithCode:1005, error, block];
  if (error)
  {
    block = block;
    *error = block;
  }

  return 0;
}

- (BOOL)supportsSaveRequest:(id)request
{
  requestCopy = request;
  storeIdentifier = [requestCopy storeIdentifier];
  if (!storeIdentifier)
  {
    storeIdentifier2 = [objc_opt_class() storeIdentifier];
    if (!storeIdentifier2)
    {
      v8 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  storeIdentifier3 = [requestCopy storeIdentifier];
  storeIdentifier4 = [objc_opt_class() storeIdentifier];
  v8 = [storeIdentifier3 isEqual:storeIdentifier4];

  if (!storeIdentifier)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v8;
}

- (id)executeFetchRequest:(id)request error:(id *)error
{
  requestCopy = request;
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
  v16 = requestCopy;
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
  value = [v20 value];

  if (value)
  {
    value2 = [v20 value];
  }

  else
  {
    error = [v20 error];
    if (error)
    {
      error = error;
      *error = error;
    }

    value2 = 0;
  }

  [v12 popAllWithHandler:&__block_literal_global_95];
  v24 = objc_opt_self();

  return value2;
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

- (id)countForFetchRequest:(id)request error:(id *)error
{
  requestCopy = request;
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
  v16 = requestCopy;
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
  value = [v21 value];

  if (value)
  {
    value2 = [v21 value];
  }

  else
  {
    error = [v21 error];
    if (error)
    {
      error = error;
      *error = error;
    }

    value2 = 0;
  }

  [v12 popAllWithHandler:&__block_literal_global_101_0];
  v25 = objc_opt_self();

  return value2;
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

  predicate = [(CNContactFetchRequest *)v7 predicate];

  if (!predicate && pthread_main_np() == 1)
  {
    currentProcess = [MEMORY[0x1E69C75D0] currentProcess];
    if (([currentProcess isApplication] & 1) == 0)
    {

      goto LABEL_19;
    }

    processInfo = [MEMORY[0x1E696AE30] processInfo];
    environment = [processInfo environment];
    v20 = [environment objectForKeyedSubscript:@"CN_UNIT_TESTING"];
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
    value = [v22 value];
    objectEnumerator = [value objectEnumerator];
    currentHistoryToken = [v22 currentHistoryToken];
    v27 = [(CNFetchResult *)v23 initWithValue:objectEnumerator currentHistoryToken:currentHistoryToken];
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
    value = [v4 value];
    objectEnumerator = [value objectEnumerator];
    currentHistoryToken = [v4 currentHistoryToken];
    v9 = [(CNFetchResult *)v5 initWithValue:objectEnumerator currentHistoryToken:currentHistoryToken];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)executeFetchRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
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

  array = [MEMORY[0x1E695DF70] array];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__CNContactStore_executeFetchRequest_completion___block_invoke_109;
  aBlock[3] = &unk_1E7413E80;
  v19 = array;
  v36 = v19;
  v20 = dictionary;
  v37 = v20;
  v21 = _Block_copy(aBlock);
  v28 = MEMORY[0x1E69E9820];
  v29 = 3221225472;
  v30 = __49__CNContactStore_executeFetchRequest_completion___block_invoke_2;
  v31 = &unk_1E7413EA8;
  v34 = completionCopy;
  v22 = v19;
  v32 = v22;
  v23 = v20;
  v33 = v23;
  v24 = _Block_copy(&v28);
  v25 = [(CNContactStore *)self executeFetchRequest:requestCopy progressiveResults:v21 completion:v24, v28, v29, v30, v31];

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

- (id)policyForContainerWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = objc_alloc_init(CNPolicyDescription);
  [(CNPolicyDescription *)v7 setContainerIdentifier:identifierCopy];

  v8 = [(CNContactStore *)self policyWithDescription:v7 error:error];

  return v8;
}

+ (id)standardLabelsForPropertyWithKey:(id)key options:(unint64_t)options
{
  keyCopy = key;
  v6 = +[CN contactPropertiesByKey];
  v7 = [v6 objectForKey:keyCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 standardLabelsWithOptions:options];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)mainContactStore
{
  storeIdentifier = [objc_opt_class() storeIdentifier];

  if (storeIdentifier)
  {
    selfCopy = 0;
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)resetSortDataIfNeededWithError:(id *)error
{
  v4 = [CNErrorFactory errorObject:self doesNotImplementSelector:sel_resetSortDataIfNeededWithError_];
  if (error)
  {
    v4 = v4;
    *error = v4;
  }

  return 0;
}

- (BOOL)setDefaultAccountIdentifier:(id)identifier error:(id *)error
{
  v5 = [CNErrorFactory errorObject:self doesNotImplementSelector:sel_setDefaultAccountIdentifier_error_];
  if (error)
  {
    v5 = v5;
    *error = v5;
  }

  return 0;
}

- (id)sectionListOffsetsForSortOrder:(int64_t)order error:(id *)error
{
  v5 = [CNErrorFactory errorObject:self doesNotImplementSelector:sel_sectionListOffsetsForSortOrder_error_];
  if (error)
  {
    v5 = v5;
    *error = v5;
  }

  return 0;
}

- (id)descriptorForRequiredKeysForUserActivityUserInfo
{
  selfCopy = self;
  v3 = CNAbstractMethodException();
  objc_exception_throw(v3);
}

- (id)descriptorForRequiredKeysForMatchingDictionary
{
  selfCopy = self;
  v3 = CNAbstractMethodException();
  objc_exception_throw(v3);
}

- (id)contactWithMatchingDictionary:(id)dictionary keysToFetch:(id)fetch
{
  fetchCopy = fetch;
  v7 = [(CNContactStore *)self contactIdentifierWithMatchingDictionary:dictionary];
  if (v7)
  {
    v8 = [(CNContactStore *)self unifiedContactWithIdentifier:v7 keysToFetch:fetchCopy error:0];
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

- (BOOL)clearChangeHistoryForClientIdentifier:(id)identifier toChangeAnchor:(id)anchor error:(id *)error
{
  anchorCopy = anchor;
  identifierCopy = identifier;
  v10 = [[CNChangeHistoryClearRequest alloc] initWithClientIdentifier:identifierCopy];

  [(CNChangeHistoryClearRequest *)v10 setToChangeAnchor:anchorCopy];
  LOBYTE(error) = [(CNContactStore *)self executeChangeHistoryClearRequest:v10 error:error];

  return error;
}

+ (BOOL)isAccessRestrictedForEntityType:(int64_t)type
{
  v4 = +[CNContactStore authorizationForCurrentProcess];
  LOBYTE(type) = [v4 isAccessRestrictedForEntityType:type];

  return type;
}

+ (BOOL)isAccessLimitedForEntityType:(int64_t)type
{
  v4 = +[CNContactStore authorizationForCurrentProcess];
  v5 = [v4 authorizationStatusForEntityType:type];

  return v5 == 4;
}

+ (int64_t)authorizationStatusForEntityType:(int64_t)type assumedIdentity:(id)identity
{
  identityCopy = identity;
  v6 = [[CNAuthorization alloc] initWithAssumedIdentity:identityCopy];

  v7 = [(CNAuthorization *)v6 authorizationStatusForEntityType:type];
  return v7;
}

- (void)requestAuthorization:(int64_t)authorization entityType:(int64_t)type completionHandler:(id)handler
{
  handlerCopy = handler;
  if ([objc_opt_class() isAccessRestrictedForEntityType:type])
  {
    handlerCopy[2](handlerCopy, 4, 0);
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __68__CNContactStore_requestAuthorization_entityType_completionHandler___block_invoke;
    v8[3] = &unk_1E74130B8;
    v9 = handlerCopy;
    [(CNContactStore *)self requestAccessForEntityType:type completionHandler:v8];
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

- (id)authorizedKeysForContactKeys:(id)keys
{
  keysCopy = keys;
  objc_opt_class();
  selfCopy = self;
  if (objc_opt_isKindOfClass())
  {
    v6 = selfCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  objc_opt_class();
  mapper = [(CNContactStore *)v7 mapper];
  if (objc_opt_isKindOfClass())
  {
    v9 = mapper;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v11 = [v10 authorizedKeysForContactKeys:keysCopy error:0];
  }

  else
  {
    v11 = keysCopy;
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

  primaryiCloudContainer = [(CNContainerCache *)containerCache primaryiCloudContainer];
  lastSyncDate = [primaryiCloudContainer lastSyncDate];
  v8 = lastSyncDate != 0;

  return v8;
}

- (id)getLimitedAccessLastSyncSequenceNumber:(id *)number
{
  v4 = [CNErrorFactory errorWithCode:1];
  if (number)
  {
    v4 = v4;
    *number = v4;
  }

  return 0;
}

- (CNiOSAddressBook)addressBook
{
  iOSMapper = [(CNContactStore *)self iOSMapper];
  addressBook = [(CNiOSAddressBookDataMapper *)iOSMapper addressBook];

  return addressBook;
}

- (BOOL)setDefaultContainer:(id)container forAccount:(id)account error:(id *)error
{
  containerCopy = container;
  accountCopy = account;
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
  iOSMapper = [(CNContactStore *)self iOSMapper];
  addressBook = [(CNiOSAddressBookDataMapper *)iOSMapper addressBook];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __73__CNContactStore_iOSABUnitTesting__setDefaultContainer_forAccount_error___block_invoke;
  v21 = &unk_1E74165B8;
  v12 = containerCopy;
  v22 = v12;
  v24 = &v32;
  v25 = &v26;
  v13 = accountCopy;
  v23 = v13;
  v14 = [addressBook performSynchronousWorkWithInvalidatedAddressBook:&v18];

  if ([v14 isSuccess])
  {
    v15 = *(v33 + 24);
    if (error && (v33[3] & 1) == 0)
    {
      v15 = 0;
      *error = v27[5];
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

- (id)contactFromPerson:(void *)person mutable:(BOOL)mutable
{
  mutableCopy = mutable;
  v15[1] = *MEMORY[0x1E69E9840];
  v8 = +[CN contactPropertiesByKey];
  allKeys = [v8 allKeys];
  v10 = NSStringFromSelector(a2);
  v11 = [CNContact descriptorWithKeyDescriptors:allKeys description:v10];
  v15[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v13 = [(CNContactStore *)self contactFromPerson:person keysToFetch:v12 mutable:mutableCopy];

  return v13;
}

- (id)contactFromPersonID:(int)d
{
  v3 = *&d;
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = +[CN contactPropertiesByKey];
  allKeys = [v6 allKeys];
  v8 = NSStringFromSelector(a2);
  v9 = [CNContact descriptorWithKeyDescriptors:allKeys description:v8];
  v13[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v11 = [(CNContactStore *)self contactFromPersonID:v3 keysToFetch:v10];

  return v11;
}

- (id)_contactFromPersonID:(int)d keysToFetch:(id)fetch
{
  v4 = *&d;
  fetchCopy = fetch;
  v7 = [[CNContactFetchRequest alloc] initWithKeysToFetch:fetchCopy];
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

- (id)contactIdentifierFromPersonID:(int)d
{
  v3 = *&d;
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = @"identifier";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v6 = [(CNContactStore *)self _contactFromPersonID:v3 keysToFetch:v5];

  identifier = [v6 identifier];
  v8 = [identifier copy];

  return v8;
}

- (void)personFromContact:(id)contact
{
  contactCopy = contact;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  if ([contactCopy hasBeenPersisted] && ABAddressBookGetAuthorizationStatus() == kABAuthorizationStatusAuthorized)
  {
    iOSMapper = [(CNContactStore *)self iOSMapper];
    isUnified = [contactCopy isUnified];
    v7 = isUnified;
    if (isUnified)
    {
      linkedContacts = [contactCopy linkedContacts];
      v9 = [linkedContacts objectAtIndexedSubscript:0];
      identifier = [v9 identifier];

      if (!identifier)
      {
        goto LABEL_8;
      }
    }

    else
    {
      identifier = [contactCopy identifier];
      if (!identifier)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    addressBook = [(CNiOSAddressBookDataMapper *)iOSMapper addressBook];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __62__CNContactStore_iOSABLegacyCompatibility__personFromContact___block_invoke;
    v15[3] = &unk_1E7417000;
    v17 = &v19;
    v16 = identifier;
    v18 = v7;
    v12 = [addressBook performSynchronousWorkWithInvalidatedAddressBook:v15];

    goto LABEL_8;
  }

LABEL_9:
  detachedPerson = v20[3];
  if (!detachedPerson)
  {
    if ([contactCopy isUnified])
    {
      detachedPerson = v20[3];
    }

    else
    {
      detachedPerson = [contactCopy detachedPerson];
      v20[3] = detachedPerson;
    }
  }

  _Block_object_dispose(&v19, 8);

  return detachedPerson;
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

- (id)labeledValueFromMultiValueIdentifier:(int)identifier contact:(id)contact key:(id)key
{
  keyCopy = key;
  contactCopy = contact;
  v9 = +[CN contactPropertiesByKey];
  v10 = [v9 objectForKeyedSubscript:keyCopy];

  v11 = [v10 CNValueForContact:contactCopy];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __93__CNContactStore_iOSABLegacyCompatibility__labeledValueFromMultiValueIdentifier_contact_key___block_invoke;
  v14[3] = &__block_descriptor_36_e24_B16__0__CNLabeledValue_8l;
  identifierCopy = identifier;
  v12 = [v11 _cn_firstObjectPassingTest:v14];

  return v12;
}

- (id)_fetchRequestInfosForEmailOrPhoneForContact:(id)contact additionalRequiredKeys:(id)keys
{
  contactCopy = contact;
  keysCopy = keys;
  array = [MEMORY[0x1E695DF70] array];
  if ([contactCopy isKeyAvailable:@"emailAddresses"])
  {
    emailAddresses = [contactCopy emailAddresses];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __104__CNContactStore_ElaborateSearches___fetchRequestInfosForEmailOrPhoneForContact_additionalRequiredKeys___block_invoke;
    v18[3] = &unk_1E7417328;
    v19 = array;
    v20 = keysCopy;
    [emailAddresses enumerateObjectsUsingBlock:v18];
  }

  if ([contactCopy isKeyAvailable:@"phoneNumbers"])
  {
    phoneNumbers = [contactCopy phoneNumbers];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __104__CNContactStore_ElaborateSearches___fetchRequestInfosForEmailOrPhoneForContact_additionalRequiredKeys___block_invoke_2;
    v15 = &unk_1E7417328;
    v16 = array;
    v17 = keysCopy;
    [phoneNumbers enumerateObjectsUsingBlock:&v12];
  }

  v10 = [array copy];

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

- (id)_executeFetchRequestsWithInfos:(id)infos unifyResults:(BOOL)results keysToFetch:(id)fetch error:(id *)error
{
  infosCopy = infos;
  fetchCopy = fetch;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__31;
  v32 = __Block_byref_object_dispose__31;
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
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
  v12 = fetchCopy;
  resultsCopy = results;
  v17 = v12;
  selfCopy = self;
  v19 = &v22;
  v20 = &v28;
  [infosCopy enumerateObjectsUsingBlock:v16];
  if (error)
  {
    v13 = v23[5];
    if (v13)
    {
      *error = v13;
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

- (id)contactsMatchingPropertiesOfContact:(id)contact unifyResults:(BOOL)results keysToFetch:(id)fetch ignoreAvailableKeys:(BOOL)keys error:(id *)error
{
  resultsCopy = results;
  v29[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  fetchCopy = fetch;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  if ([contactCopy hasBeenPersisted])
  {
    if (!keys && [contactCopy areKeysAvailable:fetchCopy])
    {
      v16 = [MEMORY[0x1E695DFB8] orderedSetWithObject:contactCopy];
      goto LABEL_17;
    }

    v28 = resultsCopy;
    errorCopy = error;
    identifier = [contactCopy identifier];
    v29[0] = identifier;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    v21 = [CNContact predicateForContactsWithIdentifiers:v20];
    v22 = [_CNContactMatchingFetchRequestInfos fetchRequestInfoForPredicate:v21 properties:0];
    [array addObject:v22];

    error = errorCopy;
    resultsCopy = v28;
  }

  else
  {
    v17 = [(CNContactStore *)self _fetchRequestInfosForEmailOrPhoneForContact:contactCopy additionalRequiredKeys:array2];
    [array addObjectsFromArray:v17];
  }

  v23 = [fetchCopy arrayByAddingObjectsFromArray:array2];
  if (![array count])
  {
    goto LABEL_13;
  }

  v24 = [(CNContactStore *)self _executeFetchRequestsWithInfos:array unifyResults:resultsCopy keysToFetch:v23 error:error];
  v16 = v24;
  if (v24)
  {
    if ([v24 count])
    {
      v25 = v16;
      goto LABEL_11;
    }

LABEL_13:
    if ([contactCopy areKeysAvailable:v23])
    {
      v16 = [MEMORY[0x1E695DFB8] orderedSetWithObject:contactCopy];
    }

    else
    {
      v26 = [CNContact newContactWithPropertyKeys:v23 withValuesFromContact:contactCopy];
      v16 = [MEMORY[0x1E695DFB8] orderedSetWithObject:v26];
    }

    goto LABEL_16;
  }

LABEL_11:

LABEL_16:
LABEL_17:

  return v16;
}

- (id)_contactFromPublicABPerson:(void *)person keysToFetch:(id)fetch
{
  fetchCopy = fetch;
  v6 = [getABSPublicABCNCompatibilityClass_0() contactFromPublicABPerson:person keysToFetch:fetchCopy];

  return v6;
}

- (void)_publicABPersonFromContact:(id)contact publicAddressBook:(const void *)book
{
  contactCopy = contact;
  v7 = [getABSPublicABCNCompatibilityClass_0() publicABPersonFromContact:contactCopy contactStore:self publicAddressBook:book];

  return v7;
}

- (int)_publicMultiValueIdentifierFromLabeledValue:(id)value
{
  valueCopy = value;
  LODWORD(self) = [getABSPublicABCNCompatibilityClass_0() publicMultiValueIdentifierFromLabeledValue:valueCopy contactStore:self];

  return self;
}

- (id)_labeledValueFromPublicMultiValueIdentifier:(int)identifier contact:(id)contact key:(id)key
{
  v6 = *&identifier;
  keyCopy = key;
  contactCopy = contact;
  v10 = [getABSPublicABCNCompatibilityClass_0() labeledValueFromPublicMultiValueIdentifier:v6 contact:contactCopy key:keyCopy contactStore:self];

  return v10;
}

+ (id)_contactStoreForPublicAddressBook:(void *)book
{
  if (book)
  {
    v4 = [getABSPublicABCNCompatibilityClass_0() contactStoreForPublicAddressBook:book];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)isXPCDataMapperStoreForFavorites:(id)favorites
{
  favoritesCopy = favorites;
  objc_opt_class();
  v4 = favoritesCopy;
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
    mapper = [v6 mapper];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (id)_unifiedMeContactWithKeysToFetch:(uint64_t)fetch error:
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (self)
  {
    v6 = [self meContactIdentifiers:fetch];
    if ([v6 count] > 1)
    {
      v34 = v5;
      defaultContainerIdentifier = [self defaultContainerIdentifier];
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
        firstObject = 0;
        v11 = *v42;
        v12 = 0x1E7410000uLL;
        selfCopy = self;
        fetchCopy = fetch;
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
            v14 = [self containersMatchingPredicate:? error:?];
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
                  identifier = [v20 identifier];
                  v22 = [identifier isEqualToString:defaultContainerIdentifier];

                  if (v22)
                  {
                    v5 = v34;
                    v25 = [selfCopy unifiedContactWithIdentifier:v36 keysToFetch:v34 error:fetchCopy];

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
                    firstObject = v24;
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
            self = selfCopy;
            fetch = fetchCopy;
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
        firstObject = 0;
      }

      v6 = v33;
      v5 = v34;
    }

    else
    {
      firstObject = [v6 firstObject];
    }

    if ((*(*MEMORY[0x1E6996568] + 16))())
    {
      v25 = 0;
    }

    else
    {
      v25 = [self unifiedContactWithIdentifier:firstObject keysToFetch:v5 error:fetch];
    }

LABEL_35:
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)executeFetchRequestAndCountResults:(void *)results
{
  if (results)
  {
    v12 = 0;
    v2 = [results executeFetchRequest:a2 error:&v12];
    v3 = v12;
    if (v3)
    {
      v4 = [MEMORY[0x1E6996810] failureWithError:v3];
    }

    else
    {
      v5 = [CNFetchResult alloc];
      v6 = MEMORY[0x1E696AD98];
      value = [v2 value];
      v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(value, "count")}];
      currentHistoryToken = [v2 currentHistoryToken];
      v10 = [(CNFetchResult *)v5 initWithValue:v8 currentHistoryToken:currentHistoryToken];

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