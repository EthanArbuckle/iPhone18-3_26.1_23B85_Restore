@interface CNDonatedMeCardPersistenceHelper
+ (BOOL)createNewMeContact:(id)contact inStore:(id)store;
+ (id)defaultKeysForValuesToPersist;
+ (id)mutableCopyOfContact:(id)contact byCopyingModificationsAndValuesForKeysOnly:(id)only;
+ (id)mutableCopyOfContact:(id)contact byCopyingValuesForKeysOnly:(id)only;
+ (id)propertyGroupItemLog;
@end

@implementation CNDonatedMeCardPersistenceHelper

+ (id)propertyGroupItemLog
{
  if (propertyGroupItemLog_cn_once_token_4 != -1)
  {
    dispatch_once(&propertyGroupItemLog_cn_once_token_4, &__block_literal_global_11);
  }

  v3 = propertyGroupItemLog_cn_once_object_4;

  return v3;
}

uint64_t __56__CNDonatedMeCardPersistenceHelper_propertyGroupItemLog__block_invoke()
{
  propertyGroupItemLog_cn_once_object_4 = os_log_create("com.apple.contacts", "contacts-ui");

  return MEMORY[0x1EEE66BB8]();
}

+ (id)defaultKeysForValuesToPersist
{
  if (defaultKeysForValuesToPersist_cn_once_token_3 != -1)
  {
    dispatch_once(&defaultKeysForValuesToPersist_cn_once_token_3, &__block_literal_global_8_5098);
  }

  v3 = defaultKeysForValuesToPersist_cn_once_object_3;

  return v3;
}

void __65__CNDonatedMeCardPersistenceHelper_defaultKeysForValuesToPersist__block_invoke()
{
  v11[19] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695C278];
  v11[0] = *MEMORY[0x1E695C410];
  v11[1] = v0;
  v1 = *MEMORY[0x1E695C400];
  v11[2] = *MEMORY[0x1E695C1E8];
  v11[3] = v1;
  v2 = *MEMORY[0x1E695C300];
  v11[4] = *MEMORY[0x1E695C270];
  v11[5] = v2;
  v3 = *MEMORY[0x1E695C2F0];
  v11[6] = *MEMORY[0x1E695C240];
  v11[7] = v3;
  v4 = *MEMORY[0x1E695C308];
  v11[8] = *MEMORY[0x1E695C230];
  v11[9] = v4;
  v5 = *MEMORY[0x1E695C310];
  v11[10] = *MEMORY[0x1E695C390];
  v11[11] = v5;
  v6 = *MEMORY[0x1E695C1F8];
  v11[12] = *MEMORY[0x1E695C328];
  v11[13] = v6;
  v7 = *MEMORY[0x1E695C348];
  v11[14] = *MEMORY[0x1E695C2C8];
  v11[15] = v7;
  v8 = *MEMORY[0x1E695C340];
  v11[16] = *MEMORY[0x1E695C350];
  v11[17] = v8;
  v11[18] = *MEMORY[0x1E695C358];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:19];
  v10 = defaultKeysForValuesToPersist_cn_once_object_3;
  defaultKeysForValuesToPersist_cn_once_object_3 = v9;
}

+ (BOOL)createNewMeContact:(id)contact inStore:(id)store
{
  v15 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  storeCopy = store;
  if ([contactCopy saveContactInStore:storeCopy group:0 container:0])
  {
    v12 = 0;
    v8 = [storeCopy setMeContact:contactCopy error:&v12];
    propertyGroupItemLog2 = v12;
    if (propertyGroupItemLog2)
    {
      propertyGroupItemLog = [self propertyGroupItemLog];
      if (os_log_type_enabled(propertyGroupItemLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v14 = propertyGroupItemLog2;
        _os_log_impl(&dword_199A75000, propertyGroupItemLog, OS_LOG_TYPE_DEFAULT, "could not set new me contact: %{private}@", buf, 0xCu);
      }
    }
  }

  else
  {
    propertyGroupItemLog2 = [self propertyGroupItemLog];
    if (os_log_type_enabled(propertyGroupItemLog2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_199A75000, propertyGroupItemLog2, OS_LOG_TYPE_DEFAULT, "could not save new me contact", buf, 2u);
    }

    v8 = 0;
  }

  return v8;
}

+ (id)mutableCopyOfContact:(id)contact byCopyingModificationsAndValuesForKeysOnly:(id)only
{
  contactCopy = contact;
  v7 = [self mutableCopyOfContact:contactCopy byCopyingValuesForKeysOnly:only];
  v8 = [contactCopy diffToSnapshotAndReturnError:0];

  v9 = *MEMORY[0x1E6996530];
  updates = [v8 updates];
  LOBYTE(v9) = (*(v9 + 16))(v9, updates);

  if (v9)
  {
    v11 = v7;
  }

  else
  {
    v12 = [v8 contactByApplyingUpdatesToContact:v7];
    v11 = [v12 mutableCopy];
  }

  return v11;
}

+ (id)mutableCopyOfContact:(id)contact byCopyingValuesForKeysOnly:(id)only
{
  v26 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __84__CNDonatedMeCardPersistenceHelper_mutableCopyOfContact_byCopyingValuesForKeysOnly___block_invoke;
  v23[3] = &unk_1E74E5A18;
  v6 = contactCopy;
  v24 = v6;
  v7 = [only _cn_filter:v23];
  v8 = [v7 _cn_map:&__block_literal_global_5103];
  v9 = [v8 _cn_filter:&__block_literal_global_4_5104];

  v10 = objc_alloc_init(MEMORY[0x1E695CF18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        v17 = [v16 CNValueForContact:{v6, v19}];
        [v16 setCNValue:v17 onContact:v10];
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v13);
  }

  return v10;
}

id __84__CNDonatedMeCardPersistenceHelper_mutableCopyOfContact_byCopyingValuesForKeysOnly___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695CD00];
  v3 = a2;
  v4 = [v2 contactPropertiesByKey];
  v5 = [v4 objectForKeyedSubscript:v3];

  return v5;
}

@end