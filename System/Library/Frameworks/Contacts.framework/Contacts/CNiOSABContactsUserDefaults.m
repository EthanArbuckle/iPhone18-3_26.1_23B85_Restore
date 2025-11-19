@interface CNiOSABContactsUserDefaults
- (BOOL)isShortNameFormatEnabled;
- (BOOL)shortNameFormatPrefersNicknames;
- (CNiOSABContactsUserDefaults)init;
- (CNiOSABContactsUserDefaults)initWithABWrapper:(id)a3;
- (id)countryCode;
- (id)filteredGroupAndContainerIDs;
- (int64_t)displayNameOrder;
- (int64_t)lastIgnoredNewDuplicatesCount;
- (int64_t)newContactDisplayNameOrder;
- (int64_t)shortNameFormat;
- (int64_t)sortOrder;
- (void)_registerObserverForKey:(id)a3;
- (void)_unregisterObserverForKey:(id)a3;
- (void)addObserver:(id)a3 forKeyPath:(id)a4 options:(unint64_t)a5 context:(void *)a6;
- (void)dealloc;
- (void)flushCache;
- (void)removeObserver:(id)a3 forKeyPath:(id)a4;
- (void)setDisplayNameOrder:(int64_t)a3;
- (void)setFilteredGroupAndContainerIDs:(id)a3;
- (void)setLastIgnoredNewDuplicatesCount:(int64_t)a3;
- (void)setShortNameFormat:(int64_t)a3;
- (void)setShortNameFormatEnabled:(BOOL)a3;
- (void)setShortNameFormatPrefersNicknames:(BOOL)a3;
@end

@implementation CNiOSABContactsUserDefaults

- (CNiOSABContactsUserDefaults)init
{
  v3 = objc_alloc_init(CNiOSABContactsUserDefaultsABWrapper);
  v4 = [(CNiOSABContactsUserDefaults *)self initWithABWrapper:v3];

  return v4;
}

id __59__CNiOSABContactsUserDefaults_filteredGroupAndContainerIDs__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) abWrapper];
  v2 = [v1 displayedContactsFilterRepresentationPref];

  return v2;
}

- (id)filteredGroupAndContainerIDs
{
  v3 = [(NSCache *)self->_valueCache objectForKey:@"filteredGroupAndContainerIDs"];
  if (!v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __59__CNiOSABContactsUserDefaults_filteredGroupAndContainerIDs__block_invoke;
    v5[3] = &unk_1E7413980;
    v5[4] = self;
    v3 = __59__CNiOSABContactsUserDefaults_filteredGroupAndContainerIDs__block_invoke(v5);
    if (v3)
    {
      [(NSCache *)self->_valueCache setObject:v3 forKey:@"filteredGroupAndContainerIDs"];
    }
  }

  return v3;
}

- (int64_t)sortOrder
{
  v3 = [(NSCache *)self->_valueCache objectForKey:@"sortOrder"];
  v4 = [v3 integerValue];
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __40__CNiOSABContactsUserDefaults_sortOrder__block_invoke;
    v9[3] = &unk_1E7413930;
    v9[4] = self;
    v5 = __40__CNiOSABContactsUserDefaults_sortOrder__block_invoke(v9);
    valueCache = self->_valueCache;
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
    [(NSCache *)valueCache setObject:v7 forKey:@"sortOrder"];
  }

  return v5;
}

uint64_t __40__CNiOSABContactsUserDefaults_sortOrder__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) abWrapper];
  v2 = [v1 ABPersonGetSortOrdering];

  v3 = +[CNiOSABConstantsMapping ABToCNContactSortOrderConstantsMapping];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v2];
  v5 = [v3 mappedConstant:v4];
  v6 = [v5 unsignedIntegerValue];

  return v6;
}

- (int64_t)displayNameOrder
{
  v3 = [(NSCache *)self->_valueCache objectForKey:@"displayNameOrder"];
  v4 = [v3 integerValue];
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47__CNiOSABContactsUserDefaults_displayNameOrder__block_invoke;
    v9[3] = &unk_1E7413930;
    v9[4] = self;
    v5 = __47__CNiOSABContactsUserDefaults_displayNameOrder__block_invoke(v9);
    valueCache = self->_valueCache;
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
    [(NSCache *)valueCache setObject:v7 forKey:@"displayNameOrder"];
  }

  return v5;
}

uint64_t __47__CNiOSABContactsUserDefaults_displayNameOrder__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) abWrapper];
  v2 = [v1 ABPersonGetCompositeNameFormatForRecord:0];

  v3 = +[CNiOSABConstantsMapping ABtoCNContactDisplayNameOrderConstantsMapping];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v2];
  v5 = [v3 mappedConstant:v4];
  v6 = [v5 unsignedIntegerValue];

  return v6;
}

- (BOOL)isShortNameFormatEnabled
{
  v3 = [(NSCache *)self->_valueCache objectForKey:@"shortNameFormatEnabled"];
  v4 = [v3 integerValue];
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v6 = [(CNiOSABContactsUserDefaults *)self abWrapper];
    v5 = [v6 ABPersonGetShortNameFormatEnabled];

    valueCache = self->_valueCache;
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
    [(NSCache *)valueCache setObject:v8 forKey:@"shortNameFormatEnabled"];
  }

  return v5 != 0;
}

- (BOOL)shortNameFormatPrefersNicknames
{
  v3 = [(NSCache *)self->_valueCache objectForKey:@"shortNameFormatPrefersNicknames"];
  v4 = [v3 integerValue];
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v6 = [(CNiOSABContactsUserDefaults *)self abWrapper];
    v5 = [v6 ABPersonGetShortNamePreferNicknames];

    valueCache = self->_valueCache;
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
    [(NSCache *)valueCache setObject:v8 forKey:@"shortNameFormatPrefersNicknames"];
  }

  return v5 != 0;
}

- (CNiOSABContactsUserDefaults)initWithABWrapper:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = CNiOSABContactsUserDefaults;
  v6 = [(CNContactsUserDefaults *)&v14 init];
  if (v6)
  {
    ABInitialize();
    objc_storeStrong(&v6->_abWrapper, a3);
    v7 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    valueCache = v6->_valueCache;
    v6->_valueCache = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    observerCountPerKey = v6->_observerCountPerKey;
    v6->_observerCountPerKey = v9;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, __PreferencesChanged, @"com.apple.AddressBook.PreferenceChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v12 = v6;
  }

  return v6;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.AddressBook.PreferenceChanged", 0);
  v4.receiver = self;
  v4.super_class = CNiOSABContactsUserDefaults;
  [(CNiOSABContactsUserDefaults *)&v4 dealloc];
}

- (void)flushCache
{
  v2 = [(CNiOSABContactsUserDefaults *)self valueCache];
  [v2 removeAllObjects];
}

- (void)_registerObserverForKey:(id)a3
{
  v4 = a3;
  v5 = [(CNiOSABContactsUserDefaults *)self observerCountPerKey];
  v6 = [v5 objectForKeyedSubscript:v4];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "unsignedIntegerValue") + 1}];

  v7 = [(CNiOSABContactsUserDefaults *)self observerCountPerKey];
  [v7 setObject:v8 forKeyedSubscript:v4];
}

- (void)_unregisterObserverForKey:(id)a3
{
  v9 = a3;
  v4 = [(CNiOSABContactsUserDefaults *)self observerCountPerKey];
  v5 = [v4 objectForKeyedSubscript:v9];

  v6 = [v5 unsignedIntegerValue];
  if (v6 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6 - 1];
  }

  v8 = [(CNiOSABContactsUserDefaults *)self observerCountPerKey];
  [v8 setObject:v7 forKeyedSubscript:v9];
}

- (void)addObserver:(id)a3 forKeyPath:(id)a4 options:(unint64_t)a5 context:(void *)a6
{
  v10 = a4;
  v11 = a3;
  [(CNiOSABContactsUserDefaults *)self _registerObserverForKey:v10];
  v12.receiver = self;
  v12.super_class = CNiOSABContactsUserDefaults;
  [(CNiOSABContactsUserDefaults *)&v12 addObserver:v11 forKeyPath:v10 options:a5 context:a6];
}

- (void)removeObserver:(id)a3 forKeyPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(CNiOSABContactsUserDefaults *)self _unregisterObserverForKey:v6];
  v8.receiver = self;
  v8.super_class = CNiOSABContactsUserDefaults;
  [(CNiOSABContactsUserDefaults *)&v8 removeObserver:v7 forKeyPath:v6];
}

- (int64_t)newContactDisplayNameOrder
{
  v3 = [(NSCache *)self->_valueCache objectForKey:@"newContactDisplayNameOrder"];
  v4 = [v3 integerValue];
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__CNiOSABContactsUserDefaults_newContactDisplayNameOrder__block_invoke;
    v9[3] = &unk_1E7413930;
    v9[4] = self;
    v5 = __57__CNiOSABContactsUserDefaults_newContactDisplayNameOrder__block_invoke(v9);
    valueCache = self->_valueCache;
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
    [(NSCache *)valueCache setObject:v7 forKey:@"newContactDisplayNameOrder"];
  }

  return v5;
}

uint64_t __57__CNiOSABContactsUserDefaults_newContactDisplayNameOrder__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) abWrapper];
  v3 = [v2 ABPersonGetEditNameFormat];

  if (v3)
  {
    v4 = v3 == 1;
  }

  else
  {
    v5 = [*(a1 + 32) abWrapper];
    v6 = [v5 ABPersonGetCompositeNameFormatForRecord:0];

    v4 = v6 == 0;
  }

  if (v4)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)setDisplayNameOrder:(int64_t)a3
{
  [(NSCache *)self->_valueCache removeObjectForKey:@"displayNameOrder"];
  v5 = +[CNiOSABConstantsMapping CNToABCompositeNameFormatConstantsMapping];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v7 = [v5 mappedConstant:v6];
  v8 = [v7 unsignedIntValue];

  v9 = [(CNiOSABContactsUserDefaults *)self abWrapper];
  [v9 ABPersonSetCompositeNameFormat:v8];
}

- (void)setShortNameFormat:(int64_t)a3
{
  [(NSCache *)self->_valueCache removeObjectForKey:@"shortNameFormat"];
  v5 = +[CNiOSABConstantsMapping CNToABPersonShortNameFormatConstantsMapping];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v11 = [v5 mappedConstant:v6];

  v7 = [MEMORY[0x1E695DFB0] null];

  v8 = v11;
  if (v11 != v7)
  {
    v9 = [v11 unsignedIntValue];
    v10 = [(CNiOSABContactsUserDefaults *)self abWrapper];
    [v10 ABPersonSetShortNameFormat:v9];

    v8 = v11;
  }
}

- (int64_t)shortNameFormat
{
  v3 = [(NSCache *)self->_valueCache objectForKey:@"shortNameFormat"];
  v4 = [v3 integerValue];
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __46__CNiOSABContactsUserDefaults_shortNameFormat__block_invoke;
    v9[3] = &unk_1E7413930;
    v9[4] = self;
    v5 = __46__CNiOSABContactsUserDefaults_shortNameFormat__block_invoke(v9);
    valueCache = self->_valueCache;
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
    [(NSCache *)valueCache setObject:v7 forKey:@"shortNameFormat"];
  }

  return v5;
}

uint64_t __46__CNiOSABContactsUserDefaults_shortNameFormat__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) abWrapper];
  v2 = [v1 ABPersonGetShortNameFormat];

  v3 = +[CNiOSABConstantsMapping ABToCNContactShortNameFormatConstantsMapping];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v2];
  v5 = [v3 mappedConstant:v4];

  v6 = [v5 integerValue];
  return v6;
}

- (void)setShortNameFormatEnabled:(BOOL)a3
{
  v3 = a3;
  [(NSCache *)self->_valueCache removeObjectForKey:@"shortNameFormatEnabled"];
  v5 = [(CNiOSABContactsUserDefaults *)self abWrapper];
  [v5 ABPersonSetShortNameFormatEnabled:v3];
}

uint64_t __55__CNiOSABContactsUserDefaults_isShortNameFormatEnabled__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) abWrapper];
  v2 = [v1 ABPersonGetShortNameFormatEnabled];

  return v2;
}

- (void)setShortNameFormatPrefersNicknames:(BOOL)a3
{
  v3 = a3;
  [(NSCache *)self->_valueCache removeObjectForKey:@"shortNameFormatPrefersNicknames"];
  v5 = [(CNiOSABContactsUserDefaults *)self abWrapper];
  [v5 ABPersonSetShortNamePreferNicknames:v3];
}

uint64_t __62__CNiOSABContactsUserDefaults_shortNameFormatPrefersNicknames__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) abWrapper];
  v2 = [v1 ABPersonGetShortNamePreferNicknames];

  return v2;
}

- (id)countryCode
{
  v3 = [(NSCache *)self->_valueCache objectForKey:@"countryCode"];
  if (!v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __42__CNiOSABContactsUserDefaults_countryCode__block_invoke;
    v5[3] = &unk_1E7413958;
    v5[4] = self;
    v3 = __42__CNiOSABContactsUserDefaults_countryCode__block_invoke(v5);
    if (v3)
    {
      [(NSCache *)self->_valueCache setObject:v3 forKey:@"countryCode"];
    }
  }

  return v3;
}

id __42__CNiOSABContactsUserDefaults_countryCode__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) abWrapper];
  v2 = [v1 abDefaultCountryCode];

  return v2;
}

- (void)setFilteredGroupAndContainerIDs:(id)a3
{
  valueCache = self->_valueCache;
  v5 = a3;
  [(NSCache *)valueCache removeObjectForKey:@"filteredGroupAndContainerIDs"];
  v6 = [(CNiOSABContactsUserDefaults *)self abWrapper];
  [v6 setDisplayedContactsFilterRepresentationPref:v5];
}

- (int64_t)lastIgnoredNewDuplicatesCount
{
  v3 = [(NSCache *)self->_valueCache objectForKey:@"lastIgnoredNewDuplicatesCount"];
  v4 = [v3 integerValue];
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v6 = [(CNiOSABContactsUserDefaults *)self abWrapper];
    v5 = [v6 lastIgnoredNewDuplicatesCount];

    valueCache = self->_valueCache;
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
    [(NSCache *)valueCache setObject:v8 forKey:@"lastIgnoredNewDuplicatesCount"];
  }

  return v5;
}

uint64_t __60__CNiOSABContactsUserDefaults_lastIgnoredNewDuplicatesCount__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) abWrapper];
  v2 = [v1 lastIgnoredNewDuplicatesCount];

  return v2;
}

- (void)setLastIgnoredNewDuplicatesCount:(int64_t)a3
{
  [(NSCache *)self->_valueCache removeObjectForKey:@"lastIgnoredNewDuplicatesCount"];
  v5 = [(CNiOSABContactsUserDefaults *)self abWrapper];
  [v5 setLastIgnoredNewDuplicatesCount:a3];
}

@end