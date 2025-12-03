@interface MZPreferences
+ (id)storeBookkeeperPreferences;
- (MZPreferences)init;
- (id)objectForKey:(id)key withDefaultValue:(id)value;
- (void)_preferencesDidChange;
- (void)dealloc;
- (void)registerDefaultsIfKeyNotSet:(id)set registrationBlock:(id)block;
- (void)setBool:(BOOL)bool forKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
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

- (void)registerDefaultsIfKeyNotSet:(id)set registrationBlock:(id)block
{
  blockCopy = block;
  v7 = [@"_didRegister-" stringByAppendingString:set];
  if (![(MZPreferences *)self BOOLForKey:?])
  {
    blockCopy[2](blockCopy);
    [(MZPreferences *)self setBool:1 forKey:v7];
    CFPreferencesAppSynchronize(@"com.apple.storebookkeeper");
  }
}

- (void)setObject:(id)object forKey:(id)key
{
  CFPreferencesSetAppValue(key, object, @"com.apple.storebookkeeper");

  CFPreferencesAppSynchronize(@"com.apple.storebookkeeper");
}

- (id)objectForKey:(id)key withDefaultValue:(id)value
{
  valueCopy = value;
  v6 = CFPreferencesCopyAppValue(key, @"com.apple.storebookkeeper");
  if (!v6)
  {
    v6 = valueCopy;
  }

  return v6;
}

- (void)setBool:(BOOL)bool forKey:(id)key
{
  boolCopy = bool;
  keyCopy = key;
  v6 = [NSNumber numberWithBool:boolCopy];
  CFPreferencesSetAppValue(keyCopy, v6, @"com.apple.storebookkeeper");

  CFPreferencesAppSynchronize(@"com.apple.storebookkeeper");
}

@end