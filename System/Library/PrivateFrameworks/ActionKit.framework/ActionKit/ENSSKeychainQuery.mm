@interface ENSSKeychainQuery
+ (id)errorWithCode:(int)code;
- (BOOL)deleteItem:(id *)item;
- (BOOL)fetch:(id *)fetch;
- (BOOL)save:(id *)save;
- (NSCoding)passwordObject;
- (NSString)password;
- (id)fetchAll:(id *)all;
- (id)query;
- (void)setPassword:(id)password;
- (void)setPasswordObject:(id)object;
@end

@implementation ENSSKeychainQuery

+ (id)errorWithCode:(int)code
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (code <= -25292)
  {
    if (code <= -25301)
    {
      if (code == -26275)
      {
        v4 = @"errSecDecode";
        goto LABEL_27;
      }

      if (code == -25308)
      {
        v4 = @"errSecInteractionNotAllowed";
        goto LABEL_27;
      }
    }

    else
    {
      switch(code)
      {
        case -25300:
          v4 = @"errSecItemNotFound";
          goto LABEL_27;
        case -25299:
          v4 = @"errSecDuplicateItem";
          goto LABEL_27;
        case -25293:
          v4 = @"errSecAuthFailed";
          goto LABEL_27;
      }
    }

LABEL_26:
    v4 = @"errSecDefault";
    goto LABEL_27;
  }

  if (code <= -51)
  {
    switch(code)
    {
      case -25291:
        v4 = @"errSecNotAvailable";
        goto LABEL_27;
      case -1001:
        v4 = @"ENSSKeychainErrorBadArguments";
        goto LABEL_27;
      case -108:
        v4 = @"errSecAllocate";
LABEL_27:
        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        v7 = [mainBundle localizedStringForKey:v4 value:&stru_2850323E8 table:@"ENSSKeychain"];

        if (v7)
        {
          v11 = *MEMORY[0x277CCA450];
          v12[0] = v7;
          v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
        }

        else
        {
          v8 = 0;
        }

        v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.samsoffes.ENSSKeychain" code:code userInfo:v8];

        goto LABEL_31;
    }

    goto LABEL_26;
  }

  if (code == -50)
  {
    v4 = @"errSecParam";
    goto LABEL_27;
  }

  if (code)
  {
    if (code == -4)
    {
      v4 = @"errSecUnimplemented";
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v5 = 0;
LABEL_31:
  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)query
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  [v3 setObject:*MEMORY[0x277CDC238] forKey:*MEMORY[0x277CDC228]];
  service = [(ENSSKeychainQuery *)self service];

  if (service)
  {
    service2 = [(ENSSKeychainQuery *)self service];
    [v3 setObject:service2 forKey:*MEMORY[0x277CDC120]];
  }

  account = [(ENSSKeychainQuery *)self account];

  if (account)
  {
    account2 = [(ENSSKeychainQuery *)self account];
    [v3 setObject:account2 forKey:*MEMORY[0x277CDBF20]];
  }

  accessGroup = [(ENSSKeychainQuery *)self accessGroup];

  if (accessGroup)
  {
    accessGroup2 = [(ENSSKeychainQuery *)self accessGroup];
    [v3 setObject:accessGroup2 forKey:*MEMORY[0x277CDBEC8]];
  }

  if ([objc_opt_class() isSynchronizationAvailable])
  {
    synchronizationMode = [(ENSSKeychainQuery *)self synchronizationMode];
    if (synchronizationMode)
    {
      v11 = MEMORY[0x277CBEC28];
      if (synchronizationMode != 1)
      {
        v11 = 0;
      }

      if (synchronizationMode == 2)
      {
        v12 = MEMORY[0x277CBEC38];
      }

      else
      {
        v12 = v11;
      }
    }

    else
    {
      v12 = *MEMORY[0x277CDC148];
    }

    [v3 setObject:v12 forKey:*MEMORY[0x277CDC140]];
  }

  return v3;
}

- (NSString)password
{
  passwordData = [(ENSSKeychainQuery *)self passwordData];
  v4 = [passwordData length];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    passwordData2 = [(ENSSKeychainQuery *)self passwordData];
    v7 = [v5 initWithData:passwordData2 encoding:4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setPassword:(id)password
{
  v4 = [password dataUsingEncoding:4];
  [(ENSSKeychainQuery *)self setPasswordData:v4];
}

- (NSCoding)passwordObject
{
  passwordData = [(ENSSKeychainQuery *)self passwordData];
  v4 = [passwordData length];

  if (v4)
  {
    v5 = MEMORY[0x277CCAAC8];
    passwordData2 = [(ENSSKeychainQuery *)self passwordData];
    v7 = [v5 unarchiveObjectWithData:passwordData2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setPasswordObject:(id)object
{
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:object];
  [(ENSSKeychainQuery *)self setPasswordData:v4];
}

- (BOOL)fetch:(id *)fetch
{
  service = [(ENSSKeychainQuery *)self service];
  if (service && (v6 = service, [(ENSSKeychainQuery *)self account], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    result = 0;
    query = [(ENSSKeychainQuery *)self query];
    [query setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDC558]];
    [query setObject:*MEMORY[0x277CDC438] forKey:*MEMORY[0x277CDC428]];
    v9 = SecItemCopyMatching(query, &result);
    v10 = v9 == 0;
    if (v9)
    {
      if (fetch)
      {
        *fetch = [objc_opt_class() errorWithCode:v9];
      }
    }

    else
    {
      v11 = result;
      [(ENSSKeychainQuery *)self setPasswordData:result];
    }
  }

  else if (fetch)
  {
    [objc_opt_class() errorWithCode:4294966295];
    *fetch = v10 = 0;
  }

  else
  {
    return 0;
  }

  return v10;
}

- (id)fetchAll:(id *)all
{
  query = [(ENSSKeychainQuery *)self query];
  [query setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDC550]];
  [query setObject:*MEMORY[0x277CDC430] forKey:*MEMORY[0x277CDC428]];
  result = 0;
  v5 = SecItemCopyMatching(query, &result);
  if (all && v5)
  {
    [objc_opt_class() errorWithCode:v5];
    *all = v6 = 0;
  }

  else
  {
    v6 = result;
  }

  return v6;
}

- (BOOL)deleteItem:(id *)item
{
  service = [(ENSSKeychainQuery *)self service];
  if (service && (v6 = service, [(ENSSKeychainQuery *)self account], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    query = [(ENSSKeychainQuery *)self query];
    v9 = SecItemDelete(query);
    v10 = v9;
    if (item && v9)
    {
      *item = [objc_opt_class() errorWithCode:v9];
    }

    v11 = v10 == 0;
  }

  else if (item)
  {
    [objc_opt_class() errorWithCode:4294966295];
    *item = v11 = 0;
  }

  else
  {
    return 0;
  }

  return v11;
}

- (BOOL)save:(id *)save
{
  service = [(ENSSKeychainQuery *)self service];
  if (!service)
  {
    goto LABEL_13;
  }

  v6 = service;
  account = [(ENSSKeychainQuery *)self account];
  if (!account)
  {

LABEL_13:
    if (!save)
    {
      return 0;
    }

    [objc_opt_class() errorWithCode:4294966295];
    *save = v17 = 0;
    return v17;
  }

  v8 = account;
  passwordData = [(ENSSKeychainQuery *)self passwordData];

  if (!passwordData)
  {
    goto LABEL_13;
  }

  [(ENSSKeychainQuery *)self deleteItem:0];
  query = [(ENSSKeychainQuery *)self query];
  passwordData2 = [(ENSSKeychainQuery *)self passwordData];
  [query setObject:passwordData2 forKey:*MEMORY[0x277CDC5E8]];

  label = [(ENSSKeychainQuery *)self label];

  if (label)
  {
    label2 = [(ENSSKeychainQuery *)self label];
    [query setObject:label2 forKey:*MEMORY[0x277CDC080]];
  }

  v14 = +[ENSSKeychain accessibilityType];
  if (v14)
  {
    [query setObject:v14 forKey:*MEMORY[0x277CDBED8]];
  }

  v15 = SecItemAdd(query, 0);
  v16 = v15;
  if (save && v15)
  {
    *save = [objc_opt_class() errorWithCode:v15];
  }

  v17 = v16 == 0;

  return v17;
}

@end