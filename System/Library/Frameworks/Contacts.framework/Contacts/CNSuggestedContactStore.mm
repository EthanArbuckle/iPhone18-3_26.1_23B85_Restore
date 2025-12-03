@interface CNSuggestedContactStore
+ (id)os_log;
+ (id)storeIdentifier;
+ (id)storeInfoClasses;
- (BOOL)_processSuggestions:(id)suggestions error:(id *)error withBlock:(id)block;
- (BOOL)enumerateContactsAndMatchInfoWithFetchRequest:(id)request error:(id *)error usingBlock:(id)block;
- (BOOL)executeSaveRequest:(id)request response:(id *)response authorizationContext:(id)context error:(id *)error;
- (CNSuggestedContactStore)initWithSuggestionsService:(id)service siriIntelligenceSettings:(id)settings;
- (id)originForSuggestion:(id)suggestion error:(id *)error;
- (id)unifiedContactsMatchingPredicate:(id)predicate keysToFetch:(id)fetch error:(id *)error;
@end

@implementation CNSuggestedContactStore

+ (id)storeIdentifier
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__CNSuggestedContactStore_storeIdentifier__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (storeIdentifier_cn_once_token_1_0 != -1)
  {
    dispatch_once(&storeIdentifier_cn_once_token_1_0, block);
  }

  v2 = storeIdentifier_cn_once_object_1_0;

  return v2;
}

void __42__CNSuggestedContactStore_storeIdentifier__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = [v3 copy];
  v2 = storeIdentifier_cn_once_object_1_0;
  storeIdentifier_cn_once_object_1_0 = v1;
}

+ (id)storeInfoClasses
{
  if (storeInfoClasses_cn_once_token_0 != -1)
  {
    +[CNSuggestedContactStore storeInfoClasses];
  }

  v3 = storeInfoClasses_cn_once_object_0;

  return v3;
}

void __43__CNSuggestedContactStore_storeInfoClasses__block_invoke()
{
  v2 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v0 = [v2 copy];
  v1 = storeInfoClasses_cn_once_object_0;
  storeInfoClasses_cn_once_object_0 = v0;
}

+ (id)os_log
{
  if (os_log_cn_once_token_2_3 != -1)
  {
    +[CNSuggestedContactStore os_log];
  }

  v3 = os_log_cn_once_object_2_3;

  return v3;
}

uint64_t __33__CNSuggestedContactStore_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contact", "suggestions");
  v1 = os_log_cn_once_object_2_3;
  os_log_cn_once_object_2_3 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNSuggestedContactStore)initWithSuggestionsService:(id)service siriIntelligenceSettings:(id)settings
{
  serviceCopy = service;
  settingsCopy = settings;
  v18.receiver = self;
  v18.super_class = CNSuggestedContactStore;
  v9 = [(CNContactStore *)&v18 init];
  v10 = v9;
  if (v9)
  {
    if (serviceCopy)
    {
      objc_storeStrong(&v9->_suggestionService, service);
      if (settingsCopy)
      {
LABEL_4:
        v11 = settingsCopy;
        siriIntelligenceSettings = v10->_siriIntelligenceSettings;
        v10->_siriIntelligenceSettings = v11;
LABEL_7:

        v16 = v10;
        goto LABEL_8;
      }
    }

    else
    {
      serviceForContacts = [MEMORY[0x1E69992A0] serviceForContacts];
      suggestionService = v10->_suggestionService;
      v10->_suggestionService = serviceForContacts;

      [(SGSuggestionsServiceContactsProtocol *)v10->_suggestionService setSyncTimeout:0.2];
      if (settingsCopy)
      {
        goto LABEL_4;
      }
    }

    v15 = objc_opt_new();
    siriIntelligenceSettings = v10->_siriIntelligenceSettings;
    v10->_siriIntelligenceSettings = v15;
    goto LABEL_7;
  }

LABEL_8:

  return v10;
}

- (id)originForSuggestion:(id)suggestion error:(id *)error
{
  suggestionCopy = suggestion;
  if ([(CNSiriIntelligenceSettingsProtocol *)self->_siriIntelligenceSettings shouldShowSiriSuggestions])
  {
    suggestionRecordId = [suggestionCopy suggestionRecordId];
    if (suggestionRecordId)
    {
      v8 = [(SGSuggestionsServiceContactsProtocol *)self->_suggestionService originFromRecordId:suggestionRecordId error:error];
    }

    else
    {
      v9 = [CNErrorFactory errorWithCode:205 userInfo:0];
      if (error)
      {
        v9 = v9;
        *error = v9;
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)enumerateContactsAndMatchInfoWithFetchRequest:(id)request error:(id *)error usingBlock:(id)block
{
  requestCopy = request;
  blockCopy = block;
  if ([(CNSiriIntelligenceSettingsProtocol *)self->_siriIntelligenceSettings shouldShowSiriSuggestions])
  {
    predicate = [requestCopy predicate];
    if ([predicate conformsToProtocol:&unk_1F098FE90])
    {
      v11 = predicate;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v12)
    {
      sortOrder = [requestCopy sortOrder];
      keysToFetch = [requestCopy keysToFetch];
      mutableObjects = [requestCopy mutableObjects];
      suggestionService = self->_suggestionService;
      v38 = 0;
      v17 = [(CNPredicate *)v12 suggestedContactsWithSortOrder:sortOrder keysToFetch:keysToFetch mutableObjects:mutableObjects service:suggestionService error:&v38];
      v18 = v38;

      if (!v17)
      {
        os_log = [objc_opt_class() os_log];
        if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
        {
          [CNSuggestedContactStore enumerateContactsAndMatchInfoWithFetchRequest:v18 error:os_log usingBlock:?];
        }

        v18 = 0;
        v17 = MEMORY[0x1E695E0F0];
      }

      v34 = 0;
      v35 = &v34;
      v36 = 0x2020000000;
      v37 = 0;
      v28 = MEMORY[0x1E69E9820];
      v29 = 3221225472;
      v30 = __90__CNSuggestedContactStore_enumerateContactsAndMatchInfoWithFetchRequest_error_usingBlock___block_invoke;
      v31 = &unk_1E7416F30;
      v33 = &v34;
      v32 = blockCopy;
      [v17 enumerateObjectsUsingBlock:&v28];
      if (v35[3])
      {
        v20 = os_log_create("com.apple.contacts", "data-access-error");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [CNSuggestedContactStore enumerateContactsAndMatchInfoWithFetchRequest:v20 error:? usingBlock:?];
        }

        v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNErrorDomain" code:2 userInfo:0];

        v22 = MEMORY[0x1E6996828];
        v23 = v35[3];
        v24 = [v17 count];
        [v22 simulateCrashWithMessage:{@"enumerateContactsAndMatchInfoWithFetchRequest encountered NSNull %lu times where %lu CNContact objects where expcted", v23, v24, 0, v28, v29, v30, v31}];
        v18 = v21;
      }

      v25 = v18 == 0;
      if (error && v18)
      {
        v26 = v18;
        *error = v18;
      }

      _Block_object_dispose(&v34, 8);
    }

    else
    {
      v25 = 1;
    }
  }

  else
  {
    v25 = 1;
  }

  return v25;
}

void __90__CNSuggestedContactStore_enumerateContactsAndMatchInfoWithFetchRequest_error_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*MEMORY[0x1E6996550] + 16))())
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

- (id)unifiedContactsMatchingPredicate:(id)predicate keysToFetch:(id)fetch error:(id *)error
{
  predicateCopy = predicate;
  fetchCopy = fetch;
  if ([(CNSiriIntelligenceSettingsProtocol *)self->_siriIntelligenceSettings shouldShowSiriSuggestions])
  {
    v10 = predicateCopy;
    if ([v10 conformsToProtocol:&unk_1F098FE90])
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v12)
    {
      v13 = [(CNPredicate *)v12 suggestedContactsWithSortOrder:fetchCopy keysToFetch:0 mutableObjects:self->_suggestionService service:error error:?];
    }

    else
    {
      v14 = [CNErrorFactory errorWithCode:400 userInfo:0];
      if (error)
      {
        v14 = v14;
        *error = v14;
      }

      v13 = 0;
    }
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  return v13;
}

- (BOOL)_processSuggestions:(id)suggestions error:(id *)error withBlock:(id)block
{
  v26 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  blockCopy = block;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = suggestionsCopy;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        if ([v14 isSuggested])
        {
          suggestionRecordId = [v14 suggestionRecordId];

          if (suggestionRecordId)
          {
            suggestionRecordId2 = [v14 suggestionRecordId];
            v17 = objc_opt_class();
            v18 = blockCopy[2](blockCopy, suggestionRecordId2, v17, error);

            if (!v18)
            {
              v19 = 0;
              goto LABEL_13;
            }
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v19 = 1;
LABEL_13:

  return v19;
}

- (BOOL)executeSaveRequest:(id)request response:(id *)response authorizationContext:(id)context error:(id *)error
{
  requestCopy = request;
  if (([(CNSiriIntelligenceSettingsProtocol *)self->_siriIntelligenceSettings shouldShowSiriSuggestions]& 1) != 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      suppressChangeNotifications = [requestCopy suppressChangeNotifications];
      if ((suppressChangeNotifications & 1) == 0)
      {
        v10 = +[CNChangesNotifier sharedNotifier];
        [v10 willSaveChanges];
      }

      v11 = requestCopy;
      confirmedSuggestions = [v11 confirmedSuggestions];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __82__CNSuggestedContactStore_executeSaveRequest_response_authorizationContext_error___block_invoke;
      v24[3] = &unk_1E7416F58;
      v24[4] = self;
      v13 = [(CNSuggestedContactStore *)self _processSuggestions:confirmedSuggestions error:error withBlock:v24];

      if (v13)
      {
        rejectedSuggestions = [v11 rejectedSuggestions];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __82__CNSuggestedContactStore_executeSaveRequest_response_authorizationContext_error___block_invoke_2;
        v23[3] = &unk_1E7416F58;
        v23[4] = self;
        v15 = [(CNSuggestedContactStore *)self _processSuggestions:rejectedSuggestions error:error withBlock:v23];

        if (suppressChangeNotifications)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v15 = 0;
        if (suppressChangeNotifications)
        {
LABEL_15:

          goto LABEL_16;
        }
      }

      v20 = +[CNChangesNotifier sharedNotifier];
      saveRequestIdentifier = [v11 saveRequestIdentifier];
      [v20 didSaveChangesSuccessfully:v15 fromContactStore:self requestIdentifier:saveRequestIdentifier];

      goto LABEL_15;
    }

    v17 = MEMORY[0x1E695DF30];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    [v17 raise:@"CNSuggestedContactStoreInvalidSaveRequest" format:{@"Unexpected save request of class %@", v19}];
  }

  else
  {
    v16 = [CNErrorFactory errorWithCode:103 userInfo:0];
    if (error)
    {
      v16 = v16;
      *error = v16;
    }
  }

  LOBYTE(v15) = 0;
LABEL_16:

  return v15;
}

uint64_t __82__CNSuggestedContactStore_executeSaveRequest_response_authorizationContext_error___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = [a3 isSubclassOfClass:objc_opt_class()];
  v9 = [*(a1 + 32) suggestionService];
  v10 = v9;
  if (v8)
  {
    v11 = [v9 confirmContactDetailRecord:v7 error:a4];
  }

  else
  {
    v11 = [v9 confirmRecord:v7 error:a4];
  }

  v12 = v11;

  return v12;
}

uint64_t __82__CNSuggestedContactStore_executeSaveRequest_response_authorizationContext_error___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = [a3 isSubclassOfClass:objc_opt_class()];
  v9 = [*(a1 + 32) suggestionService];
  v10 = v9;
  if (v8)
  {
    v11 = [v9 rejectContactDetailRecord:v7 rejectionUI:1 error:a4];
  }

  else
  {
    v11 = [v9 rejectRecord:v7 rejectionUI:1 error:a4];
  }

  v12 = v11;

  return v12;
}

- (void)enumerateContactsAndMatchInfoWithFetchRequest:(uint64_t)a1 error:(NSObject *)a2 usingBlock:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1954A0000, a2, OS_LOG_TYPE_ERROR, "Error fetching from CoreSuggestions: %{public}@", &v2, 0xCu);
}

@end