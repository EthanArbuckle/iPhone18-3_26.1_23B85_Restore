@interface LSMarketplacesPreferences
+ (id)currentPreferencesWithError:(id *)error;
+ (id)modifyPreferencesWithBlock:;
+ (id)modifyPreferencesWithBlock:(id)block;
+ (uint64_t)modifyPreferencesWithBlock:;
+ (void)modifyPreferencesWithBlock:;
- (LSMarketplacesPreferences)init;
- (LSMarketplacesPreferences)initWithValidatedPlist:(id)plist;
- (id)toPlist;
@end

@implementation LSMarketplacesPreferences

- (LSMarketplacesPreferences)init
{
  v6.receiver = self;
  v6.super_class = LSMarketplacesPreferences;
  v2 = [(LSMarketplacesPreferences *)&v6 init];
  v3 = v2;
  if (v2)
  {
    preferredMarketplaces = v2->_preferredMarketplaces;
    v2->_preferredMarketplaces = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (LSMarketplacesPreferences)initWithValidatedPlist:(id)plist
{
  plistCopy = plist;
  v5 = [plistCopy objectForKey:@"preferredMarketplaces"];
  v10.receiver = self;
  v10.super_class = LSMarketplacesPreferences;
  v6 = [(LSMarketplacesPreferences *)&v10 init];
  if (v6)
  {
    v7 = [v5 copy];
    preferredMarketplaces = v6->_preferredMarketplaces;
    v6->_preferredMarketplaces = v7;
  }

  return v6;
}

- (id)toPlist
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = @"version";
  v6[1] = @"preferredMarketplaces";
  preferredMarketplaces = self->_preferredMarketplaces;
  v7[0] = &unk_1EEF8F008;
  v7[1] = preferredMarketplaces;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)currentPreferencesWithError:(id *)error
{
  if (marketplacesPreferencesStatePlist(void)::onceToken != -1)
  {
    +[LSMarketplacesPreferences currentPreferencesWithError:];
  }

  v12 = 0;
  v5 = LaunchServices::LSStatePlist::read(marketplacesPreferencesStatePlist(void)::sharedPlist, &v12);
  v6 = v12;
  v7 = v6;
  if (v5)
  {
    v8 = [[self alloc] initWithValidatedPlist:v5];
LABEL_7:
    v9 = v8;
    goto LABEL_8;
  }

  if (_LSNSErrorIsFNFError(v6))
  {
    v8 = objc_alloc_init(self);
    goto LABEL_7;
  }

  if (error)
  {
    v11 = v7;
    v9 = 0;
    *error = v7;
  }

  else
  {
    v9 = 0;
  }

LABEL_8:

  return v9;
}

+ (id)modifyPreferencesWithBlock:(id)block
{
  v11[4] = *MEMORY[0x1E69E9840];
  v4 = marketplacesPreferencesStatePlist(void)::onceToken;
  blockCopy = block;
  if (v4 != -1)
  {
    +[LSMarketplacesPreferences currentPreferencesWithError:];
  }

  v6 = marketplacesPreferencesStatePlist(void)::sharedPlist;
  v7 = MEMORY[0x1865D71B0](blockCopy);

  v11[0] = &unk_1EEF637E8;
  v11[1] = self;
  v11[2] = v7;
  v11[3] = v11;
  v8 = LaunchServices::LSStatePlist::modify(v6, v11);
  std::__function::__value_func<objc_object * ()(objc_object *,NSError *)>::~__value_func[abi:nn200100](v11);
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (void)modifyPreferencesWithBlock:
{

  operator delete(self);
}

+ (uint64_t)modifyPreferencesWithBlock:
{
  v4 = *(self + 8);
  v3 = *(self + 16);
  *a2 = &unk_1EEF637E8;
  a2[1] = v4;
  result = MEMORY[0x1865D71B0](v3);
  a2[2] = result;
  return result;
}

+ (id)modifyPreferencesWithBlock:
{
  v4 = *a3;
  v5 = *a2;
  v6 = v4;
  v7 = *(self + 8);
  if (v5)
  {
    v8 = [[v7 alloc] initWithValidatedPlist:v5];
  }

  else
  {
    v8 = objc_alloc_init(v7);
  }

  v9 = v8;
  (*(*(self + 16) + 16))();
  toPlist = [v9 toPlist];

  return toPlist;
}

@end