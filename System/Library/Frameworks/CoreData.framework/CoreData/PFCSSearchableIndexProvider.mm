@interface PFCSSearchableIndexProvider
- (id)createPrivateSearchableIndexWithName:(id)name protectionClass:(id)class bundleIdentifier:(id)identifier;
- (id)createPrivateSearchableIndexWithPath:(id)path;
- (id)createSearchableIndexWithName:(id)name protectionClass:(id)class bundleIdentifier:(id)identifier;
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

- (id)createSearchableIndexWithName:(id)name protectionClass:(id)class bundleIdentifier:(id)identifier
{
  v8 = objc_alloc(getCoreSpotlightCSSearchableIndexClass());

  return [v8 initWithName:name protectionClass:class bundleIdentifier:identifier];
}

- (id)createPrivateSearchableIndexWithPath:(id)path
{
  v4 = objc_alloc(getCoreSpotlightCSPrivateSearchableIndexClass());

  return [v4 initWithPath:path];
}

- (id)createPrivateSearchableIndexWithName:(id)name protectionClass:(id)class bundleIdentifier:(id)identifier
{
  v8 = objc_alloc(getCoreSpotlightCSPrivateSearchableIndexClass());
  if (name)
  {
    nameCopy = name;
  }

  else
  {
    nameCopy = &stru_1EF3F1768;
  }

  return [v8 initWithName:nameCopy protectionClass:class bundleIdentifier:identifier];
}

@end