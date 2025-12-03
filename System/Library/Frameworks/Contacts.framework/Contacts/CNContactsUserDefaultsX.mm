@interface CNContactsUserDefaultsX
- (BOOL)isShortNameFormatEnabled;
- (BOOL)shortNameFormatPrefersNicknames;
- (CNContactsUserDefaultsX)init;
- (CNContactsUserDefaultsX)initWithFoundationUserDefaults:(id)defaults;
- (id)countryCode;
- (id)filteredGroupAndContainerIDs;
- (int64_t)displayNameOrder;
- (int64_t)newContactDisplayNameOrder;
- (int64_t)shortNameFormat;
- (int64_t)sortOrder;
- (void)setDisplayNameOrder:(int64_t)order;
- (void)setFilteredGroupAndContainerIDs:(id)ds;
- (void)setShortNameFormat:(int64_t)format;
- (void)setShortNameFormatEnabled:(BOOL)enabled;
- (void)setShortNameFormatPrefersNicknames:(BOOL)nicknames;
@end

@implementation CNContactsUserDefaultsX

- (CNContactsUserDefaultsX)init
{
  mEMORY[0x1E6996718] = [MEMORY[0x1E6996718] sharedDefaults];
  v4 = [(CNContactsUserDefaultsX *)self initWithFoundationUserDefaults:mEMORY[0x1E6996718]];

  return v4;
}

- (CNContactsUserDefaultsX)initWithFoundationUserDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v10.receiver = self;
  v10.super_class = CNContactsUserDefaultsX;
  v6 = [(CNContactsUserDefaults *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_foundationUserDefaults, defaults);
    v8 = v7;
  }

  return v7;
}

- (int64_t)displayNameOrder
{
  foundationUserDefaults = [(CNContactsUserDefaultsX *)self foundationUserDefaults];
  nameOrder = [foundationUserDefaults nameOrder];

  if (nameOrder == 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)setDisplayNameOrder:(int64_t)order
{
  if (order == 1)
  {
    v3 = 0;
  }

  else
  {
    if (order != 2)
    {
      return;
    }

    v3 = 1;
  }

  foundationUserDefaults = [(CNContactsUserDefaultsX *)self foundationUserDefaults];
  [foundationUserDefaults setNameOrder:v3];
}

- (int64_t)newContactDisplayNameOrder
{
  foundationUserDefaults = [(CNContactsUserDefaultsX *)self foundationUserDefaults];
  newContactNameOrder = [foundationUserDefaults newContactNameOrder];

  if (newContactNameOrder == 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)sortOrder
{
  foundationUserDefaults = [(CNContactsUserDefaultsX *)self foundationUserDefaults];
  sortOrder = [foundationUserDefaults sortOrder];

  if (sortOrder)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (id)countryCode
{
  foundationUserDefaults = [(CNContactsUserDefaultsX *)self foundationUserDefaults];
  countryCode = [foundationUserDefaults countryCode];

  return countryCode;
}

- (int64_t)shortNameFormat
{
  foundationUserDefaults = [(CNContactsUserDefaultsX *)self foundationUserDefaults];
  shortNameFormat = [foundationUserDefaults shortNameFormat];

  isShortNameFormatEnabled = [(CNContactsUserDefaultsX *)self isShortNameFormatEnabled];
  v6 = shortNameFormat - 1;
  if ((shortNameFormat - 1) >= 4)
  {
    v6 = 4;
  }

  if (isShortNameFormatEnabled)
  {
    return v6;
  }

  else
  {
    return 4;
  }
}

- (void)setShortNameFormat:(int64_t)format
{
  if (format <= 1)
  {
    if (format)
    {
      if (format != 1)
      {
        return;
      }

      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  else if (format == 2)
  {
    v4 = 3;
  }

  else
  {
    if (format != 3)
    {
      if (format == 4)
      {

        [(CNContactsUserDefaultsX *)self setShortNameFormatEnabled:0];
      }

      return;
    }

    v4 = 4;
  }

  [(CNContactsUserDefaultsX *)self setShortNameFormatEnabled:1];
  foundationUserDefaults = [(CNContactsUserDefaultsX *)self foundationUserDefaults];
  [foundationUserDefaults setShortNameFormat:v4];
}

- (BOOL)isShortNameFormatEnabled
{
  foundationUserDefaults = [(CNContactsUserDefaultsX *)self foundationUserDefaults];
  isShortNameFormatEnabled = [foundationUserDefaults isShortNameFormatEnabled];

  return isShortNameFormatEnabled;
}

- (void)setShortNameFormatEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  foundationUserDefaults = [(CNContactsUserDefaultsX *)self foundationUserDefaults];
  [foundationUserDefaults setShortNameFormatEnabled:enabledCopy];
}

- (BOOL)shortNameFormatPrefersNicknames
{
  foundationUserDefaults = [(CNContactsUserDefaultsX *)self foundationUserDefaults];
  preferNickname = [foundationUserDefaults preferNickname];

  return preferNickname;
}

- (void)setShortNameFormatPrefersNicknames:(BOOL)nicknames
{
  nicknamesCopy = nicknames;
  foundationUserDefaults = [(CNContactsUserDefaultsX *)self foundationUserDefaults];
  [foundationUserDefaults setPreferNickname:nicknamesCopy];
}

- (id)filteredGroupAndContainerIDs
{
  foundationUserDefaults = [(CNContactsUserDefaultsX *)self foundationUserDefaults];
  filteredAccountsAndContainers = [foundationUserDefaults filteredAccountsAndContainers];

  return filteredAccountsAndContainers;
}

- (void)setFilteredGroupAndContainerIDs:(id)ds
{
  dsCopy = ds;
  foundationUserDefaults = [(CNContactsUserDefaultsX *)self foundationUserDefaults];
  [foundationUserDefaults setFilteredAccountsAndContainers:dsCopy];
}

@end