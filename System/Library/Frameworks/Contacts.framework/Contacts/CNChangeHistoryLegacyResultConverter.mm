@interface CNChangeHistoryLegacyResultConverter
+ (id)contactEventForChange:(void *)a3 factory:;
+ (id)os_log;
- (CNChangeHistoryLegacyResultConverter)initWithContactStore:(id)a3 additionalContactKeyDescriptors:(id)a4;
- (id)coalesceGroupEvents:(id)a1;
- (id)eventsFromResult:(id)a3;
- (id)groupEventsFromLegacyResult:(void *)a1;
- (id)keysToFetch;
- (void)contactEventsFromLegacyResult:(void *)a1;
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

- (CNChangeHistoryLegacyResultConverter)initWithContactStore:(id)a3 additionalContactKeyDescriptors:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = CNChangeHistoryLegacyResultConverter;
  v9 = [(CNChangeHistoryLegacyResultConverter *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contactStore, a3);
    if (v8)
    {
      v11 = v8;
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

- (id)eventsFromResult:(id)a3
{
  v17[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNChangeHistoryLegacyResultConverter *)&self->super.isa contactEventsFromLegacyResult:v4];
  if ([v5 isSuccess])
  {
    v9 = [(CNChangeHistoryLegacyResultConverter *)self groupEventsFromLegacyResult:v4];
    if ([v9 isSuccess])
    {
      v10 = [v5 value];
      v17[0] = v10;
      v11 = [v9 value];
      v17[1] = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
      v13 = [v12 _cn_flatten];

      v14 = [MEMORY[0x1E6996810] successWithValue:v13];
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
      v13 = [v9 error];
      v14 = [v16 failureWithError:v13];
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

+ (id)contactEventForChange:(void *)a3 factory:
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v6 = [v4 changeType];
  v7 = 0;
  if (v6 <= 4)
  {
    if (v6 <= 1)
    {
      if (v6)
      {
        if (v6 != 1)
        {
          goto LABEL_26;
        }

LABEL_16:
        v8 = [v4 contact];
        v11 = [v4 imagesChanged];
        v12 = [v5 updateContactEventWithContact:v8 imagesChanged:{objc_msgSend(v11, "BOOLValue")}];
LABEL_17:
        v7 = v12;
        goto LABEL_21;
      }
    }

    else
    {
      if (v6 == 2)
      {
        goto LABEL_19;
      }

      if (v6 != 3)
      {
        goto LABEL_16;
      }
    }

    v8 = [v4 contact];
    v9 = [v5 addContactEventWithContact:v8 containerIdentifier:0];
    goto LABEL_24;
  }

  if (v6 > 7)
  {
    if (v6 == 8)
    {
      v8 = [v4 contact];
      v9 = [v5 preferredContactForNameEventWithPreferredContact:v8 unifiedContact:0];
      goto LABEL_24;
    }

    if (v6 == 9)
    {
      v8 = [v4 contact];
      v9 = [v5 preferredContactForImageEventWithPreferredContact:v8 unifiedContact:0];
      goto LABEL_24;
    }

    if (v6 != 10)
    {
      goto LABEL_26;
    }

    v10 = *MEMORY[0x1E69964C0];
    v8 = [v4 contactIdentifier];
    v11 = (*(v10 + 16))(v10, v8);
    v12 = [v5 differentMeCardEventWithContactIdentifier:v11];
    goto LABEL_17;
  }

  if (v6 == 5)
  {
LABEL_19:
    v8 = [v4 contactIdentifier];
    v9 = [v5 deleteContactEventWithContactIdentifier:v8];
    goto LABEL_24;
  }

  if (v6 != 6)
  {
    v8 = [v4 contact];
    v9 = [v5 unlinkContactEventWithContact:v8];
LABEL_24:
    v7 = v9;
    goto LABEL_25;
  }

  v8 = [v4 contact];
  v11 = [v4 linkToPersonUUID];
  v13 = [CNContact contactWithIdentifierOnly:v11];
  v14 = [v4 personLinkUUID];
  v15 = [CNContact contactWithIdentifierOnly:v14];
  v7 = [v5 linkContactsEventWithFromContact:v8 toContact:v13 unifiedContact:v15];

LABEL_21:
LABEL_25:

LABEL_26:
  v16 = [MEMORY[0x1E6996810] successWithValue:v7];

  return v16;
}

- (void)contactEventsFromLegacyResult:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [(CNChangeHistoryLegacyResultConverter *)a1 keysToFetch];
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [a1 contactStore];
    v19 = v3;
    v7 = [v3 contactChangesEnumeratorWithKeysToFetch:v4 contactStore:v6];

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

          v14 = [CNChangeHistoryLegacyResultConverter contactEventForChange:a1[3] factory:?];
          if (![v14 isSuccess])
          {
            v16 = MEMORY[0x1E6996810];
            v17 = [v14 error];
            a1 = [v16 failureWithError:v17];

            goto LABEL_12;
          }

          v15 = [v14 value];
          [v5 addObject:v15];
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

    a1 = [MEMORY[0x1E6996810] successWithValue:v5];
LABEL_12:

    v3 = v19;
  }

  return a1;
}

- (id)groupEventsFromLegacyResult:(void *)a1
{
  v3 = a2;
  v30 = v3;
  if (a1)
  {
    v4 = v3;
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [a1 contactStore];
    v7 = [v4 groupChangesEnumeratorWithContactStore:v6];

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
        v15 = [v14 changeType];
        if (v15 <= 5)
        {
          if (((1 << v15) & 9) != 0)
          {
            v19 = a1[3];
            v17 = [v14 group];
            v18 = [v19 addGroupEventWithGroup:v17 containerIdentifier:0];
LABEL_12:
            v20 = v18;
          }

          else
          {
            if (((1 << v15) & 0x12) != 0)
            {
              v16 = a1[3];
              v17 = [v14 group];
              v18 = [v16 updateGroupEventWithGroup:v17];
              goto LABEL_12;
            }

            v21 = a1[3];
            v17 = [v14 groupIdentifier];
            [v14 externalURI];
            v22 = v5;
            v24 = v23 = a1;
            v25 = [v14 externalModificationTag];
            v20 = [v21 deleteGroupEventWithGroupIdentifier:v17 externalURI:v24 externalModificationTag:v25];

            a1 = v23;
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

        v27 = [(CNChangeHistoryLegacyResultConverter *)a1 coalesceGroupEvents:v5];
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
  v1 = a1;
  v8[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *MEMORY[0x1E6996530];
    v3 = [a1 additionalContactKeyDescriptors];
    LODWORD(v2) = (*(v2 + 16))(v2, v3);

    if (v2)
    {
      v8[0] = @"identifier";
      v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    }

    else
    {
      v4 = [v1 additionalContactKeyDescriptors];
      v7[1] = v4;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
      v1 = [v5 _cn_flatten];
    }
  }

  return v1;
}

- (id)coalesceGroupEvents:(id)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    a1 = v3;
  }

  return a1;
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