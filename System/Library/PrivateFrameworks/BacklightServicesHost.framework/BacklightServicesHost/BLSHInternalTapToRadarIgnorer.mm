@interface BLSHInternalTapToRadarIgnorer
+ (BOOL)hasIgnoredDesignations;
+ (BOOL)shouldIgnoreDesignation:(unint64_t)designation;
+ (id)_defaults;
+ (id)_ignoredDesignations;
+ (void)ignoreRadarDesignation:(unint64_t)designation;
+ (void)resetIgnoredDesignations;
@end

@implementation BLSHInternalTapToRadarIgnorer

+ (id)_defaults
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.BacklightServices"];
  v3 = v2;
  if (v2)
  {
    standardUserDefaults = v2;
  }

  else
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  }

  v5 = standardUserDefaults;

  return v5;
}

+ (id)_ignoredDesignations
{
  _defaults = [self _defaults];
  v3 = [_defaults arrayForKey:@"IgnoredTapToRadarDesignations"];

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

+ (void)ignoreRadarDesignation:(unint64_t)designation
{
  _ignoredDesignations = [self _ignoredDesignations];
  v5 = [MEMORY[0x277CBEB58] setWithArray:_ignoredDesignations];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:designation];
  [v5 addObject:v6];

  _defaults = [self _defaults];
  allObjects = [v5 allObjects];
  [_defaults setObject:allObjects forKey:@"IgnoredTapToRadarDesignations"];
}

+ (BOOL)shouldIgnoreDesignation:(unint64_t)designation
{
  _ignoredDesignations = [self _ignoredDesignations];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:designation];
  if ([_ignoredDesignations containsObject:v5])
  {
    v6 = 1;
  }

  else
  {
    v6 = [_ignoredDesignations containsObject:&unk_28338DEA8];
  }

  return v6;
}

+ (BOOL)hasIgnoredDesignations
{
  _ignoredDesignations = [self _ignoredDesignations];
  v3 = [_ignoredDesignations count] != 0;

  return v3;
}

+ (void)resetIgnoredDesignations
{
  _defaults = [self _defaults];
  [_defaults removeObjectForKey:@"IgnoredTapToRadarDesignations"];
}

@end