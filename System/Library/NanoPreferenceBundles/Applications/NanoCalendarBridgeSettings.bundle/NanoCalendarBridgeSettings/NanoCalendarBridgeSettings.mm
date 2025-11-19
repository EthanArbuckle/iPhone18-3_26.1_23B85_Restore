id ncs_log_error()
{
  if (qword_15388 != -1)
  {
    sub_7F04();
  }

  v1 = qword_15380;

  return v1;
}

void sub_1214(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "error");
  v2 = qword_15380;
  qword_15380 = v1;

  v3 = qword_15380;
  if (os_log_type_enabled(qword_15380, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> error [Oct 22 2025 22:39:41]", v4, 2u);
  }
}

id ncs_log_lifecycle()
{
  if (qword_15398 != -1)
  {
    sub_7F18();
  }

  v1 = qword_15390;

  return v1;
}

void sub_12DC(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "lifecycle");
  v2 = qword_15390;
  qword_15390 = v1;

  v3 = qword_15390;
  if (os_log_type_enabled(qword_15390, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> lifecycle [Oct 22 2025 22:39:41]", v4, 2u);
  }
}

id ncs_log_snapshot()
{
  if (qword_153A8 != -1)
  {
    sub_7F2C();
  }

  v1 = qword_153A0;

  return v1;
}

void sub_13A4(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "snapshot");
  v2 = qword_153A0;
  qword_153A0 = v1;

  v3 = qword_153A0;
  if (os_log_type_enabled(qword_153A0, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> snapshot [Oct 22 2025 22:39:41]", v4, 2u);
  }
}

id ncs_log_snapshot_creation()
{
  if (qword_153B8 != -1)
  {
    sub_7F40();
  }

  v1 = qword_153B0;

  return v1;
}

void sub_146C(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "snapshot_creation");
  v2 = qword_153B0;
  qword_153B0 = v1;

  v3 = qword_153B0;
  if (os_log_type_enabled(qword_153B0, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> snapshot_creation [Oct 22 2025 22:39:41]", v4, 2u);
  }
}

id ncs_log_snapshot_vending()
{
  if (qword_153C8 != -1)
  {
    sub_7F54();
  }

  v1 = qword_153C0;

  return v1;
}

void sub_1534(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "snapshot_vending");
  v2 = qword_153C0;
  qword_153C0 = v1;

  v3 = qword_153C0;
  if (os_log_type_enabled(qword_153C0, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> snapshot_vending [Oct 22 2025 22:39:41]", v4, 2u);
  }
}

id ncs_log_selected_calendars()
{
  if (qword_153D8 != -1)
  {
    sub_7F68();
  }

  v1 = qword_153D0;

  return v1;
}

void sub_15FC(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "selected_calendars");
  v2 = qword_153D0;
  qword_153D0 = v1;

  v3 = qword_153D0;
  if (os_log_type_enabled(qword_153D0, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> selected_calendars [Oct 22 2025 22:39:41]", v4, 2u);
  }
}

id ncs_log_data_loading()
{
  if (qword_153E8 != -1)
  {
    sub_7F7C();
  }

  v1 = qword_153E0;

  return v1;
}

void sub_16C4(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "data_loading");
  v2 = qword_153E0;
  qword_153E0 = v1;

  v3 = qword_153E0;
  if (os_log_type_enabled(qword_153E0, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> data_loading [Oct 22 2025 22:39:41]", v4, 2u);
  }
}

id ncs_log_data_loading_verbose()
{
  if (qword_153F8 != -1)
  {
    sub_7F90();
  }

  v1 = qword_153F0;

  return v1;
}

void sub_178C(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "data_loading_verbose");
  v2 = qword_153F0;
  qword_153F0 = v1;

  v3 = qword_153F0;
  if (os_log_type_enabled(qword_153F0, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> data_loading_verbose [Oct 22 2025 22:39:41]", v4, 2u);
  }
}

id ncs_log_data_display()
{
  if (qword_15408 != -1)
  {
    sub_7FA4();
  }

  v1 = qword_15400;

  return v1;
}

void sub_1854(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "data_display");
  v2 = qword_15400;
  qword_15400 = v1;

  v3 = qword_15400;
  if (os_log_type_enabled(qword_15400, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> data_display [Oct 22 2025 22:39:41]", v4, 2u);
  }
}

id ncs_log_always_on_display()
{
  if (qword_15418 != -1)
  {
    sub_7FB8();
  }

  v1 = qword_15410;

  return v1;
}

void sub_191C(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "always_on_display");
  v2 = qword_15410;
  qword_15410 = v1;

  v3 = qword_15410;
  if (os_log_type_enabled(qword_15410, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> always_on_display [Oct 22 2025 22:39:41]", v4, 2u);
  }
}

id ncs_log_user_interaction()
{
  if (qword_15428 != -1)
  {
    sub_7FCC();
  }

  v1 = qword_15420;

  return v1;
}

void sub_19E4(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "user_interaction");
  v2 = qword_15420;
  qword_15420 = v1;

  v3 = qword_15420;
  if (os_log_type_enabled(qword_15420, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> user_interaction [Oct 22 2025 22:39:41]", v4, 2u);
  }
}

id ncs_log_user_data_change()
{
  if (qword_15438 != -1)
  {
    sub_7FE0();
  }

  v1 = qword_15430;

  return v1;
}

void sub_1AAC(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "user_data_change");
  v2 = qword_15430;
  qword_15430 = v1;

  v3 = qword_15430;
  if (os_log_type_enabled(qword_15430, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> user_data_change [Oct 22 2025 22:39:41]", v4, 2u);
  }
}

id ncs_log_icon_generation()
{
  if (qword_15448 != -1)
  {
    sub_7FF4();
  }

  v1 = qword_15440;

  return v1;
}

void sub_1B74(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "icon_generation");
  v2 = qword_15440;
  qword_15440 = v1;

  v3 = qword_15440;
  if (os_log_type_enabled(qword_15440, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> icon_generation [Oct 22 2025 22:39:41]", v4, 2u);
  }
}

id ncs_log_metrics()
{
  if (qword_15458 != -1)
  {
    sub_8008();
  }

  v1 = qword_15450;

  return v1;
}

void sub_1C3C(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "metrics");
  v2 = qword_15450;
  qword_15450 = v1;

  v3 = qword_15450;
  if (os_log_type_enabled(qword_15450, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> metrics [Oct 22 2025 22:39:41]", v4, 2u);
  }
}

id ncs_log_utility()
{
  if (qword_15468 != -1)
  {
    sub_801C();
  }

  v1 = qword_15460;

  return v1;
}

void sub_1D04(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "utility");
  v2 = qword_15460;
  qword_15460 = v1;

  v3 = qword_15460;
  if (os_log_type_enabled(qword_15460, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> utility [Oct 22 2025 22:39:41]", v4, 2u);
  }
}

id ncs_log_settings()
{
  if (qword_15478 != -1)
  {
    sub_8030();
  }

  v1 = qword_15470;

  return v1;
}

void sub_1DCC(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "settings");
  v2 = qword_15470;
  qword_15470 = v1;

  v3 = qword_15470;
  if (os_log_type_enabled(qword_15470, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> settings [Oct 22 2025 22:39:41]", v4, 2u);
  }
}

id ncs_log_status_bar()
{
  if (qword_15488 != -1)
  {
    sub_8044();
  }

  v1 = qword_15480;

  return v1;
}

void sub_1E94(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "status_bar");
  v2 = qword_15480;
  qword_15480 = v1;

  v3 = qword_15480;
  if (os_log_type_enabled(qword_15480, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> status_bar [Oct 22 2025 22:39:41]", v4, 2u);
  }
}

id ncs_log_complication()
{
  if (qword_15498 != -1)
  {
    sub_8058();
  }

  v1 = qword_15490;

  return v1;
}

void sub_1F5C(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "complication");
  v2 = qword_15490;
  qword_15490 = v1;

  v3 = qword_15490;
  if (os_log_type_enabled(qword_15490, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> complication [Oct 22 2025 22:39:41]", v4, 2u);
  }
}

id ncs_log_event_creation()
{
  if (qword_154A8 != -1)
  {
    sub_806C();
  }

  v1 = qword_154A0;

  return v1;
}

void sub_2024(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "event_creation");
  v2 = qword_154A0;
  qword_154A0 = v1;

  v3 = qword_154A0;
  if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> event_creation [Oct 22 2025 22:39:41]", v4, 2u);
  }
}

id ncs_log_alerts_ttl()
{
  if (qword_154B8 != -1)
  {
    sub_8080();
  }

  v1 = qword_154B0;

  return v1;
}

void sub_20EC(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "alerts_ttl");
  v2 = qword_154B0;
  qword_154B0 = v1;

  v3 = qword_154B0;
  if (os_log_type_enabled(qword_154B0, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> alerts_ttl [Oct 22 2025 22:39:41]", v4, 2u);
  }
}

id ncs_log_bulletin_ui()
{
  if (qword_154C8 != -1)
  {
    sub_8094();
  }

  v1 = qword_154C0;

  return v1;
}

void sub_21B4(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "bulletin_ui");
  v2 = qword_154C0;
  qword_154C0 = v1;

  v3 = qword_154C0;
  if (os_log_type_enabled(qword_154C0, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> bulletin_ui [Oct 22 2025 22:39:41]", v4, 2u);
  }
}

id ncs_log_reminders_snapshot()
{
  if (qword_154D8 != -1)
  {
    sub_80A8();
  }

  v1 = qword_154D0;

  return v1;
}

void sub_227C(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "reminders_snapshot");
  v2 = qword_154D0;
  qword_154D0 = v1;

  v3 = qword_154D0;
  if (os_log_type_enabled(qword_154D0, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> reminders_snapshot [Oct 22 2025 22:39:41]", v4, 2u);
  }
}

id ncs_log_reminders_demo()
{
  if (qword_154E8 != -1)
  {
    sub_80BC();
  }

  v1 = qword_154E0;

  return v1;
}

void sub_2344(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "reminders_demo");
  v2 = qword_154E0;
  qword_154E0 = v1;

  v3 = qword_154E0;
  if (os_log_type_enabled(qword_154E0, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> reminders_demo [Oct 22 2025 22:39:41]", v4, 2u);
  }
}

id ncs_log_debugging()
{
  if (qword_154F8 != -1)
  {
    sub_80D0();
  }

  v1 = qword_154F0;

  return v1;
}

void sub_240C(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "debugging");
  v2 = qword_154F0;
  qword_154F0 = v1;

  v3 = qword_154F0;
  if (os_log_type_enabled(qword_154F0, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> debugging [Oct 22 2025 22:39:41]", v4, 2u);
  }
}

uint64_t _actsLikeCustomerBuild()
{
  if (qword_15508 != -1)
  {
    sub_80E4();
  }

  return byte_15500;
}

void sub_24C8(id a1)
{
  v1 = +[NanoCalendarPreferences appDefaults];
  byte_15500 = [v1 BOOLForKey:@"ActsLikeCustomerBuild"];
}

uint64_t _isInternalBuild()
{
  if (MGGetBoolAnswer())
  {
    if (qword_15508 != -1)
    {
      sub_80E4();
    }

    v0 = byte_15500 ^ 1;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t NCSLoggingConfidentionInformationAllowed()
{
  if (qword_15510 != -1)
  {
    sub_80F8();
  }

  return byte_15518;
}

id NanoCalLogStringForDateAndTime(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (qword_15528 != -1)
    {
      sub_810C();
    }

    v2 = [qword_15520 stringFromDate:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_2F94(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_15520;
  qword_15520 = v1;

  v3 = qword_15520;

  [v3 setDateFormat:@"yyyy-MM-dd HH:mm:ss EEE"];
}

void sub_3044(id a1)
{
  qword_15530 = objc_alloc_init(NanoCalendarPreferences);

  _objc_release_x1();
}

void sub_3FA0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CUIKDateStrings overlayCalendarPickerDisplayNameForCalendarWithIdentifier:v3];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
}

void sub_4A78(id a1)
{
  qword_15540 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.mobilecal"];

  _objc_release_x1();
}

void sub_4B04(id a1)
{
  MainBundle = CFBundleGetMainBundle();
  if ([(__CFString *)CFBundleGetIdentifier(MainBundle) isEqualToString:@"com.apple.NanoCalendar"])
  {
    v2 = +[NSUserDefaults standardUserDefaults];
  }

  else
  {
    v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.NanoCalendar"];
  }

  qword_15550 = v2;

  _objc_release_x1();
}

id sub_5A34(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 subsectionID];
  v4 = [v2 containsObject:v3];

  return v4;
}

id sub_74F8(uint64_t a1)
{
  v5[0] = @"mirroringCompanion";
  v2 = [NSNumber numberWithBool:*(a1 + 40)];
  v5[1] = @"overlayCalendar";
  v6[0] = v2;
  v6[1] = *(a1 + 32);
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

void sub_8134(uint64_t a1, void *a2, NSObject *a3)
{
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [a2 nanoPrivacyAwareDescriptionForCalendars];
  v9 = 138412802;
  v10 = a1;
  v11 = 2048;
  v12 = v7;
  v13 = 2112;
  v14 = v8;
  _os_log_debug_impl(&dword_0, a3, OS_LOG_TYPE_DEBUG, "<%@: %p> selectedCalendars: %@", &v9, 0x20u);
}