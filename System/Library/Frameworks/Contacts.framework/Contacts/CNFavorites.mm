@interface CNFavorites
+ (id)defaultFavoritesLocation;
+ (id)favoritesPath;
+ (id)sharedInstance;
+ (void)flushSingleton;
- (BOOL)_isValueForEntry:(id)entry equalToValue:(id)value;
- (BOOL)isFull;
- (BOOL)saveAllFavorites;
- (CNFavorites)init;
- (CNFavorites)initWithContactStore:(id)store favoritesStore:(id)favoritesStore;
- (CNFavorites)initWithContactStore:(id)store favoritesStore:(id)favoritesStore logger:(id)logger;
- (NSArray)entries;
- (NSMutableDictionary)entriesByContactIdentifier;
- (id)_uniqueRematchedEntries:(id)entries;
- (id)defaultFavoritesStoreWithContactStore:(id)store;
- (id)entriesForContact:(id)contact;
- (id)entriesForContact:(id)contact propertyKey:(id)key labeledValueIdentifier:(id)identifier actionType:(id)type bundleIdentifier:(id)bundleIdentifier;
- (void)_addEntryToMap:(id)map;
- (void)_entriesChangedExternally;
- (void)_postChangeNotification;
- (void)_removeEntryFromMap:(id)map;
- (void)addEntry:(id)entry;
- (void)dealloc;
- (void)loadAllFavoritesIfNecessary;
- (void)moveEntryAtIndex:(int64_t)index toIndex:(int64_t)toIndex;
- (void)registerForDistributedNotifications;
- (void)rematchEntriesWithOptions:(unint64_t)options;
- (void)removeAllEntries;
- (void)removeEntryAtIndex:(int64_t)index;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v4 = selfCopy->_entries;
  objc_sync_exit(selfCopy);

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  p_entries = &selfCopy->_entries;
  if (!selfCopy->_entries)
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:50];
    v5 = *p_entries;
    *p_entries = v4;
  }

  if (!selfCopy->_entriesByContactIdentifier)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:50];
    entriesByContactIdentifier = selfCopy->_entriesByContactIdentifier;
    selfCopy->_entriesByContactIdentifier = v6;
  }

  if ([(CNFavorites *)selfCopy needsReload]&& [CNContactStore authorizationStatusForEntityType:0]== CNAuthorizationStatusAuthorized)
  {
    [(NSMutableDictionary *)selfCopy->_entriesByContactIdentifier removeAllObjects];
    [(CNFavorites *)selfCopy setNeedsReload:0];
    mEMORY[0x1E69966B8] = [MEMORY[0x1E69966B8] sharedInstance];
    isUnlockedSinceBoot = [mEMORY[0x1E69966B8] isUnlockedSinceBoot];

    if (isUnlockedSinceBoot)
    {
      location = 0;
      p_location = &location;
      v20 = 0x3032000000;
      v21 = __Block_byref_object_copy__39;
      v22 = __Block_byref_object_dispose__39;
      v23 = 0;
      logger = [(CNFavorites *)selfCopy logger];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __42__CNFavorites_loadAllFavoritesIfNecessary__block_invoke_32;
      v17[3] = &unk_1E74157A8;
      v17[4] = selfCopy;
      v17[5] = &location;
      [logger readingFavorites:v17];

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

      objc_storeStrong(&selfCopy->_entries, v13);

      _Block_object_dispose(&location, 8);
    }

    else
    {
      logger2 = [(CNFavorites *)selfCopy logger];
      [logger2 reportFavoritesAccessedBeforeFirstUnlock];

      objc_initWeak(&location, selfCopy);
      mEMORY[0x1E69966B8]2 = [MEMORY[0x1E69966B8] sharedInstance];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __42__CNFavorites_loadAllFavoritesIfNecessary__block_invoke;
      v24[3] = &unk_1E7416E38;
      objc_copyWeak(&v25, &location);
      [mEMORY[0x1E69966B8]2 addUnlockHandlerWithIdentifier:@"CNFavorites" block:v24];

      v16 = *p_entries;
      *p_entries = MEMORY[0x1E695E0F0];

      objc_destroyWeak(&v25);
      objc_destroyWeak(&location);
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)dealloc
{
  [(CNFavorites *)self unregisterForDistributedNotifications];
  mEMORY[0x1E69966B8] = [MEMORY[0x1E69966B8] sharedInstance];
  [mEMORY[0x1E69966B8] removeUnlockHandlerWithIdentifier:@"CNFavorites"];

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
  defaultFavoritesLocation = [self defaultFavoritesLocation];
  v3 = [defaultFavoritesLocation URLByAppendingPathComponent:@"com.apple.mobilephone.speeddial.plist" isDirectory:0];

  relativePath = [v3 relativePath];

  return relativePath;
}

+ (id)defaultFavoritesLocation
{
  mEMORY[0x1E6996700] = [MEMORY[0x1E6996700] sharedInstance];
  libraryFolderURL = [mEMORY[0x1E6996700] libraryFolderURL];

  v4 = [libraryFolderURL URLByAppendingPathComponent:@"Preferences" isDirectory:1];

  return v4;
}

- (CNFavorites)initWithContactStore:(id)store favoritesStore:(id)favoritesStore
{
  storeCopy = store;
  favoritesStoreCopy = favoritesStore;
  v8 = +[CNContactsEnvironment currentEnvironment];
  loggerProvider = [v8 loggerProvider];
  favoritesLogger = [loggerProvider favoritesLogger];

  if (!favoritesStoreCopy)
  {
    favoritesStoreCopy = [(CNFavorites *)self defaultFavoritesStoreWithContactStore:storeCopy];
  }

  v11 = [(CNFavorites *)self initWithContactStore:storeCopy favoritesStore:favoritesStoreCopy logger:favoritesLogger];

  return v11;
}

- (CNFavorites)initWithContactStore:(id)store favoritesStore:(id)favoritesStore logger:(id)logger
{
  storeCopy = store;
  favoritesStoreCopy = favoritesStore;
  loggerCopy = logger;
  v16.receiver = self;
  v16.super_class = CNFavorites;
  v12 = [(CNFavorites *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_contactStore, store);
    objc_storeStrong(&v13->_favoritesStore, favoritesStore);
    objc_storeStrong(&v13->_logger, logger);
    v13->_needsReload = 1;
    [(CNFavoritesStore *)v13->_favoritesStore setLogger:loggerCopy];
    [(CNFavorites *)v13 registerForDistributedNotifications];
    v14 = v13;
  }

  return v13;
}

- (CNFavorites)init
{
  sharedInstance = [objc_opt_class() sharedInstance];

  return sharedInstance;
}

- (id)defaultFavoritesStoreWithContactStore:(id)store
{
  storeCopy = store;
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  environment = [processInfo environment];
  v6 = [environment objectForKeyedSubscript:@"CN_UNIT_TESTING"];
  if ([v6 _cn_caseInsensitiveIsEqual:@"YES"] & 1) != 0 || (objc_msgSend(v6, "_cn_caseInsensitiveIsEqual:", @"Y") & 1) != 0 || (objc_msgSend(v6, "_cn_caseInsensitiveIsEqual:", @"TRUE") & 1) != 0 || (objc_msgSend(v6, "_cn_caseInsensitiveIsEqual:", @"T"))
  {

LABEL_6:
    v7 = off_1E7410758;
    goto LABEL_7;
  }

  integerValue = [v6 integerValue];

  if (integerValue)
  {
    goto LABEL_6;
  }

  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v13 = [featureFlags isFeatureEnabled:18];

  if ((v13 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = off_1E7410768;
LABEL_7:
  v8 = [objc_alloc(*v7) initWithContactStore:storeCopy];

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
  entries = [(CNFavorites *)self entries];
  v3 = [entries count] > 0x31;

  return v3;
}

- (id)entriesForContact:(id)contact
{
  contactCopy = contact;
  entriesByContactIdentifier = [(CNFavorites *)self entriesByContactIdentifier];

  if (entriesByContactIdentifier)
  {
    entriesByContactIdentifier2 = [(CNFavorites *)self entriesByContactIdentifier];
    identifier = [contactCopy identifier];
    v8 = [entriesByContactIdentifier2 objectForKeyedSubscript:identifier];

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
      entriesByContactIdentifier = ;
    }

    else
    {
      entriesByContactIdentifier = 0;
    }
  }

  return entriesByContactIdentifier;
}

- (BOOL)_isValueForEntry:(id)entry equalToValue:(id)value
{
  entryCopy = entry;
  valueCopy = value;
  contactProperty = [entryCopy contactProperty];
  value = [contactProperty value];
  v9 = [valueCopy isEqualToString:value];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    contactProperty2 = [entryCopy contactProperty];
    v12 = [contactProperty2 key];
    v13 = [v12 isEqualToString:@"phoneNumbers"];

    if (v13)
    {
      contactProperty3 = [entryCopy contactProperty];
      value2 = [contactProperty3 value];
      v10 = [CNFavoritesEntry arePhoneNumbersEqual:valueCopy other:value2];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)entriesForContact:(id)contact propertyKey:(id)key labeledValueIdentifier:(id)identifier actionType:(id)type bundleIdentifier:(id)bundleIdentifier
{
  contactCopy = contact;
  keyCopy = key;
  identifierCopy = identifier;
  typeCopy = type;
  bundleIdentifierCopy = bundleIdentifier;
  v17 = [(CNFavorites *)self entriesForContact:contactCopy];
  v18 = 0;
  if (keyCopy && identifierCopy)
  {
    v19 = [contactCopy valueForKey:keyCopy];
    v20 = [CNLabeledValue labeledValueWithIdentifier:identifierCopy inArray:v19];
    v18 = v20 != 0;
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __96__CNFavorites_entriesForContact_propertyKey_labeledValueIdentifier_actionType_bundleIdentifier___block_invoke;
  v27[3] = &unk_1E7417B40;
  v28 = typeCopy;
  v29 = keyCopy;
  v30 = bundleIdentifierCopy;
  v31 = identifierCopy;
  v32 = v18;
  v21 = identifierCopy;
  v22 = bundleIdentifierCopy;
  v23 = keyCopy;
  v24 = typeCopy;
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

- (void)_addEntryToMap:(id)map
{
  mapCopy = map;
  contactIdentifier = [mapCopy contactIdentifier];
  if (contactIdentifier)
  {
    entriesByContactIdentifier = [(CNFavorites *)self entriesByContactIdentifier];

    if (entriesByContactIdentifier)
    {
      entriesByContactIdentifier2 = [(CNFavorites *)self entriesByContactIdentifier];
      entriesByContactIdentifier5 = [entriesByContactIdentifier2 objectForKeyedSubscript:contactIdentifier];

      if (entriesByContactIdentifier5)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [entriesByContactIdentifier5 mutableCopy];
          [v8 addObject:mapCopy];
          entriesByContactIdentifier3 = [(CNFavorites *)self entriesByContactIdentifier];
          [entriesByContactIdentifier3 setObject:v8 forKeyedSubscript:contactIdentifier];
        }

        else
        {
          v10 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{entriesByContactIdentifier5, mapCopy, 0}];

          entriesByContactIdentifier4 = [(CNFavorites *)self entriesByContactIdentifier];
          [entriesByContactIdentifier4 setObject:v10 forKeyedSubscript:contactIdentifier];

          entriesByContactIdentifier5 = v10;
        }
      }

      else
      {
        entriesByContactIdentifier5 = [(CNFavorites *)self entriesByContactIdentifier];
        [entriesByContactIdentifier5 setObject:mapCopy forKeyedSubscript:contactIdentifier];
      }
    }
  }
}

- (void)_removeEntryFromMap:(id)map
{
  mapCopy = map;
  contactIdentifier = [mapCopy contactIdentifier];
  if (contactIdentifier)
  {
    entriesByContactIdentifier = [(CNFavorites *)self entriesByContactIdentifier];

    if (entriesByContactIdentifier)
    {
      entriesByContactIdentifier2 = [(CNFavorites *)self entriesByContactIdentifier];
      v7 = [entriesByContactIdentifier2 objectForKeyedSubscript:contactIdentifier];

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

            if (v9 == mapCopy)
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
              entriesByContactIdentifier4 = [v7 objectAtIndex:v8 == 0];
            }

            else
            {
              entriesByContactIdentifier4 = [v7 mutableCopy];
              [entriesByContactIdentifier4 removeObjectAtIndex:v8];
            }

            entriesByContactIdentifier3 = [(CNFavorites *)self entriesByContactIdentifier];
            [entriesByContactIdentifier3 setObject:entriesByContactIdentifier4 forKeyedSubscript:contactIdentifier];

            goto LABEL_12;
          }

LABEL_11:
          entriesByContactIdentifier4 = [(CNFavorites *)self entriesByContactIdentifier];
          [entriesByContactIdentifier4 removeObjectForKey:contactIdentifier];
LABEL_12:
        }
      }

LABEL_13:
    }
  }
}

- (void)addEntry:(id)entry
{
  entryCopy = entry;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  entries = [(CNFavorites *)selfCopy entries];
  v6 = [entries count];

  if (entryCopy && v6 <= 0x31)
  {
    v7 = [(NSArray *)selfCopy->_entries arrayByAddingObject:entryCopy];
    entries = selfCopy->_entries;
    selfCopy->_entries = v7;

    [(CNFavorites *)selfCopy _addEntryToMap:entryCopy];
    [(CNFavorites *)selfCopy setDirty:1];
  }

  objc_sync_exit(selfCopy);
}

- (void)removeEntryAtIndex:(int64_t)index
{
  obj = self;
  objc_sync_enter(obj);
  entries = [(CNFavorites *)obj entries];
  v5 = [entries objectAtIndexedSubscript:index];

  [(CNFavorites *)obj _removeEntryFromMap:v5];
  v6 = [(NSArray *)obj->_entries mutableCopy];
  [v6 removeObjectAtIndex:index];
  v7 = [v6 copy];
  entries = obj->_entries;
  obj->_entries = v7;

  [(CNFavorites *)obj setDirty:1];
  objc_sync_exit(obj);
}

- (void)moveEntryAtIndex:(int64_t)index toIndex:(int64_t)toIndex
{
  obj = self;
  objc_sync_enter(obj);
  if (toIndex <= index)
  {
    if (toIndex >= index)
    {
      goto LABEL_6;
    }

    v6 = [(NSArray *)obj->_entries mutableCopy];
    [v6 _cn_rotateRange:toIndex by:{index - toIndex + 1, 1}];
    v9 = [v6 mutableCopy];
    entries = obj->_entries;
    obj->_entries = v9;

    [(CNFavorites *)obj setDirty:1];
  }

  else
  {
    v6 = [(NSArray *)obj->_entries mutableCopy];
    [v6 _cn_rotateRange:index by:{toIndex - index + 1, -1}];
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  logger = [(CNFavorites *)selfCopy logger];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__CNFavorites_saveAllFavorites__block_invoke;
  v5[3] = &unk_1E7411EE8;
  v5[4] = selfCopy;
  [logger writingFavorites:v5];

  objc_sync_exit(selfCopy);
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
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(CNFavorites *)selfCopy setDirty:[(NSArray *)selfCopy->_entries _cn_any:&__block_literal_global_40_2]];
    objc_sync_exit(selfCopy);
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
  needsReload = [(CNFavorites *)self needsReload];
  if ((v4 & 1) == 0 && !needsReload)
  {
    [(CNFavorites *)self setPostCount:[(CNFavorites *)self postCount]+ 1];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CNFavoritesChangedExternallyNotification", 0, 0, 1u);
  }
}

- (void)rematchEntriesWithOptions:(unint64_t)options
{
  logger = [(CNFavorites *)self logger];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__CNFavorites_rematchEntriesWithOptions___block_invoke;
  v6[3] = &unk_1E7417BD8;
  v6[4] = self;
  v6[5] = options;
  [logger rematchingFavorites:v6];
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

- (id)_uniqueRematchedEntries:(id)entries
{
  entriesCopy = entries;
  v4 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{0, objc_msgSend(entriesCopy, "count")}];
  if ([entriesCopy count])
  {
    v5 = 0;
    do
    {
      v6 = [entriesCopy objectAtIndexedSubscript:v5];
      oldContactIdentifier = [v6 oldContactIdentifier];

      if (oldContactIdentifier)
      {
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __39__CNFavorites__uniqueRematchedEntries___block_invoke;
        v12[3] = &unk_1E7417C00;
        v15 = v5;
        v13 = entriesCopy;
        v14 = v4;
        [v14 enumerateIndexesUsingBlock:v12];
      }

      ++v5;
    }

    while (v5 < [entriesCopy count]);
  }

  v8 = [v4 count];
  if (v8 == [entriesCopy count])
  {
    v9 = entriesCopy;
  }

  else
  {
    v9 = [entriesCopy objectsAtIndexes:v4];
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
    selfCopy = self;
    objc_sync_enter(selfCopy);
    entries = selfCopy->_entries;
    selfCopy->_entries = 0;

    [(CNFavorites *)selfCopy setEntriesByContactIdentifier:0];
    [(CNFavorites *)selfCopy setNeedsReload:1];
    objc_sync_exit(selfCopy);

    [(CNFavorites *)selfCopy _postChangeNotification];
  }
}

- (void)_postChangeNotification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"CNFavoritesChangedNotification" object:self];
}

@end