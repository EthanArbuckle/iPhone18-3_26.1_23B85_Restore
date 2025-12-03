@interface ATXNotificationManagementUserDefaultsOrMAConstants
- (ATXNotificationManagementUserDefaultsOrMAConstants)init;
- (double)doubleForKey:(id)key defaultReturnValue:(double)value;
- (id)numberForKey:(id)key defaultReturnValue:(id)value;
@end

@implementation ATXNotificationManagementUserDefaultsOrMAConstants

- (ATXNotificationManagementUserDefaultsOrMAConstants)init
{
  v9.receiver = self;
  v9.super_class = ATXNotificationManagementUserDefaultsOrMAConstants;
  v2 = [(ATXNotificationManagementUserDefaultsOrMAConstants *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E695E000]);
    v4 = [v3 initWithSuiteName:*MEMORY[0x1E698B030]];
    defaults = v2->_defaults;
    v2->_defaults = v4;

    v6 = +[ATXNotificationManagementMAConstants sharedInstance];
    constants = v2->_constants;
    v2->_constants = v6;
  }

  return v2;
}

- (id)numberForKey:(id)key defaultReturnValue:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v8 = [(NSUserDefaults *)self->_defaults objectForKey:keyCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = [(ATXNotificationManagementMAConstants *)self->_constants numberForKey:keyCopy];

    if (v9)
    {
      v8 = v9;
    }

    else
    {
      v8 = valueCopy;
    }
  }

  v10 = v8;

  return v8;
}

- (double)doubleForKey:(id)key defaultReturnValue:(double)value
{
  v6 = MEMORY[0x1E696AD98];
  keyCopy = key;
  v8 = [v6 numberWithDouble:value];
  v9 = [(ATXNotificationManagementUserDefaultsOrMAConstants *)self numberForKey:keyCopy defaultReturnValue:v8];

  [v9 doubleValue];
  v11 = v10;

  return v11;
}

@end