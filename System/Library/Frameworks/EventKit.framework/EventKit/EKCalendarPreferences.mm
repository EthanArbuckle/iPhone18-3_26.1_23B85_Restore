@interface EKCalendarPreferences
+ (id)calendarPreferences;
- (BOOL)_checkedStateForDisabledOrCollapsedItemWithUID:(id)d delegateID:(id)iD withKey:(id)key;
- (BOOL)checkedStateForCalendarWithUID:(id)d delegateID:(id)iD;
- (BOOL)expandedStateForTopLevelNodeWithUID:(id)d;
- (EKCalendarPreferences)init;
- (id)_disabledOrCollapsedItemsForDelegateID:(id)d withKey:(id)key;
- (id)_keyForDelegateID:(id)d;
- (id)displayOrderForAccounts;
- (unint64_t)_displayOrderForSourceWithIdentifier:(id)identifier key:(id)key;
- (void)_updateStateForDisabledOrCollapsedItemWithUID:(id)d delegateID:(id)iD state:(BOOL)state withKey:(id)key withNotification:(id)notification;
@end

@implementation EKCalendarPreferences

+ (id)calendarPreferences
{
  if (calendarPreferences_onceToken != -1)
  {
    +[EKCalendarPreferences calendarPreferences];
  }

  v3 = calendarPreferences_calendarPreferences;

  return v3;
}

uint64_t __44__EKCalendarPreferences_calendarPreferences__block_invoke()
{
  v0 = objc_alloc_init(EKCalendarPreferences);
  v1 = calendarPreferences_calendarPreferences;
  calendarPreferences_calendarPreferences = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (EKCalendarPreferences)init
{
  v7.receiver = self;
  v7.super_class = EKCalendarPreferences;
  v2 = [(EKCalendarPreferences *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E6993020]);
    v4 = [v3 initWithDomain:*MEMORY[0x1E6993168]];
    preferences = v2->_preferences;
    v2->_preferences = v4;

    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.iCal.viewModelChanged"];
    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.calendar.preference.notification.changed"];
  }

  return v2;
}

- (BOOL)checkedStateForCalendarWithUID:(id)d delegateID:(id)iD
{
  dCopy = d;
  v7 = [(EKCalendarPreferences *)self _disabledOrCollapsedItemsForDelegateID:iD withKey:@"DisabledCalendars"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 containsObject:dCopy] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (BOOL)expandedStateForTopLevelNodeWithUID:(id)d
{
  dCopy = d;
  v5 = [(EKCalendarPreferences *)self _disabledOrCollapsedItemsForDelegateID:0 withKey:@"CollapsedTopLevelNodes"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 containsObject:dCopy] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (void)_updateStateForDisabledOrCollapsedItemWithUID:(id)d delegateID:(id)iD state:(BOOL)state withKey:(id)key withNotification:(id)notification
{
  stateCopy = state;
  dCopy = d;
  iDCopy = iD;
  keyCopy = key;
  preferences = self->_preferences;
  notificationCopy = notification;
  v16 = [(CalPreferences *)preferences getValueForPreference:keyCopy expectedClass:objc_opt_class()];
  dictionary = [v16 mutableCopy];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v18 = [(EKCalendarPreferences *)self _keyForDelegateID:iDCopy];
  v19 = [dictionary objectForKey:v18];
  array = [v19 mutableCopy];

  if (!array)
  {
    array = [MEMORY[0x1E695DF70] array];
  }

  [dictionary setObject:array forKeyedSubscript:v18];
  if (stateCopy)
  {
    [array removeObject:dCopy inRange:{0, objc_msgSend(array, "count")}];
  }

  else
  {
    [array addObject:dCopy];
  }

  [(CalPreferences *)self->_preferences setValueForPreference:keyCopy value:dictionary notificationName:notificationCopy];
}

- (id)_disabledOrCollapsedItemsForDelegateID:(id)d withKey:(id)key
{
  keyCopy = key;
  v7 = [(EKCalendarPreferences *)self _keyForDelegateID:d];
  v8 = [(CalPreferences *)self->_preferences getValueForPreference:keyCopy expectedClass:objc_opt_class()];

  if (v8)
  {
    v9 = [v8 objectForKey:v7];
    v10 = [v9 mutableCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_checkedStateForDisabledOrCollapsedItemWithUID:(id)d delegateID:(id)iD withKey:(id)key
{
  dCopy = d;
  v8 = [(EKCalendarPreferences *)self _disabledOrCollapsedItemsForDelegateID:iD withKey:@"DisabledCalendars"];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 containsObject:dCopy] ^ 1;
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (id)_keyForDelegateID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    dCopy = @"MainWindow";
  }

  return dCopy;
}

- (id)displayOrderForAccounts
{
  preferences = self->_preferences;
  v3 = objc_opt_class();

  return [(CalPreferences *)preferences getValueForPreference:@"AccountDisplayOrder" expectedClass:v3];
}

- (unint64_t)_displayOrderForSourceWithIdentifier:(id)identifier key:(id)key
{
  identifierCopy = identifier;
  preferences = self->_preferences;
  keyCopy = key;
  v9 = [(CalPreferences *)preferences getValueForPreference:keyCopy expectedClass:objc_opt_class()];

  if (v9)
  {
    v10 = [v9 indexOfObject:identifierCopy];
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

@end