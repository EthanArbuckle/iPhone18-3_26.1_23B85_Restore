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
  block[4] = self;
  if (cityName_onceToken != -1)
  {
    dispatch_once(&cityName_onceToken, block);
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults persistentDomainForName:@"com.apple.mobilecal.timezones"];

  if (!v3 || ([self name], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "objectForKey:", v4), name = objc_claimAutoreleasedReturnValue(), v4, !name))
  {
    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v7 = [standardUserDefaults2 persistentDomainForName:@"com.apple.mobilecal"];

    if (v7)
    {
      v8 = [v7 objectForKey:*MEMORY[0x1E6993140]];
      if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v9 = [objc_alloc(MEMORY[0x1E698B668]) initWithProperties:v8]) != 0)
      {
        v10 = v9;
        timeZone = [v9 timeZone];
        if (timeZone && ([self name], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", timeZone), v12, v13))
        {
          name = [v10 name];
        }

        else
        {
          name = 0;
        }

        if (name)
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

    mEMORY[0x1E698B670] = [MEMORY[0x1E698B670] sharedManager];
    v15 = [mEMORY[0x1E698B670] defaultCityForTimeZone:self];

    name = [v15 name];

    if (!name)
    {
      currentLocale = [MEMORY[0x1E695DF58] currentLocale];
      name = [self localizedName:4 locale:currentLocale];

      if (!name)
      {
        name = [self name];
      }
    }

    goto LABEL_18;
  }

LABEL_19:

  return name;
}

- (void)setCityName:()EventKitUI
{
  v12 = a3;
  cityName = [self cityName];
  v5 = [v12 isEqualToString:cityName];

  if ((v5 & 1) == 0)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v7 = [standardUserDefaults persistentDomainForName:@"com.apple.mobilecal.timezones"];
    v8 = [v7 mutableCopy];

    if (!v8)
    {
      v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    }

    name = [self name];
    [v8 setObject:v12 forKey:name];

    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults2 setPersistentDomain:v8 forName:@"com.apple.mobilecal.timezones"];

    standardUserDefaults3 = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults3 synchronize];
  }
}

- (void)_cleanupDisallowedTimezonesIfNeeded
{
  if ([MEMORY[0x1E698B670] willApplyTimeZoneChanges1])
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v1 = [standardUserDefaults persistentDomainForName:@"com.apple.mobilecal.timezones"];
    v4 = [v1 mutableCopy];

    if (v4)
    {
      [v4 removeObjectsForKeys:&unk_1F4F32128];
      standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
      [standardUserDefaults2 setPersistentDomain:v4 forName:@"com.apple.mobilecal.timezones"];

      standardUserDefaults3 = [MEMORY[0x1E695E000] standardUserDefaults];
      [standardUserDefaults3 synchronize];
    }
  }
}

@end