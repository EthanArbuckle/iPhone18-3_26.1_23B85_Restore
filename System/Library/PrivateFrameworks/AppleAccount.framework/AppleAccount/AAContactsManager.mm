@interface AAContactsManager
- (AAContactsIDSStatusDelegate)delegate;
- (id)_predicateForHandle:(id)handle;
- (id)contactForHandle:(id)handle;
- (id)contactForIdentifiers:(id)identifiers;
- (id)contactForMe;
- (id)contactIDForHandle:(id)handle;
- (void)contactForMe;
- (void)fetchIDSStatusForHandle:(id)handle;
- (void)idsStatusForHandle:(id)handle completion:(id)completion;
@end

@implementation AAContactsManager

- (id)contactIDForHandle:(id)handle
{
  v16[1] = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  getCNContactStoreClass();
  v5 = objc_opt_new();
  v6 = [(AAContactsManager *)self _predicateForHandle:handleCopy];

  v7 = getCNContactIdentifierKey();
  v16[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];

  v15 = 0;
  v9 = [v5 unifiedContactsMatchingPredicate:v6 keysToFetch:v8 error:&v15];
  v10 = v15;
  if (v10)
  {
    firstObject = _AALogSystem();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
    {
      [AAContactsManager contactIDForHandle:];
    }

    identifier = 0;
    goto LABEL_7;
  }

  if ([v9 count])
  {
    firstObject = [v9 firstObject];
    identifier = [firstObject identifier];
LABEL_7:

    goto LABEL_8;
  }

  identifier = 0;
LABEL_8:

  v13 = *MEMORY[0x1E69E9840];

  return identifier;
}

- (id)contactForHandle:(id)handle
{
  v22[7] = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  getCNContactStoreClass();
  v5 = objc_opt_new();
  v6 = [(AAContactsManager *)self _predicateForHandle:handleCopy];

  v7 = getCNContactIdentifierKey();
  v22[0] = v7;
  v8 = getCNContactGivenNameKey();
  v22[1] = v8;
  v9 = getCNContactFamilyNameKey();
  v22[2] = v9;
  v10 = getCNContactThumbnailImageDataKey();
  v22[3] = v10;
  v11 = getCNContactImageDataKey();
  v22[4] = v11;
  v12 = getCNContactPhoneNumbersKey();
  v22[5] = v12;
  v13 = getCNContactEmailAddressesKey();
  v22[6] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:7];

  v21 = 0;
  v15 = [v5 unifiedContactsMatchingPredicate:v6 keysToFetch:v14 error:&v21];
  v16 = v21;
  if (v16)
  {
    v17 = _AALogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [AAContactsManager contactForHandle:];
    }
  }

  firstObject = [v15 firstObject];

  v19 = *MEMORY[0x1E69E9840];

  return firstObject;
}

- (id)contactForIdentifiers:(id)identifiers
{
  v24[1] = *MEMORY[0x1E69E9840];
  firstObject = [identifiers firstObject];
  if (firstObject)
  {
    getCNContactStoreClass();
    v21 = objc_opt_new();
    CNContactClass = getCNContactClass();
    v24[0] = firstObject;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    v6 = [CNContactClass predicateForContactsWithIdentifiers:v5];

    v7 = getCNContactIdentifierKey();
    v23[0] = v7;
    v8 = getCNContactGivenNameKey();
    v23[1] = v8;
    v9 = getCNContactFamilyNameKey();
    v23[2] = v9;
    v10 = getCNContactThumbnailImageDataKey();
    v23[3] = v10;
    v11 = getCNContactImageDataKey();
    v23[4] = v11;
    v12 = getCNContactPhoneNumbersKey();
    v23[5] = v12;
    v13 = getCNContactEmailAddressesKey();
    v23[6] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:7];

    v22 = 0;
    v15 = [v21 unifiedContactsMatchingPredicate:v6 keysToFetch:v14 error:&v22];
    v16 = v22;
    if (v16)
    {
      v17 = _AALogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [AAContactsManager contactForHandle:];
      }
    }

    firstObject2 = [v15 firstObject];
  }

  else
  {
    v16 = _AALogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [AAContactsManager contactForIdentifiers:v16];
    }

    firstObject2 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return firstObject2;
}

- (id)contactForMe
{
  v23[13] = *MEMORY[0x1E69E9840];
  getCNContactStoreClass();
  v17 = objc_opt_new();
  v21 = getCNContactIdentifierKey();
  v23[0] = v21;
  v20 = getCNContactGivenNameKey();
  v23[1] = v20;
  v19 = getCNContactFamilyNameKey();
  v23[2] = v19;
  v18 = getCNContactThumbnailImageDataKey();
  v23[3] = v18;
  v2 = getCNContactPhoneNumbersKey();
  v23[4] = v2;
  v3 = getCNContactEmailAddressesKey();
  v23[5] = v3;
  v4 = getCNContactNamePrefixKey();
  v23[6] = v4;
  v5 = getCNContactMiddleNameKey();
  v23[7] = v5;
  v6 = getCNContactNicknameKey();
  v23[8] = v6;
  v7 = getCNContactTypeKey();
  v23[9] = v7;
  v8 = getCNContactImageDataKey();
  v23[10] = v8;
  v9 = getCNContactCropRectKey();
  v23[11] = v9;
  v10 = getCNContactMemojiMetadataKey();
  v23[12] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:13];

  v22 = 0;
  v12 = [v17 _crossPlatformUnifiedMeContactWithKeysToFetch:v11 error:&v22];
  v13 = v22;
  if (v13)
  {
    v14 = _AALogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [AAContactsManager contactForMe];
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)_predicateForHandle:(id)handle
{
  handleCopy = handle;
  if ([handleCopy aa_appearsToBeEmail])
  {
    v4 = [getCNContactClass() predicateForContactsMatchingEmailAddress:handleCopy];
  }

  else
  {
    if ([handleCopy aa_appearsToBePhoneNumber])
    {
      v5 = [getCNPhoneNumberClass() phoneNumberWithStringValue:handleCopy];
      v6 = [getCNContactClass() predicateForContactsMatchingPhoneNumber:v5];

      goto LABEL_7;
    }

    v4 = [getCNContactClass() predicateForContactsMatchingName:handleCopy];
  }

  v6 = v4;
LABEL_7:

  return v6;
}

- (void)fetchIDSStatusForHandle:(id)handle
{
  handleCopy = handle;
  v5 = [[AAMessagingDestination alloc] initWithHandle:handleCopy];
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__AAContactsManager_fetchIDSStatusForHandle___block_invoke;
  v7[3] = &unk_1E7C9A758;
  objc_copyWeak(&v9, &location);
  v6 = handleCopy;
  v8 = v6;
  [(AAMessagingDestination *)v5 isRegisteredToiMessageWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __45__AAContactsManager_fetchIDSStatusForHandle___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained delegate];
  [v4 reachabilityForHandle:*(a1 + 32) isReachable:a2];
}

- (void)idsStatusForHandle:(id)handle completion:(id)completion
{
  completionCopy = completion;
  handleCopy = handle;
  v7 = [[AAMessagingDestination alloc] initWithHandle:handleCopy];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__AAContactsManager_idsStatusForHandle_completion___block_invoke;
  v9[3] = &unk_1E7C9A780;
  v10 = completionCopy;
  v8 = completionCopy;
  [(AAMessagingDestination *)v7 isRegisteredToiMessageWithCompletion:v9];
}

- (AAContactsIDSStatusDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)contactIDForHandle:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "Error fetching contact ID: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)contactForHandle:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "Error fetching contact: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)contactForMe
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "Error fetching me card: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end