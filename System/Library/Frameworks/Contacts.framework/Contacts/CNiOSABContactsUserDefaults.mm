@interface CNiOSABContactsUserDefaults
- (BOOL)isShortNameFormatEnabled;
- (BOOL)shortNameFormatPrefersNicknames;
- (CNiOSABContactsUserDefaults)init;
- (CNiOSABContactsUserDefaults)initWithABWrapper:(id)wrapper;
- (id)countryCode;
- (id)filteredGroupAndContainerIDs;
- (int64_t)displayNameOrder;
- (int64_t)lastIgnoredNewDuplicatesCount;
- (int64_t)newContactDisplayNameOrder;
- (int64_t)shortNameFormat;
- (int64_t)sortOrder;
- (void)_registerObserverForKey:(id)key;
- (void)_unregisterObserverForKey:(id)key;
- (void)addObserver:(id)observer forKeyPath:(id)path options:(unint64_t)options context:(void *)context;
- (void)dealloc;
- (void)flushCache;
- (void)removeObserver:(id)observer forKeyPath:(id)path;
- (void)setDisplayNameOrder:(int64_t)order;
- (void)setFilteredGroupAndContainerIDs:(id)ds;
- (void)setLastIgnoredNewDuplicatesCount:(int64_t)count;
- (void)setShortNameFormat:(int64_t)format;
- (void)setShortNameFormatEnabled:(BOOL)enabled;
- (void)setShortNameFormatPrefersNicknames:(BOOL)nicknames;
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
  integerValue = [v3 integerValue];
  if (v3)
  {
    v5 = integerValue;
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
  integerValue = [v3 integerValue];
  if (v3)
  {
    v5 = integerValue;
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
  integerValue = [v3 integerValue];
  if (v3)
  {
    aBPersonGetShortNameFormatEnabled = integerValue;
  }

  else
  {
    abWrapper = [(CNiOSABContactsUserDefaults *)self abWrapper];
    aBPersonGetShortNameFormatEnabled = [abWrapper ABPersonGetShortNameFormatEnabled];

    valueCache = self->_valueCache;
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:aBPersonGetShortNameFormatEnabled];
    [(NSCache *)valueCache setObject:v8 forKey:@"shortNameFormatEnabled"];
  }

  return aBPersonGetShortNameFormatEnabled != 0;
}

- (BOOL)shortNameFormatPrefersNicknames
{
  v3 = [(NSCache *)self->_valueCache objectForKey:@"shortNameFormatPrefersNicknames"];
  integerValue = [v3 integerValue];
  if (v3)
  {
    aBPersonGetShortNamePreferNicknames = integerValue;
  }

  else
  {
    abWrapper = [(CNiOSABContactsUserDefaults *)self abWrapper];
    aBPersonGetShortNamePreferNicknames = [abWrapper ABPersonGetShortNamePreferNicknames];

    valueCache = self->_valueCache;
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:aBPersonGetShortNamePreferNicknames];
    [(NSCache *)valueCache setObject:v8 forKey:@"shortNameFormatPrefersNicknames"];
  }

  return aBPersonGetShortNamePreferNicknames != 0;
}

- (CNiOSABContactsUserDefaults)initWithABWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v14.receiver = self;
  v14.super_class = CNiOSABContactsUserDefaults;
  v6 = [(CNContactsUserDefaults *)&v14 init];
  if (v6)
  {
    ABInitialize();
    objc_storeStrong(&v6->_abWrapper, wrapper);
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
  valueCache = [(CNiOSABContactsUserDefaults *)self valueCache];
  [valueCache removeAllObjects];
}

- (void)_registerObserverForKey:(id)key
{
  keyCopy = key;
  observerCountPerKey = [(CNiOSABContactsUserDefaults *)self observerCountPerKey];
  v6 = [observerCountPerKey objectForKeyedSubscript:keyCopy];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "unsignedIntegerValue") + 1}];

  observerCountPerKey2 = [(CNiOSABContactsUserDefaults *)self observerCountPerKey];
  [observerCountPerKey2 setObject:v8 forKeyedSubscript:keyCopy];
}

- (void)_unregisterObserverForKey:(id)key
{
  keyCopy = key;
  observerCountPerKey = [(CNiOSABContactsUserDefaults *)self observerCountPerKey];
  v5 = [observerCountPerKey objectForKeyedSubscript:keyCopy];

  unsignedIntegerValue = [v5 unsignedIntegerValue];
  if (unsignedIntegerValue == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue - 1];
  }

  observerCountPerKey2 = [(CNiOSABContactsUserDefaults *)self observerCountPerKey];
  [observerCountPerKey2 setObject:v7 forKeyedSubscript:keyCopy];
}

- (void)addObserver:(id)observer forKeyPath:(id)path options:(unint64_t)options context:(void *)context
{
  pathCopy = path;
  observerCopy = observer;
  [(CNiOSABContactsUserDefaults *)self _registerObserverForKey:pathCopy];
  v12.receiver = self;
  v12.super_class = CNiOSABContactsUserDefaults;
  [(CNiOSABContactsUserDefaults *)&v12 addObserver:observerCopy forKeyPath:pathCopy options:options context:context];
}

- (void)removeObserver:(id)observer forKeyPath:(id)path
{
  pathCopy = path;
  observerCopy = observer;
  [(CNiOSABContactsUserDefaults *)self _unregisterObserverForKey:pathCopy];
  v8.receiver = self;
  v8.super_class = CNiOSABContactsUserDefaults;
  [(CNiOSABContactsUserDefaults *)&v8 removeObserver:observerCopy forKeyPath:pathCopy];
}

- (int64_t)newContactDisplayNameOrder
{
  v3 = [(NSCache *)self->_valueCache objectForKey:@"newContactDisplayNameOrder"];
  integerValue = [v3 integerValue];
  if (v3)
  {
    v5 = integerValue;
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

- (void)setDisplayNameOrder:(int64_t)order
{
  [(NSCache *)self->_valueCache removeObjectForKey:@"displayNameOrder"];
  v5 = +[CNiOSABConstantsMapping CNToABCompositeNameFormatConstantsMapping];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:order];
  v7 = [v5 mappedConstant:v6];
  unsignedIntValue = [v7 unsignedIntValue];

  abWrapper = [(CNiOSABContactsUserDefaults *)self abWrapper];
  [abWrapper ABPersonSetCompositeNameFormat:unsignedIntValue];
}

- (void)setShortNameFormat:(int64_t)format
{
  [(NSCache *)self->_valueCache removeObjectForKey:@"shortNameFormat"];
  v5 = +[CNiOSABConstantsMapping CNToABPersonShortNameFormatConstantsMapping];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:format];
  v11 = [v5 mappedConstant:v6];

  null = [MEMORY[0x1E695DFB0] null];

  v8 = v11;
  if (v11 != null)
  {
    unsignedIntValue = [v11 unsignedIntValue];
    abWrapper = [(CNiOSABContactsUserDefaults *)self abWrapper];
    [abWrapper ABPersonSetShortNameFormat:unsignedIntValue];

    v8 = v11;
  }
}

- (int64_t)shortNameFormat
{
  v3 = [(NSCache *)self->_valueCache objectForKey:@"shortNameFormat"];
  integerValue = [v3 integerValue];
  if (v3)
  {
    v5 = integerValue;
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

- (void)setShortNameFormatEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [(NSCache *)self->_valueCache removeObjectForKey:@"shortNameFormatEnabled"];
  abWrapper = [(CNiOSABContactsUserDefaults *)self abWrapper];
  [abWrapper ABPersonSetShortNameFormatEnabled:enabledCopy];
}

uint64_t __55__CNiOSABContactsUserDefaults_isShortNameFormatEnabled__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) abWrapper];
  v2 = [v1 ABPersonGetShortNameFormatEnabled];

  return v2;
}

- (void)setShortNameFormatPrefersNicknames:(BOOL)nicknames
{
  nicknamesCopy = nicknames;
  [(NSCache *)self->_valueCache removeObjectForKey:@"shortNameFormatPrefersNicknames"];
  abWrapper = [(CNiOSABContactsUserDefaults *)self abWrapper];
  [abWrapper ABPersonSetShortNamePreferNicknames:nicknamesCopy];
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

- (void)setFilteredGroupAndContainerIDs:(id)ds
{
  valueCache = self->_valueCache;
  dsCopy = ds;
  [(NSCache *)valueCache removeObjectForKey:@"filteredGroupAndContainerIDs"];
  abWrapper = [(CNiOSABContactsUserDefaults *)self abWrapper];
  [abWrapper setDisplayedContactsFilterRepresentationPref:dsCopy];
}

- (int64_t)lastIgnoredNewDuplicatesCount
{
  v3 = [(NSCache *)self->_valueCache objectForKey:@"lastIgnoredNewDuplicatesCount"];
  integerValue = [v3 integerValue];
  if (v3)
  {
    lastIgnoredNewDuplicatesCount = integerValue;
  }

  else
  {
    abWrapper = [(CNiOSABContactsUserDefaults *)self abWrapper];
    lastIgnoredNewDuplicatesCount = [abWrapper lastIgnoredNewDuplicatesCount];

    valueCache = self->_valueCache;
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:lastIgnoredNewDuplicatesCount];
    [(NSCache *)valueCache setObject:v8 forKey:@"lastIgnoredNewDuplicatesCount"];
  }

  return lastIgnoredNewDuplicatesCount;
}

uint64_t __60__CNiOSABContactsUserDefaults_lastIgnoredNewDuplicatesCount__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) abWrapper];
  v2 = [v1 lastIgnoredNewDuplicatesCount];

  return v2;
}

- (void)setLastIgnoredNewDuplicatesCount:(int64_t)count
{
  [(NSCache *)self->_valueCache removeObjectForKey:@"lastIgnoredNewDuplicatesCount"];
  abWrapper = [(CNiOSABContactsUserDefaults *)self abWrapper];
  [abWrapper setLastIgnoredNewDuplicatesCount:count];
}

@end