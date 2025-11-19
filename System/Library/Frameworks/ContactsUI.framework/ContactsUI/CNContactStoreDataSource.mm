@interface CNContactStoreDataSource
+ (BOOL)isErrorPossiblyRelatedToExtraStores:(id)a3;
- (BOOL)canUseTitleForAccount:(id)a3;
- (BOOL)doesFilterShowAllContainersForAccount:(id)a3;
- (BOOL)filterShowsSingleExchangeFolder;
- (BOOL)filterShowsSingleGroup;
- (BOOL)setMeContact:(id)a3 error:(id *)a4;
- (CNContactDataSourceDelegate)delegate;
- (CNContactFilter)effectiveFilter;
- (CNContactStoreDataSource)initWithStore:(id)a3;
- (CNContactStoreSnapshot)currentSnapshot;
- (CNContainer)filteredContainer;
- (CNGroup)filteredGroup;
- (NSArray)contacts;
- (NSArray)indexSections;
- (NSArray)indexSectionsArray;
- (NSArray)sections;
- (NSDictionary)contactMatchInfos;
- (NSDictionary)localizedSectionHeaders;
- (NSDictionary)sectionHeadersDictionary;
- (NSString)displayName;
- (id)accountForContainerIdentifier:(id)a3;
- (id)completeContactFromContact:(id)a3 fromMainStoreOnly:(BOOL)a4 keysToFetch:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)indexPathForContact:(id)a3;
- (id)preferredForNameMeContactIdentifier;
- (id)preferredForNameMeContactWithKeysToFetch:(id)a3;
- (id)titleForContainer:(id)a3;
- (id)withReloadLock_prepareNewSnapshot;
- (int64_t)sortOrder;
- (void)_reloadWithSchedulingMethod:(unint64_t)a3;
- (void)acceptedIntroductionsDidChange;
- (void)contactStoreDidChange:(id)a3;
- (void)contactStoreDidChangeHandler;
- (void)contactStoreMeContactDidChange:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)registerForFilterSpecificChangeNotifications;
- (void)registerForRelevantChangeNotifications;
- (void)setCurrentSnapshot:(id)a3;
- (void)setFilter:(id)a3;
- (void)validateFilter;
@end

@implementation CNContactStoreDataSource

- (void)registerForRelevantChangeNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_contactStoreDidChange_ name:*MEMORY[0x1E695C3D8] object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel_contactStoreMeContactDidChange_ name:*MEMORY[0x1E695C3E0] object:0];

  v5 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v5 addObserver:self selector:sel_contactStoreMeContactDidChange_ name:*MEMORY[0x1E6996440] object:0];

  v6 = [MEMORY[0x1E695CE40] sharedDefaults];
  [v6 addObserver:self forKeyPath:@"sortOrder" options:0 context:0];

  v7 = +[CNUIContactsEnvironment currentEnvironment];
  v8 = [v7 defaultSchedulerProvider];

  objc_initWeak(&location, self);
  v9 = objc_alloc(MEMORY[0x1E6996678]);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __66__CNContactStoreDataSource_registerForRelevantChangeNotifications__block_invoke;
  v14 = &unk_1E74E6C98;
  objc_copyWeak(&v15, &location);
  v10 = [v9 initWithDelay:1 options:&v11 block:v8 schedulerProvider:self->_databaseChangePreprocessor downstreamScheduler:2.0];
  [(CNContactStoreDataSource *)self setContactStoreDidChangeCoalescer:v10, v11, v12, v13, v14];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)registerForFilterSpecificChangeNotifications
{
  v3 = [(CNContactStoreDataSource *)self filteredContainer];
  v4 = [v3 identifier];
  v5 = [MEMORY[0x1E695CE58] acceptedContactsDomainIdentifier];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    objc_initWeak(&location, self);
    v7 = MEMORY[0x1E695CE50];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __72__CNContactStoreDataSource_registerForFilterSpecificChangeNotifications__block_invoke;
    v13 = &unk_1E74E6C98;
    objc_copyWeak(&v14, &location);
    v8 = [v7 acceptedIntroductionsNotifierWithBlock:&v10];
    [(CNContactStoreDataSource *)self setAcceptedIntroductionsNotifier:v8, v10, v11, v12, v13];

    v9 = [(CNContactStoreDataSource *)self acceptedIntroductionsNotifier];
    [v9 startObserving];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {

    [(CNContactStoreDataSource *)self setAcceptedIntroductionsNotifier:0];
  }
}

- (CNContainer)filteredContainer
{
  v26[1] = *MEMORY[0x1E69E9840];
  v3 = [(CNContactStoreDataSource *)self filter];
  v4 = [v3 containerIdentifiers];
  if ([v4 count] != 1)
  {

    goto LABEL_8;
  }

  v5 = [(CNContactStoreDataSource *)self filter];
  v6 = [v5 groupIdentifiers];
  v7 = [v6 count];

  if (v7)
  {
LABEL_8:
    filteredContainer = self->_filteredContainer;
    self->_filteredContainer = 0;

    v13 = 0;
    goto LABEL_9;
  }

  v8 = [(CNContactStoreDataSource *)self filter];
  v9 = [v8 containerIdentifiers];
  v10 = [v9 allObjects];
  v11 = [v10 firstObject];

  v12 = self->_filteredContainer;
  if (v11)
  {
    v13 = v12;
    v14 = self->_filteredContainer;
    if (!v14 || (-[CNContainer identifier](v14, "identifier"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 isEqualToString:v11], v15, (v16 & 1) == 0))
    {

      v17 = MEMORY[0x1E695CE48];
      v26[0] = v11;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
      v19 = [v17 predicateForContainersWithIdentifiers:v18];

      v20 = [(CNContactStoreDataSource *)self store];
      v21 = [v20 containersMatchingPredicate:v19 error:0];

      v22 = [v21 firstObject];
      v23 = self->_filteredContainer;
      self->_filteredContainer = v22;

      v13 = self->_filteredContainer;
    }
  }

  else
  {
    self->_filteredContainer = 0;

    v13 = 0;
  }

LABEL_9:

  return v13;
}

- (NSString)displayName
{
  v3 = [(CNContactStoreDataSource *)self filter];
  v4 = [v3 customDisplayName];

  v5 = [(CNContactStoreDataSource *)self filter];
  v6 = [v5 customDisplayName];

  if (!v6)
  {

    v7 = CNContactsUIBundle();
    v4 = [v7 localizedStringForKey:@"SEARCH_NAV_TITLE" value:&stru_1F0CE7398 table:@"Localized"];

    v8 = [(CNContactStoreDataSource *)self filter];
    v9 = [v8 fullTextString];
    v10 = [v9 length];

    if (!v10)
    {

      v11 = CNContactsUIBundle();
      v4 = [v11 localizedStringForKey:@"ALL_CONTACTS" value:&stru_1F0CE7398 table:@"Localized"];

      v12 = [(CNContactStoreDataSource *)self filter];
      v13 = [v12 containerIdentifiers];
      if (v13)
      {
      }

      else
      {
        v14 = [(CNContactStoreDataSource *)self filter];
        v15 = [v14 groupIdentifiers];

        if (!v15)
        {
          goto LABEL_17;
        }
      }

      v16 = [(CNContactStoreDataSource *)self filteredGroup];
      v17 = v16;
      if (v16)
      {
        v18 = *MEMORY[0x1E6996570];
        v19 = [v16 name];
        if ((*(v18 + 16))(v18, v19))
        {
          v4 = [v17 name];
        }

        else
        {
          v25 = CNContactsUIBundle();
          v4 = [v25 localizedStringForKey:@"CONTACTS" value:&stru_1F0CE7398 table:@"Localized"];
        }

        goto LABEL_16;
      }

      v19 = [(CNContactStoreDataSource *)self filteredContainer];
      v20 = [(CNContactStoreDataSource *)self titleForContainer:v19];
      v4 = v20;
      if (v19)
      {
LABEL_16:

        goto LABEL_17;
      }

      v21 = [(CNContactStoreDataSource *)self filter];
      v22 = [v21 containerIdentifiers];
      v23 = [v22 anyObject];

      if (v23)
      {
        v24 = [(CNContactStoreDataSource *)self accountForContainerIdentifier:v23];
        v4 = [v24 _cnui_displayName];
        if ([(CNContactStoreDataSource *)self canUseTitleForAccount:v24])
        {
LABEL_14:

          v19 = 0;
          goto LABEL_16;
        }
      }

      v24 = CNContactsUIBundle();
      v4 = [v24 localizedStringForKey:@"CONTACTS" value:&stru_1F0CE7398 table:@"Localized"];
      goto LABEL_14;
    }
  }

LABEL_17:

  return v4;
}

- (BOOL)filterShowsSingleGroup
{
  v3 = [(CNContactStoreDataSource *)self filter];
  v4 = [v3 groupIdentifiers];
  if ([v4 count] == 1)
  {
    v5 = [(CNContactStoreDataSource *)self filter];
    v6 = [v5 containerIdentifiers];
    v7 = [v6 count] == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)filterShowsSingleExchangeFolder
{
  v2 = [(CNContactStoreDataSource *)self filteredContainer];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 type] == 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)sections
{
  v2 = [(CNContactStoreDataSource *)self currentSnapshot];
  v3 = [v2 sections];

  return v3;
}

- (CNContactStoreSnapshot)currentSnapshot
{
  currentSnapshot = self->_currentSnapshot;
  if (!currentSnapshot)
  {
    if (self->_loadingSnapshot)
    {
      currentSnapshot = 0;
    }

    else
    {
      [(CNContactStoreDataSource *)self reload];
      currentSnapshot = self->_currentSnapshot;
    }
  }

  return currentSnapshot;
}

- (id)withReloadLock_prepareNewSnapshot
{
  v3 = objc_alloc_init(CNContactStoreSnapshot);
  [(CNContactStoreSnapshot *)v3 setDataSource:self];
  [(CNContactStoreSnapshot *)v3 setFilter:self->_filter];
  [(CNContactStoreSnapshot *)v3 setManagedConfiguration:self->_managedConfiguration];
  [(CNContactStoreSnapshot *)v3 prepareEnoughContacts];

  return v3;
}

- (int64_t)sortOrder
{
  v2 = [MEMORY[0x1E695CE40] sharedDefaults];
  v3 = [v2 sortOrder];

  return v3;
}

- (NSDictionary)sectionHeadersDictionary
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = +[CNUIContactsEnvironment currentEnvironment];
  v3 = [v2 collation];

  v4 = [MEMORY[0x1E695DF90] dictionary];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v19 = v3;
  obj = [v3 headerLanguages];
  v5 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v10 = [v9 sections];
        v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v22;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v22 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v21 + 1) + 8 * j);
              v16 = [v15 ICUSortKey];
              if (v16)
              {
                v17 = [v15 key];
                [v4 setObject:v17 forKey:v16];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v12);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v6);
  }

  return v4;
}

- (NSDictionary)localizedSectionHeaders
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = +[CNUIContactsEnvironment currentEnvironment];
  v3 = [v2 collation];

  v4 = [MEMORY[0x1E695DF90] dictionary];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v19 = v3;
  obj = [v3 headerLanguages];
  v5 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v10 = [v9 sections];
        v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v22;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v22 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v21 + 1) + 8 * j);
              v16 = [v15 localizedName];
              if (v16)
              {
                v17 = [v15 key];
                [v4 setObject:v16 forKey:v17];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v12);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v6);
  }

  return v4;
}

- (CNContactDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (NSArray)indexSections
{
  v2 = [(CNContactStoreDataSource *)self currentSnapshot];
  v3 = [v2 indexSections];

  return v3;
}

- (NSArray)indexSectionsArray
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = +[CNUIContactsEnvironment currentEnvironment];
  v3 = [v2 collation];

  v4 = MEMORY[0x1E695DF70];
  v5 = [v3 indexSections];
  v6 = [v4 arrayWithCapacity:{objc_msgSend(v5, "count")}];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v3 indexSections];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = objc_alloc_init(CNContactSection);
        v14 = [v12 localizedName];
        [(CNContactSection *)v13 setTitle:v14];

        v15 = [v12 key];
        [(CNContactSection *)v13 setIdentifier:v15];

        [v6 addObject:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v16 = objc_alloc_init(CNContactSection);
  [(CNContactSection *)v16 setTitle:@"#"];
  [v6 addObject:v16];

  return v6;
}

- (NSArray)contacts
{
  v2 = [(CNContactStoreDataSource *)self currentSnapshot];
  v3 = [v2 contacts];

  return v3;
}

- (NSDictionary)contactMatchInfos
{
  v2 = [(CNContactStoreDataSource *)self currentSnapshot];
  v3 = [v2 contactMatchInfos];

  return v3;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 isEqualToString:@"sortOrder"])
  {
    [(CNContactStoreDataSource *)self reloadAsynchronously];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CNContactStoreDataSource;
    [(CNContactStoreDataSource *)&v13 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (CNContactFilter)effectiveFilter
{
  v2 = [(CNContactStoreDataSource *)self currentSnapshot];
  v3 = [v2 filter];

  return v3;
}

- (void)setCurrentSnapshot:(id)a3
{
  v5 = a3;
  p_currentSnapshot = &self->_currentSnapshot;
  if (self->_currentSnapshot != v5)
  {
    v8 = v5;
    objc_storeStrong(p_currentSnapshot, a3);
    v7 = [(CNContactStoreDataSource *)self delegate];
    [v7 contactDataSourceDidChange:self];

    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](p_currentSnapshot, v5);
}

- (void)setFilter:(id)a3
{
  v4 = a3;
  if (([v4 isEqual:self->_filter] & 1) == 0)
  {
    v5 = [v4 copy];
    filter = self->_filter;
    self->_filter = v5;

    if (!self->_filter)
    {
      v7 = objc_alloc_init(CNContactStoreFilter);
      v8 = self->_filter;
      self->_filter = v7;
    }

    v9 = [(CNContactStoreDataSource *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      mainThreadScheduler = self->_mainThreadScheduler;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __38__CNContactStoreDataSource_setFilter___block_invoke;
      v16[3] = &unk_1E74E6A88;
      v16[4] = self;
      [(CNScheduler *)mainThreadScheduler performBlock:v16];
    }

    v12 = [(CNContactStoreDataSource *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = self->_mainThreadScheduler;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __38__CNContactStoreDataSource_setFilter___block_invoke_2;
      v15[3] = &unk_1E74E6A88;
      v15[4] = self;
      [(CNScheduler *)v14 performBlock:v15];
    }

    [(CNContactStoreDataSource *)self registerForFilterSpecificChangeNotifications];
  }
}

void __38__CNContactStoreDataSource_setFilter___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 contactDataSourceDisplayNameDidChange:*(a1 + 32)];
}

void __38__CNContactStoreDataSource_setFilter___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 contactDataSourceDidChangeDisplayName:*(a1 + 32)];
}

- (void)_reloadWithSchedulingMethod:(unint64_t)a3
{
  v5 = CNUILogContactStoreDataSource();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (a3)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_debug_impl(&dword_199A75000, v5, OS_LOG_TYPE_DEBUG, "Will reload snapshot (asynchronously)", buf, 2u);
    }

    v7 = self->_backgroundSnapshotScheduler;
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_debug_impl(&dword_199A75000, v5, OS_LOG_TYPE_DEBUG, "Will reload snapshot (inline)", buf, 2u);
    }

    v8 = +[CNUIContactsEnvironment currentEnvironment];
    v9 = [v8 defaultSchedulerProvider];
    v7 = [v9 immediateScheduler];
  }

  v10 = self->_mainThreadScheduler;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__CNContactStoreDataSource__reloadWithSchedulingMethod___block_invoke;
  v12[3] = &unk_1E74E77C0;
  v12[4] = self;
  v13 = v10;
  v11 = v10;
  [(CNScheduler *)v7 performBlock:v12];
}

void __56__CNContactStoreDataSource__reloadWithSchedulingMethod___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = CNUILogContactStoreDataSource();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_199A75000, v2, OS_LOG_TYPE_DEBUG, "Will calculate snapshot", buf, 2u);
  }

  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 timeProvider];
  [v4 timestamp];
  v6 = v5;

  v7 = *(a1 + 32);
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __56__CNContactStoreDataSource__reloadWithSchedulingMethod___block_invoke_195;
  v22 = &unk_1E74E6018;
  v23 = v7;
  v8 = CNResultWithLock();
  v9 = [MEMORY[0x1E69966E8] currentEnvironment];
  v10 = [v9 timeProvider];
  [v10 timestamp];
  v12 = v11;

  v13 = [MEMORY[0x1E6996858] stringForTimeInterval:v12 - v6];
  v14 = CNUILogContactStoreDataSource();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v25 = v13;
    _os_log_debug_impl(&dword_199A75000, v14, OS_LOG_TYPE_DEBUG, "Did calculate snapshot %{public}@", buf, 0xCu);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __56__CNContactStoreDataSource__reloadWithSchedulingMethod___block_invoke_198;
  v17[3] = &unk_1E74E77C0;
  v15 = *(a1 + 40);
  v17[4] = *(a1 + 32);
  v18 = v8;
  v16 = v8;
  [v15 performBlock:v17];
}

void __56__CNContactStoreDataSource__reloadWithSchedulingMethod___block_invoke_198(uint64_t a1)
{
  [*(a1 + 32) setCurrentSnapshot:*(a1 + 40)];
  *(*(a1 + 32) + 40) = 0;
  v2 = CNUILogContactStoreDataSource();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_199A75000, v2, OS_LOG_TYPE_DEFAULT, "Did reload snapshot", v3, 2u);
  }
}

- (void)invalidate
{
  v3 = [MEMORY[0x1E695CE40] sharedDefaults];
  [v3 removeObserver:self forKeyPath:@"sortOrder"];
}

- (void)contactStoreMeContactDidChange:(id)a3
{
  v4 = CNUILogContactStoreDataSource();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_199A75000, v4, OS_LOG_TYPE_DEFAULT, "Received me contact change notification", buf, 2u);
  }

  v5 = self->_mainThreadScheduler;
  databaseChangePreprocessor = self->_databaseChangePreprocessor;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__CNContactStoreDataSource_contactStoreMeContactDidChange___block_invoke;
  v8[3] = &unk_1E74E77C0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [(CNScheduler *)databaseChangePreprocessor performBlock:v8];
}

void __59__CNContactStoreDataSource_contactStoreMeContactDidChange___block_invoke(uint64_t a1)
{
  v2 = CNUILogContactStoreDataSource();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_199A75000, v2, OS_LOG_TYPE_DEFAULT, "Will handle me contact change notification", buf, 2u);
  }

  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  [*(a1 + 32) setMeContactNeedsUpdate:1];
  [*(a1 + 32) setMeContact:0];
  objc_sync_exit(v3);

  v4 = [*(a1 + 32) delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__CNContactStoreDataSource_contactStoreMeContactDidChange___block_invoke_193;
    v8[3] = &unk_1E74E6A88;
    v6 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    [v6 performBlock:v8];
  }

  [*(a1 + 32) reloadAsynchronously];
  v7 = CNUILogContactStoreDataSource();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_199A75000, v7, OS_LOG_TYPE_DEFAULT, "Did handle me contact change notification (async work continues)", buf, 2u);
  }
}

void __59__CNContactStoreDataSource_contactStoreMeContactDidChange___block_invoke_193(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 contactDataSourceMeContactDidChange:*(a1 + 32)];
}

- (void)acceptedIntroductionsDidChange
{
  v2 = [(CNContactStoreDataSource *)self contactStoreDidChangeCoalescer];
  [v2 handleEvent];
}

- (void)contactStoreDidChangeHandler
{
  v3 = CNUILogContactStoreDataSource();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_199A75000, v3, OS_LOG_TYPE_DEFAULT, "Will handle contacts change notification", buf, 2u);
  }

  filteredGroup = self->_filteredGroup;
  self->_filteredGroup = 0;

  if ([(CNContactStoreDataSource *)self shouldRevalidateFilterOnStoreChange])
  {
    [(CNContactStoreDataSource *)self validateFilter];
    [(CNContactStoreDataSource *)self setShouldRevalidateFilterOnStoreChange:0];
  }

  [(CNContactStoreDataSource *)self reloadAsynchronously];
  v5 = CNUILogContactStoreDataSource();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_199A75000, v5, OS_LOG_TYPE_DEFAULT, "Did handle contacts change notification (async work continues)", v6, 2u);
  }
}

- (void)contactStoreDidChange:(id)a3
{
  v4 = CNUILogContactStoreDataSource();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_199A75000, v4, OS_LOG_TYPE_DEFAULT, "Received contacts change notification", v6, 2u);
  }

  v5 = [(CNContactStoreDataSource *)self contactStoreDidChangeCoalescer];
  [v5 handleEvent];
}

- (void)validateFilter
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = [(CNContactStoreDataSource *)self filter];
  v4 = [v3 copy];

  v5 = *MEMORY[0x1E6996560];
  v6 = [v4 containerIdentifiers];
  v7 = (*(v5 + 16))(v5, v6);

  if ((v7 & 1) == 0)
  {
    v8 = [(CNContactStoreDataSource *)self store];
    v33 = 0;
    v9 = [v8 containersMatchingPredicate:0 error:&v33];
    v10 = v33;

    if (!v9)
    {
      v18 = CNUILogContactStoreDataSource();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v35 = v10;
        _os_log_error_impl(&dword_199A75000, v18, OS_LOG_TYPE_ERROR, "Error fetching containers for filter validation: %@", buf, 0xCu);
      }

      goto LABEL_20;
    }

    v11 = MEMORY[0x1E695DFD8];
    v12 = [v9 _cn_map:&__block_literal_global_186];
    v13 = [v11 setWithArray:v12];

    v14 = MEMORY[0x1E695DFA8];
    v15 = [v4 containerIdentifiers];
    v16 = [v14 setWithSet:v15];

    [v16 intersectSet:v13];
    if ([v16 count])
    {
      v17 = [v16 copy];
      [v4 setContainerIdentifiers:v17];
    }

    else
    {
      [v4 setContainerIdentifiers:0];
    }
  }

  v19 = [v4 groupIdentifiers];
  v20 = (*(v5 + 16))(v5, v19);

  if (v20)
  {
LABEL_19:
    [(CNContactStoreDataSource *)self setFilter:v4];
    goto LABEL_20;
  }

  v21 = [(CNContactStoreDataSource *)self store];
  v32 = 0;
  v22 = [v21 groupsMatchingPredicate:0 error:&v32];
  v23 = v32;

  if (v22)
  {
    v24 = MEMORY[0x1E695DFD8];
    v25 = [v22 _cn_map:&__block_literal_global_190];
    v26 = [v24 setWithArray:v25];

    v27 = MEMORY[0x1E695DFA8];
    v28 = [v4 groupIdentifiers];
    v29 = [v27 setWithSet:v28];

    [v29 intersectSet:v26];
    if ([v29 count])
    {
      v30 = [v29 copy];
      [v4 setGroupIdentifiers:v30];
    }

    else
    {
      [v4 setGroupIdentifiers:0];
    }

    goto LABEL_19;
  }

  v31 = CNUILogContactStoreDataSource();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v35 = v23;
    _os_log_error_impl(&dword_199A75000, v31, OS_LOG_TYPE_ERROR, "Error fetching groups for filter validation: %@", buf, 0xCu);
  }

LABEL_20:
}

- (BOOL)setMeContact:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  [(CNContactStoreDataSource *)v7 setMeContact:0];
  objc_sync_exit(v7);

  v8 = [(CNContactStoreDataSource *)v7 store];
  LOBYTE(a4) = [v8 setMeContact:v6 error:a4];

  return a4;
}

- (id)preferredForNameMeContactIdentifier
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = *MEMORY[0x1E695C258];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v4 = [(CNContactStoreDataSource *)self preferredForNameMeContactWithKeysToFetch:v3];
  v5 = [v4 identifier];

  return v5;
}

- (id)preferredForNameMeContactWithKeysToFetch:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (-[CNContactStoreDataSource meContactNeedsUpdate](v5, "meContactNeedsUpdate") || (-[CNContactStoreDataSource meContact](v5, "meContact"), (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (-[CNContactStoreDataSource meContact](v5, "meContact"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 areKeysAvailable:v4], v7, v6, (v8 & 1) == 0))
  {
    v9 = [MEMORY[0x1E695DF70] array];
    v10 = v9;
    if (v4)
    {
      [v9 addObjectsFromArray:v4];
    }

    v11 = [(CNContactStoreDataSource *)v5 meContact];

    if (v11)
    {
      v12 = [(CNContactStoreDataSource *)v5 meContact];
      v13 = [v12 availableKeyDescriptor];
      [v10 addObject:v13];
    }

    v14 = [objc_alloc(MEMORY[0x1E695CD78]) initWithKeysToFetch:v10];
    v15 = [MEMORY[0x1E695CD58] predicateForMeContact];
    [v14 setPredicate:v15];

    [v14 setUnifyResults:0];
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__55801;
    v28 = __Block_byref_object_dispose__55802;
    v29 = 0;
    v16 = [(CNContactStoreDataSource *)v5 store];
    v22[4] = &v24;
    v23 = 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __69__CNContactStoreDataSource_preferredForNameMeContactWithKeysToFetch___block_invoke;
    v22[3] = &unk_1E74E6F60;
    v17 = [v16 enumerateNonUnifiedContactsWithFetchRequest:v14 error:&v23 usingBlock:v22];
    v18 = v23;

    if (v17)
    {
      [(CNContactStoreDataSource *)v5 setMeContactNeedsUpdate:0];
      [(CNContactStoreDataSource *)v5 setMeContact:v25[5]];
    }

    else
    {
      v19 = CNUILogContactStoreDataSource();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v31 = v18;
        _os_log_error_impl(&dword_199A75000, v19, OS_LOG_TYPE_ERROR, "Error fetching the me card: %@", buf, 0xCu);
      }
    }

    _Block_object_dispose(&v24, 8);
  }

  v20 = [(CNContactStoreDataSource *)v5 meContact];
  objc_sync_exit(v5);

  return v20;
}

- (id)indexPathForContact:(id)a3
{
  v4 = a3;
  v5 = [(CNContactStoreDataSource *)self currentSnapshot];
  v6 = [v5 identifiersToIndexPath];
  if (![v4 isUnified])
  {
    goto LABEL_6;
  }

  v7 = [v4 mainStoreLinkedContacts];
  if ([v7 count] < 2)
  {
    [v7 firstObject];
  }

  else
  {
    [v7 _cn_firstObjectPassingTest:&__block_literal_global_183];
  }
  v8 = ;
  v9 = [v8 identifier];

  if (!v9)
  {
LABEL_6:
    v9 = [v4 identifier];
  }

  v10 = [v6 objectForKey:v9];
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    [v5 prepareAllContacts];
    v12 = [v5 identifiersToIndexPath];

    v13 = [v4 identifier];
    v11 = [v12 objectForKey:v13];

    v6 = v12;
  }

  return v11;
}

- (id)completeContactFromContact:(id)a3 fromMainStoreOnly:(BOOL)a4 keysToFetch:(id)a5
{
  v6 = a4;
  v46 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    if ([v8 isUnknown] && (objc_msgSend(v8, "isSuggestedMe") & 1) == 0)
    {
      v17 = v8;
    }

    else
    {
      v10 = [v8 identifier];
      v11 = [(CNContactStoreDataSource *)self preferredForNameMeContactIdentifier];
      v12 = [v10 isEqual:v11];

      v38 = 0;
      v39 = &v38;
      v40 = 0x3032000000;
      v41 = __Block_byref_object_copy__55801;
      v42 = __Block_byref_object_dispose__55802;
      v43 = 0;
      v32 = 0;
      v33 = &v32;
      v34 = 0x3032000000;
      v35 = __Block_byref_object_copy__55801;
      v36 = __Block_byref_object_dispose__55802;
      v37 = 0;
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v31 = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __85__CNContactStoreDataSource_completeContactFromContact_fromMainStoreOnly_keysToFetch___block_invoke;
      aBlock[3] = &unk_1E74E5FB0;
      v21 = v9;
      v27 = v12;
      v13 = v10;
      v22 = v13;
      v23 = self;
      v24 = &v28;
      v25 = &v32;
      v26 = &v38;
      v14 = _Block_copy(aBlock);
      v14[2](v14, v6);
      if ((v29[3] & 1) == 0)
      {
        v15 = CNUILogContactStoreDataSource();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v19 = v33[5];
          *buf = 138412290;
          v45 = v19;
          _os_log_error_impl(&dword_199A75000, v15, OS_LOG_TYPE_ERROR, "Error completing contact: %@", buf, 0xCu);
        }

        if ([objc_opt_class() isErrorPossiblyRelatedToExtraStores:v33[5]])
        {
          v16 = CNUILogContactStoreDataSource();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_199A75000, v16, OS_LOG_TYPE_ERROR, "Will re-fetch from main store", buf, 2u);
          }

          v14[2](v14, 1);
        }
      }

      v17 = v39[5];

      _Block_object_dispose(&v28, 8);
      _Block_object_dispose(&v32, 8);

      _Block_object_dispose(&v38, 8);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void __85__CNContactStoreDataSource_completeContactFromContact_fromMainStoreOnly_keysToFetch___block_invoke(uint64_t a1, uint64_t a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = [objc_alloc(MEMORY[0x1E695CD78]) initWithKeysToFetch:*(a1 + 32)];
  v5 = MEMORY[0x1E695CD58];
  if (*(a1 + 80))
  {
    v6 = [MEMORY[0x1E695CD58] predicateForMeContact];
    [v4 setPredicate:v6];
  }

  else
  {
    v19[0] = *(a1 + 40);
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v8 = [v5 predicateForContactsWithIdentifiers:v7];
    [v4 setPredicate:v8];
  }

  [v4 setUnifyResults:1];
  [v4 setOnlyMainStore:a2];
  v9 = [*(a1 + 48) store];
  v10 = *(*(a1 + 64) + 8);
  v11 = *(v10 + 40);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __85__CNContactStoreDataSource_completeContactFromContact_fromMainStoreOnly_keysToFetch___block_invoke_2;
  v15[3] = &unk_1E74E6F60;
  v15[4] = *(a1 + 72);
  obj = v11;
  v12 = [v9 enumerateContactsWithFetchRequest:v4 error:&obj usingBlock:v15];
  objc_storeStrong((v10 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v12;

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v13 = CNUILogContactStoreDataSource();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 138412290;
      v18 = v14;
      _os_log_error_impl(&dword_199A75000, v13, OS_LOG_TYPE_ERROR, "Error completing contact: %@", buf, 0xCu);
    }
  }
}

void __85__CNContactStoreDataSource_completeContactFromContact_fromMainStoreOnly_keysToFetch___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v7 = *(*(a1 + 32) + 8);
  v9 = *(v7 + 40);
  v8 = (v7 + 40);
  if (v9)
  {
    v10 = CNUILogContactStoreDataSource();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_199A75000, v10, OS_LOG_TYPE_ERROR, "Error: got more than one contact instead of a unified one", v13, 2u);
    }

    v11 = *(*(a1 + 32) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = 0;

    *a3 = 1;
  }

  else
  {
    objc_storeStrong(v8, a2);
  }
}

- (CNGroup)filteredGroup
{
  v21[1] = *MEMORY[0x1E69E9840];
  if ([(CNContactStoreDataSource *)self filterShowsSingleGroup])
  {
    v3 = [(CNContactStoreDataSource *)self filter];
    v4 = [v3 groupIdentifiers];
    v5 = [v4 allObjects];
    v6 = [v5 firstObject];

    filteredGroup = self->_filteredGroup;
    if (v6)
    {
      v8 = filteredGroup;
      v9 = self->_filteredGroup;
      if (!v9 || (-[CNGroup identifier](v9, "identifier"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isEqualToString:v6], v10, (v11 & 1) == 0))
      {

        v12 = MEMORY[0x1E695CEC0];
        v21[0] = v6;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
        v14 = [v12 predicateForGroupsWithIdentifiers:v13];

        v15 = [(CNContactStoreDataSource *)self store];
        v16 = [v15 groupsMatchingPredicate:v14 error:0];

        v17 = [v16 firstObject];
        v18 = self->_filteredGroup;
        self->_filteredGroup = v17;

        v8 = self->_filteredGroup;
      }
    }

    else
    {
      self->_filteredGroup = 0;

      v8 = 0;
    }
  }

  else
  {
    v19 = self->_filteredGroup;
    self->_filteredGroup = 0;

    v8 = 0;
  }

  return v8;
}

- (id)accountForContainerIdentifier:(id)a3
{
  v4 = [MEMORY[0x1E695CD10] predicateForAccountForContainerWithIdentifier:a3];
  v5 = [(CNContactStoreDataSource *)self store];
  v6 = [v5 accountsMatchingPredicate:v4 error:0];

  v7 = [v6 firstObject];

  return v7;
}

- (BOOL)doesFilterShowAllContainersForAccount:(id)a3
{
  v4 = MEMORY[0x1E695CE48];
  v5 = [a3 identifier];
  v6 = [v4 predicateForContainersInAccountWithIdentifier:v5];

  v7 = [(CNContactStoreDataSource *)self store];
  v8 = [v7 containersMatchingPredicate:v6 error:0];

  v9 = [v8 _cn_map:&__block_literal_global_56056];
  v10 = [MEMORY[0x1E695DFD8] setWithArray:v9];
  v11 = [(CNContactStoreDataSource *)self filter];
  v12 = [v11 containerIdentifiers];
  v13 = [v10 isEqualToSet:v12];

  return v13;
}

- (BOOL)canUseTitleForAccount:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 _cnui_displayName];
    if ((*(*MEMORY[0x1E6996570] + 16))())
    {
      v7 = [(CNContactStoreDataSource *)self doesFilterShowAllContainersForAccount:v5];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)titleForContainer:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = *MEMORY[0x1E6996570];
  if (((*(*MEMORY[0x1E6996570] + 16))(*MEMORY[0x1E6996570], v5) & 1) == 0)
  {
    v7 = CNContactsUIBundle();
    v8 = [v7 localizedStringForKey:@"CONTACTS" value:&stru_1F0CE7398 table:@"Localized"];

    v5 = v8;
  }

  v9 = [v4 identifier];

  v10 = [(CNContactStoreDataSource *)self accountForContainerIdentifier:v9];

  if (v10 && ([v10 identifier], v11 = objc_claimAutoreleasedReturnValue(), v12 = (*(v6 + 16))(v6, v11), v11, (v12 & 1) != 0))
  {
    v13 = [v10 _cnui_displayName];
    v14 = MEMORY[0x1E695CE48];
    v15 = [v10 identifier];
    v16 = [v14 predicateForContainersInAccountWithIdentifier:v15];

    v17 = [(CNContactStoreDataSource *)self store];
    v18 = [v17 containersMatchingPredicate:v16 error:0];

    if ([v18 count] != 1 || (v19 = (*(v6 + 16))(v6, v13), v20 = v13, (v19 & 1) == 0))
    {
      v20 = v5;
    }

    v21 = v20;
  }

  else
  {
    v21 = v5;
  }

  return v21;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E695CE40] sharedDefaults];
  [v3 removeObserver:self forKeyPath:@"sortOrder"];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self];

  v5 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = CNContactStoreDataSource;
  [(CNContactStoreDataSource *)&v6 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(CNContactStoreDataSource *)self store];
  v6 = [v4 initWithStore:v5];

  v7 = [(CNContactStoreDataSource *)self contactFormatter];
  [v6 setContactFormatter:v7];

  v8 = [(CNContactStoreDataSource *)self keysToFetch];
  [v6 setKeysToFetch:v8];

  v9 = [(CNContactStoreDataSource *)self filter];
  v10 = [v9 copy];
  [v6 setFilter:v10];

  [v6 setFetchUnified:{-[CNContactStoreDataSource fetchUnified](self, "fetchUnified")}];
  return v6;
}

void __72__CNContactStoreDataSource_registerForFilterSpecificChangeNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained acceptedIntroductionsDidChange];
}

void __66__CNContactStoreDataSource_registerForRelevantChangeNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained contactStoreDidChangeHandler];
}

- (CNContactStoreDataSource)initWithStore:(id)a3
{
  v4 = MEMORY[0x1E696AF00];
  v5 = a3;
  if (([v4 isMainThread] & 1) == 0)
  {
    v6 = CNUILogContactStoreDataSource();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_199A75000, v6, OS_LOG_TYPE_ERROR, "Don't call +[CNContactStoreDataSource initWithStore:] from non main thread, this will throw in the near future", buf, 2u);
    }
  }

  v21.receiver = self;
  v21.super_class = CNContactStoreDataSource;
  v7 = [(CNContactStoreDataSource *)&v21 init];
  v8 = +[CNUIContactsEnvironment currentEnvironment];
  v9 = [v8 defaultSchedulerProvider];

  v10 = [v9 mainThreadScheduler];
  mainThreadScheduler = v7->_mainThreadScheduler;
  v7->_mainThreadScheduler = v10;

  v12 = [v9 newSerialSchedulerWithName:@"ContactStoreDidChange preprocessor"];
  databaseChangePreprocessor = v7->_databaseChangePreprocessor;
  v7->_databaseChangePreprocessor = v12;

  [(CNContactStoreDataSource *)v7 setStore:v5];
  [(CNContactStoreDataSource *)v7 registerForRelevantChangeNotifications];
  v14 = objc_alloc_init(CNContactStoreFilter);
  filter = v7->_filter;
  v7->_filter = v14;

  v16 = [v9 newSerialSchedulerWithName:@"com.apple.contacts.ui.store-snapshotting"];
  backgroundSnapshotScheduler = v7->_backgroundSnapshotScheduler;
  v7->_backgroundSnapshotScheduler = v16;

  v18 = objc_alloc_init(MEMORY[0x1E6996878]);
  reloadLock = v7->_reloadLock;
  v7->_reloadLock = v18;

  v7->_meContactNeedsUpdate = 1;
  [(CNContactStoreDataSource *)v7 registerForFilterSpecificChangeNotifications];

  return v7;
}

+ (BOOL)isErrorPossiblyRelatedToExtraStores:(id)a3
{
  v3 = a3;
  v4 = *MEMORY[0x1E696A250];
  if ([MEMORY[0x1E6996708] isError:v3 errorWithDomain:*MEMORY[0x1E696A250] code:4099] & 1) != 0 || (objc_msgSend(MEMORY[0x1E6996708], "isError:errorWithDomain:code:", v3, v4, 4097))
  {
    v5 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E6996708] isError:v3 errorWithDomain:v4 code:4101];
  }

  return v5;
}

@end