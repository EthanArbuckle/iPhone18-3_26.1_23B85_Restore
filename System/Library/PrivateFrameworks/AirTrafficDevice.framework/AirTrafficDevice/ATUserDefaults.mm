@interface ATUserDefaults
+ (ATUserDefaults)sharedInstance;
+ (id)readOnlyDefaults;
- (ATUserDefaults)init;
- (BOOL)hasCompletedDataMigration;
- (NSDictionary)diskUsageInfo;
- (NSNumber)minimumNetworkLinkQualityForDownloads;
- (id)allHosts;
- (id)hostInfoForIdentifier:(id)identifier;
- (void)_updateDefaults;
- (void)removeHost:(id)host;
- (void)setDiskUsageInfo:(id)info;
- (void)setHasCompletedDataMigration:(BOOL)migration;
- (void)setMinimumNetworkLinkQualityForDownloads:(id)downloads;
- (void)updateHostInfo:(id)info disabledAssetTypes:(id)types;
- (void)updateLastSyncWithHostLibrary:(id)library;
@end

@implementation ATUserDefaults

- (void)_updateDefaults
{
  v5 = _atcStandardDefaults();
  allHosts = [(ATUserDefaults *)self allHosts];
  if (allHosts)
  {
    [v5 setObject:allHosts forKey:@"Hosts"];
  }

  diskUsageInfo = [(ATUserDefaults *)self diskUsageInfo];
  if (diskUsageInfo)
  {
    [v5 setObject:diskUsageInfo forKey:@"DiskUsage"];
  }

  [objc_opt_class() synchronize];
}

- (void)setMinimumNetworkLinkQualityForDownloads:(id)downloads
{
  downloadsCopy = downloads;
  v4 = _atcStandardDefaults();
  [v4 setObject:downloadsCopy forKey:@"MinimumNetworkLinkQualityForDownloads"];
}

- (NSNumber)minimumNetworkLinkQualityForDownloads
{
  v2 = _atcStandardDefaults();
  v3 = [v2 objectForKey:@"MinimumNetworkLinkQualityForDownloads"];

  return v3;
}

- (NSDictionary)diskUsageInfo
{
  v3 = self->_defaults;
  objc_sync_enter(v3);
  v4 = [(NSMutableDictionary *)self->_defaults objectForKey:@"DiskUsage"];
  objc_sync_exit(v3);

  return v4;
}

- (void)setDiskUsageInfo:(id)info
{
  infoCopy = info;
  v4 = self->_defaults;
  objc_sync_enter(v4);
  defaults = self->_defaults;
  deepMutableObject = [infoCopy deepMutableObject];
  [(NSMutableDictionary *)defaults setObject:deepMutableObject forKey:@"DiskUsage"];

  [(ATUserDefaults *)self _updateDefaults];
  objc_sync_exit(v4);
}

- (void)setHasCompletedDataMigration:(BOOL)migration
{
  migrationCopy = migration;
  obj = self->_defaults;
  objc_sync_enter(obj);
  defaults = self->_defaults;
  v6 = [MEMORY[0x277CCABB0] numberWithBool:migrationCopy];
  [(NSMutableDictionary *)defaults setObject:v6 forKey:@"DataMigrated"];

  [(ATUserDefaults *)self _updateDefaults];
  objc_sync_exit(obj);
}

- (id)allHosts
{
  v3 = self->_defaults;
  objc_sync_enter(v3);
  v4 = [(NSMutableDictionary *)self->_defaults objectForKey:@"Hosts"];
  objc_sync_exit(v3);

  return v4;
}

- (id)hostInfoForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = self->_defaults;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_defaults objectForKey:@"Hosts"];
  v7 = [v6 objectForKey:identifierCopy];

  objc_sync_exit(v5);

  return v7;
}

- (void)removeHost:(id)host
{
  hostCopy = host;
  v4 = self->_defaults;
  objc_sync_enter(v4);
  v5 = [(NSMutableDictionary *)self->_defaults objectForKey:@"Hosts"];
  [v5 removeObjectForKey:hostCopy];

  [(ATUserDefaults *)self _updateDefaults];
  objc_sync_exit(v4);
}

- (void)updateLastSyncWithHostLibrary:(id)library
{
  libraryCopy = library;
  v4 = self->_defaults;
  objc_sync_enter(v4);
  v5 = [(NSMutableDictionary *)self->_defaults objectForKey:@"Hosts"];
  v6 = [v5 objectForKey:libraryCopy];

  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_defaults objectForKey:@"Hosts"];
    v8 = [v7 objectForKey:libraryCopy];
    v9 = MEMORY[0x277CCABB0];
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceReferenceDate];
    v11 = [v9 numberWithDouble:?];
    [v8 setObject:v11 forKey:@"LastSync"];
  }

  [(ATUserDefaults *)self _updateDefaults];
  objc_sync_exit(v4);
}

- (void)updateHostInfo:(id)info disabledAssetTypes:(id)types
{
  v97 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  typesCopy = types;
  selfCopy = self;
  v66 = self->_defaults;
  objc_sync_enter(v66);
  v73 = infoCopy;
  v7 = [infoCopy objectForKey:@"LibraryID"];

  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_defaults objectForKey:@"Hosts"];
    v9 = [infoCopy objectForKey:@"LibraryID"];
    v10 = [v8 objectForKey:v9];
    v11 = v10;
    if (v10)
    {
      dictionary = v10;
    }

    else
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }

    v12 = [v73 objectForKey:@"Wakeable"];
    if (v12)
    {
      [dictionary setObject:v12 forKey:@"Wakeable"];
    }

    else
    {
      [dictionary removeObjectForKey:@"Wakeable"];
    }

    v65 = v12;
    v13 = [v73 objectForKey:@"SyncHostName"];
    if (v13)
    {
      [dictionary setObject:v13 forKey:@"SyncHostName"];
    }

    v64 = v13;
    v14 = [v73 objectForKey:@"SyncedAssetTypes"];
    deepMutableObject = [v14 deepMutableObject];

    [deepMutableObject removeObjectsInArray:typesCopy];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:dictionary2 forKey:@"SyncedDataclasses"];

    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v16 = [v73 objectForKey:@"SyncedDataclasses"];
    v17 = [v16 countByEnumeratingWithState:&v89 objects:v96 count:16];
    if (v17)
    {
      v18 = *v90;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v90 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v89 + 1) + 8 * i);
          v21 = [dictionary objectForKey:@"SyncedDataclasses"];
          array = [MEMORY[0x277CBEB18] array];
          [v21 setObject:array forKey:v20];
        }

        v17 = [v16 countByEnumeratingWithState:&v89 objects:v96 count:16];
      }

      while (v17);
    }

    if (deepMutableObject)
    {
      v23 = [dictionary objectForKey:@"SyncedDataclasses"];
      [v23 setObject:deepMutableObject forKey:@"Media"];
    }

    v24 = [v73 objectForKey:@"LibraryID"];
    [dictionary setObject:v24 forKey:@"LibraryID"];

    v25 = [v73 objectForKey:@"MacOSVersion"];
    if (v25)
    {
      [dictionary setObject:@"MacOS" forKey:@"OSType"];
      [dictionary setObject:v25 forKey:@"OSVersion"];
    }

    else
    {
      v25 = [v73 objectForKey:@"WindowsOSVersion"];
      if (v25)
      {
        [dictionary setObject:@"Windows" forKey:@"OSType"];
        [dictionary setObject:v25 forKey:@"OSVersion"];
      }
    }

    v26 = [(NSMutableDictionary *)selfCopy->_defaults objectForKey:@"Hosts"];
    v62 = v25;
    v27 = v26 == 0;

    if (v27)
    {
      defaults = selfCopy->_defaults;
      v29 = objc_opt_new();
      [(NSMutableDictionary *)defaults setObject:v29 forKey:@"Hosts", v62];
    }

    v30 = [(NSMutableDictionary *)selfCopy->_defaults objectForKey:@"Hosts", v62];
    v31 = [v73 objectForKey:@"LibraryID"];
    [v30 setObject:dictionary forKey:v31];

    v32 = [dictionary objectForKey:@"SyncedDataclasses"];
    allKeys = [v32 allKeys];

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v33 = [(NSMutableDictionary *)selfCopy->_defaults objectForKey:@"Hosts"];
    obj = [v33 allKeys];

    v34 = [obj countByEnumeratingWithState:&v85 objects:v95 count:16];
    if (v34)
    {
      v71 = *v86;
      do
      {
        v35 = 0;
        v72 = v34;
        do
        {
          if (*v86 != v71)
          {
            objc_enumerationMutation(obj);
          }

          v74 = v35;
          v36 = *(*(&v85 + 1) + 8 * v35);
          v37 = [(NSMutableDictionary *)selfCopy->_defaults objectForKey:@"Hosts"];
          v38 = [v37 objectForKey:v36];
          v39 = [v38 objectForKey:@"SyncedDataclasses"];

          v40 = [v73 objectForKey:@"LibraryID"];
          LOBYTE(v36) = [v36 isEqualToString:v40];

          if ((v36 & 1) == 0)
          {
            v83 = 0u;
            v84 = 0u;
            v81 = 0u;
            v82 = 0u;
            v41 = allKeys;
            v42 = [v41 countByEnumeratingWithState:&v81 objects:v94 count:16];
            if (v42)
            {
              v43 = *v82;
              do
              {
                for (j = 0; j != v42; ++j)
                {
                  if (*v82 != v43)
                  {
                    objc_enumerationMutation(v41);
                  }

                  v45 = *(*(&v81 + 1) + 8 * j);
                  v46 = [v39 objectForKey:v45];

                  if (v46)
                  {
                    v47 = [dictionary objectForKey:@"SyncedDataclasses"];
                    v48 = [v47 objectForKey:v45];

                    if (![v48 count] || (objc_msgSend(v39, "objectForKey:", v45), v49 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v49, "removeObjectsInArray:", v48), v49, objc_msgSend(v39, "objectForKey:", v45), v50 = objc_claimAutoreleasedReturnValue(), v51 = objc_msgSend(v50, "count") == 0, v50, v51))
                    {
                      [v39 removeObjectForKey:v45];
                    }
                  }
                }

                v42 = [v41 countByEnumeratingWithState:&v81 objects:v94 count:16];
              }

              while (v42);
            }
          }

          v35 = v74 + 1;
        }

        while (v74 + 1 != v72);
        v34 = [obj countByEnumeratingWithState:&v85 objects:v95 count:16];
      }

      while (v34);
    }

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v52 = [(NSMutableDictionary *)selfCopy->_defaults objectForKey:@"Hosts"];
    allKeys2 = [v52 allKeys];

    v54 = [allKeys2 countByEnumeratingWithState:&v77 objects:v93 count:16];
    if (v54)
    {
      v55 = *v78;
      do
      {
        for (k = 0; k != v54; ++k)
        {
          if (*v78 != v55)
          {
            objc_enumerationMutation(allKeys2);
          }

          v57 = *(*(&v77 + 1) + 8 * k);
          v58 = [(NSMutableDictionary *)selfCopy->_defaults objectForKey:@"Hosts"];
          v59 = [v58 objectForKey:v57];
          v60 = [v59 objectForKey:@"SyncedDataclasses"];

          if (![v60 count])
          {
            v61 = [(NSMutableDictionary *)selfCopy->_defaults objectForKey:@"Hosts"];
            [v61 removeObjectForKey:v57];
          }
        }

        v54 = [allKeys2 countByEnumeratingWithState:&v77 objects:v93 count:16];
      }

      while (v54);
    }

    [(ATUserDefaults *)selfCopy _updateDefaults];
  }

  objc_sync_exit(v66);
}

- (BOOL)hasCompletedDataMigration
{
  v3 = self->_defaults;
  objc_sync_enter(v3);
  v4 = [(NSMutableDictionary *)self->_defaults objectForKey:@"DataMigrated"];
  if ([v4 BOOLValue])
  {
    bOOLValue = 1;
  }

  else
  {
    v6 = _atcStandardDefaults();
    dictionaryRepresentation = [v6 dictionaryRepresentation];
    v8 = [dictionaryRepresentation objectForKey:@"DataMigrated"];
    bOOLValue = [v8 BOOLValue];
  }

  objc_sync_exit(v3);
  return bOOLValue;
}

- (ATUserDefaults)init
{
  v11.receiver = self;
  v11.super_class = ATUserDefaults;
  v2 = [(ATUserDefaults *)&v11 init];
  if (v2)
  {
    v3 = _airTrafficPersistentDictionary();
    v4 = v3;
    if (v3)
    {
      deepMutableObject = [v3 deepMutableObject];
      defaults = v2->_defaults;
      v2->_defaults = deepMutableObject;
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v8 = v2->_defaults;
      v2->_defaults = v7;

      v9 = v2->_defaults;
      defaults = [MEMORY[0x277CBEB38] dictionary];
      [(NSMutableDictionary *)v9 setObject:defaults forKey:@"Hosts"];
    }
  }

  return v2;
}

+ (id)readOnlyDefaults
{
  v2 = _airTrafficPersistentDictionary();
  v3 = v2;
  if (v2)
  {
    dictionary = v2;
  }

  else
  {
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
  }

  v5 = dictionary;

  return v5;
}

+ (ATUserDefaults)sharedInstance
{
  if (sharedInstance_onceToken_3141 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_3141, &__block_literal_global_3142);
  }

  v3 = sharedInstance___sharedInstance_3143;

  return v3;
}

uint64_t __32__ATUserDefaults_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance_3143 = objc_alloc_init(ATUserDefaults);

  return MEMORY[0x2821F96F8]();
}

@end