@interface RCAppGroupStorage
+ (RCAppGroupStorage)sharedInstance;
- (BOOL)enableOverdubForAllDevices;
- (RCAppGroupStorage)init;
@end

@implementation RCAppGroupStorage

+ (RCAppGroupStorage)sharedInstance
{
  if (qword_10000C440 != -1)
  {
    sub_100004418();
  }

  v3 = qword_10000C448;

  return v3;
}

- (RCAppGroupStorage)init
{
  v7.receiver = self;
  v7.super_class = RCAppGroupStorage;
  v2 = [(RCAppGroupStorage *)&v7 init];
  if (v2)
  {
    v3 = [[NSUserDefaults alloc] initWithSuiteName:@"group.com.apple.VoiceMemos.shared"];
    userDefaults = v2->_userDefaults;
    v2->_userDefaults = v3;

    if (!v2->_userDefaults)
    {
      v5 = OSLogForCategory(@"Default");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        sub_10000442C(v5);
      }
    }
  }

  return v2;
}

- (BOOL)enableOverdubForAllDevices
{
  v3 = sub_100001B00();
  if (v3)
  {
    userDefaults = self->_userDefaults;

    LOBYTE(v3) = [(NSUserDefaults *)userDefaults BOOLForKey:@"RCEnableOverdubForAllDevices"];
  }

  return v3;
}

@end