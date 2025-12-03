@interface CNChangeHistoryLegacyResultConverter
+ (id)contactEventForChange:(void *)change factory:;
+ (id)os_log;
- (CNChangeHistoryLegacyResultConverter)initWithContactStore:(id)store additionalContactKeyDescriptors:(id)descriptors;
- (id)coalesceGroupEvents:(id)events;
- (id)eventsFromResult:(id)result;
- (id)groupEventsFromLegacyResult:(void *)result;
- (id)keysToFetch;
- (void)contactEventsFromLegacyResult:(void *)result;
@end

@implementation CNChangeHistoryLegacyResultConverter

+ (id)os_log
{
  objc_opt_self();
  if (os_log_cn_once_token_0_5 != -1)
  {
    +[CNChangeHistoryLegacyResultConverter os_log];
  }

  v0 = os_log_cn_once_object_0_5;

  return v0;
}

uint64_t __46__CNChangeHistoryLegacyResultConverter_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "fetching");
  v1 = os_log_cn_once_object_0_5;
  os_log_cn_once_object_0_5 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNChangeHistoryLegacyResultConverter)initWithContactStore:(id)store additionalContactKeyDescriptors:(id)descriptors
{
  storeCopy = store;
  descriptorsCopy = descriptors;
  v16.receiver = self;
  v16.super_class = CNChangeHistoryLegacyResultConverter;
  v9 = [(CNChangeHistoryLegacyResultConverter *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contactStore, store);
    if (descriptorsCopy)
    {
      v11 = descriptorsCopy;
    }

    else
    {
      v11 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v10->_additionalContactKeyDescriptors, v11);
    v12 = objc_alloc_init(CNChangeHistoryEventFactory);
    factory = v10->_factory;
    v10->_factory = v12;

    v14 = v10;
  }

  return v10;
}

- (id)eventsFromResult:(id)result
{
  v17[2] = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v5 = [(CNChangeHistoryLegacyResultConverter *)&self->super.isa contactEventsFromLegacyResult:resultCopy];
  if ([v5 isSuccess])
  {
    v9 = [(CNChangeHistoryLegacyResultConverter *)self groupEventsFromLegacyResult:resultCopy];
    if ([v9 isSuccess])
    {
      value = [v5 value];
      v17[0] = value;
      value2 = [v9 value];
      v17[1] = value2;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
      _cn_flatten = [v12 _cn_flatten];

      v14 = [MEMORY[0x1E6996810] successWithValue:_cn_flatten];
    }

    else
    {
      objc_opt_class();
      v15 = +[CNChangeHistoryLegacyResultConverter os_log];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [CNChangeHistoryLegacyResultConverter eventsFromResult:v9];
      }

      v16 = MEMORY[0x1E6996810];
      _cn_flatten = [v9 error];
      v14 = [v16 failureWithError:_cn_flatten];
    }

    v7 = v14;
  }

  else
  {
    objc_opt_class();
    v6 = +[CNChangeHistoryLegacyResultConverter os_log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CNChangeHistoryLegacyResultConverter eventsFromResult:v5];
    }

    v7 = v5;
  }

  return v7;
}

+ (id)contactEventForChange:(void *)change factory:
{
  v4 = a2;
  changeCopy = change;
  objc_opt_self();
  changeType = [v4 changeType];
  v7 = 0;
  if (changeType <= 4)
  {
    if (changeType <= 1)
    {
      if (changeType)
      {
        if (changeType != 1)
        {
          goto LABEL_26;
        }

LABEL_16:
        contact = [v4 contact];
        imagesChanged = [v4 imagesChanged];
        v12 = [changeCopy updateContactEventWithContact:contact imagesChanged:{objc_msgSend(imagesChanged, "BOOLValue")}];
LABEL_17:
        v7 = v12;
        goto LABEL_21;
      }
    }

    else
    {
      if (changeType == 2)
      {
        goto LABEL_19;
      }

      if (changeType != 3)
      {
        goto LABEL_16;
      }
    }

    contact = [v4 contact];
    v9 = [changeCopy addContactEventWithContact:contact containerIdentifier:0];
    goto LABEL_24;
  }

  if (changeType > 7)
  {
    if (changeType == 8)
    {
      contact = [v4 contact];
      v9 = [changeCopy preferredContactForNameEventWithPreferredContact:contact unifiedContact:0];
      goto LABEL_24;
    }

    if (changeType == 9)
    {
      contact = [v4 contact];
      v9 = [changeCopy preferredContactForImageEventWithPreferredContact:contact unifiedContact:0];
      goto LABEL_24;
    }

    if (changeType != 10)
    {
      goto LABEL_26;
    }

    v10 = *MEMORY[0x1E69964C0];
    contact = [v4 contactIdentifier];
    imagesChanged = (*(v10 + 16))(v10, contact);
    v12 = [changeCopy differentMeCardEventWithContactIdentifier:imagesChanged];
    goto LABEL_17;
  }

  if (changeType == 5)
  {
LABEL_19:
    contact = [v4 contactIdentifier];
    v9 = [changeCopy deleteContactEventWithContactIdentifier:contact];
    goto LABEL_24;
  }

  if (changeType != 6)
  {
    contact = [v4 contact];
    v9 = [changeCopy unlinkContactEventWithContact:contact];
LABEL_24:
    v7 = v9;
    goto LABEL_25;
  }

  contact = [v4 contact];
  imagesChanged = [v4 linkToPersonUUID];
  v13 = [CNContact contactWithIdentifierOnly:imagesChanged];
  personLinkUUID = [v4 personLinkUUID];
  v15 = [CNContact contactWithIdentifierOnly:personLinkUUID];
  v7 = [changeCopy linkContactsEventWithFromContact:contact toContact:v13 unifiedContact:v15];

LABEL_21:
LABEL_25:

LABEL_26:
  v16 = [MEMORY[0x1E6996810] successWithValue:v7];

  return v16;
}

- (void)contactEventsFromLegacyResult:(void *)result
{
  v3 = a2;
  if (result)
  {
    keysToFetch = [(CNChangeHistoryLegacyResultConverter *)result keysToFetch];
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    contactStore = [result contactStore];
    v19 = v3;
    v7 = [v3 contactChangesEnumeratorWithKeysToFetch:keysToFetch contactStore:contactStore];

    v8 = v7;
    OUTLINED_FUNCTION_0_4();
    v10 = [v9 countByEnumeratingWithState:? objects:? count:?];
    if (v10)
    {
      v11 = v10;
      v12 = MEMORY[0];
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (MEMORY[0] != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = [CNChangeHistoryLegacyResultConverter contactEventForChange:result[3] factory:?];
          if (![v14 isSuccess])
          {
            v16 = MEMORY[0x1E6996810];
            error = [v14 error];
            result = [v16 failureWithError:error];

            goto LABEL_12;
          }

          value = [v14 value];
          [v5 addObject:value];
        }

        OUTLINED_FUNCTION_0_4();
        v11 = [v8 countByEnumeratingWithState:? objects:? count:?];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    result = [MEMORY[0x1E6996810] successWithValue:v5];
LABEL_12:

    v3 = v19;
  }

  return result;
}

- (id)groupEventsFromLegacyResult:(void *)result
{
  v3 = a2;
  v30 = v3;
  if (result)
  {
    v4 = v3;
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    contactStore = [result contactStore];
    v7 = [v4 groupChangesEnumeratorWithContactStore:contactStore];

    v8 = v7;
    OUTLINED_FUNCTION_0_4();
    obj = v9;
    v10 = [v9 countByEnumeratingWithState:? objects:? count:?];
    if (!v10)
    {
      goto LABEL_19;
    }

    v11 = v10;
    v12 = MEMORY[0];
    while (1)
    {
      v13 = 0;
      do
      {
        if (MEMORY[0] != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(8 * v13);
        changeType = [v14 changeType];
        if (changeType <= 5)
        {
          if (((1 << changeType) & 9) != 0)
          {
            v19 = result[3];
            group = [v14 group];
            v18 = [v19 addGroupEventWithGroup:group containerIdentifier:0];
LABEL_12:
            v20 = v18;
          }

          else
          {
            if (((1 << changeType) & 0x12) != 0)
            {
              v16 = result[3];
              group = [v14 group];
              v18 = [v16 updateGroupEventWithGroup:group];
              goto LABEL_12;
            }

            v21 = result[3];
            group = [v14 groupIdentifier];
            [v14 externalURI];
            v22 = v5;
            v24 = v23 = result;
            externalModificationTag = [v14 externalModificationTag];
            v20 = [v21 deleteGroupEventWithGroupIdentifier:group externalURI:v24 externalModificationTag:externalModificationTag];

            result = v23;
            v5 = v22;
          }

          goto LABEL_15;
        }

        v20 = 0;
LABEL_15:
        [v5 _cn_addNonNilObject:v20];

        ++v13;
      }

      while (v11 != v13);
      OUTLINED_FUNCTION_0_4();
      v26 = [obj countByEnumeratingWithState:? objects:? count:?];
      v11 = v26;
      if (!v26)
      {
LABEL_19:

        v27 = [(CNChangeHistoryLegacyResultConverter *)result coalesceGroupEvents:v5];
        v28 = [MEMORY[0x1E6996810] successWithValue:v27];

        goto LABEL_20;
      }
    }
  }

  v28 = 0;
LABEL_20:

  return v28;
}

- (id)keysToFetch
{
  selfCopy = self;
  v8[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = *MEMORY[0x1E6996530];
    additionalContactKeyDescriptors = [self additionalContactKeyDescriptors];
    LODWORD(v2) = (*(v2 + 16))(v2, additionalContactKeyDescriptors);

    if (v2)
    {
      v8[0] = @"identifier";
      selfCopy = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    }

    else
    {
      additionalContactKeyDescriptors2 = [selfCopy additionalContactKeyDescriptors];
      v7[1] = additionalContactKeyDescriptors2;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
      selfCopy = [v5 _cn_flatten];
    }
  }

  return selfCopy;
}

- (id)coalesceGroupEvents:(id)events
{
  v3 = a2;
  v4 = v3;
  if (events)
  {
    events = v3;
  }

  return events;
}

- (void)eventsFromResult:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 error];
  OUTLINED_FUNCTION_0_0(&dword_1954A0000, v2, v3, "Could not fetch contacts for change history delta sync: %{public}@", v4, v5, v6, v7, 2u);
}

- (void)eventsFromResult:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 error];
  OUTLINED_FUNCTION_0_0(&dword_1954A0000, v2, v3, "Could not fetch groups for change history delta sync: %{public}@", v4, v5, v6, v7, 2u);
}

@end