id sub_100001F8C()
{
  v0 = [[NSArray alloc] initWithObjects:{UIContentSizeCategoryExtraSmall, UIContentSizeCategorySmall, UIContentSizeCategoryMedium, UIContentSizeCategoryLarge, UIContentSizeCategoryExtraLarge, UIContentSizeCategoryExtraExtraLarge, UIContentSizeCategoryExtraExtraExtraLarge, UIContentSizeCategoryAccessibilityMedium, UIContentSizeCategoryAccessibilityLarge, UIContentSizeCategoryAccessibilityExtraLarge, UIContentSizeCategoryAccessibilityExtraExtraLarge, UIContentSizeCategoryAccessibilityExtraExtraExtraLarge, 0}];

  return v0;
}

id sub_10000451C()
{
  v0 = +[AXSettings sharedInstance];
  v1 = [v0 callAudioRoutingAutoAnswerEnabled];

  return v1;
}

uint64_t _AXSAssistiveTouchSetEnabledShortcuts(int a1)
{
  v2 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "_AXSAssistiveTouchSetEnabledShortcuts: %d", v4, 8u);
  }

  _AXSAssistiveTouchSetEnabled();
  result = _AXSAssistiveTouchSetUIEnabled();
  if (a1)
  {
    return _AXSHomeButtonSetRestingUnlock();
  }

  return result;
}

id sub_100004B80()
{
  v0 = +[AXSettings sharedInstance];
  v1 = [v0 touchAccommodationsEnabled];

  return v1;
}

void sub_100004CD0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id sub_1000066D8()
{
  v0 = +[HUComfortSoundsSettings sharedInstance];
  v1 = [v0 timerEnabled];

  return v1;
}

void sub_100007B24(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = [v3 localizedSourceDescription];
  v4 = [*(a1 + 32) objectForKeyedSubscript:?];

  if (!v4)
  {
    v5 = objc_opt_new();
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v12];
  }

  v6 = [AXSwitchControlSwitch alloc];
  v7 = [v3 name];
  v8 = [v3 name];
  v9 = [(AXSwitchControlSwitch *)v6 initWithIdentifier:v7 displayString:v8];

  v10 = [v3 source];

  [(AXSwitchControlSwitch *)v9 setSource:v10];
  v11 = [*(a1 + 32) objectForKeyedSubscript:v12];
  [v11 addObject:v9];
}

id sub_100007E9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) switches];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100007F58;
  v8[3] = &unk_1000184A0;
  v9 = v3;
  v5 = v3;
  v6 = [v4 ax_containsObjectUsingBlock:v8];

  return v6;
}

id sub_100007F58(uint64_t a1, void *a2)
{
  v3 = [a2 displayString];
  v4 = [*(a1 + 32) name];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

void sub_10000D80C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unknown state for intent: %{public}@", &v2, 0xCu);
}

void sub_10000D8EC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "AXIntentHandler: Unsupported intent: %@", &v2, 0xCu);
}

void sub_10000D964(void *a1, NSObject *a2)
{
  v4 = [a1 identifier];
  v5 = 138412546;
  v6 = v4;
  v7 = 2112;
  v8 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "SetSoundDetectorIntentHandler: Recieved an intent to toggle/set the state on a custom detector, but no detector was found for identifier: %@. Parameter: %@", &v5, 0x16u);
}