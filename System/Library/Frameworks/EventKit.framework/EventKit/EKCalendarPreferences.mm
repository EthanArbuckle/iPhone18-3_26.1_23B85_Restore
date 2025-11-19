@interface EKCalendarPreferences
+ (id)calendarPreferences;
- (BOOL)_checkedStateForDisabledOrCollapsedItemWithUID:(id)a3 delegateID:(id)a4 withKey:(id)a5;
- (BOOL)checkedStateForCalendarWithUID:(id)a3 delegateID:(id)a4;
- (BOOL)expandedStateForTopLevelNodeWithUID:(id)a3;
- (EKCalendarPreferences)init;
- (id)_disabledOrCollapsedItemsForDelegateID:(id)a3 withKey:(id)a4;
- (id)_keyForDelegateID:(id)a3;
- (id)displayOrderForAccounts;
- (unint64_t)_displayOrderForSourceWithIdentifier:(id)a3 key:(id)a4;
- (void)_updateStateForDisabledOrCollapsedItemWithUID:(id)a3 delegateID:(id)a4 state:(BOOL)a5 withKey:(id)a6 withNotification:(id)a7;
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

- (BOOL)checkedStateForCalendarWithUID:(id)a3 delegateID:(id)a4
{
  v6 = a3;
  v7 = [(EKCalendarPreferences *)self _disabledOrCollapsedItemsForDelegateID:a4 withKey:@"DisabledCalendars"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 containsObject:v6] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (BOOL)expandedStateForTopLevelNodeWithUID:(id)a3
{
  v4 = a3;
  v5 = [(EKCalendarPreferences *)self _disabledOrCollapsedItemsForDelegateID:0 withKey:@"CollapsedTopLevelNodes"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 containsObject:v4] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (void)_updateStateForDisabledOrCollapsedItemWithUID:(id)a3 delegateID:(id)a4 state:(BOOL)a5 withKey:(id)a6 withNotification:(id)a7
{
  v9 = a5;
  v21 = a3;
  v12 = a4;
  v13 = a6;
  preferences = self->_preferences;
  v15 = a7;
  v16 = [(CalPreferences *)preferences getValueForPreference:v13 expectedClass:objc_opt_class()];
  v17 = [v16 mutableCopy];

  if (!v17)
  {
    v17 = [MEMORY[0x1E695DF90] dictionary];
  }

  v18 = [(EKCalendarPreferences *)self _keyForDelegateID:v12];
  v19 = [v17 objectForKey:v18];
  v20 = [v19 mutableCopy];

  if (!v20)
  {
    v20 = [MEMORY[0x1E695DF70] array];
  }

  [v17 setObject:v20 forKeyedSubscript:v18];
  if (v9)
  {
    [v20 removeObject:v21 inRange:{0, objc_msgSend(v20, "count")}];
  }

  else
  {
    [v20 addObject:v21];
  }

  [(CalPreferences *)self->_preferences setValueForPreference:v13 value:v17 notificationName:v15];
}

- (id)_disabledOrCollapsedItemsForDelegateID:(id)a3 withKey:(id)a4
{
  v6 = a4;
  v7 = [(EKCalendarPreferences *)self _keyForDelegateID:a3];
  v8 = [(CalPreferences *)self->_preferences getValueForPreference:v6 expectedClass:objc_opt_class()];

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

- (BOOL)_checkedStateForDisabledOrCollapsedItemWithUID:(id)a3 delegateID:(id)a4 withKey:(id)a5
{
  v7 = a3;
  v8 = [(EKCalendarPreferences *)self _disabledOrCollapsedItemsForDelegateID:a4 withKey:@"DisabledCalendars"];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 containsObject:v7] ^ 1;
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (id)_keyForDelegateID:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v3 = @"MainWindow";
  }

  return v3;
}

- (id)displayOrderForAccounts
{
  preferences = self->_preferences;
  v3 = objc_opt_class();

  return [(CalPreferences *)preferences getValueForPreference:@"AccountDisplayOrder" expectedClass:v3];
}

- (unint64_t)_displayOrderForSourceWithIdentifier:(id)a3 key:(id)a4
{
  v6 = a3;
  preferences = self->_preferences;
  v8 = a4;
  v9 = [(CalPreferences *)preferences getValueForPreference:v8 expectedClass:objc_opt_class()];

  if (v9)
  {
    v10 = [v9 indexOfObject:v6];
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

@end