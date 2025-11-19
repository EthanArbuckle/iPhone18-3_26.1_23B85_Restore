@interface RCAppGroupStorage
+ (RCAppGroupStorage)sharedInstance;
- (BOOL)enableOverdubForAllDevices;
- (RCAppGroupStorage)init;
@end

@implementation RCAppGroupStorage

+ (RCAppGroupStorage)sharedInstance
{
  if (qword_100028F00 != -1)
  {
    sub_1000182F4();
  }

  v3 = qword_100028F08;

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
        sub_100018308(v5);
      }
    }
  }

  return v2;
}

- (BOOL)enableOverdubForAllDevices
{
  v3 = sub_100001C60();
  if (v3)
  {
    userDefaults = self->_userDefaults;

    LOBYTE(v3) = [(NSUserDefaults *)userDefaults BOOLForKey:@"RCEnableOverdubForAllDevices"];
  }

  return v3;
}

@end