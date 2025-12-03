@interface CNContactsUserDefaults
+ (CNContactsUserDefaults)sharedDefaults;
+ (void)flushSharedInstance;
- (BOOL)isShortNameFormatEnabled;
- (BOOL)shortNameFormatPrefersNicknames;
- (CNContactSortOrder)sortOrder;
- (CNContactsUserDefaults)init;
- (NSString)countryCode;
- (id)filteredGroupAndContainerIDs;
- (int64_t)displayNameOrder;
- (int64_t)lastIgnoredNewDuplicatesCount;
- (int64_t)newContactDisplayNameOrder;
- (int64_t)shortNameFormat;
- (void)setDisplayNameOrder:(int64_t)order;
- (void)setFilteredGroupAndContainerIDs:(id)ds;
- (void)setLastIgnoredNewDuplicatesCount:(int64_t)count;
- (void)setShortNameFormat:(int64_t)format;
- (void)setShortNameFormatEnabled:(BOOL)enabled;
- (void)setShortNameFormatPrefersNicknames:(BOOL)nicknames;
@end

@implementation CNContactsUserDefaults

+ (CNContactsUserDefaults)sharedDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__CNContactsUserDefaults_sharedDefaults__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (s_onceToken != -1)
  {
    dispatch_once(&s_onceToken, block);
  }

  v2 = s_instance;

  return v2;
}

- (CNContactsUserDefaults)init
{
  p_super = self;
  if ([(CNContactsUserDefaults *)self isMemberOfClass:objc_opt_class()])
  {
    v3 = objc_alloc_init(CNiOSABContactsUserDefaults);
  }

  else
  {
    v6.receiver = p_super;
    v6.super_class = CNContactsUserDefaults;
    v3 = [(CNContactsUserDefaults *)&v6 init];
    p_super = &v3->super;
  }

  v4 = &v3->super;

  return v4;
}

uint64_t __40__CNContactsUserDefaults_sharedDefaults__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = s_instance;
  s_instance = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (void)flushSharedInstance
{
  s_onceToken = 0;
  v2 = s_instance;
  s_instance = 0;
}

- (int64_t)displayNameOrder
{
  selfCopy = self;
  v3 = CNAbstractMethodException();
  objc_exception_throw(v3);
}

- (int64_t)newContactDisplayNameOrder
{
  selfCopy = self;
  v3 = CNAbstractMethodException();
  objc_exception_throw(v3);
}

- (void)setDisplayNameOrder:(int64_t)order
{
  selfCopy = self;
  v4 = CNAbstractMethodException();
  objc_exception_throw(v4);
}

- (CNContactSortOrder)sortOrder
{
  selfCopy = self;
  v3 = CNAbstractMethodException();
  objc_exception_throw(v3);
}

- (NSString)countryCode
{
  selfCopy = self;
  v3 = CNAbstractMethodException();
  objc_exception_throw(v3);
}

- (void)setShortNameFormat:(int64_t)format
{
  selfCopy = self;
  v4 = CNAbstractMethodException();
  objc_exception_throw(v4);
}

- (int64_t)shortNameFormat
{
  selfCopy = self;
  v3 = CNAbstractMethodException();
  objc_exception_throw(v3);
}

- (void)setShortNameFormatEnabled:(BOOL)enabled
{
  selfCopy = self;
  v4 = CNAbstractMethodException();
  objc_exception_throw(v4);
}

- (BOOL)isShortNameFormatEnabled
{
  selfCopy = self;
  v3 = CNAbstractMethodException();
  objc_exception_throw(v3);
}

- (void)setShortNameFormatPrefersNicknames:(BOOL)nicknames
{
  selfCopy = self;
  v4 = CNAbstractMethodException();
  objc_exception_throw(v4);
}

- (BOOL)shortNameFormatPrefersNicknames
{
  selfCopy = self;
  v3 = CNAbstractMethodException();
  objc_exception_throw(v3);
}

- (id)filteredGroupAndContainerIDs
{
  selfCopy = self;
  v3 = CNAbstractMethodException();
  objc_exception_throw(v3);
}

- (void)setFilteredGroupAndContainerIDs:(id)ds
{
  dsCopy = ds;
  selfCopy = self;
  v6 = CNAbstractMethodException();
  objc_exception_throw(v6);
}

- (int64_t)lastIgnoredNewDuplicatesCount
{
  selfCopy = self;
  v3 = CNAbstractMethodException();
  objc_exception_throw(v3);
}

- (void)setLastIgnoredNewDuplicatesCount:(int64_t)count
{
  selfCopy = self;
  v4 = CNAbstractMethodException();
  objc_exception_throw(v4);
}

@end