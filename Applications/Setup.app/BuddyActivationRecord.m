@interface BuddyActivationRecord
+ (id)_currentActivationRecordDictionary;
- (BOOL)impliesDemod;
- (BOOL)impliesEarlyExit;
- (BuddyActivationRecord)init;
- (BuddyActivationRecord)initWithActivationRecordDictionary:(id)a3;
@end

@implementation BuddyActivationRecord

+ (id)_currentActivationRecordDictionary
{
  v7[2] = a1;
  v7[1] = a2;
  v7[0] = 0;
  location = 0;
  v2 = MAECopyActivationRecordWithError();
  objc_storeStrong(&location, 0);
  v3 = v7[0];
  v7[0] = v2;

  v4 = v7[0];
  objc_storeStrong(&location, 0);
  objc_storeStrong(v7, 0);
  return v4;
}

- (BuddyActivationRecord)init
{
  v3 = [BuddyActivationRecord _currentActivationRecordDictionary:a2];
  location = [(BuddyActivationRecord *)self initWithActivationRecordDictionary:v3];
  v4 = location;

  objc_storeStrong(&location, 0);
  return v4;
}

- (BuddyActivationRecord)initWithActivationRecordDictionary:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v12;
  v12 = 0;
  v10.receiver = v3;
  v10.super_class = BuddyActivationRecord;
  v4 = [(BuddyActivationRecord *)&v10 init];
  v12 = v4;
  objc_storeStrong(&v12, v4);
  if (v4)
  {
    *(v12 + 1) = 0;
    v9 = [location[0] objectForKeyedSubscript:@"DeviceConfigurationFlags"];
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(buf, v9);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Buddy Activate: Device Configuration Flags = %@", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = [v9 integerValue];
      *(v12 + 1) = v5;
    }

    objc_storeStrong(&v9, 0);
  }

  v6 = v12;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v6;
}

- (BOOL)impliesDemod
{
  v11 = self;
  v10 = a2;
  v9 = 0;
  v8 = 6;
  if ((self->_configurationFlags & 6) != 0)
  {
    oslog = _BYLoggingFacility();
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v2 = oslog;
      v3 = v6;
      sub_10006AA68(v5);
      _os_log_impl(&_mh_execute_header, v2, v3, "Buddy Activate: Configuration flags specify demo mode", v5, 2u);
    }

    objc_storeStrong(&oslog, 0);
    return 1;
  }

  return v9;
}

- (BOOL)impliesEarlyExit
{
  if (self->_configurationFlags & 4) != 0 && (self->_configurationFlags)
  {
    return 0;
  }

  else
  {
    return [(BuddyActivationRecord *)self impliesDemod];
  }
}

@end