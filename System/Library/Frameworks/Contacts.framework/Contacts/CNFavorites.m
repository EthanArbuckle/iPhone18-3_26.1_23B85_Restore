@interface CNFavorites
+ (id)defaultFavoritesLocation;
+ (id)favoritesPath;
+ (id)sharedInstance;
+ (void)flushSingleton;
- (BOOL)_isValueForEntry:(id)a3 equalToValue:(id)a4;
- (BOOL)isFull;
- (BOOL)saveAllFavorites;
- (CNFavorites)init;
- (CNFavorites)initWithContactStore:(id)a3 favoritesStore:(id)a4;
- (CNFavorites)initWithContactStore:(id)a3 favoritesStore:(id)a4 logger:(id)a5;
- (NSArray)entries;
- (NSMutableDictionary)entriesByContactIdentifier;
- (id)_uniqueRematchedEntries:(id)a3;
- (id)defaultFavoritesStoreWithContactStore:(id)a3;
- (id)entriesForContact:(id)a3;
- (id)entriesForContact:(id)a3 propertyKey:(id)a4 labeledValueIdentifier:(id)a5 actionType:(id)a6 bundleIdentifier:(id)a7;
- (void)_addEntryToMap:(id)a3;
- (void)_entriesChangedExternally;
- (void)_postChangeNotification;
- (void)_removeEntryFromMap:(id)a3;
- (void)addEntry:(id)a3;
- (void)dealloc;
- (void)loadAllFavoritesIfNecessary;
- (void)moveEntryAtIndex:(int64_t)a3 toIndex:(int64_t)a4;
- (void)registerForDistributedNotifications;
- (void)rematchEntriesWithOptions:(unint64_t)a3;
- (void)removeAllEntries;
- (void)removeEntryAtIndex:(int64_t)a3;
- (void)save;
- (void)unregisterForDistributedNotifications;
@end

@implementation CNFavorites

- (void)registerForDistributedNotifications
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _handleFavoritesChangedExternally, @"CNFavoritesChangedExternallyNotification", 0, 1025);
}

- (NSArray)entries
{
  [(CNFavorites *)self loadAllFavoritesIfNecessary];
  v3 = self;
  objc_sync_enter(v3);
  v4 = v3->_entries;
  objc_sync_exit(v3);

  return v4;
}

- (NSMutableDictionary)entriesByContactIdentifier
{
  [(CNFavorites *)self loadAllFavoritesIfNecessary];
  entriesByContactIdentifier = self->_entriesByContactIdentifier;

  return entriesByContactIdentifier;
}

- (void)loadAllFavoritesIfNecessary
{
  v2 = self;
  objc_sync_enter(v2);
  p_entries = &v2->_entries;
  if (!v2->_entries)
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:50];
    v5 = *p_entries;
    *p_entries = v4;
  }

  if (!v2->_entriesByContactIdentifier)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:50];
    entriesByContactIdentifier = v2->_entriesByContactIdentifier;
    v2->_entriesByContactIdentifier = v6;
  }

  if ([(CNFavorites *)v2 needsReload]&& [CNContactStore authorizationStatusForEntityType:0]== CNAuthorizationStatusAuthorized)
  {
    [(NSMutableDictionary *)v2->_entriesByContactIdentifier removeAllObjects];
    [(CNFavorites *)v2 setNeedsReload:0];
    v8 = [MEMORY[0x1E69966B8] sharedInstance];
    v9 = [v8 isUnlockedSinceBoot];

    if (v9)
    {
      location = 0;
      p_location = &location;
      v20 = 0x3032000000;
      v21 = __Block_byref_object_copy__39;
      v22 = __Block_byref_object_dispose__39;
      v23 = 0;
      v10 = [(CNFavorites *)v2 logger];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __42__CNFavorites_loadAllFavoritesIfNecessary__block_invoke_32;
      v17[3] = &unk_1E74157A8;
      v17[4] = v2;
      v17[5] = &location;
      [v10 readingFavorites:v17];

      v11 = [p_location[5] copy];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = MEMORY[0x1E695E0F0];
      }

      objc_storeStrong(&v2->_entries, v13);

      _Block_object_dispose(&location, 8);
    }

    else
    {
      v14 = [(CNFavorites *)v2 logger];
      [v14 reportFavoritesAccessedBeforeFirstUnlock];

      objc_initWeak(&location, v2);
      v15 = [MEMORY[0x1E69966B8] sharedInstance];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __42__CNFavorites_loadAllFavoritesIfNecessary__block_invoke;
      v24[3] = &unk_1E7416E38;
      objc_copyWeak(&v25, &location);
      [v15 addUnlockHandlerWithIdentifier:@"CNFavorites" block:v24];

      v16 = *p_entries;
      *p_entries = MEMORY[0x1E695E0F0];

      objc_destroyWeak(&v25);
      objc_destroyWeak(&location);
    }
  }

  objc_sync_exit(v2);
}

- (void)dealloc
{
  [(CNFavorites *)self unregisterForDistributedNotifications];
  v3 = [MEMORY[0x1E69966B8] sharedInstance];
  [v3 removeUnlockHandlerWithIdentifier:@"CNFavorites"];

  v4.receiver = self;
  v4.super_class = CNFavorites;
  [(CNFavorites *)&v4 dealloc];
}

- (void)unregisterForDistributedNotifications
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"CNFavoritesChangedExternallyNotification", 0);
}

+ (id)sharedInstance
{
  if (sFavoritesOnceToken != -1)
  {
    +[CNFavorites sharedInstance];
  }

  v3 = sFavorites;

  return v3;
}

void __29__CNFavorites_sharedInstance__block_invoke()
{
  v2 = objc_alloc_init(CNContactStore);
  v0 = [[CNFavorites alloc] initWithContactStore:v2];
  v1 = sFavorites;
  sFavorites = v0;
}

+ (void)flushSingleton
{
  v2 = sFavorites;
  sFavorites = 0;

  sFavoritesOnceToken = 0;
}

+ (id)favoritesPath
{
  v2 = [a1 defaultFavoritesLocation];
  v3 = [v2 URLByAppendingPathComponent:@"com.apple.mobilephone.speeddial.plist" isDirectory:0];

  v4 = [v3 relativePath];

  return v4;
}

+ (id)defaultFavoritesLocation
{
  v2 = [MEMORY[0x1E6996700] sharedInstance];
  v3 = [v2 libraryFolderURL];

  v4 = [v3 URLByAppendingPathComponent:@"Preferences" isDirectory:1];

  return v4;
}

- (CNFavorites)initWithContactStore:(id)a3 favoritesStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[CNContactsEnvironment currentEnvironment];
  v9 = [v8 loggerProvider];
  v10 = [v9 favoritesLogger];

  if (!v7)
  {
    v7 = [(CNFavorites *)self defaultFavoritesStoreWithContactStore:v6];
  }

  v11 = [(CNFavorites *)self initWithContactStore:v6 favoritesStore:v7 logger:v10];

  return v11;
}

- (CNFavorites)initWithContactStore:(id)a3 favoritesStore:(id)a4 logger:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = CNFavorites;
  v12 = [(CNFavorites *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_contactStore, a3);
    objc_storeStrong(&v13->_favoritesStore, a4);
    objc_storeStrong(&v13->_logger, a5);
    v13->_needsReload = 1;
    [(CNFavoritesStore *)v13->_favoritesStore setLogger:v11];
    [(CNFavorites *)v13 registerForDistributedNotifications];
    v14 = v13;
  }

  return v13;
}

- (CNFavorites)init
{
  v3 = [objc_opt_class() sharedInstance];

  return v3;
}

- (id)defaultFavoritesStoreWithContactStore:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AE30] processInfo];
  v5 = [v4 environment];
  v6 = [v5 objectForKeyedSubscript:@"CN_UNIT_TESTING"];
  if ([v6 _cn_caseInsensitiveIsEqual:@"YES"] & 1) != 0 || (objc_msgSend(v6, "_cn_caseInsensitiveIsEqual:", @"Y") & 1) != 0 || (objc_msgSend(v6, "_cn_caseInsensitiveIsEqual:", @"TRUE") & 1) != 0 || (objc_msgSend(v6, "_cn_caseInsensitiveIsEqual:", @"T"))
  {

LABEL_6:
    v7 = off_1E7410758;
    goto LABEL_7;
  }

  v10 = [v6 integerValue];

  if (v10)
  {
    goto LABEL_6;
  }

  v11 = [MEMORY[0x1E69966E8] currentEnvironment];
  v12 = [v11 featureFlags];
  v13 = [v12 isFeatureEnabled:18];

  if ((v13 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = off_1E7410768;
LABEL_7:
  v8 = [objc_alloc(*v7) initWithContactStore:v3];

  return v8;
}

void __42__CNFavorites_loadAllFavoritesIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _postChangeNotification];
}

uint64_t __42__CNFavorites_loadAllFavoritesIfNecessary__block_invoke_32(uint64_t a1)
{
  v2 = [*(a1 + 32) favoritesStore];
  v3 = [v2 fetchEntries];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(*(a1 + 40) + 8) + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__CNFavorites_loadAllFavoritesIfNecessary__block_invoke_2;
  v8[3] = &unk_1E7417B18;
  v8[4] = *(a1 + 32);
  return [v6 _cn_each:v8];
}

- (BOOL)isFull
{
  v2 = [(CNFavorites *)self entries];
  v3 = [v2 count] > 0x31;

  return v3;
}

- (id)entriesForContact:(id)a3
{
  v4 = a3;
  v5 = [(CNFavorites *)self entriesByContactIdentifier];

  if (v5)
  {
    v6 = [(CNFavorites *)self entriesByContactIdentifier];
    v7 = [v4 identifier];
    v8 = [v6 objectForKeyedSubscript:v7];

    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [MEMORY[0x1E695DEC8] arrayWithArray:v8];
      }

      else
      {
        [MEMORY[0x1E695DEC8] arrayWithObject:v8];
      }
      v5 = ;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)_isValueForEntry:(id)a3 equalToValue:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 contactProperty];
  v8 = [v7 value];
  v9 = [v6 isEqualToString:v8];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v11 = [v5 contactProperty];
    v12 = [v11 key];
    v13 = [v12 isEqualToString:@"phoneNumbers"];

    if (v13)
    {
      v14 = [v5 contactProperty];
      v15 = [v14 value];
      v10 = [CNFavoritesEntry arePhoneNumbersEqual:v6 other:v15];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)entriesForContact:(id)a3 propertyKey:(id)a4 labeledValueIdentifier:(id)a5 actionType:(id)a6 bundleIdentifier:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(CNFavorites *)self entriesForContact:v12];
  v18 = 0;
  if (v13 && v14)
  {
    v19 = [v12 valueForKey:v13];
    v20 = [CNLabeledValue labeledValueWithIdentifier:v14 inArray:v19];
    v18 = v20 != 0;
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __96__CNFavorites_entriesForContact_propertyKey_labeledValueIdentifier_actionType_bundleIdentifier___block_invoke;
  v27[3] = &unk_1E7417B40;
  v28 = v15;
  v29 = v13;
  v30 = v16;
  v31 = v14;
  v32 = v18;
  v21 = v14;
  v22 = v16;
  v23 = v13;
  v24 = v15;
  v25 = [v17 _cn_filter:v27];

  return v25;
}

uint64_t __96__CNFavorites_entriesForContact_propertyKey_labeledValueIdentifier_actionType_bundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v7 = v6;
  v8 = *(a1 + 32);
  if (v8)
  {
    v2 = [v6 actionType];
    if (![v8 isEqualToString:v2])
    {
      v9 = 0;
LABEL_19:

      goto LABEL_20;
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = [v7 contactProperty];
    v3 = [v11 key];
    if (([v10 isEqualToString:v3] & 1) == 0)
    {

      v9 = 0;
      goto LABEL_18;
    }

    v16 = v11;
  }

  v12 = *(a1 + 48);
  if (!v12 || ([v7 bundleIdentifier], v4 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v12, "isEqualToString:", v4) & 1) != 0))
  {
    v13 = *(a1 + 56);
    v9 = v13 == 0;
    if (v13 && (*(a1 + 64) & 1) != 0)
    {
      v14 = [v7 labeledValueIdentifier];
      v9 = [v13 isEqualToString:v14];
    }

    if (v12)
    {
    }
  }

  else
  {

    v9 = 0;
  }

  if (v10)
  {
  }

LABEL_18:
  if (v8)
  {
    goto LABEL_19;
  }

LABEL_20:

  return v9;
}

- (void)_addEntryToMap:(id)a3
{
  v12 = a3;
  v4 = [v12 contactIdentifier];
  if (v4)
  {
    v5 = [(CNFavorites *)self entriesByContactIdentifier];

    if (v5)
    {
      v6 = [(CNFavorites *)self entriesByContactIdentifier];
      v7 = [v6 objectForKeyedSubscript:v4];

      if (v7)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [v7 mutableCopy];
          [v8 addObject:v12];
          v9 = [(CNFavorites *)self entriesByContactIdentifier];
          [v9 setObject:v8 forKeyedSubscript:v4];
        }

        else
        {
          v10 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v7, v12, 0}];

          v11 = [(CNFavorites *)self entriesByContactIdentifier];
          [v11 setObject:v10 forKeyedSubscript:v4];

          v7 = v10;
        }
      }

      else
      {
        v7 = [(CNFavorites *)self entriesByContactIdentifier];
        [v7 setObject:v12 forKeyedSubscript:v4];
      }
    }
  }
}

- (void)_removeEntryFromMap:(id)a3
{
  v12 = a3;
  v4 = [v12 contactIdentifier];
  if (v4)
  {
    v5 = [(CNFavorites *)self entriesByContactIdentifier];

    if (v5)
    {
      v6 = [(CNFavorites *)self entriesByContactIdentifier];
      v7 = [v6 objectForKeyedSubscript:v4];

      if (v7)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_11;
        }

        if ([v7 count])
        {
          v8 = 0;
          while (1)
          {
            v9 = [v7 objectAtIndex:v8];

            if (v9 == v12)
            {
              break;
            }

            if (++v8 >= [v7 count])
            {
              goto LABEL_13;
            }
          }

          if ([v7 count] != 1)
          {
            if ([v7 count] == 2)
            {
              v10 = [v7 objectAtIndex:v8 == 0];
            }

            else
            {
              v10 = [v7 mutableCopy];
              [v10 removeObjectAtIndex:v8];
            }

            v11 = [(CNFavorites *)self entriesByContactIdentifier];
            [v11 setObject:v10 forKeyedSubscript:v4];

            goto LABEL_12;
          }

LABEL_11:
          v10 = [(CNFavorites *)self entriesByContactIdentifier];
          [v10 removeObjectForKey:v4];
LABEL_12:
        }
      }

LABEL_13:
    }
  }
}

- (void)addEntry:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(CNFavorites *)v4 entries];
  v6 = [v5 count];

  if (v9 && v6 <= 0x31)
  {
    v7 = [(NSArray *)v4->_entries arrayByAddingObject:v9];
    entries = v4->_entries;
    v4->_entries = v7;

    [(CNFavorites *)v4 _addEntryToMap:v9];
    [(CNFavorites *)v4 setDirty:1];
  }

  objc_sync_exit(v4);
}

- (void)removeEntryAtIndex:(int64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  v4 = [(CNFavorites *)obj entries];
  v5 = [v4 objectAtIndexedSubscript:a3];

  [(CNFavorites *)obj _removeEntryFromMap:v5];
  v6 = [(NSArray *)obj->_entries mutableCopy];
  [v6 removeObjectAtIndex:a3];
  v7 = [v6 copy];
  entries = obj->_entries;
  obj->_entries = v7;

  [(CNFavorites *)obj setDirty:1];
  objc_sync_exit(obj);
}

- (void)moveEntryAtIndex:(int64_t)a3 toIndex:(int64_t)a4
{
  obj = self;
  objc_sync_enter(obj);
  if (a4 <= a3)
  {
    if (a4 >= a3)
    {
      goto LABEL_6;
    }

    v6 = [(NSArray *)obj->_entries mutableCopy];
    [v6 _cn_rotateRange:a4 by:{a3 - a4 + 1, 1}];
    v9 = [v6 mutableCopy];
    entries = obj->_entries;
    obj->_entries = v9;

    [(CNFavorites *)obj setDirty:1];
  }

  else
  {
    v6 = [(NSArray *)obj->_entries mutableCopy];
    [v6 _cn_rotateRange:a3 by:{a4 - a3 + 1, -1}];
    v7 = [v6 mutableCopy];
    v8 = obj->_entries;
    obj->_entries = v7;

    [(CNFavorites *)obj setDirty:1];
  }

LABEL_6:
  objc_sync_exit(obj);
}

- (void)removeAllEntries
{
  obj = self;
  objc_sync_enter(obj);
  [(CNFavorites *)obj setEntriesByContactIdentifier:0];
  entries = obj->_entries;
  obj->_entries = 0;

  [(CNFavorites *)obj setDirty:1];
  [(CNFavorites *)obj setNeedsReload:0];
  objc_sync_exit(obj);
}

- (BOOL)saveAllFavorites
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(CNFavorites *)v2 logger];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__CNFavorites_saveAllFavorites__block_invoke;
  v5[3] = &unk_1E7411EE8;
  v5[4] = v2;
  [v3 writingFavorites:v5];

  objc_sync_exit(v2);
  return 0;
}

void __31__CNFavorites_saveAllFavorites__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69966B8] sharedInstance];
  v3 = [v2 isUnlockedSinceBoot];

  if (v3)
  {
    if ([CNContactStore authorizationStatusForEntityType:0]!= CNAuthorizationStatusAuthorized)
    {
      return;
    }

    v4 = [*(a1 + 32) favoritesStore];
    [v4 saveEntries:*(*(a1 + 32) + 8)];
  }

  else
  {
    v4 = [*(a1 + 32) logger];
    [v4 reportFavoritesAccessedBeforeFirstUnlock];
  }
}

- (void)save
{
  if ([(CNFavorites *)self needsReload])
  {
    goto LABEL_6;
  }

  if (![(CNFavorites *)self dirty])
  {
    v3 = self;
    objc_sync_enter(v3);
    [(CNFavorites *)v3 setDirty:[(NSArray *)v3->_entries _cn_any:&__block_literal_global_40_2]];
    objc_sync_exit(v3);
  }

  if (![(CNFavorites *)self dirty])
  {
LABEL_6:
    v4 = 1;
  }

  else
  {
    [(CNFavorites *)self saveAllFavorites];
    v4 = 0;
  }

  [(CNFavorites *)self setDirty:0];
  v5 = [(CNFavorites *)self needsReload];
  if ((v4 & 1) == 0 && !v5)
  {
    [(CNFavorites *)self setPostCount:[(CNFavorites *)self postCount]+ 1];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CNFavoritesChangedExternallyNotification", 0, 0, 1u);
  }
}

- (void)rematchEntriesWithOptions:(unint64_t)a3
{
  v5 = [(CNFavorites *)self logger];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__CNFavorites_rematchEntriesWithOptions___block_invoke;
  v6[3] = &unk_1E7417BD8;
  v6[4] = self;
  v6[5] = a3;
  [v5 rematchingFavorites:v6];
}

void __41__CNFavorites_rematchEntriesWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((ABDeviceIsBeforeFirstUnlockWithDataProtected() & 1) == 0)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    [*(a1 + 32) setNeedsReload:1];
    v4 = *(a1 + 32);
    objc_sync_enter(v4);
    v5 = MEMORY[0x1E695DEC8];
    v6 = [*(a1 + 32) entries];
    v7 = [v5 arrayWithArray:v6];

    objc_sync_exit(v4);
    if (*(a1 + 40))
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __41__CNFavorites_rematchEntriesWithOptions___block_invoke_2;
      v18[3] = &unk_1E7417B88;
      v18[4] = &v19;
      [v7 _cn_each:v18];
      if (*(v20 + 24) == 1)
      {
        v8 = [*(a1 + 32) _uniqueRematchedEntries:v7];

        v7 = v8;
      }
    }

    if ((*(a1 + 40) & 2) != 0)
    {
      v9 = objc_alloc_init(CNGeminiManager);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __41__CNFavorites_rematchEntriesWithOptions___block_invoke_3;
      v15[3] = &unk_1E7417BB0;
      v17 = &v19;
      v10 = v9;
      v16 = v10;
      [v7 _cn_each:v15];
    }

    if (*(v20 + 24) == 1)
    {
      [*(a1 + 32) removeAllEntries];
      v11 = *(a1 + 32);
      objc_sync_enter(v11);
      v12 = [v7 mutableCopy];
      v13 = *(a1 + 32);
      v14 = *(v13 + 8);
      *(v13 + 8) = v12;

      objc_sync_exit(v11);
      [*(a1 + 32) save];
    }

    _Block_object_dispose(&v19, 8);
  }
}

uint64_t __41__CNFavorites_rematchEntriesWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 rematchWithContacts];
  *(*(*(a1 + 32) + 8) + 24) |= result;
  return result;
}

uint64_t __41__CNFavorites_rematchEntriesWithOptions___block_invoke_3(uint64_t a1, void *a2)
{
  result = [a2 rematchWithGeminiManager:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) |= result;
  return result;
}

- (id)_uniqueRematchedEntries:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{0, objc_msgSend(v3, "count")}];
  if ([v3 count])
  {
    v5 = 0;
    do
    {
      v6 = [v3 objectAtIndexedSubscript:v5];
      v7 = [v6 oldContactIdentifier];

      if (v7)
      {
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __39__CNFavorites__uniqueRematchedEntries___block_invoke;
        v12[3] = &unk_1E7417C00;
        v15 = v5;
        v13 = v3;
        v14 = v4;
        [v14 enumerateIndexesUsingBlock:v12];
      }

      ++v5;
    }

    while (v5 < [v3 count]);
  }

  v8 = [v4 count];
  if (v8 == [v3 count])
  {
    v9 = v3;
  }

  else
  {
    v9 = [v3 objectsAtIndexes:v4];
  }

  v10 = v9;

  return v10;
}

void __39__CNFavorites__uniqueRematchedEntries___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*(a1 + 48) != a2)
  {
    v6 = [*(a1 + 32) objectAtIndexedSubscript:?];
    v7 = [*(a1 + 32) objectAtIndexedSubscript:a2];
    v8 = [v6 isEqual:v7];

    if (v8)
    {
      [*(a1 + 40) removeIndex:*(a1 + 48)];
      *a3 = 1;
    }
  }
}

- (void)_entriesChangedExternally
{
  if ([(CNFavorites *)self postCount])
  {
    v3 = [(CNFavorites *)self postCount]- 1;

    [(CNFavorites *)self setPostCount:v3];
  }

  else if (![(CNFavorites *)self needsReload]&& ![(CNFavorites *)self dirty])
  {
    v4 = self;
    objc_sync_enter(v4);
    entries = v4->_entries;
    v4->_entries = 0;

    [(CNFavorites *)v4 setEntriesByContactIdentifier:0];
    [(CNFavorites *)v4 setNeedsReload:1];
    objc_sync_exit(v4);

    [(CNFavorites *)v4 _postChangeNotification];
  }
}

- (void)_postChangeNotification
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"CNFavoritesChangedNotification" object:self];
}

@end