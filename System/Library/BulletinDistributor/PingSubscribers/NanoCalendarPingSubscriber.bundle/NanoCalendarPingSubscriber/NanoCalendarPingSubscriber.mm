void sub_104C(id a1)
{
  qword_10BD8 = objc_alloc_init(NanoCalendarPreferences);

  _objc_release_x1();
}

void sub_1FA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CUIKDateStrings overlayCalendarPickerDisplayNameForCalendarWithIdentifier:v3];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
}

void sub_2A80(id a1)
{
  qword_10BE8 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.mobilecal"];

  _objc_release_x1();
}

void sub_2B0C(id a1)
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

  qword_10BF8 = v2;

  _objc_release_x1();
}

void sub_2DBC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = ncs_log_alerts_ttl();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_retainBlock(v6);
    v14 = 134218242;
    *v15 = v8;
    *&v15[8] = 2112;
    *v16 = v5;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "pingSubscriber received forwardHandler: %p notification: %@", &v14, 0x16u);
  }

  if (v6)
  {
    v9 = +[NCSTravelAlertsManager sharedManager];
    v10 = [v9 ttlRemoteForwardingEnabledForWatch];

    v11 = [*(a1 + 32) _notificationIsTTL:v5];
    v12 = ncs_log_alerts_ttl();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 32) _descriptionForForwardType:v10 & 1 | ((v11 & 1) == 0)];
      v14 = 67109634;
      *v15 = v10;
      *&v15[4] = 1024;
      *&v15[6] = v11 & 1;
      *v16 = 2114;
      *&v16[2] = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "pingSubscriber forwardHandler() - remoteTTLForwardingEnabled: %d, bulletinIsTTL: %d -> action: %{public}@", &v14, 0x18u);
    }

    (*(v6 + 2))(v6, v10 & 1 | ((v11 & 1) == 0));
  }
}

id ncs_log_error()
{
  if (qword_10C10 != -1)
  {
    sub_5430();
  }

  v1 = qword_10C08;

  return v1;
}

void sub_3134(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "error");
  v2 = qword_10C08;
  qword_10C08 = v1;

  v3 = qword_10C08;
  if (os_log_type_enabled(qword_10C08, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> error [Oct 22 2025 22:40:05]", v4, 2u);
  }
}

id ncs_log_lifecycle()
{
  if (qword_10C20 != -1)
  {
    sub_5444();
  }

  v1 = qword_10C18;

  return v1;
}

void sub_31FC(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "lifecycle");
  v2 = qword_10C18;
  qword_10C18 = v1;

  v3 = qword_10C18;
  if (os_log_type_enabled(qword_10C18, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> lifecycle [Oct 22 2025 22:40:05]", v4, 2u);
  }
}

id ncs_log_snapshot()
{
  if (qword_10C30 != -1)
  {
    sub_5458();
  }

  v1 = qword_10C28;

  return v1;
}

void sub_32C4(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "snapshot");
  v2 = qword_10C28;
  qword_10C28 = v1;

  v3 = qword_10C28;
  if (os_log_type_enabled(qword_10C28, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> snapshot [Oct 22 2025 22:40:05]", v4, 2u);
  }
}

id ncs_log_snapshot_creation()
{
  if (qword_10C40 != -1)
  {
    sub_546C();
  }

  v1 = qword_10C38;

  return v1;
}

void sub_338C(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "snapshot_creation");
  v2 = qword_10C38;
  qword_10C38 = v1;

  v3 = qword_10C38;
  if (os_log_type_enabled(qword_10C38, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> snapshot_creation [Oct 22 2025 22:40:05]", v4, 2u);
  }
}

id ncs_log_snapshot_vending()
{
  if (qword_10C50 != -1)
  {
    sub_5480();
  }

  v1 = qword_10C48;

  return v1;
}

void sub_3454(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "snapshot_vending");
  v2 = qword_10C48;
  qword_10C48 = v1;

  v3 = qword_10C48;
  if (os_log_type_enabled(qword_10C48, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> snapshot_vending [Oct 22 2025 22:40:05]", v4, 2u);
  }
}

id ncs_log_selected_calendars()
{
  if (qword_10C60 != -1)
  {
    sub_5494();
  }

  v1 = qword_10C58;

  return v1;
}

void sub_351C(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "selected_calendars");
  v2 = qword_10C58;
  qword_10C58 = v1;

  v3 = qword_10C58;
  if (os_log_type_enabled(qword_10C58, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> selected_calendars [Oct 22 2025 22:40:05]", v4, 2u);
  }
}

id ncs_log_data_loading()
{
  if (qword_10C70 != -1)
  {
    sub_54A8();
  }

  v1 = qword_10C68;

  return v1;
}

void sub_35E4(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "data_loading");
  v2 = qword_10C68;
  qword_10C68 = v1;

  v3 = qword_10C68;
  if (os_log_type_enabled(qword_10C68, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> data_loading [Oct 22 2025 22:40:05]", v4, 2u);
  }
}

id ncs_log_data_loading_verbose()
{
  if (qword_10C80 != -1)
  {
    sub_54BC();
  }

  v1 = qword_10C78;

  return v1;
}

void sub_36AC(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "data_loading_verbose");
  v2 = qword_10C78;
  qword_10C78 = v1;

  v3 = qword_10C78;
  if (os_log_type_enabled(qword_10C78, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> data_loading_verbose [Oct 22 2025 22:40:05]", v4, 2u);
  }
}

id ncs_log_data_display()
{
  if (qword_10C90 != -1)
  {
    sub_54D0();
  }

  v1 = qword_10C88;

  return v1;
}

void sub_3774(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "data_display");
  v2 = qword_10C88;
  qword_10C88 = v1;

  v3 = qword_10C88;
  if (os_log_type_enabled(qword_10C88, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> data_display [Oct 22 2025 22:40:05]", v4, 2u);
  }
}

id ncs_log_always_on_display()
{
  if (qword_10CA0 != -1)
  {
    sub_54E4();
  }

  v1 = qword_10C98;

  return v1;
}

void sub_383C(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "always_on_display");
  v2 = qword_10C98;
  qword_10C98 = v1;

  v3 = qword_10C98;
  if (os_log_type_enabled(qword_10C98, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> always_on_display [Oct 22 2025 22:40:05]", v4, 2u);
  }
}

id ncs_log_user_interaction()
{
  if (qword_10CB0 != -1)
  {
    sub_54F8();
  }

  v1 = qword_10CA8;

  return v1;
}

void sub_3904(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "user_interaction");
  v2 = qword_10CA8;
  qword_10CA8 = v1;

  v3 = qword_10CA8;
  if (os_log_type_enabled(qword_10CA8, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> user_interaction [Oct 22 2025 22:40:05]", v4, 2u);
  }
}

id ncs_log_user_data_change()
{
  if (qword_10CC0 != -1)
  {
    sub_550C();
  }

  v1 = qword_10CB8;

  return v1;
}

void sub_39CC(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "user_data_change");
  v2 = qword_10CB8;
  qword_10CB8 = v1;

  v3 = qword_10CB8;
  if (os_log_type_enabled(qword_10CB8, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> user_data_change [Oct 22 2025 22:40:05]", v4, 2u);
  }
}

id ncs_log_icon_generation()
{
  if (qword_10CD0 != -1)
  {
    sub_5520();
  }

  v1 = qword_10CC8;

  return v1;
}

void sub_3A94(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "icon_generation");
  v2 = qword_10CC8;
  qword_10CC8 = v1;

  v3 = qword_10CC8;
  if (os_log_type_enabled(qword_10CC8, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> icon_generation [Oct 22 2025 22:40:05]", v4, 2u);
  }
}

id ncs_log_metrics()
{
  if (qword_10CE0 != -1)
  {
    sub_5534();
  }

  v1 = qword_10CD8;

  return v1;
}

void sub_3B5C(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "metrics");
  v2 = qword_10CD8;
  qword_10CD8 = v1;

  v3 = qword_10CD8;
  if (os_log_type_enabled(qword_10CD8, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> metrics [Oct 22 2025 22:40:05]", v4, 2u);
  }
}

id ncs_log_utility()
{
  if (qword_10CF0 != -1)
  {
    sub_5548();
  }

  v1 = qword_10CE8;

  return v1;
}

void sub_3C24(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "utility");
  v2 = qword_10CE8;
  qword_10CE8 = v1;

  v3 = qword_10CE8;
  if (os_log_type_enabled(qword_10CE8, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> utility [Oct 22 2025 22:40:05]", v4, 2u);
  }
}

id ncs_log_settings()
{
  if (qword_10D00 != -1)
  {
    sub_555C();
  }

  v1 = qword_10CF8;

  return v1;
}

void sub_3CEC(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "settings");
  v2 = qword_10CF8;
  qword_10CF8 = v1;

  v3 = qword_10CF8;
  if (os_log_type_enabled(qword_10CF8, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> settings [Oct 22 2025 22:40:05]", v4, 2u);
  }
}

id ncs_log_status_bar()
{
  if (qword_10D10 != -1)
  {
    sub_5570();
  }

  v1 = qword_10D08;

  return v1;
}

void sub_3DB4(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "status_bar");
  v2 = qword_10D08;
  qword_10D08 = v1;

  v3 = qword_10D08;
  if (os_log_type_enabled(qword_10D08, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> status_bar [Oct 22 2025 22:40:05]", v4, 2u);
  }
}

id ncs_log_complication()
{
  if (qword_10D20 != -1)
  {
    sub_5584();
  }

  v1 = qword_10D18;

  return v1;
}

void sub_3E7C(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "complication");
  v2 = qword_10D18;
  qword_10D18 = v1;

  v3 = qword_10D18;
  if (os_log_type_enabled(qword_10D18, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> complication [Oct 22 2025 22:40:05]", v4, 2u);
  }
}

id ncs_log_event_creation()
{
  if (qword_10D30 != -1)
  {
    sub_5598();
  }

  v1 = qword_10D28;

  return v1;
}

void sub_3F44(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "event_creation");
  v2 = qword_10D28;
  qword_10D28 = v1;

  v3 = qword_10D28;
  if (os_log_type_enabled(qword_10D28, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> event_creation [Oct 22 2025 22:40:05]", v4, 2u);
  }
}

id ncs_log_alerts_ttl()
{
  if (qword_10D40 != -1)
  {
    sub_55AC();
  }

  v1 = qword_10D38;

  return v1;
}

void sub_400C(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "alerts_ttl");
  v2 = qword_10D38;
  qword_10D38 = v1;

  v3 = qword_10D38;
  if (os_log_type_enabled(qword_10D38, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> alerts_ttl [Oct 22 2025 22:40:05]", v4, 2u);
  }
}

id ncs_log_bulletin_ui()
{
  if (qword_10D50 != -1)
  {
    sub_55C0();
  }

  v1 = qword_10D48;

  return v1;
}

void sub_40D4(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "bulletin_ui");
  v2 = qword_10D48;
  qword_10D48 = v1;

  v3 = qword_10D48;
  if (os_log_type_enabled(qword_10D48, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> bulletin_ui [Oct 22 2025 22:40:05]", v4, 2u);
  }
}

id ncs_log_reminders_snapshot()
{
  if (qword_10D60 != -1)
  {
    sub_55D4();
  }

  v1 = qword_10D58;

  return v1;
}

void sub_419C(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "reminders_snapshot");
  v2 = qword_10D58;
  qword_10D58 = v1;

  v3 = qword_10D58;
  if (os_log_type_enabled(qword_10D58, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> reminders_snapshot [Oct 22 2025 22:40:05]", v4, 2u);
  }
}

id ncs_log_reminders_demo()
{
  if (qword_10D70 != -1)
  {
    sub_55E8();
  }

  v1 = qword_10D68;

  return v1;
}

void sub_4264(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "reminders_demo");
  v2 = qword_10D68;
  qword_10D68 = v1;

  v3 = qword_10D68;
  if (os_log_type_enabled(qword_10D68, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> reminders_demo [Oct 22 2025 22:40:05]", v4, 2u);
  }
}

id ncs_log_debugging()
{
  if (qword_10D80 != -1)
  {
    sub_55FC();
  }

  v1 = qword_10D78;

  return v1;
}

void sub_432C(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "debugging");
  v2 = qword_10D78;
  qword_10D78 = v1;

  v3 = qword_10D78;
  if (os_log_type_enabled(qword_10D78, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> debugging [Oct 22 2025 22:40:05]", v4, 2u);
  }
}

uint64_t _actsLikeCustomerBuild()
{
  if (qword_10D90 != -1)
  {
    sub_5610();
  }

  return byte_10D88;
}

void sub_43E8(id a1)
{
  v1 = +[NanoCalendarPreferences appDefaults];
  byte_10D88 = [v1 BOOLForKey:@"ActsLikeCustomerBuild"];
}

uint64_t _isInternalBuild()
{
  if (MGGetBoolAnswer())
  {
    if (qword_10D90 != -1)
    {
      sub_5610();
    }

    v0 = byte_10D88 ^ 1;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t NCSLoggingConfidentionInformationAllowed()
{
  if (qword_10D98 != -1)
  {
    sub_5624();
  }

  return byte_10DA0;
}

id NanoCalLogStringForDateAndTime(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (qword_10DB0 != -1)
    {
      sub_5638();
    }

    v2 = [qword_10DA8 stringFromDate:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_4EB4(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_10DA8;
  qword_10DA8 = v1;

  v3 = qword_10DA8;

  [v3 setDateFormat:@"yyyy-MM-dd HH:mm:ss EEE"];
}

id sub_4FA4(uint64_t a1)
{
  v5[0] = @"mirroringCompanion";
  v2 = [NSNumber numberWithBool:*(a1 + 40)];
  v5[1] = @"overlayCalendar";
  v6[0] = v2;
  v6[1] = *(a1 + 32);
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

void sub_50AC(id a1)
{
  qword_10DB8 = objc_alloc_init(NCSTravelAlertsManager);

  _objc_release_x1();
}

void sub_5330(uint64_t a1, void *a2, NSObject *a3)
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

void sub_5660(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "_ttlEnabled enabledNumber: %{public}@", &v2, 0xCu);
}