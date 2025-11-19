@interface CNLimitedAccessPickerSupport
+ (id)allowedIdentifiersForBundleID:(id)a3;
+ (id)appNameForBundleId:(id)a3;
+ (id)contactStoreForBundleId:(id)a3;
+ (id)contactsFromIdentifiers:(id)a3 withBundleId:(id)a4;
+ (void)addContactsToLimitedAccess:(id)a3 forBundleID:(id)a4;
+ (void)removeAllLimitedAccessIdentifiersForBundleID:(id)a3;
@end

@implementation CNLimitedAccessPickerSupport

+ (id)appNameForBundleId:(id)a3
{
  v3 = a3;
  v13 = 0;
  v4 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v3 allowPlaceholder:0 error:&v13];
  v9 = v13;
  if (v4)
  {
    v10 = [v4 localizedName];
  }

  else
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/LimitedAccess/CNLimitedAccessPickerSupport.m", 167, 3, @"Failed to locate app record for: %@, Error: %@", v5, v6, v7, v8, v3);
    v10 = v3;
  }

  v11 = v10;

  return v11;
}

+ (id)contactStoreForBundleId:(id)a3
{
  v3 = MEMORY[0x1E6996760];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [MEMORY[0x1E6996768] sharedConnection];
  v7 = [v5 initWithBundleIdentifier:v4 managedProfileConnection:v6];

  v8 = objc_alloc_init(MEMORY[0x1E695CE28]);
  v9 = [MEMORY[0x1E695CE38] currentEnvironment];
  [v8 setEnvironment:v9];

  [v8 setManagedConfiguration:v7];
  v10 = [objc_alloc(MEMORY[0x1E695CE18]) initWithConfiguration:v8];

  return v10;
}

+ (void)removeAllLimitedAccessIdentifiersForBundleID:(id)a3
{
  v3 = a3;
  v4 = [CNLimitedAccessPickerSupport contactStoreForBundleId:v3];
  [v4 purgeLimitedAccessRecordsForBundle:v3];
}

+ (void)addContactsToLimitedAccess:(id)a3 forBundleID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v8 = [CNLimitedAccessPickerSupport contactStoreForBundleId:v5];
  v7 = [v6 _cn_map:*MEMORY[0x1E695C408]];

  [v8 addLimitedAccessForBundle:v5 contactIdentifiers:v7];
}

+ (id)allowedIdentifiersForBundleID:(id)a3
{
  v3 = a3;
  v4 = [CNLimitedAccessPickerSupport contactStoreForBundleId:v3];
  v5 = MEMORY[0x1E695DFD8];
  v6 = [v4 fetchLimitedAccessContactIdentifiersForBundle:v3];

  v7 = [v5 setWithArray:v6];

  return v7;
}

+ (id)contactsFromIdentifiers:(id)a3 withBundleId:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v5 && [v5 count])
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v8 = [CNLimitedAccessPickerSupport contactStoreForBundleId:v6];
    v9 = objc_alloc(MEMORY[0x1E695CD78]);
    v10 = [v9 initWithKeysToFetch:MEMORY[0x1E695E0F0]];
    v11 = [MEMORY[0x1E695CD58] predicateForContactsWithIdentifiers:v5];
    [v10 setPredicate:v11];

    [v10 setUnifyResults:1];
    v25 = 0;
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __69__CNLimitedAccessPickerSupport_contactsFromIdentifiers_withBundleId___block_invoke;
    v23 = &unk_1E74E3E70;
    v12 = v7;
    v24 = v12;
    v13 = [v8 enumerateContactsWithFetchRequest:v10 error:&v25 usingBlock:&v20];
    v14 = v25;
    if ((v13 & 1) == 0)
    {
      v15 = CNUILogContactList();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v19 = [v14 localizedDescription];
        *buf = 138412290;
        v27 = v19;
        _os_log_error_impl(&dword_199A75000, v15, OS_LOG_TYPE_ERROR, "Limited Picker fetch error: %@", buf, 0xCu);
      }
    }

    v16 = v24;
    v17 = v12;
  }

  else
  {
    v17 = [MEMORY[0x1E695DEC8] array];
  }

  return v17;
}

@end