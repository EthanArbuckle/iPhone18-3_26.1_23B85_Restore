@interface FPUserDefaultsWithRootUserWorkaround
+ (id)_userDefaultsSearchList;
- (BOOL)BOOLForKey:(id)key;
- (FPUserDefaultsWithRootUserWorkaround)initWithSuiteName:(id)name;
- (id)objectForKey:(id)key;
- (id)stringForKey:(id)key;
@end

@implementation FPUserDefaultsWithRootUserWorkaround

+ (id)_userDefaultsSearchList
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/private/var/%@/Library/Preferences", @"mobile"];
  v8[0] = v2;
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/Users/%@/Library/Preferences", @"mobile"];
  v8[1] = v3;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/Library/Managed Preferences/%@/", @"mobile"];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (FPUserDefaultsWithRootUserWorkaround)initWithSuiteName:(id)name
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = FPUserDefaultsWithRootUserWorkaround;
  v5 = [(FPUserDefaultsWithRootUserWorkaround *)&v12 init];
  if (v5)
  {
    if (getuid())
    {
      v6 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:nameCopy];
      userDefaults = v5->_userDefaults;
      v5->_userDefaults = v6;
    }

    else
    {
      userDefaults = +[FPUserDefaultsWithRootUserWorkaround _userDefaultsSearchList];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __58__FPUserDefaultsWithRootUserWorkaround_initWithSuiteName___block_invoke;
      v9[3] = &unk_1E793CF30;
      v10 = nameCopy;
      v11 = v5;
      [userDefaults enumerateObjectsUsingBlock:v9];
    }
  }

  return v5;
}

void __58__FPUserDefaultsWithRootUserWorkaround_initWithSuiteName___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:a2 isDirectory:1];
  v7 = [v6 URLByAppendingPathComponent:*(a1 + 32)];
  v12 = [v7 URLByAppendingPathExtension:@"plist"];

  v8 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v12];
  v9 = *(a1 + 40);
  v10 = *(v9 + 16);
  *(v9 + 16) = v8;

  v11 = *(*(a1 + 40) + 16);
  if (v11)
  {
    *a4 = 1;
    LOBYTE(v11) = *(*(a1 + 40) + 16) != 0;
  }

  *a4 = v11;
}

- (BOOL)BOOLForKey:(id)key
{
  userDefaults = self->_userDefaults;
  if (userDefaults)
  {

    return [(NSUserDefaults *)userDefaults BOOLForKey:key];
  }

  else
  {
    v7 = [(NSDictionary *)self->_localUserDefaults objectForKey:key];
    if (_NSIsNSString())
    {
      if ([v7 isEqualToString:@"YES"])
      {
        bOOLValue = 1;
      }

      else
      {
        v9 = [v7 length];
        bOOLValue = 1;
        if ([v7 compare:@"YES" options:1 range:{0, v9}])
        {
          bOOLValue = 1;
          if ([v7 compare:@"Y" options:1 range:{0, v9}])
          {
            bOOLValue = [v7 integerValue] != 0;
          }
        }
      }
    }

    else if (_NSIsNSNumber())
    {
      bOOLValue = [v7 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    return bOOLValue;
  }
}

- (id)objectForKey:(id)key
{
  userDefaults = self->_userDefaults;
  if (!userDefaults)
  {
    userDefaults = self->_localUserDefaults;
  }

  v5 = [userDefaults objectForKey:key];

  return v5;
}

- (id)stringForKey:(id)key
{
  userDefaults = self->_userDefaults;
  if (userDefaults)
  {
    v5 = [(NSUserDefaults *)userDefaults stringForKey:key];
  }

  else
  {
    v5 = [(NSDictionary *)self->_localUserDefaults objectForKey:key];
    if ((_NSIsNSString() & 1) == 0)
    {
      if (_NSIsNSNumber())
      {
        stringValue = [v5 stringValue];
      }

      else
      {
        stringValue = 0;
      }

      v5 = stringValue;
    }
  }

  return v5;
}

@end