@interface CNContactStoreDataSource
+ (BOOL)isErrorPossiblyRelatedToExtraStores:(id)stores;
- (BOOL)canUseTitleForAccount:(id)account;
- (BOOL)doesFilterShowAllContainersForAccount:(id)account;
- (BOOL)filterShowsSingleExchangeFolder;
- (BOOL)filterShowsSingleGroup;
- (BOOL)setMeContact:(id)contact error:(id *)error;
- (CNContactDataSourceDelegate)delegate;
- (CNContactFilter)effectiveFilter;
- (CNContactStoreDataSource)initWithStore:(id)store;
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
- (id)accountForContainerIdentifier:(id)identifier;
- (id)completeContactFromContact:(id)contact fromMainStoreOnly:(BOOL)only keysToFetch:(id)fetch;
- (id)copyWithZone:(_NSZone *)zone;
- (id)indexPathForContact:(id)contact;
- (id)preferredForNameMeContactIdentifier;
- (id)preferredForNameMeContactWithKeysToFetch:(id)fetch;
- (id)titleForContainer:(id)container;
- (id)withReloadLock_prepareNewSnapshot;
- (int64_t)sortOrder;
- (void)_reloadWithSchedulingMethod:(unint64_t)method;
- (void)acceptedIntroductionsDidChange;
- (void)contactStoreDidChange:(id)change;
- (void)contactStoreDidChangeHandler;
- (void)contactStoreMeContactDidChange:(id)change;
- (void)dealloc;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)registerForFilterSpecificChangeNotifications;
- (void)registerForRelevantChangeNotifications;
- (void)setCurrentSnapshot:(id)snapshot;
- (void)setFilter:(id)filter;
- (void)validateFilter;
@end

@implementation CNContactStoreDataSource

- (void)registerForRelevantChangeNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_contactStoreDidChange_ name:*MEMORY[0x1E695C3D8] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_contactStoreMeContactDidChange_ name:*MEMORY[0x1E695C3E0] object:0];

  defaultCenter3 = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_contactStoreMeContactDidChange_ name:*MEMORY[0x1E6996440] object:0];

  mEMORY[0x1E695CE40] = [MEMORY[0x1E695CE40] sharedDefaults];
  [mEMORY[0x1E695CE40] addObserver:self forKeyPath:@"sortOrder" options:0 context:0];

  v7 = +[CNUIContactsEnvironment currentEnvironment];
  defaultSchedulerProvider = [v7 defaultSchedulerProvider];

  objc_initWeak(&location, self);
  v9 = objc_alloc(MEMORY[0x1E6996678]);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __66__CNContactStoreDataSource_registerForRelevantChangeNotifications__block_invoke;
  v14 = &unk_1E74E6C98;
  objc_copyWeak(&v15, &location);
  v10 = [v9 initWithDelay:1 options:&v11 block:defaultSchedulerProvider schedulerProvider:self->_databaseChangePreprocessor downstreamScheduler:2.0];
  [(CNContactStoreDataSource *)self setContactStoreDidChangeCoalescer:v10, v11, v12, v13, v14];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)registerForFilterSpecificChangeNotifications
{
  filteredContainer = [(CNContactStoreDataSource *)self filteredContainer];
  identifier = [filteredContainer identifier];
  acceptedContactsDomainIdentifier = [MEMORY[0x1E695CE58] acceptedContactsDomainIdentifier];
  v6 = [identifier isEqualToString:acceptedContactsDomainIdentifier];

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

    acceptedIntroductionsNotifier = [(CNContactStoreDataSource *)self acceptedIntroductionsNotifier];
    [acceptedIntroductionsNotifier startObserving];

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
  filter = [(CNContactStoreDataSource *)self filter];
  containerIdentifiers = [filter containerIdentifiers];
  if ([containerIdentifiers count] != 1)
  {

    goto LABEL_8;
  }

  filter2 = [(CNContactStoreDataSource *)self filter];
  groupIdentifiers = [filter2 groupIdentifiers];
  v7 = [groupIdentifiers count];

  if (v7)
  {
LABEL_8:
    filteredContainer = self->_filteredContainer;
    self->_filteredContainer = 0;

    v13 = 0;
    goto LABEL_9;
  }

  filter3 = [(CNContactStoreDataSource *)self filter];
  containerIdentifiers2 = [filter3 containerIdentifiers];
  allObjects = [containerIdentifiers2 allObjects];
  firstObject = [allObjects firstObject];

  v12 = self->_filteredContainer;
  if (firstObject)
  {
    v13 = v12;
    v14 = self->_filteredContainer;
    if (!v14 || (-[CNContainer identifier](v14, "identifier"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 isEqualToString:firstObject], v15, (v16 & 1) == 0))
    {

      v17 = MEMORY[0x1E695CE48];
      v26[0] = firstObject;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
      v19 = [v17 predicateForContainersWithIdentifiers:v18];

      store = [(CNContactStoreDataSource *)self store];
      v21 = [store containersMatchingPredicate:v19 error:0];

      firstObject2 = [v21 firstObject];
      v23 = self->_filteredContainer;
      self->_filteredContainer = firstObject2;

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
  filter = [(CNContactStoreDataSource *)self filter];
  customDisplayName = [filter customDisplayName];

  filter2 = [(CNContactStoreDataSource *)self filter];
  customDisplayName2 = [filter2 customDisplayName];

  if (!customDisplayName2)
  {

    v7 = CNContactsUIBundle();
    customDisplayName = [v7 localizedStringForKey:@"SEARCH_NAV_TITLE" value:&stru_1F0CE7398 table:@"Localized"];

    filter3 = [(CNContactStoreDataSource *)self filter];
    fullTextString = [filter3 fullTextString];
    v10 = [fullTextString length];

    if (!v10)
    {

      v11 = CNContactsUIBundle();
      customDisplayName = [v11 localizedStringForKey:@"ALL_CONTACTS" value:&stru_1F0CE7398 table:@"Localized"];

      filter4 = [(CNContactStoreDataSource *)self filter];
      containerIdentifiers = [filter4 containerIdentifiers];
      if (containerIdentifiers)
      {
      }

      else
      {
        filter5 = [(CNContactStoreDataSource *)self filter];
        groupIdentifiers = [filter5 groupIdentifiers];

        if (!groupIdentifiers)
        {
          goto LABEL_17;
        }
      }

      filteredGroup = [(CNContactStoreDataSource *)self filteredGroup];
      v17 = filteredGroup;
      if (filteredGroup)
      {
        v18 = *MEMORY[0x1E6996570];
        name = [filteredGroup name];
        if ((*(v18 + 16))(v18, name))
        {
          customDisplayName = [v17 name];
        }

        else
        {
          v25 = CNContactsUIBundle();
          customDisplayName = [v25 localizedStringForKey:@"CONTACTS" value:&stru_1F0CE7398 table:@"Localized"];
        }

        goto LABEL_16;
      }

      name = [(CNContactStoreDataSource *)self filteredContainer];
      v20 = [(CNContactStoreDataSource *)self titleForContainer:name];
      customDisplayName = v20;
      if (name)
      {
LABEL_16:

        goto LABEL_17;
      }

      filter6 = [(CNContactStoreDataSource *)self filter];
      containerIdentifiers2 = [filter6 containerIdentifiers];
      anyObject = [containerIdentifiers2 anyObject];

      if (anyObject)
      {
        v24 = [(CNContactStoreDataSource *)self accountForContainerIdentifier:anyObject];
        customDisplayName = [v24 _cnui_displayName];
        if ([(CNContactStoreDataSource *)self canUseTitleForAccount:v24])
        {
LABEL_14:

          name = 0;
          goto LABEL_16;
        }
      }

      v24 = CNContactsUIBundle();
      customDisplayName = [v24 localizedStringForKey:@"CONTACTS" value:&stru_1F0CE7398 table:@"Localized"];
      goto LABEL_14;
    }
  }

LABEL_17:

  return customDisplayName;
}

- (BOOL)filterShowsSingleGroup
{
  filter = [(CNContactStoreDataSource *)self filter];
  groupIdentifiers = [filter groupIdentifiers];
  if ([groupIdentifiers count] == 1)
  {
    filter2 = [(CNContactStoreDataSource *)self filter];
    containerIdentifiers = [filter2 containerIdentifiers];
    v7 = [containerIdentifiers count] == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)filterShowsSingleExchangeFolder
{
  filteredContainer = [(CNContactStoreDataSource *)self filteredContainer];
  v3 = filteredContainer;
  if (filteredContainer)
  {
    v4 = [filteredContainer type] == 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)sections
{
  currentSnapshot = [(CNContactStoreDataSource *)self currentSnapshot];
  sections = [currentSnapshot sections];

  return sections;
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
  mEMORY[0x1E695CE40] = [MEMORY[0x1E695CE40] sharedDefaults];
  sortOrder = [mEMORY[0x1E695CE40] sortOrder];

  return sortOrder;
}

- (NSDictionary)sectionHeadersDictionary
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = +[CNUIContactsEnvironment currentEnvironment];
  collation = [v2 collation];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v19 = collation;
  obj = [collation headerLanguages];
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
        sections = [v9 sections];
        v11 = [sections countByEnumeratingWithState:&v21 objects:v29 count:16];
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
                objc_enumerationMutation(sections);
              }

              v15 = *(*(&v21 + 1) + 8 * j);
              iCUSortKey = [v15 ICUSortKey];
              if (iCUSortKey)
              {
                v17 = [v15 key];
                [dictionary setObject:v17 forKey:iCUSortKey];
              }
            }

            v12 = [sections countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v12);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v6);
  }

  return dictionary;
}

- (NSDictionary)localizedSectionHeaders
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = +[CNUIContactsEnvironment currentEnvironment];
  collation = [v2 collation];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v19 = collation;
  obj = [collation headerLanguages];
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
        sections = [v9 sections];
        v11 = [sections countByEnumeratingWithState:&v21 objects:v29 count:16];
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
                objc_enumerationMutation(sections);
              }

              v15 = *(*(&v21 + 1) + 8 * j);
              localizedName = [v15 localizedName];
              if (localizedName)
              {
                v17 = [v15 key];
                [dictionary setObject:localizedName forKey:v17];
              }
            }

            v12 = [sections countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v12);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v6);
  }

  return dictionary;
}

- (CNContactDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (NSArray)indexSections
{
  currentSnapshot = [(CNContactStoreDataSource *)self currentSnapshot];
  indexSections = [currentSnapshot indexSections];

  return indexSections;
}

- (NSArray)indexSectionsArray
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = +[CNUIContactsEnvironment currentEnvironment];
  collation = [v2 collation];

  v4 = MEMORY[0x1E695DF70];
  indexSections = [collation indexSections];
  v6 = [v4 arrayWithCapacity:{objc_msgSend(indexSections, "count")}];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  indexSections2 = [collation indexSections];
  v8 = [indexSections2 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(indexSections2);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = objc_alloc_init(CNContactSection);
        localizedName = [v12 localizedName];
        [(CNContactSection *)v13 setTitle:localizedName];

        v15 = [v12 key];
        [(CNContactSection *)v13 setIdentifier:v15];

        [v6 addObject:v13];
      }

      v9 = [indexSections2 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
  currentSnapshot = [(CNContactStoreDataSource *)self currentSnapshot];
  contacts = [currentSnapshot contacts];

  return contacts;
}

- (NSDictionary)contactMatchInfos
{
  currentSnapshot = [(CNContactStoreDataSource *)self currentSnapshot];
  contactMatchInfos = [currentSnapshot contactMatchInfos];

  return contactMatchInfos;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"sortOrder"])
  {
    [(CNContactStoreDataSource *)self reloadAsynchronously];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CNContactStoreDataSource;
    [(CNContactStoreDataSource *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (CNContactFilter)effectiveFilter
{
  currentSnapshot = [(CNContactStoreDataSource *)self currentSnapshot];
  filter = [currentSnapshot filter];

  return filter;
}

- (void)setCurrentSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  p_currentSnapshot = &self->_currentSnapshot;
  if (self->_currentSnapshot != snapshotCopy)
  {
    v8 = snapshotCopy;
    objc_storeStrong(p_currentSnapshot, snapshot);
    delegate = [(CNContactStoreDataSource *)self delegate];
    [delegate contactDataSourceDidChange:self];

    snapshotCopy = v8;
  }

  MEMORY[0x1EEE66BB8](p_currentSnapshot, snapshotCopy);
}

- (void)setFilter:(id)filter
{
  filterCopy = filter;
  if (([filterCopy isEqual:self->_filter] & 1) == 0)
  {
    v5 = [filterCopy copy];
    filter = self->_filter;
    self->_filter = v5;

    if (!self->_filter)
    {
      v7 = objc_alloc_init(CNContactStoreFilter);
      v8 = self->_filter;
      self->_filter = v7;
    }

    delegate = [(CNContactStoreDataSource *)self delegate];
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

    delegate2 = [(CNContactStoreDataSource *)self delegate];
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

- (void)_reloadWithSchedulingMethod:(unint64_t)method
{
  v5 = CNUILogContactStoreDataSource();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (method)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_debug_impl(&dword_199A75000, v5, OS_LOG_TYPE_DEBUG, "Will reload snapshot (asynchronously)", buf, 2u);
    }

    immediateScheduler = self->_backgroundSnapshotScheduler;
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_debug_impl(&dword_199A75000, v5, OS_LOG_TYPE_DEBUG, "Will reload snapshot (inline)", buf, 2u);
    }

    v8 = +[CNUIContactsEnvironment currentEnvironment];
    defaultSchedulerProvider = [v8 defaultSchedulerProvider];
    immediateScheduler = [defaultSchedulerProvider immediateScheduler];
  }

  v10 = self->_mainThreadScheduler;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__CNContactStoreDataSource__reloadWithSchedulingMethod___block_invoke;
  v12[3] = &unk_1E74E77C0;
  v12[4] = self;
  v13 = v10;
  v11 = v10;
  [(CNScheduler *)immediateScheduler performBlock:v12];
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
  mEMORY[0x1E695CE40] = [MEMORY[0x1E695CE40] sharedDefaults];
  [mEMORY[0x1E695CE40] removeObserver:self forKeyPath:@"sortOrder"];
}

- (void)contactStoreMeContactDidChange:(id)change
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
  contactStoreDidChangeCoalescer = [(CNContactStoreDataSource *)self contactStoreDidChangeCoalescer];
  [contactStoreDidChangeCoalescer handleEvent];
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

- (void)contactStoreDidChange:(id)change
{
  v4 = CNUILogContactStoreDataSource();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_199A75000, v4, OS_LOG_TYPE_DEFAULT, "Received contacts change notification", v6, 2u);
  }

  contactStoreDidChangeCoalescer = [(CNContactStoreDataSource *)self contactStoreDidChangeCoalescer];
  [contactStoreDidChangeCoalescer handleEvent];
}

- (void)validateFilter
{
  v36 = *MEMORY[0x1E69E9840];
  filter = [(CNContactStoreDataSource *)self filter];
  v4 = [filter copy];

  v5 = *MEMORY[0x1E6996560];
  containerIdentifiers = [v4 containerIdentifiers];
  v7 = (*(v5 + 16))(v5, containerIdentifiers);

  if ((v7 & 1) == 0)
  {
    store = [(CNContactStoreDataSource *)self store];
    v33 = 0;
    v9 = [store containersMatchingPredicate:0 error:&v33];
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
    containerIdentifiers2 = [v4 containerIdentifiers];
    v16 = [v14 setWithSet:containerIdentifiers2];

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

  groupIdentifiers = [v4 groupIdentifiers];
  v20 = (*(v5 + 16))(v5, groupIdentifiers);

  if (v20)
  {
LABEL_19:
    [(CNContactStoreDataSource *)self setFilter:v4];
    goto LABEL_20;
  }

  store2 = [(CNContactStoreDataSource *)self store];
  v32 = 0;
  v22 = [store2 groupsMatchingPredicate:0 error:&v32];
  v23 = v32;

  if (v22)
  {
    v24 = MEMORY[0x1E695DFD8];
    v25 = [v22 _cn_map:&__block_literal_global_190];
    v26 = [v24 setWithArray:v25];

    v27 = MEMORY[0x1E695DFA8];
    groupIdentifiers2 = [v4 groupIdentifiers];
    v29 = [v27 setWithSet:groupIdentifiers2];

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

- (BOOL)setMeContact:(id)contact error:(id *)error
{
  contactCopy = contact;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(CNContactStoreDataSource *)selfCopy setMeContact:0];
  objc_sync_exit(selfCopy);

  store = [(CNContactStoreDataSource *)selfCopy store];
  LOBYTE(error) = [store setMeContact:contactCopy error:error];

  return error;
}

- (id)preferredForNameMeContactIdentifier
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = *MEMORY[0x1E695C258];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v4 = [(CNContactStoreDataSource *)self preferredForNameMeContactWithKeysToFetch:v3];
  identifier = [v4 identifier];

  return identifier;
}

- (id)preferredForNameMeContactWithKeysToFetch:(id)fetch
{
  v32 = *MEMORY[0x1E69E9840];
  fetchCopy = fetch;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (-[CNContactStoreDataSource meContactNeedsUpdate](selfCopy, "meContactNeedsUpdate") || (-[CNContactStoreDataSource meContact](selfCopy, "meContact"), (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (-[CNContactStoreDataSource meContact](selfCopy, "meContact"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 areKeysAvailable:fetchCopy], v7, v6, (v8 & 1) == 0))
  {
    array = [MEMORY[0x1E695DF70] array];
    v10 = array;
    if (fetchCopy)
    {
      [array addObjectsFromArray:fetchCopy];
    }

    meContact = [(CNContactStoreDataSource *)selfCopy meContact];

    if (meContact)
    {
      meContact2 = [(CNContactStoreDataSource *)selfCopy meContact];
      availableKeyDescriptor = [meContact2 availableKeyDescriptor];
      [v10 addObject:availableKeyDescriptor];
    }

    v14 = [objc_alloc(MEMORY[0x1E695CD78]) initWithKeysToFetch:v10];
    predicateForMeContact = [MEMORY[0x1E695CD58] predicateForMeContact];
    [v14 setPredicate:predicateForMeContact];

    [v14 setUnifyResults:0];
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__55801;
    v28 = __Block_byref_object_dispose__55802;
    v29 = 0;
    store = [(CNContactStoreDataSource *)selfCopy store];
    v22[4] = &v24;
    v23 = 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __69__CNContactStoreDataSource_preferredForNameMeContactWithKeysToFetch___block_invoke;
    v22[3] = &unk_1E74E6F60;
    v17 = [store enumerateNonUnifiedContactsWithFetchRequest:v14 error:&v23 usingBlock:v22];
    v18 = v23;

    if (v17)
    {
      [(CNContactStoreDataSource *)selfCopy setMeContactNeedsUpdate:0];
      [(CNContactStoreDataSource *)selfCopy setMeContact:v25[5]];
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

  meContact3 = [(CNContactStoreDataSource *)selfCopy meContact];
  objc_sync_exit(selfCopy);

  return meContact3;
}

- (id)indexPathForContact:(id)contact
{
  contactCopy = contact;
  currentSnapshot = [(CNContactStoreDataSource *)self currentSnapshot];
  identifiersToIndexPath = [currentSnapshot identifiersToIndexPath];
  if (![contactCopy isUnified])
  {
    goto LABEL_6;
  }

  mainStoreLinkedContacts = [contactCopy mainStoreLinkedContacts];
  if ([mainStoreLinkedContacts count] < 2)
  {
    [mainStoreLinkedContacts firstObject];
  }

  else
  {
    [mainStoreLinkedContacts _cn_firstObjectPassingTest:&__block_literal_global_183];
  }
  v8 = ;
  identifier = [v8 identifier];

  if (!identifier)
  {
LABEL_6:
    identifier = [contactCopy identifier];
  }

  v10 = [identifiersToIndexPath objectForKey:identifier];
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    [currentSnapshot prepareAllContacts];
    identifiersToIndexPath2 = [currentSnapshot identifiersToIndexPath];

    identifier2 = [contactCopy identifier];
    v11 = [identifiersToIndexPath2 objectForKey:identifier2];

    identifiersToIndexPath = identifiersToIndexPath2;
  }

  return v11;
}

- (id)completeContactFromContact:(id)contact fromMainStoreOnly:(BOOL)only keysToFetch:(id)fetch
{
  onlyCopy = only;
  v46 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  fetchCopy = fetch;
  if (contactCopy)
  {
    if ([contactCopy isUnknown] && (objc_msgSend(contactCopy, "isSuggestedMe") & 1) == 0)
    {
      v17 = contactCopy;
    }

    else
    {
      identifier = [contactCopy identifier];
      preferredForNameMeContactIdentifier = [(CNContactStoreDataSource *)self preferredForNameMeContactIdentifier];
      v12 = [identifier isEqual:preferredForNameMeContactIdentifier];

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
      v21 = fetchCopy;
      v27 = v12;
      v13 = identifier;
      v22 = v13;
      selfCopy = self;
      v24 = &v28;
      v25 = &v32;
      v26 = &v38;
      v14 = _Block_copy(aBlock);
      v14[2](v14, onlyCopy);
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
    filter = [(CNContactStoreDataSource *)self filter];
    groupIdentifiers = [filter groupIdentifiers];
    allObjects = [groupIdentifiers allObjects];
    firstObject = [allObjects firstObject];

    filteredGroup = self->_filteredGroup;
    if (firstObject)
    {
      v8 = filteredGroup;
      v9 = self->_filteredGroup;
      if (!v9 || (-[CNGroup identifier](v9, "identifier"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isEqualToString:firstObject], v10, (v11 & 1) == 0))
      {

        v12 = MEMORY[0x1E695CEC0];
        v21[0] = firstObject;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
        v14 = [v12 predicateForGroupsWithIdentifiers:v13];

        store = [(CNContactStoreDataSource *)self store];
        v16 = [store groupsMatchingPredicate:v14 error:0];

        firstObject2 = [v16 firstObject];
        v18 = self->_filteredGroup;
        self->_filteredGroup = firstObject2;

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

- (id)accountForContainerIdentifier:(id)identifier
{
  v4 = [MEMORY[0x1E695CD10] predicateForAccountForContainerWithIdentifier:identifier];
  store = [(CNContactStoreDataSource *)self store];
  v6 = [store accountsMatchingPredicate:v4 error:0];

  firstObject = [v6 firstObject];

  return firstObject;
}

- (BOOL)doesFilterShowAllContainersForAccount:(id)account
{
  v4 = MEMORY[0x1E695CE48];
  identifier = [account identifier];
  v6 = [v4 predicateForContainersInAccountWithIdentifier:identifier];

  store = [(CNContactStoreDataSource *)self store];
  v8 = [store containersMatchingPredicate:v6 error:0];

  v9 = [v8 _cn_map:&__block_literal_global_56056];
  v10 = [MEMORY[0x1E695DFD8] setWithArray:v9];
  filter = [(CNContactStoreDataSource *)self filter];
  containerIdentifiers = [filter containerIdentifiers];
  v13 = [v10 isEqualToSet:containerIdentifiers];

  return v13;
}

- (BOOL)canUseTitleForAccount:(id)account
{
  accountCopy = account;
  v5 = accountCopy;
  if (accountCopy)
  {
    _cnui_displayName = [accountCopy _cnui_displayName];
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

- (id)titleForContainer:(id)container
{
  containerCopy = container;
  name = [containerCopy name];
  v6 = *MEMORY[0x1E6996570];
  if (((*(*MEMORY[0x1E6996570] + 16))(*MEMORY[0x1E6996570], name) & 1) == 0)
  {
    v7 = CNContactsUIBundle();
    v8 = [v7 localizedStringForKey:@"CONTACTS" value:&stru_1F0CE7398 table:@"Localized"];

    name = v8;
  }

  identifier = [containerCopy identifier];

  v10 = [(CNContactStoreDataSource *)self accountForContainerIdentifier:identifier];

  if (v10 && ([v10 identifier], v11 = objc_claimAutoreleasedReturnValue(), v12 = (*(v6 + 16))(v6, v11), v11, (v12 & 1) != 0))
  {
    _cnui_displayName = [v10 _cnui_displayName];
    v14 = MEMORY[0x1E695CE48];
    identifier2 = [v10 identifier];
    v16 = [v14 predicateForContainersInAccountWithIdentifier:identifier2];

    store = [(CNContactStoreDataSource *)self store];
    v18 = [store containersMatchingPredicate:v16 error:0];

    if ([v18 count] != 1 || (v19 = (*(v6 + 16))(v6, _cnui_displayName), v20 = _cnui_displayName, (v19 & 1) == 0))
    {
      v20 = name;
    }

    v21 = v20;
  }

  else
  {
    v21 = name;
  }

  return v21;
}

- (void)dealloc
{
  mEMORY[0x1E695CE40] = [MEMORY[0x1E695CE40] sharedDefaults];
  [mEMORY[0x1E695CE40] removeObserver:self forKeyPath:@"sortOrder"];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  defaultCenter2 = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter2 removeObserver:self];

  v6.receiver = self;
  v6.super_class = CNContactStoreDataSource;
  [(CNContactStoreDataSource *)&v6 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  store = [(CNContactStoreDataSource *)self store];
  v6 = [v4 initWithStore:store];

  contactFormatter = [(CNContactStoreDataSource *)self contactFormatter];
  [v6 setContactFormatter:contactFormatter];

  keysToFetch = [(CNContactStoreDataSource *)self keysToFetch];
  [v6 setKeysToFetch:keysToFetch];

  filter = [(CNContactStoreDataSource *)self filter];
  v10 = [filter copy];
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

- (CNContactStoreDataSource)initWithStore:(id)store
{
  v4 = MEMORY[0x1E696AF00];
  storeCopy = store;
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
  defaultSchedulerProvider = [v8 defaultSchedulerProvider];

  mainThreadScheduler = [defaultSchedulerProvider mainThreadScheduler];
  mainThreadScheduler = v7->_mainThreadScheduler;
  v7->_mainThreadScheduler = mainThreadScheduler;

  v12 = [defaultSchedulerProvider newSerialSchedulerWithName:@"ContactStoreDidChange preprocessor"];
  databaseChangePreprocessor = v7->_databaseChangePreprocessor;
  v7->_databaseChangePreprocessor = v12;

  [(CNContactStoreDataSource *)v7 setStore:storeCopy];
  [(CNContactStoreDataSource *)v7 registerForRelevantChangeNotifications];
  v14 = objc_alloc_init(CNContactStoreFilter);
  filter = v7->_filter;
  v7->_filter = v14;

  v16 = [defaultSchedulerProvider newSerialSchedulerWithName:@"com.apple.contacts.ui.store-snapshotting"];
  backgroundSnapshotScheduler = v7->_backgroundSnapshotScheduler;
  v7->_backgroundSnapshotScheduler = v16;

  v18 = objc_alloc_init(MEMORY[0x1E6996878]);
  reloadLock = v7->_reloadLock;
  v7->_reloadLock = v18;

  v7->_meContactNeedsUpdate = 1;
  [(CNContactStoreDataSource *)v7 registerForFilterSpecificChangeNotifications];

  return v7;
}

+ (BOOL)isErrorPossiblyRelatedToExtraStores:(id)stores
{
  storesCopy = stores;
  v4 = *MEMORY[0x1E696A250];
  if ([MEMORY[0x1E6996708] isError:storesCopy errorWithDomain:*MEMORY[0x1E696A250] code:4099] & 1) != 0 || (objc_msgSend(MEMORY[0x1E6996708], "isError:errorWithDomain:code:", storesCopy, v4, 4097))
  {
    v5 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E6996708] isError:storesCopy errorWithDomain:v4 code:4101];
  }

  return v5;
}

@end