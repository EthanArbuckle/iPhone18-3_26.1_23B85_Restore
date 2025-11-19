@interface BootArgs
+ (BOOL)BOOLForKey:(id)a3;
+ (id)configuredBootArgs;
+ (id)configuredBootArgsString;
+ (id)numberForKey:(id)a3;
+ (id)stringForKey:(id)a3;
+ (int)intForKey:(id)a3;
+ (int64_t)integerForKey:(id)a3;
- (BootArgs)init;
@end

@implementation BootArgs

- (BootArgs)init
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(sel_configuredBootArgs);
  v9 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"Use +[%@ %@] instead of -%@.", v7, v8, v9}];

  return 0;
}

+ (id)configuredBootArgs
{
  if (configuredBootArgs_onceToken != -1)
  {
    +[BootArgs configuredBootArgs];
  }

  v3 = configuredBootArgs_bootArgsDict;

  return v3;
}

void __30__BootArgs_configuredBootArgs__block_invoke()
{
  v22 = *MEMORY[0x277D85DE8];
  v0 = +[BootArgs configuredBootArgsString];
  v1 = v0;
  if (v0)
  {
    v2 = [v0 componentsSeparatedByString:@" "];
    if ([v2 count])
    {
      v16 = v1;
      v3 = [MEMORY[0x277CBEB38] dictionary];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v15 = v2;
      v4 = v2;
      v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v18;
        do
        {
          v8 = 0;
          do
          {
            if (*v18 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = [*(*(&v17 + 1) + 8 * v8) componentsSeparatedByString:{@"=", v15}];
            if ([v9 count])
            {
              if ([v9 count] < 2)
              {
                [MEMORY[0x277CBEB68] null];
              }

              else
              {
                [v9 objectAtIndexedSubscript:1];
              }
              v10 = ;
              v11 = [v9 objectAtIndexedSubscript:0];
              [v3 setObject:v10 forKeyedSubscript:v11];
            }

            ++v8;
          }

          while (v6 != v8);
          v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v6);
      }

      v12 = [v3 copy];
      v13 = configuredBootArgs_bootArgsDict;
      configuredBootArgs_bootArgsDict = v12;

      v2 = v15;
      v1 = v16;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (id)configuredBootArgsString
{
  if (configuredBootArgsString_onceToken != -1)
  {
    +[BootArgs configuredBootArgsString];
  }

  v3 = configuredBootArgsString_bootArgsString;

  return v3;
}

void __36__BootArgs_configuredBootArgsString__block_invoke()
{
  v0 = IORegistryEntryFromPath(*MEMORY[0x277CD28A0], "IODeviceTree:/options");
  if (v0)
  {
    v1 = v0;
    CFProperty = IORegistryEntryCreateCFProperty(v0, @"boot-args", *MEMORY[0x277CBECE8], 0);
    IOObjectRelease(v1);
    if (CFProperty)
    {
      v3 = CFGetTypeID(CFProperty);
      if (v3 == CFStringGetTypeID())
      {
        v4 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
        v5 = [CFProperty stringByTrimmingCharactersInSet:v4];
        v6 = configuredBootArgsString_bootArgsString;
        configuredBootArgsString_bootArgsString = v5;
      }

      CFRelease(CFProperty);
    }
  }
}

+ (id)stringForKey:(id)a3
{
  v3 = a3;
  v4 = +[BootArgs configuredBootArgs];
  v5 = [v4 objectForKeyedSubscript:v3];

  return v5;
}

+ (id)numberForKey:(id)a3
{
  v3 = [BootArgs stringForKey:a3];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v4 setNumberStyle:1];
    v5 = [v4 numberFromString:v3];
    if (!v5)
    {
      v6 = [MEMORY[0x277CCAC80] scannerWithString:v3];
      v8 = -1431655766;
      if ([v6 scanHexInt:&v8])
      {
        v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)BOOLForKey:(id)a3
{
  v3 = a3;
  v4 = [BootArgs numberForKey:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 BOOLValue];
  }

  else
  {
    v7 = [BootArgs stringForKey:v3];
    v8 = v7;
    v6 = v7 && (![v7 caseInsensitiveCompare:@"true"] || !objc_msgSend(v8, "caseInsensitiveCompare:", @"yes"));
  }

  return v6;
}

+ (int64_t)integerForKey:(id)a3
{
  v3 = [BootArgs numberForKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (int)intForKey:(id)a3
{
  v3 = [BootArgs numberForKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 intValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end