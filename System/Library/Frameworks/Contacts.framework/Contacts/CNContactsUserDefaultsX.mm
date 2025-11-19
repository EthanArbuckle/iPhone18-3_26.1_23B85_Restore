@interface CNContactsUserDefaultsX
- (BOOL)isShortNameFormatEnabled;
- (BOOL)shortNameFormatPrefersNicknames;
- (CNContactsUserDefaultsX)init;
- (CNContactsUserDefaultsX)initWithFoundationUserDefaults:(id)a3;
- (id)countryCode;
- (id)filteredGroupAndContainerIDs;
- (int64_t)displayNameOrder;
- (int64_t)newContactDisplayNameOrder;
- (int64_t)shortNameFormat;
- (int64_t)sortOrder;
- (void)setDisplayNameOrder:(int64_t)a3;
- (void)setFilteredGroupAndContainerIDs:(id)a3;
- (void)setShortNameFormat:(int64_t)a3;
- (void)setShortNameFormatEnabled:(BOOL)a3;
- (void)setShortNameFormatPrefersNicknames:(BOOL)a3;
@end

@implementation CNContactsUserDefaultsX

- (CNContactsUserDefaultsX)init
{
  v3 = [MEMORY[0x1E6996718] sharedDefaults];
  v4 = [(CNContactsUserDefaultsX *)self initWithFoundationUserDefaults:v3];

  return v4;
}

- (CNContactsUserDefaultsX)initWithFoundationUserDefaults:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNContactsUserDefaultsX;
  v6 = [(CNContactsUserDefaults *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_foundationUserDefaults, a3);
    v8 = v7;
  }

  return v7;
}

- (int64_t)displayNameOrder
{
  v2 = [(CNContactsUserDefaultsX *)self foundationUserDefaults];
  v3 = [v2 nameOrder];

  if (v3 == 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)setDisplayNameOrder:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = 0;
  }

  else
  {
    if (a3 != 2)
    {
      return;
    }

    v3 = 1;
  }

  v4 = [(CNContactsUserDefaultsX *)self foundationUserDefaults];
  [v4 setNameOrder:v3];
}

- (int64_t)newContactDisplayNameOrder
{
  v2 = [(CNContactsUserDefaultsX *)self foundationUserDefaults];
  v3 = [v2 newContactNameOrder];

  if (v3 == 1)
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
  v2 = [(CNContactsUserDefaultsX *)self foundationUserDefaults];
  v3 = [v2 sortOrder];

  if (v3)
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
  v2 = [(CNContactsUserDefaultsX *)self foundationUserDefaults];
  v3 = [v2 countryCode];

  return v3;
}

- (int64_t)shortNameFormat
{
  v3 = [(CNContactsUserDefaultsX *)self foundationUserDefaults];
  v4 = [v3 shortNameFormat];

  v5 = [(CNContactsUserDefaultsX *)self isShortNameFormatEnabled];
  v6 = v4 - 1;
  if ((v4 - 1) >= 4)
  {
    v6 = 4;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 4;
  }
}

- (void)setShortNameFormat:(int64_t)a3
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
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

  else if (a3 == 2)
  {
    v4 = 3;
  }

  else
  {
    if (a3 != 3)
    {
      if (a3 == 4)
      {

        [(CNContactsUserDefaultsX *)self setShortNameFormatEnabled:0];
      }

      return;
    }

    v4 = 4;
  }

  [(CNContactsUserDefaultsX *)self setShortNameFormatEnabled:1];
  v5 = [(CNContactsUserDefaultsX *)self foundationUserDefaults];
  [v5 setShortNameFormat:v4];
}

- (BOOL)isShortNameFormatEnabled
{
  v2 = [(CNContactsUserDefaultsX *)self foundationUserDefaults];
  v3 = [v2 isShortNameFormatEnabled];

  return v3;
}

- (void)setShortNameFormatEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(CNContactsUserDefaultsX *)self foundationUserDefaults];
  [v4 setShortNameFormatEnabled:v3];
}

- (BOOL)shortNameFormatPrefersNicknames
{
  v2 = [(CNContactsUserDefaultsX *)self foundationUserDefaults];
  v3 = [v2 preferNickname];

  return v3;
}

- (void)setShortNameFormatPrefersNicknames:(BOOL)a3
{
  v3 = a3;
  v4 = [(CNContactsUserDefaultsX *)self foundationUserDefaults];
  [v4 setPreferNickname:v3];
}

- (id)filteredGroupAndContainerIDs
{
  v2 = [(CNContactsUserDefaultsX *)self foundationUserDefaults];
  v3 = [v2 filteredAccountsAndContainers];

  return v3;
}

- (void)setFilteredGroupAndContainerIDs:(id)a3
{
  v4 = a3;
  v5 = [(CNContactsUserDefaultsX *)self foundationUserDefaults];
  [v5 setFilteredAccountsAndContainers:v4];
}

@end