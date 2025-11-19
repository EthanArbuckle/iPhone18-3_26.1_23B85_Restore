@interface ICSPreferences
+ (id)sharedPreferences;
- (BOOL)forceBlurCurrentPoster;
- (BOOL)forceBlurNewPoster;
- (BOOL)hasBannersEnabled;
- (BOOL)hasUserScoreFeedbackViewHidden;
- (BOOL)shouldMakeFakeSOSCall;
- (ICSPreferences)init;
- (id)domain;
- (int64_t)moments;
- (void)setPreferencesValue:(id)a3 forKey:(id)a4;
@end

@implementation ICSPreferences

+ (id)sharedPreferences
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2860;
  block[3] = &unk_C598;
  block[4] = a1;
  if (qword_111E8[0] != -1)
  {
    dispatch_once(qword_111E8, block);
  }

  v2 = qword_111E0;

  return v2;
}

- (ICSPreferences)init
{
  v6.receiver = self;
  v6.super_class = ICSPreferences;
  v2 = [(ICSPreferences *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v2->_featureFlags;
    v2->_featureFlags = v3;
  }

  return v2;
}

- (id)domain
{
  domain = self->_domain;
  if (!domain)
  {
    self->_domain = @"com.apple.InCallService";

    domain = self->_domain;
  }

  return domain;
}

- (BOOL)hasBannersEnabled
{
  v3 = _os_feature_enabled_impl();
  if (v3)
  {

    LOBYTE(v3) = [(PHPreferences *)self BOOLForKey:@"CleethorpesEnabled" defaultValue:1];
  }

  return v3;
}

- (BOOL)hasUserScoreFeedbackViewHidden
{
  if (!_TUIsInternalInstall())
  {
    return 1;
  }

  return [(PHPreferences *)self BOOLForKey:@"UserScoreFeedbackViewHidden" defaultValue:0];
}

- (int64_t)moments
{
  v3 = NSStringFromSelector("moments");
  v4 = [(PHPreferences *)self unsignedIntegerForKey:v3 defaultValue:0];

  return v4;
}

- (BOOL)forceBlurCurrentPoster
{
  v3 = _TUIsInternalInstall();
  if (v3)
  {

    LOBYTE(v3) = [(PHPreferences *)self BOOLForKey:@"BlurCurrentPoster" defaultValue:0];
  }

  return v3;
}

- (BOOL)forceBlurNewPoster
{
  v3 = _TUIsInternalInstall();
  if (v3)
  {

    LOBYTE(v3) = [(PHPreferences *)self BOOLForKey:@"BlurNewPoster" defaultValue:0];
  }

  return v3;
}

- (BOOL)shouldMakeFakeSOSCall
{
  v3 = _TUIsInternalInstall();
  if (v3)
  {

    LOBYTE(v3) = [(PHPreferences *)self BOOLForKey:@"ShouldMakeFakeSOSCall" defaultValue:0];
  }

  return v3;
}

- (void)setPreferencesValue:(id)a3 forKey:(id)a4
{
  v10.receiver = self;
  v10.super_class = ICSPreferences;
  v6 = a4;
  v7 = a3;
  [(PHPreferences *)&v10 setPreferencesValue:v7 forKey:v6];
  v11 = v6;
  v12 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v9 = +[NSNotificationCenter defaultCenter];

  [v9 postNotificationName:@"ICSPreferencesDidChangeNotification" object:self userInfo:v8];
}

@end