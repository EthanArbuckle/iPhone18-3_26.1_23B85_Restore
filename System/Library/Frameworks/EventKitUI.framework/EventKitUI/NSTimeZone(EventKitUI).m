@interface NSTimeZone(EventKitUI)
- (id)cityName;
- (void)_cleanupDisallowedTimezonesIfNeeded;
- (void)setCityName:()EventKitUI;
@end

@implementation NSTimeZone(EventKitUI)

- (id)cityName
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__NSTimeZone_EventKitUI__cityName__block_invoke;
  block[3] = &unk_1E843EC60;
  block[4] = a1;
  if (cityName_onceToken != -1)
  {
    dispatch_once(&cityName_onceToken, block);
  }

  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 persistentDomainForName:@"com.apple.mobilecal.timezones"];

  if (!v3 || ([a1 name], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "objectForKey:", v4), v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {
    v6 = [MEMORY[0x1E695E000] standardUserDefaults];
    v7 = [v6 persistentDomainForName:@"com.apple.mobilecal"];

    if (v7)
    {
      v8 = [v7 objectForKey:*MEMORY[0x1E6993140]];
      if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v9 = [objc_alloc(MEMORY[0x1E698B668]) initWithProperties:v8]) != 0)
      {
        v10 = v9;
        v11 = [v9 timeZone];
        if (v11 && ([a1 name], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", v11), v12, v13))
        {
          v5 = [v10 name];
        }

        else
        {
          v5 = 0;
        }

        if (v5)
        {
LABEL_18:
          v3 = v7;
          goto LABEL_19;
        }
      }

      else
      {
      }
    }

    v14 = [MEMORY[0x1E698B670] sharedManager];
    v15 = [v14 defaultCityForTimeZone:a1];

    v5 = [v15 name];

    if (!v5)
    {
      v16 = [MEMORY[0x1E695DF58] currentLocale];
      v5 = [a1 localizedName:4 locale:v16];

      if (!v5)
      {
        v5 = [a1 name];
      }
    }

    goto LABEL_18;
  }

LABEL_19:

  return v5;
}

- (void)setCityName:()EventKitUI
{
  v12 = a3;
  v4 = [a1 cityName];
  v5 = [v12 isEqualToString:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [MEMORY[0x1E695E000] standardUserDefaults];
    v7 = [v6 persistentDomainForName:@"com.apple.mobilecal.timezones"];
    v8 = [v7 mutableCopy];

    if (!v8)
    {
      v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    }

    v9 = [a1 name];
    [v8 setObject:v12 forKey:v9];

    v10 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v10 setPersistentDomain:v8 forName:@"com.apple.mobilecal.timezones"];

    v11 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v11 synchronize];
  }
}

- (void)_cleanupDisallowedTimezonesIfNeeded
{
  if ([MEMORY[0x1E698B670] willApplyTimeZoneChanges1])
  {
    v0 = [MEMORY[0x1E695E000] standardUserDefaults];
    v1 = [v0 persistentDomainForName:@"com.apple.mobilecal.timezones"];
    v4 = [v1 mutableCopy];

    if (v4)
    {
      [v4 removeObjectsForKeys:&unk_1F4F32128];
      v2 = [MEMORY[0x1E695E000] standardUserDefaults];
      [v2 setPersistentDomain:v4 forName:@"com.apple.mobilecal.timezones"];

      v3 = [MEMORY[0x1E695E000] standardUserDefaults];
      [v3 synchronize];
    }
  }
}

@end