id sub_D54(void *a1, int a2)
{
  if (a2)
  {
    v2 = @"SELECTED_";
  }

  else
  {
    v2 = &stru_8298;
  }

  v3 = a1;
  v4 = [NSString stringWithFormat:@"%@DEEP_BREATHING_BREATH_RATE", v2];
  v5 = [v3 substringFromIndex:{objc_msgSend(@"ID_BPM_", "length")}];

  v6 = [v5 integerValue];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:v4 value:&stru_8298 table:@"DeepBreathingBreathRate"];
  v9 = [NSString localizedStringWithFormat:v8, v6];

  return v9;
}

void deepBreathingBreathRateDidChange(uint64_t a1, void *a2)
{
  v2 = a2;
  _HKInitializeLogging();
  v3 = HKLogDeepBreathing;
  if (os_log_type_enabled(HKLogDeepBreathing, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Breath rate did change; reloading specifiers", v4, 2u);
  }

  [v2 reloadSpecifiers];
}

id sub_1668(void *a1)
{
  v11[0] = @"NONE_ID";
  v1 = a1;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"DEEP_BREATHING_HAPTIC_LEVEL_NONE" value:&stru_8298 table:@"DeepBreathingHapticLevel"];
  v12[0] = v3;
  v11[1] = @"MINIMAL_ID";
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"DEEP_BREATHING_HAPTIC_LEVEL_MINIMAL" value:&stru_8298 table:@"DeepBreathingHapticLevel"];
  v12[1] = v5;
  v11[2] = @"PROMINENT_ID";
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"DEEP_BREATHING_HAPTIC_LEVEL_PROMINENT" value:&stru_8298 table:@"DeepBreathingHapticLevel"];
  v12[2] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = [v8 objectForKey:v1];

  return v9;
}

void deepBreathingHapticLevelDidChange(uint64_t a1, void *a2)
{
  v2 = a2;
  _HKInitializeLogging();
  v3 = HKLogDeepBreathing;
  if (os_log_type_enabled(HKLogDeepBreathing, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Haptic level did change; reloading specifiers", v4, 2u);
  }

  [v2 reloadSpecifiers];
}

void deepBreathingPreferencesDidChange(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  _HKInitializeLogging();
  v5 = HKLogDeepBreathing;
  if (os_log_type_enabled(HKLogDeepBreathing, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = a3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Did receive %@; reloading specifiers", &v6, 0xCu);
  }

  [v4 reloadSpecifiers];
}

id sub_280C(void *a1, int a2)
{
  v3 = a1;
  v4 = +[_HKBehavior activePairedWatchHasSmartFitnessCoaching];
  v5 = @"DEEP_BREATHING_REMINDER_FREQUENCY";
  if (v4)
  {
    v5 = @"DEEP_BREATHING_REMINDERS_PER_DAY";
  }

  v6 = @"SELECTED_";
  if (!a2)
  {
    v6 = &stru_8298;
  }

  v7 = [NSString stringWithFormat:@"%@%@", v6, v5];
  v8 = +[_HKBehavior activePairedWatchHasSmartFitnessCoaching];
  v9 = [v3 integerValue];

  if (!v8)
  {
    v9 /= 3600;
  }

  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:v7 value:&stru_8298 table:@"DeepBreathingReminderFrequency"];
  v12 = [NSString localizedStringWithFormat:v11, v9];

  return v12;
}

void deepBreathingReminderFrequencyDidChange(uint64_t a1, void *a2)
{
  v2 = a2;
  _HKInitializeLogging();
  v3 = HKLogDeepBreathing;
  if (os_log_type_enabled(HKLogDeepBreathing, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Reminder frequency did change; reloading specifiers", v4, 2u);
  }

  [v2 reloadSpecifiers];
}