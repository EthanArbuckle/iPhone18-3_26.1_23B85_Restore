@interface MZPreferences
+ (id)storeBookkeeperPreferences;
- (MZPreferences)init;
- (id)objectForKey:(id)a3 withDefaultValue:(id)a4;
- (void)_preferencesDidChange;
- (void)dealloc;
- (void)registerDefaultsIfKeyNotSet:(id)a3 registrationBlock:(id)a4;
- (void)setBool:(BOOL)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation MZPreferences

- (MZPreferences)init
{
  v5.receiver = self;
  v5.super_class = MZPreferences;
  v2 = [(MZPreferences *)&v5 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_1000C5DD4, @"com.apple.storebookkeeper.defaultschange", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

+ (id)storeBookkeeperPreferences
{
  if (qword_100583BC0 != -1)
  {
    sub_100042C6C();
  }

  v3 = qword_100583BB8;

  return v3;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.storebookkeeper.defaultschange", self);
  v4.receiver = self;
  v4.super_class = MZPreferences;
  [(MZPreferences *)&v4 dealloc];
}

- (void)_preferencesDidChange
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"MZPreferencesDidChangeNotification" object:self userInfo:0];
}

- (void)registerDefaultsIfKeyNotSet:(id)a3 registrationBlock:(id)a4
{
  v6 = a4;
  v7 = [@"_didRegister-" stringByAppendingString:a3];
  if (![(MZPreferences *)self BOOLForKey:?])
  {
    v6[2](v6);
    [(MZPreferences *)self setBool:1 forKey:v7];
    CFPreferencesAppSynchronize(@"com.apple.storebookkeeper");
  }
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  CFPreferencesSetAppValue(a4, a3, @"com.apple.storebookkeeper");

  CFPreferencesAppSynchronize(@"com.apple.storebookkeeper");
}

- (id)objectForKey:(id)a3 withDefaultValue:(id)a4
{
  v5 = a4;
  v6 = CFPreferencesCopyAppValue(a3, @"com.apple.storebookkeeper");
  if (!v6)
  {
    v6 = v5;
  }

  return v6;
}

- (void)setBool:(BOOL)a3 forKey:(id)a4
{
  v4 = a3;
  v5 = a4;
  v6 = [NSNumber numberWithBool:v4];
  CFPreferencesSetAppValue(v5, v6, @"com.apple.storebookkeeper");

  CFPreferencesAppSynchronize(@"com.apple.storebookkeeper");
}

@end