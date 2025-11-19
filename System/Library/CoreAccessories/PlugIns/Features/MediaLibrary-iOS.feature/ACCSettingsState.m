@interface ACCSettingsState
- (ACCSettingsState)initWithKey:(id)a3 applicationID:(id)a4 notification:(id)a5 defaultValue:(int64_t)a6 invalidValue:(int64_t)a7;
- (id)description;
- (void)_readLoggingPrefs;
- (void)_registerForLoggingPrefsNotification;
- (void)dealloc;
@end

@implementation ACCSettingsState

- (ACCSettingsState)initWithKey:(id)a3 applicationID:(id)a4 notification:(id)a5 defaultValue:(int64_t)a6 invalidValue:(int64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v19.receiver = self;
  v19.super_class = ACCSettingsState;
  v16 = [(ACCSettingsState *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_key, a3);
    objc_storeStrong(&v17->_applicationID, a4);
    objc_storeStrong(&v17->_notificationName, a5);
    v17->_defaultValue = a6;
    v17->_invalidValue = a7;
    [(ACCSettingsState *)v17 _readLoggingPrefs];
    [(ACCSettingsState *)v17 _registerForLoggingPrefsNotification];
  }

  return v17;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, self->_notificationName, 0);
  v4.receiver = self;
  v4.super_class = ACCSettingsState;
  [(ACCSettingsState *)&v4 dealloc];
}

- (id)description
{
  if (self->_BOOLValue)
  {
    v2 = @"true";
  }

  else
  {
    v2 = @"false";
  }

  defaultValue = self->_defaultValue;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"<ACCSettingsState>[%@:%@ = %ld (= %@), default = %ld, invalid = %ld]", self->_applicationID, self->_key, self->_intValue, v2, defaultValue, self->_invalidValue];
}

- (void)_readLoggingPrefs
{
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(self->_key, self->_applicationID, &keyExistsAndHasValidFormat);
  intValue = self->_intValue;
  v5 = keyExistsAndHasValidFormat;
  if (!keyExistsAndHasValidFormat || AppIntegerValue == self->_invalidValue)
  {
    AppIntegerValue = self->_defaultValue;
  }

  self->_intValue = AppIntegerValue;
  self->_BOOLValue = AppIntegerValue != 0;
  self->_exists = v5 != 0;
  if (intValue != AppIntegerValue)
  {
    NSLog(&cfstr_ReadPreference.isa, self->_key, intValue, AppIntegerValue);
  }
}

- (void)_registerForLoggingPrefsNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  notificationName = self->_notificationName;

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, __receivedNotification, notificationName, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

@end