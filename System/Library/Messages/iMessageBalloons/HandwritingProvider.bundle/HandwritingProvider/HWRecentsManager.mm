@interface HWRecentsManager
+ (id)sharedManager;
- (BOOL)_defaultsLoaded;
- (HWRecentsManager)init;
- (NSArray)items;
- (void)_addItem:(id)a3 dataRepresentation:(id)a4 persist:(BOOL)a5;
- (void)_deleteItem:(id)a3 notify:(BOOL)a4;
- (void)_loadDefaultItems;
- (void)_loadItemsFromIMRecentItemsList;
- (void)_loadItemsFromNSUserDefaults;
- (void)_loadStoredItems;
- (void)_notifyChanges;
- (void)_storeItemAsData:(id)a3 optionalData:(id)a4 persist:(BOOL)a5;
- (void)_storeItemDataToDefaults:(id)a3 withUUID:(id)a4 persist:(BOOL)a5;
- (void)_synchronizeHandwritingToDefaults;
- (void)reloadStoredItems;
@end

@implementation HWRecentsManager

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_101F8;
  block[3] = &unk_28780;
  block[4] = a1;
  if (qword_322B8 != -1)
  {
    dispatch_once(&qword_322B8, block);
  }

  v2 = qword_322B0;

  return v2;
}

- (HWRecentsManager)init
{
  v11.receiver = self;
  v11.super_class = HWRecentsManager;
  v2 = [(HWRecentsManager *)&v11 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    cachedSortedItems = v2->_cachedSortedItems;
    v2->_cachedSortedItems = v3;

    v5 = +[NSMutableDictionary dictionary];
    itemsData = v2->_itemsData;
    v2->_itemsData = v5;

    v2->_defaultsLoaded = 0;
    v2->_storedItemsLoaded = 0;
    v7 = [NSUserDefaults alloc];
    v8 = [v7 initWithSuiteName:HWPreferencesDomain];
    handwritingDefaults = v2->_handwritingDefaults;
    v2->_handwritingDefaults = v8;
  }

  return v2;
}

- (NSArray)items
{
  if (!self->_storedItemsLoaded)
  {
    [(HWRecentsManager *)self _loadStoredItems];
  }

  cachedSortedItems = self->_cachedSortedItems;

  return cachedSortedItems;
}

- (void)reloadStoredItems
{
  if (self->_storedItemsLoaded)
  {
    [(HWRecentsManager *)self _loadItemsFromIMRecentItemsList];
  }
}

- (void)_addItem:(id)a3 dataRepresentation:(id)a4 persist:(BOOL)a5
{
  v5 = a5;
  v18 = a3;
  v8 = a4;
  v9 = [v18 uuid];
  if (v9 && (v10 = v9, [v18 drawing], v11 = objc_claimAutoreleasedReturnValue(), IsValid = DKDrawingIsValid(), v11, v10, IsValid))
  {
    itemsData = self->_itemsData;
    v14 = [v18 uuid];
    v15 = [v14 UUIDString];
    v16 = [(NSMutableDictionary *)itemsData valueForKey:v15];

    if (!v16)
    {
      [(NSMutableArray *)self->_cachedSortedItems addObject:v18];
      [(HWRecentsManager *)self _sortItems];
      [(HWRecentsManager *)self _storeItemAsData:v18 optionalData:v8 persist:v5];
      [(HWRecentsManager *)self _notifyChanges];
    }
  }

  else
  {
    v17 = [v18 drawing];
    NSLog(@"Attempted to add invalid handwriting: %@ drawing: %@", v18, v17);
  }
}

- (void)_deleteItem:(id)a3 notify:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    v17 = v6;
    if ([(NSMutableArray *)self->_cachedSortedItems containsObject:v6])
    {
      itemsData = self->_itemsData;
      v8 = [v17 uuid];
      v9 = [v8 UUIDString];
      v10 = [(NSMutableDictionary *)itemsData objectForKey:v9];

      v11 = [objc_opt_class() recentsDomain];
      v12 = IMSharedHelperMD5OfData();
      v13 = +[IMRecentItemsList sharedInstance];
      [v13 deleteRecentItemWithData:v10 GUID:v12 forDomain:v11];

      [(NSMutableArray *)self->_cachedSortedItems removeObject:v17];
      v14 = self->_itemsData;
      v15 = [v17 uuid];
      v16 = [v15 UUIDString];
      [(NSMutableDictionary *)v14 removeObjectForKey:v16];

      [(HWRecentsManager *)self _sortItems];
      if (v4)
      {
        [(HWRecentsManager *)self _notifyChanges];
      }
    }
  }

  _objc_release_x1();
}

- (void)_notifyChanges
{
  v3 = [NSNotification notificationWithName:HWRecentsManagerUpdatedNotification object:self];
  v2 = +[NSNotificationQueue defaultQueue];
  [v2 enqueueNotification:v3 postingStyle:2 coalesceMask:1 forModes:0];
}

- (void)_storeItemAsData:(id)a3 optionalData:(id)a4 persist:(BOOL)a5
{
  v5 = a5;
  v13 = a3;
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [HWEncoding encodeHandwriting:v13 compress:1];
    if (!v10)
    {
      goto LABEL_6;
    }
  }

  v11 = [v13 uuid];

  if (v11)
  {
    v12 = [v13 uuid];
    [(HWRecentsManager *)self _storeItemDataToDefaults:v10 withUUID:v12 persist:v5];

    goto LABEL_7;
  }

LABEL_6:
  NSLog(@"Attempted to add nil data to defaults %s.", "[HWRecentsManager _storeItemAsData:optionalData:persist:]");
LABEL_7:
}

- (void)_storeItemDataToDefaults:(id)a3 withUUID:(id)a4 persist:(BOOL)a5
{
  v5 = a5;
  v15 = a3;
  v8 = a4;
  if (v15 && v8)
  {
    if (v5)
    {
      v9 = [objc_opt_class() recentsDomain];
      v10 = v15;
      v11 = IMSharedHelperMD5OfData();
      v12 = +[IMRecentItemsList sharedInstance];
      [v12 addRecentItemWithData:v10 GUID:v11 infoDictionary:0 forDomain:v9];
    }

    itemsData = self->_itemsData;
    v14 = [v8 UUIDString];
    [(NSMutableDictionary *)itemsData setObject:v15 forKey:v14];
  }

  else
  {
    NSLog(@"Attempted to store nil data to defaults %s.", "[HWRecentsManager _storeItemDataToDefaults:withUUID:persist:]");
  }
}

- (void)_loadStoredItems
{
  if (!self->_storedItemsLoaded)
  {
    self->_storedItemsLoaded = 1;
    if (![(HWRecentsManager *)self _defaultsLoaded])
    {
      [(HWRecentsManager *)self _loadDefaultItems];
    }

    [(HWRecentsManager *)self _loadItemsFromIMRecentItemsList];
  }
}

- (void)_loadItemsFromIMRecentItemsList
{
  v3 = [objc_opt_class() recentsDomain];
  v4 = +[IMRecentItemsList sharedInstance];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10A34;
  v5[3] = &unk_289B0;
  v5[4] = self;
  [v4 fetchRecentItemsForDomain:v3 completion:v5];
}

- (void)_loadItemsFromNSUserDefaults
{
  v2 = [(NSUserDefaults *)self->_handwritingDefaults objectForKey:HWPreferencesStoredItemsDictionaryKey];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [v2 allKeys];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [v2 objectForKey:*(*(&v14 + 1) + 8 * i)];
        if (v8)
        {
          v9 = [HWEncoding decodeHandwritingFromData:v8];
          v10 = v9;
          if (v9)
          {
            v11 = [v9 drawing];
            IsValid = DKDrawingIsValid();

            if (IsValid)
            {
              [(HWRecentsManager *)self _addItem:v10 dataRepresentation:v8 persist:0];
            }
          }
        }

        else
        {
          NSLog(@"%s encoding handwriting for storage failed.", "[HWRecentsManager _loadItemsFromNSUserDefaults]");
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  [(HWRecentsManager *)self _synchronizeHandwritingToDefaults];
}

- (void)_synchronizeHandwritingToDefaults
{
  [(NSUserDefaults *)self->_handwritingDefaults setObject:self->_itemsData forKey:HWPreferencesStoredItemsDictionaryKey];
  handwritingDefaults = self->_handwritingDefaults;

  [(NSUserDefaults *)handwritingDefaults synchronize];
}

- (void)_loadDefaultItems
{
  if (![(HWRecentsManager *)self _defaultsLoaded])
  {
    self->_defaultsLoaded = 1;
    [(NSUserDefaults *)self->_handwritingDefaults setBool:1 forKey:HWPreferencesDefaultsLoadedKey];
    [(NSUserDefaults *)self->_handwritingDefaults setInteger:3 forKey:HWPreferencesVersionKey];
    v3 = +[NSBundle hw_handwritingPluginBundle];
    v4 = +[NSLocale preferredLanguages];
    v5 = [v4 mutableCopy];
    v50 = v3;
    v59 = [v3 localizations];
    v6 = +[NSMutableOrderedSet orderedSet];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    obj = v4;
    v7 = [obj countByEnumeratingWithState:&v69 objects:v75 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v70;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v70 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v69 + 1) + 8 * i);
          v12 = [NSBundle preferredLocalizationsFromArray:v59 forPreferences:v5];
          v13 = [v12 firstObject];

          [v6 addObject:v13];
          if ([v5 count])
          {
            [v5 removeObject:v11];
          }
        }

        v8 = [obj countByEnumeratingWithState:&v69 objects:v75 count:16];
      }

      while (v8);
    }

    v58 = v5;

    v14 = +[NSMutableOrderedSet orderedSet];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v49 = v6;
    v15 = [v49 countByEnumeratingWithState:&v65 objects:v74 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v66;
      do
      {
        for (j = 0; j != v16; j = j + 1)
        {
          if (*v66 != v18)
          {
            objc_enumerationMutation(v49);
          }

          v20 = *(*(&v65 + 1) + 8 * j);
          v21 = [v20 containsString:@"en"];
          v22 = [v50 URLsForResourcesWithExtension:@"data" subdirectory:0 localization:v20];
          v23 = v22;
          if (v21)
          {
            v24 = [v22 sortedArrayUsingComparator:&stru_289F0];

            v23 = v24;
          }

          if ([v23 count])
          {
            [v14 addObjectsFromArray:v23];

            if (v17 > 1)
            {
              goto LABEL_24;
            }

            ++v17;
          }

          else
          {
          }
        }

        v16 = [v49 countByEnumeratingWithState:&v65 objects:v74 count:16];
      }

      while (v16);
    }

LABEL_24:

    if (![v14 count])
    {
      NSLog(@"Failed to find drawings for any of the following localizations %@", obj);
    }

    v52 = [objc_opt_class() recentsDomain];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v55 = v14;
    v25 = [v55 countByEnumeratingWithState:&v61 objects:v73 count:16];
    v26 = v58;
    if (v25)
    {
      v27 = v25;
      v28 = 0;
      v29 = *v62;
      v30 = &_sl_dlopen_ptr;
      v53 = *v62;
      do
      {
        v31 = 0;
        v32 = 60 * v28;
        v51 = &v28[v27];
        v54 = v27;
        do
        {
          if (*v62 != v29)
          {
            objc_enumerationMutation(v55);
          }

          v33 = *(*(&v61 + 1) + 8 * v31);
          v34 = objc_autoreleasePoolPush();
          v35 = [NSData dataWithContentsOfURL:v33];
          if ([v35 length])
          {
            v60 = v34;
            v36 = v27;
            v37 = v29;
            v38 = [v30[123] decodeHandwritingFromData:v35];
            v39 = [v38 uuid];
            v40 = [v39 UUIDString];

            v41 = [v38 drawing];
            v42 = v30;
            IsValid = DKDrawingIsValid();

            if (IsValid)
            {
              v44 = v40 == 0;
            }

            else
            {
              v44 = 1;
            }

            if (v44)
            {
              NSLog(@"%s invalid drawing loaded from default handwriting set.", "[HWRecentsManager _loadDefaultItems]");
              v30 = v42;
              v29 = v37;
              v27 = v36;
              v34 = v60;
            }

            else
            {
              v57 = [NSDate dateWithTimeIntervalSince1970:978307200.0 - v32];
              [v38 setCreationDate:?];
              v45 = [v42[123] encodeHandwriting:v38 compress:1];
              v46 = v45;
              if (v45)
              {
                v47 = IMSharedHelperMD5OfData();
                v48 = +[IMRecentItemsList sharedInstance];
                [v48 addRecentItemWithData:v46 GUID:v47 infoDictionary:0 forDomain:v52];
              }

              else
              {
                v47 = [v38 uuid];
                v48 = [v47 UUIDString];
                NSLog(@"%s failed to re-compress drawing from default handwriting set %@.", "[HWRecentsManager _loadDefaultItems]", v48);
              }

              v34 = v60;

              v29 = v53;
              v27 = v54;
              v30 = &_sl_dlopen_ptr;
            }

            v26 = v58;
          }

          objc_autoreleasePoolPop(v34);
          ++v31;
          v32 += 60;
        }

        while (v27 != v31);
        v27 = [v55 countByEnumeratingWithState:&v61 objects:v73 count:16];
        v28 = v51;
      }

      while (v27);
    }
  }
}

- (BOOL)_defaultsLoaded
{
  if (self->_defaultsLoadedChecked)
  {
    defaultsLoaded = self->_defaultsLoaded;
  }

  else
  {
    if ([(NSUserDefaults *)self->_handwritingDefaults integerForKey:HWPreferencesVersionKey]!= &dword_0 + 3)
    {
      [(NSUserDefaults *)self->_handwritingDefaults removeObjectForKey:HWPreferencesDefaultsLoadedKey];
      [(NSUserDefaults *)self->_handwritingDefaults removeObjectForKey:HWPreferencesStoredItemsDictionaryKey];
      [(NSUserDefaults *)self->_handwritingDefaults synchronize];
      NSLog(@"Deleting recents and resetting defaults");
    }

    defaultsLoaded = [(NSUserDefaults *)self->_handwritingDefaults BOOLForKey:HWPreferencesDefaultsLoadedKey];
    self->_defaultsLoaded = defaultsLoaded;
    self->_defaultsLoadedChecked = 1;
  }

  return defaultsLoaded & 1;
}

@end