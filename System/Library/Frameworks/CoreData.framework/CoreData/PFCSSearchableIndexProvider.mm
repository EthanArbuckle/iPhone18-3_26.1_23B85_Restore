@interface PFCSSearchableIndexProvider
- (id)createPrivateSearchableIndexWithName:(id)a3 protectionClass:(id)a4 bundleIdentifier:(id)a5;
- (id)createPrivateSearchableIndexWithPath:(id)a3;
- (id)createSearchableIndexWithName:(id)a3 protectionClass:(id)a4 bundleIdentifier:(id)a5;
- (id)defaultPrivateSearchableIndex;
- (id)defaultSearchableIndex;
@end

@implementation PFCSSearchableIndexProvider

- (id)defaultSearchableIndex
{
  CoreSpotlightCSSearchableIndexClass = getCoreSpotlightCSSearchableIndexClass();

  return [(objc_class *)CoreSpotlightCSSearchableIndexClass defaultSearchableIndex];
}

- (id)defaultPrivateSearchableIndex
{
  CoreSpotlightCSPrivateSearchableIndexClass = getCoreSpotlightCSPrivateSearchableIndexClass();

  return [(objc_class *)CoreSpotlightCSPrivateSearchableIndexClass defaultSearchableIndex];
}

- (id)createSearchableIndexWithName:(id)a3 protectionClass:(id)a4 bundleIdentifier:(id)a5
{
  v8 = objc_alloc(getCoreSpotlightCSSearchableIndexClass());

  return [v8 initWithName:a3 protectionClass:a4 bundleIdentifier:a5];
}

- (id)createPrivateSearchableIndexWithPath:(id)a3
{
  v4 = objc_alloc(getCoreSpotlightCSPrivateSearchableIndexClass());

  return [v4 initWithPath:a3];
}

- (id)createPrivateSearchableIndexWithName:(id)a3 protectionClass:(id)a4 bundleIdentifier:(id)a5
{
  v8 = objc_alloc(getCoreSpotlightCSPrivateSearchableIndexClass());
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = &stru_1EF3F1768;
  }

  return [v8 initWithName:v9 protectionClass:a4 bundleIdentifier:a5];
}

@end