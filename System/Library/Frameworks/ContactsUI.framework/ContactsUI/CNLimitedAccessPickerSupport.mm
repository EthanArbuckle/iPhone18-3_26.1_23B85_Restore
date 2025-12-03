@interface CNLimitedAccessPickerSupport
+ (id)allowedIdentifiersForBundleID:(id)d;
+ (id)appNameForBundleId:(id)id;
+ (id)contactStoreForBundleId:(id)id;
+ (id)contactsFromIdentifiers:(id)identifiers withBundleId:(id)id;
+ (void)addContactsToLimitedAccess:(id)access forBundleID:(id)d;
+ (void)removeAllLimitedAccessIdentifiersForBundleID:(id)d;
@end

@implementation CNLimitedAccessPickerSupport

+ (id)appNameForBundleId:(id)id
{
  idCopy = id;
  v13 = 0;
  v4 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:idCopy allowPlaceholder:0 error:&v13];
  v9 = v13;
  if (v4)
  {
    localizedName = [v4 localizedName];
  }

  else
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/LimitedAccess/CNLimitedAccessPickerSupport.m", 167, 3, @"Failed to locate app record for: %@, Error: %@", v5, v6, v7, v8, idCopy);
    localizedName = idCopy;
  }

  v11 = localizedName;

  return v11;
}

+ (id)contactStoreForBundleId:(id)id
{
  v3 = MEMORY[0x1E6996760];
  idCopy = id;
  v5 = [v3 alloc];
  mEMORY[0x1E6996768] = [MEMORY[0x1E6996768] sharedConnection];
  v7 = [v5 initWithBundleIdentifier:idCopy managedProfileConnection:mEMORY[0x1E6996768]];

  v8 = objc_alloc_init(MEMORY[0x1E695CE28]);
  currentEnvironment = [MEMORY[0x1E695CE38] currentEnvironment];
  [v8 setEnvironment:currentEnvironment];

  [v8 setManagedConfiguration:v7];
  v10 = [objc_alloc(MEMORY[0x1E695CE18]) initWithConfiguration:v8];

  return v10;
}

+ (void)removeAllLimitedAccessIdentifiersForBundleID:(id)d
{
  dCopy = d;
  v4 = [CNLimitedAccessPickerSupport contactStoreForBundleId:dCopy];
  [v4 purgeLimitedAccessRecordsForBundle:dCopy];
}

+ (void)addContactsToLimitedAccess:(id)access forBundleID:(id)d
{
  dCopy = d;
  accessCopy = access;
  v8 = [CNLimitedAccessPickerSupport contactStoreForBundleId:dCopy];
  v7 = [accessCopy _cn_map:*MEMORY[0x1E695C408]];

  [v8 addLimitedAccessForBundle:dCopy contactIdentifiers:v7];
}

+ (id)allowedIdentifiersForBundleID:(id)d
{
  dCopy = d;
  v4 = [CNLimitedAccessPickerSupport contactStoreForBundleId:dCopy];
  v5 = MEMORY[0x1E695DFD8];
  v6 = [v4 fetchLimitedAccessContactIdentifiersForBundle:dCopy];

  v7 = [v5 setWithArray:v6];

  return v7;
}

+ (id)contactsFromIdentifiers:(id)identifiers withBundleId:(id)id
{
  v28 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  idCopy = id;
  if (identifiersCopy && [identifiersCopy count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v8 = [CNLimitedAccessPickerSupport contactStoreForBundleId:idCopy];
    v9 = objc_alloc(MEMORY[0x1E695CD78]);
    v10 = [v9 initWithKeysToFetch:MEMORY[0x1E695E0F0]];
    v11 = [MEMORY[0x1E695CD58] predicateForContactsWithIdentifiers:identifiersCopy];
    [v10 setPredicate:v11];

    [v10 setUnifyResults:1];
    v25 = 0;
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __69__CNLimitedAccessPickerSupport_contactsFromIdentifiers_withBundleId___block_invoke;
    v23 = &unk_1E74E3E70;
    v12 = array;
    v24 = v12;
    v13 = [v8 enumerateContactsWithFetchRequest:v10 error:&v25 usingBlock:&v20];
    v14 = v25;
    if ((v13 & 1) == 0)
    {
      v15 = CNUILogContactList();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v14 localizedDescription];
        *buf = 138412290;
        v27 = localizedDescription;
        _os_log_error_impl(&dword_199A75000, v15, OS_LOG_TYPE_ERROR, "Limited Picker fetch error: %@", buf, 0xCu);
      }
    }

    v16 = v24;
    array2 = v12;
  }

  else
  {
    array2 = [MEMORY[0x1E695DEC8] array];
  }

  return array2;
}

@end