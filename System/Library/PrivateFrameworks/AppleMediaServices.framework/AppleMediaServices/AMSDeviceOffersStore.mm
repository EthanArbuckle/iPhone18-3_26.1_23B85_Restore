@interface AMSDeviceOffersStore
+ (id)serialsBySubtractingAGroups:(id)groups fromBGroups:(id)bGroups;
+ (id)serialsFromGroups:(id)groups;
+ (id)splitGroups:(id)groups byItem:(id)item;
- (NSArray)cachedRegistrationGroups;
- (NSArray)companionSerialNumbers;
- (NSArray)deviceOffers;
- (NSArray)deviceRegistrationDenyList;
- (NSDictionary)deviceOfferEligibility;
- (void)_dbSetNullableValue:(id)value forKey:(id)key error:(id *)error;
- (void)removeCachedRegistrationItem:(id)item;
- (void)setCachedRegistrationGroups:(id)groups;
- (void)setDeviceOfferEligibility:(id)eligibility;
- (void)setDeviceOffers:(id)offers;
- (void)setDeviceRegistrationDenyList:(id)list;
@end

@implementation AMSDeviceOffersStore

- (NSArray)cachedRegistrationGroups
{
  v19 = *MEMORY[0x1E69E9840];
  if (+[AMSDefaults migratedStorageToDefaultsForNonAMSInternal])
  {
    v2 = +[AMSDefaults deviceGroups];
    if (v2)
    {
LABEL_3:
      v3 = [v2 ams_mapWithTransformIgnoresNil:&__block_literal_global_44];
      goto LABEL_12;
    }
  }

  else
  {
    v4 = [[AMSStorageDatabase alloc] initWithDomain:@"com.apple.AppleMediaServices"];
    v12 = 0;
    v2 = [(AMSStorageDatabase *)v4 valueForKey:@"deviceGroups" error:&v12];
    v5 = v12;
    if (v5)
    {
      v6 = +[AMSLogConfig sharedDeviceOffersConfig];
      if (!v6)
      {
        v6 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v6 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v8 = objc_opt_class();
        v9 = AMSLogKey();
        v10 = AMSLogableError(v5);
        *buf = 138543874;
        v14 = v8;
        v15 = 2114;
        v16 = v9;
        v17 = 2114;
        v18 = v10;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] There was an error fetching cached device groups: %{public}@", buf, 0x20u);
      }
    }

    if (v2)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
LABEL_12:

  return v3;
}

AMSDeviceOfferRegistrationGroup *__48__AMSDeviceOffersStore_cachedRegistrationGroups__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[AMSDeviceOfferRegistrationGroup alloc] initWithDatabaseEntry:v2];

  return v3;
}

- (NSArray)companionSerialNumbers
{
  deviceOfferEligibility = [(AMSDeviceOffersStore *)self deviceOfferEligibility];
  v3 = [deviceOfferEligibility objectForKeyedSubscript:@"companionSerialNumbers"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDictionary)deviceOfferEligibility
{
  v2 = +[AMSDefaults migratedStorageToDefaultsForNonAMSInternal];
  v3 = off_1E73B10E0;
  if (v2)
  {
    v3 = off_1E73B0B88;
  }

  deviceOfferEligibility = [(__objc2_class *)*v3 deviceOfferEligibility];

  return deviceOfferEligibility;
}

- (NSArray)deviceOffers
{
  deviceOfferEligibility = [(AMSDeviceOffersStore *)self deviceOfferEligibility];
  v3 = [deviceOfferEligibility objectForKeyedSubscript:@"deviceOffers"];

  return v3;
}

- (NSArray)deviceRegistrationDenyList
{
  v24 = *MEMORY[0x1E69E9840];
  if (!+[AMSDefaults migratedStorageToDefaultsForNonAMSInternal])
  {
    v5 = [[AMSStorageDatabase alloc] initWithDomain:@"com.apple.AppleMediaServices"];
    v17 = 0;
    v2 = [(AMSStorageDatabase *)v5 valueForKey:@"deviceRegistrationBlacklist" error:&v17];
    v6 = v17;
    if (v6)
    {
      v7 = +[AMSLogConfig sharedDeviceOffersConfig];
      if (!v7)
      {
        v7 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v7 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        v10 = AMSLogKey();
        v11 = AMSLogableError(v6);
        *buf = 138543874;
        v19 = v9;
        v20 = 2114;
        v21 = v10;
        v22 = 2114;
        v23 = v11;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] There was an error fetching denylist: %{public}@", buf, 0x20u);
      }
    }

    if (v2)
    {
      goto LABEL_3;
    }

LABEL_12:
    v4 = 0;
    goto LABEL_15;
  }

  v2 = +[AMSDefaults deviceRegistrationDenyList];
  if (!v2)
  {
    goto LABEL_12;
  }

LABEL_3:
  v3 = v2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

LABEL_15:
  v12 = +[AMSLogConfig sharedConfig];
  if (!v12)
  {
    v12 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v12 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = AMSLogKey();
    *buf = 138543874;
    v19 = v14;
    v20 = 2114;
    v21 = v15;
    v22 = 2114;
    v23 = v4;
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Looking up denylist: %{public}@", buf, 0x20u);
  }

  return v4;
}

- (void)setCachedRegistrationGroups:(id)groups
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [groups ams_mapWithTransformIgnoresNil:&__block_literal_global_21_1];
  if (+[AMSDefaults migratedStorageToDefaultsForNonAMSInternal])
  {
    [AMSDefaults setDeviceGroups:v4];
  }

  else
  {
    v11 = 0;
    [(AMSDeviceOffersStore *)self _dbSetNullableValue:v4 forKey:@"deviceGroups" error:&v11];
    v5 = v11;
    if (v5)
    {
      v6 = +[AMSLogConfig sharedDeviceOffersConfig];
      if (!v6)
      {
        v6 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v6 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v8 = objc_opt_class();
        v9 = AMSLogKey();
        v10 = AMSLogableError(v5);
        *buf = 138543874;
        v13 = v8;
        v14 = 2114;
        v15 = v9;
        v16 = 2114;
        v17 = v10;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] There was an error writing device groups to db: %{public}@", buf, 0x20u);
      }
    }
  }
}

- (void)setDeviceOfferEligibility:(id)eligibility
{
  eligibilityCopy = eligibility;
  v3 = +[AMSDefaults migratedStorageToDefaultsForNonAMSInternal];
  v4 = off_1E73B10E0;
  if (v3)
  {
    v4 = off_1E73B0B88;
  }

  [(__objc2_class *)*v4 setDeviceOfferEligibility:eligibilityCopy];
}

- (void)setDeviceOffers:(id)offers
{
  v4 = MEMORY[0x1E695DF90];
  offersCopy = offers;
  deviceOfferEligibility = [(AMSDeviceOffersStore *)self deviceOfferEligibility];
  v7 = deviceOfferEligibility;
  if (deviceOfferEligibility)
  {
    v8 = deviceOfferEligibility;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F8];
  }

  v10 = [v4 dictionaryWithDictionary:v8];

  [v10 setObject:offersCopy forKeyedSubscript:@"deviceOffers"];
  v9 = [v10 copy];
  [(AMSDeviceOffersStore *)self setDeviceOfferEligibility:v9];
}

- (void)setDeviceRegistrationDenyList:(id)list
{
  v22[2] = *MEMORY[0x1E69E9840];
  listCopy = list;
  v5 = +[AMSLogConfig sharedDeviceOffersConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    *buf = 138544130;
    v18 = v7;
    v19 = 2114;
    v20 = v8;
    v21 = 1024;
    LODWORD(v22[0]) = +[AMSDefaults migratedStorageToDefaultsForNonAMSInternal];
    WORD2(v22[0]) = 2114;
    *(v22 + 6) = listCopy;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Updating device offer denylist (%d): %{public}@", buf, 0x26u);
  }

  if (+[AMSDefaults migratedStorageToDefaultsForNonAMSInternal])
  {
    v9 = listCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    [AMSDefaults setDeviceRegistrationDenyList:v10];
  }

  else
  {
    v16 = 0;
    [(AMSDeviceOffersStore *)self _dbSetNullableValue:listCopy forKey:@"deviceRegistrationBlacklist" error:&v16];
    v10 = v16;
    if (v10)
    {
      v11 = +[AMSLogConfig sharedDeviceOffersConfig];
      if (!v11)
      {
        v11 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v11 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v14 = AMSLogKey();
        v15 = AMSLogableError(v10);
        *buf = 138543874;
        v18 = v13;
        v19 = 2114;
        v20 = v14;
        v21 = 2114;
        v22[0] = v15;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] There was an error writing the device registration denylist to db: %{public}@", buf, 0x20u);
      }
    }
  }
}

- (void)_dbSetNullableValue:(id)value forKey:(id)key error:(id *)error
{
  valueCopy = value;
  keyCopy = key;
  v8 = [[AMSStorageDatabase alloc] initWithDomain:@"com.apple.AppleMediaServices"];
  v9 = v8;
  if (valueCopy)
  {
    [(AMSStorageDatabase *)v8 setValue:valueCopy forKey:keyCopy error:error];
  }

  else
  {
    [(AMSStorageDatabase *)v8 deleteForKey:keyCopy error:error];
  }
}

- (void)removeCachedRegistrationItem:(id)item
{
  itemCopy = item;
  v5 = objc_opt_class();
  cachedRegistrationGroups = [(AMSDeviceOffersStore *)self cachedRegistrationGroups];
  v7 = [v5 splitGroups:cachedRegistrationGroups byItem:itemCopy];

  first = [v7 first];
  second = [v7 second];
  [(AMSDeviceOffersStore *)self setCachedRegistrationGroups:second];
  v9 = [objc_opt_class() serialsBySubtractingAGroups:second fromBGroups:first];
  v10 = MEMORY[0x1E695DFA8];
  deviceRegistrationDenyList = [(AMSDeviceOffersStore *)self deviceRegistrationDenyList];
  v12 = deviceRegistrationDenyList;
  if (deviceRegistrationDenyList)
  {
    v13 = deviceRegistrationDenyList;
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  v14 = [v10 setWithArray:v13];

  [v14 minusSet:v9];
  allObjects = [v14 allObjects];
  [(AMSDeviceOffersStore *)self setDeviceRegistrationDenyList:allObjects];
}

+ (id)splitGroups:(id)groups byItem:(id)item
{
  v27 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  itemCopy = item;
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = groupsCopy;
  v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        registrationItems = [v13 registrationItems];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __43__AMSDeviceOffersStore_splitGroups_byItem___block_invoke;
        v20[3] = &unk_1E73B6F68;
        v21 = itemCopy;
        v15 = [registrationItems ams_anyWithTest:v20];

        if (v15)
        {
          v16 = v7;
        }

        else
        {
          v16 = v8;
        }

        [v16 addObject:v13];
      }

      v10 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v17 = [[AMSPair alloc] initWithFirst:v7 second:v8];

  return v17;
}

uint64_t __43__AMSDeviceOffersStore_splitGroups_byItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 serialNumber];
  v5 = [v3 serialNumber];

  v6 = [v4 isEqualToString:v5];
  return v6;
}

+ (id)serialsBySubtractingAGroups:(id)groups fromBGroups:(id)bGroups
{
  bGroupsCopy = bGroups;
  v7 = [self serialsFromGroups:groups];
  v8 = MEMORY[0x1E695DFA8];
  v9 = [self serialsFromGroups:bGroupsCopy];

  v10 = [v8 setWithSet:v9];

  [v10 minusSet:v7];
  v11 = [v10 copy];

  return v11;
}

+ (id)serialsFromGroups:(id)groups
{
  v19 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = groupsCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        registrationItems = [*(*(&v14 + 1) + 8 * i) registrationItems];
        v11 = [registrationItems ams_mapWithTransform:&__block_literal_global_29_0];

        [v4 addObjectsFromArray:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];

  return v12;
}

@end