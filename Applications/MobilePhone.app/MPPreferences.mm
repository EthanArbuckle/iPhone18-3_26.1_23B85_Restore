@interface MPPreferences
+ (id)sharedPreferences;
- (BOOL)useSwiftUIRecents;
- (id)domain;
- (void)setPreferencesValue:(id)value forKey:(id)key;
@end

@implementation MPPreferences

+ (id)sharedPreferences
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __34__MPPreferences_sharedPreferences__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedPreferences_onceToken_0 != -1)
  {
    dispatch_once(&sharedPreferences_onceToken_0, block);
  }

  v2 = sharedPreferences_sMPPreferences;

  return v2;
}

uint64_t __34__MPPreferences_sharedPreferences__block_invoke(uint64_t a1)
{
  sharedPreferences_sMPPreferences = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

- (id)domain
{
  domain = self->_domain;
  if (!domain)
  {
    self->_domain = @"com.apple.mobilephone";

    domain = self->_domain;
  }

  return domain;
}

- (BOOL)useSwiftUIRecents
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __34__MPPreferences_useSwiftUIRecents__block_invoke;
  block[3] = &unk_100284FD0;
  block[4] = self;
  if (useSwiftUIRecents_onceToken != -1)
  {
    dispatch_once(&useSwiftUIRecents_onceToken, block);
  }

  return self->_useSwiftUIRecents;
}

uint64_t __34__MPPreferences_useSwiftUIRecents__block_invoke(uint64_t a1)
{
  result = _os_feature_enabled_impl();
  *(*(a1 + 32) + 16) = result;
  return result;
}

- (void)setPreferencesValue:(id)value forKey:(id)key
{
  v10.receiver = self;
  v10.super_class = MPPreferences;
  keyCopy = key;
  valueCopy = value;
  [(PHPreferences *)&v10 setPreferencesValue:valueCopy forKey:keyCopy];
  v11 = keyCopy;
  v12 = valueCopy;
  v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v9 = +[NSNotificationCenter defaultCenter];

  [v9 postNotificationName:@"MPPreferencesDidChangeNotification" object:self userInfo:v8];
}

@end