@interface BLSHInternalTapToRadarIgnorer
+ (BOOL)hasIgnoredDesignations;
+ (BOOL)shouldIgnoreDesignation:(unint64_t)a3;
+ (id)_defaults;
+ (id)_ignoredDesignations;
+ (void)ignoreRadarDesignation:(unint64_t)a3;
+ (void)resetIgnoredDesignations;
@end

@implementation BLSHInternalTapToRadarIgnorer

+ (id)_defaults
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.BacklightServices"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  }

  v5 = v4;

  return v5;
}

+ (id)_ignoredDesignations
{
  v2 = [a1 _defaults];
  v3 = [v2 arrayForKey:@"IgnoredTapToRadarDesignations"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

+ (void)ignoreRadarDesignation:(unint64_t)a3
{
  v9 = [a1 _ignoredDesignations];
  v5 = [MEMORY[0x277CBEB58] setWithArray:v9];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v5 addObject:v6];

  v7 = [a1 _defaults];
  v8 = [v5 allObjects];
  [v7 setObject:v8 forKey:@"IgnoredTapToRadarDesignations"];
}

+ (BOOL)shouldIgnoreDesignation:(unint64_t)a3
{
  v4 = [a1 _ignoredDesignations];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  if ([v4 containsObject:v5])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v4 containsObject:&unk_28338DEA8];
  }

  return v6;
}

+ (BOOL)hasIgnoredDesignations
{
  v2 = [a1 _ignoredDesignations];
  v3 = [v2 count] != 0;

  return v3;
}

+ (void)resetIgnoredDesignations
{
  v2 = [a1 _defaults];
  [v2 removeObjectForKey:@"IgnoredTapToRadarDesignations"];
}

@end