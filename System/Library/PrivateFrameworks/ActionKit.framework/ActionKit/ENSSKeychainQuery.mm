@interface ENSSKeychainQuery
+ (id)errorWithCode:(int)a3;
- (BOOL)deleteItem:(id *)a3;
- (BOOL)fetch:(id *)a3;
- (BOOL)save:(id *)a3;
- (NSCoding)passwordObject;
- (NSString)password;
- (id)fetchAll:(id *)a3;
- (id)query;
- (void)setPassword:(id)a3;
- (void)setPasswordObject:(id)a3;
@end

@implementation ENSSKeychainQuery

+ (id)errorWithCode:(int)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (a3 <= -25292)
  {
    if (a3 <= -25301)
    {
      if (a3 == -26275)
      {
        v4 = @"errSecDecode";
        goto LABEL_27;
      }

      if (a3 == -25308)
      {
        v4 = @"errSecInteractionNotAllowed";
        goto LABEL_27;
      }
    }

    else
    {
      switch(a3)
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

  if (a3 <= -51)
  {
    switch(a3)
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
        v6 = [MEMORY[0x277CCA8D8] mainBundle];
        v7 = [v6 localizedStringForKey:v4 value:&stru_2850323E8 table:@"ENSSKeychain"];

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

        v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.samsoffes.ENSSKeychain" code:a3 userInfo:v8];

        goto LABEL_31;
    }

    goto LABEL_26;
  }

  if (a3 == -50)
  {
    v4 = @"errSecParam";
    goto LABEL_27;
  }

  if (a3)
  {
    if (a3 == -4)
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
  v4 = [(ENSSKeychainQuery *)self service];

  if (v4)
  {
    v5 = [(ENSSKeychainQuery *)self service];
    [v3 setObject:v5 forKey:*MEMORY[0x277CDC120]];
  }

  v6 = [(ENSSKeychainQuery *)self account];

  if (v6)
  {
    v7 = [(ENSSKeychainQuery *)self account];
    [v3 setObject:v7 forKey:*MEMORY[0x277CDBF20]];
  }

  v8 = [(ENSSKeychainQuery *)self accessGroup];

  if (v8)
  {
    v9 = [(ENSSKeychainQuery *)self accessGroup];
    [v3 setObject:v9 forKey:*MEMORY[0x277CDBEC8]];
  }

  if ([objc_opt_class() isSynchronizationAvailable])
  {
    v10 = [(ENSSKeychainQuery *)self synchronizationMode];
    if (v10)
    {
      v11 = MEMORY[0x277CBEC28];
      if (v10 != 1)
      {
        v11 = 0;
      }

      if (v10 == 2)
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
  v3 = [(ENSSKeychainQuery *)self passwordData];
  v4 = [v3 length];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    v6 = [(ENSSKeychainQuery *)self passwordData];
    v7 = [v5 initWithData:v6 encoding:4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setPassword:(id)a3
{
  v4 = [a3 dataUsingEncoding:4];
  [(ENSSKeychainQuery *)self setPasswordData:v4];
}

- (NSCoding)passwordObject
{
  v3 = [(ENSSKeychainQuery *)self passwordData];
  v4 = [v3 length];

  if (v4)
  {
    v5 = MEMORY[0x277CCAAC8];
    v6 = [(ENSSKeychainQuery *)self passwordData];
    v7 = [v5 unarchiveObjectWithData:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setPasswordObject:(id)a3
{
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3];
  [(ENSSKeychainQuery *)self setPasswordData:v4];
}

- (BOOL)fetch:(id *)a3
{
  v5 = [(ENSSKeychainQuery *)self service];
  if (v5 && (v6 = v5, [(ENSSKeychainQuery *)self account], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    result = 0;
    v8 = [(ENSSKeychainQuery *)self query];
    [v8 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDC558]];
    [v8 setObject:*MEMORY[0x277CDC438] forKey:*MEMORY[0x277CDC428]];
    v9 = SecItemCopyMatching(v8, &result);
    v10 = v9 == 0;
    if (v9)
    {
      if (a3)
      {
        *a3 = [objc_opt_class() errorWithCode:v9];
      }
    }

    else
    {
      v11 = result;
      [(ENSSKeychainQuery *)self setPasswordData:result];
    }
  }

  else if (a3)
  {
    [objc_opt_class() errorWithCode:4294966295];
    *a3 = v10 = 0;
  }

  else
  {
    return 0;
  }

  return v10;
}

- (id)fetchAll:(id *)a3
{
  v4 = [(ENSSKeychainQuery *)self query];
  [v4 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDC550]];
  [v4 setObject:*MEMORY[0x277CDC430] forKey:*MEMORY[0x277CDC428]];
  result = 0;
  v5 = SecItemCopyMatching(v4, &result);
  if (a3 && v5)
  {
    [objc_opt_class() errorWithCode:v5];
    *a3 = v6 = 0;
  }

  else
  {
    v6 = result;
  }

  return v6;
}

- (BOOL)deleteItem:(id *)a3
{
  v5 = [(ENSSKeychainQuery *)self service];
  if (v5 && (v6 = v5, [(ENSSKeychainQuery *)self account], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = [(ENSSKeychainQuery *)self query];
    v9 = SecItemDelete(v8);
    v10 = v9;
    if (a3 && v9)
    {
      *a3 = [objc_opt_class() errorWithCode:v9];
    }

    v11 = v10 == 0;
  }

  else if (a3)
  {
    [objc_opt_class() errorWithCode:4294966295];
    *a3 = v11 = 0;
  }

  else
  {
    return 0;
  }

  return v11;
}

- (BOOL)save:(id *)a3
{
  v5 = [(ENSSKeychainQuery *)self service];
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = v5;
  v7 = [(ENSSKeychainQuery *)self account];
  if (!v7)
  {

LABEL_13:
    if (!a3)
    {
      return 0;
    }

    [objc_opt_class() errorWithCode:4294966295];
    *a3 = v17 = 0;
    return v17;
  }

  v8 = v7;
  v9 = [(ENSSKeychainQuery *)self passwordData];

  if (!v9)
  {
    goto LABEL_13;
  }

  [(ENSSKeychainQuery *)self deleteItem:0];
  v10 = [(ENSSKeychainQuery *)self query];
  v11 = [(ENSSKeychainQuery *)self passwordData];
  [v10 setObject:v11 forKey:*MEMORY[0x277CDC5E8]];

  v12 = [(ENSSKeychainQuery *)self label];

  if (v12)
  {
    v13 = [(ENSSKeychainQuery *)self label];
    [v10 setObject:v13 forKey:*MEMORY[0x277CDC080]];
  }

  v14 = +[ENSSKeychain accessibilityType];
  if (v14)
  {
    [v10 setObject:v14 forKey:*MEMORY[0x277CDBED8]];
  }

  v15 = SecItemAdd(v10, 0);
  v16 = v15;
  if (a3 && v15)
  {
    *a3 = [objc_opt_class() errorWithCode:v15];
  }

  v17 = v16 == 0;

  return v17;
}

@end