void sub_1EC4(id a1)
{
  qword_27F10 = objc_alloc_init(NanoCalendarPreferences);

  _objc_release_x1();
}

void sub_2E20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CUIKDateStrings overlayCalendarPickerDisplayNameForCalendarWithIdentifier:v3];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
}

void sub_38F8(id a1)
{
  qword_27F20 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.mobilecal"];

  _objc_release_x1();
}

void sub_3984(id a1)
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

  qword_27F30 = v2;

  _objc_release_x1();
}

id OverlayCalendarLocaleID()
{
  v0 = +[NanoCalendarPreferences sharedPreferences];
  v1 = [v0 overlayCalendarID];

  v2 = [IntlUtility localeForCalendarID:v1];
  v3 = [v2 localeIdentifier];

  return v3;
}

id ncs_log_error()
{
  if (qword_27F48 != -1)
  {
    sub_12F48();
  }

  v1 = qword_27F40;

  return v1;
}

void sub_4BC0(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "error");
  v2 = qword_27F40;
  qword_27F40 = v1;

  v3 = qword_27F40;
  if (os_log_type_enabled(qword_27F40, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> error [Oct 22 2025 22:39:33]", v4, 2u);
  }
}

id ncs_log_lifecycle()
{
  if (qword_27F58 != -1)
  {
    sub_12F5C();
  }

  v1 = qword_27F50;

  return v1;
}

void sub_4C88(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "lifecycle");
  v2 = qword_27F50;
  qword_27F50 = v1;

  v3 = qword_27F50;
  if (os_log_type_enabled(qword_27F50, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> lifecycle [Oct 22 2025 22:39:33]", v4, 2u);
  }
}

id ncs_log_snapshot()
{
  if (qword_27F68 != -1)
  {
    sub_12F70();
  }

  v1 = qword_27F60;

  return v1;
}

void sub_4D50(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "snapshot");
  v2 = qword_27F60;
  qword_27F60 = v1;

  v3 = qword_27F60;
  if (os_log_type_enabled(qword_27F60, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> snapshot [Oct 22 2025 22:39:33]", v4, 2u);
  }
}

id ncs_log_snapshot_creation()
{
  if (qword_27F78 != -1)
  {
    sub_12F84();
  }

  v1 = qword_27F70;

  return v1;
}

void sub_4E18(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "snapshot_creation");
  v2 = qword_27F70;
  qword_27F70 = v1;

  v3 = qword_27F70;
  if (os_log_type_enabled(qword_27F70, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> snapshot_creation [Oct 22 2025 22:39:33]", v4, 2u);
  }
}

id ncs_log_snapshot_vending()
{
  if (qword_27F88 != -1)
  {
    sub_12F98();
  }

  v1 = qword_27F80;

  return v1;
}

void sub_4EE0(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "snapshot_vending");
  v2 = qword_27F80;
  qword_27F80 = v1;

  v3 = qword_27F80;
  if (os_log_type_enabled(qword_27F80, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> snapshot_vending [Oct 22 2025 22:39:33]", v4, 2u);
  }
}

id ncs_log_selected_calendars()
{
  if (qword_27F98 != -1)
  {
    sub_12FAC();
  }

  v1 = qword_27F90;

  return v1;
}

void sub_4FA8(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "selected_calendars");
  v2 = qword_27F90;
  qword_27F90 = v1;

  v3 = qword_27F90;
  if (os_log_type_enabled(qword_27F90, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> selected_calendars [Oct 22 2025 22:39:33]", v4, 2u);
  }
}

id ncs_log_data_loading()
{
  if (qword_27FA8 != -1)
  {
    sub_12FC0();
  }

  v1 = qword_27FA0;

  return v1;
}

void sub_5070(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "data_loading");
  v2 = qword_27FA0;
  qword_27FA0 = v1;

  v3 = qword_27FA0;
  if (os_log_type_enabled(qword_27FA0, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> data_loading [Oct 22 2025 22:39:33]", v4, 2u);
  }
}

id ncs_log_data_loading_verbose()
{
  if (qword_27FB8 != -1)
  {
    sub_12FD4();
  }

  v1 = qword_27FB0;

  return v1;
}

void sub_5138(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "data_loading_verbose");
  v2 = qword_27FB0;
  qword_27FB0 = v1;

  v3 = qword_27FB0;
  if (os_log_type_enabled(qword_27FB0, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> data_loading_verbose [Oct 22 2025 22:39:33]", v4, 2u);
  }
}

id ncs_log_data_display()
{
  if (qword_27FC8 != -1)
  {
    sub_12FE8();
  }

  v1 = qword_27FC0;

  return v1;
}

void sub_5200(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "data_display");
  v2 = qword_27FC0;
  qword_27FC0 = v1;

  v3 = qword_27FC0;
  if (os_log_type_enabled(qword_27FC0, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> data_display [Oct 22 2025 22:39:33]", v4, 2u);
  }
}

id ncs_log_always_on_display()
{
  if (qword_27FD8 != -1)
  {
    sub_12FFC();
  }

  v1 = qword_27FD0;

  return v1;
}

void sub_52C8(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "always_on_display");
  v2 = qword_27FD0;
  qword_27FD0 = v1;

  v3 = qword_27FD0;
  if (os_log_type_enabled(qword_27FD0, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> always_on_display [Oct 22 2025 22:39:33]", v4, 2u);
  }
}

id ncs_log_user_interaction()
{
  if (qword_27FE8 != -1)
  {
    sub_13010();
  }

  v1 = qword_27FE0;

  return v1;
}

void sub_5390(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "user_interaction");
  v2 = qword_27FE0;
  qword_27FE0 = v1;

  v3 = qword_27FE0;
  if (os_log_type_enabled(qword_27FE0, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> user_interaction [Oct 22 2025 22:39:33]", v4, 2u);
  }
}

id ncs_log_user_data_change()
{
  if (qword_27FF8 != -1)
  {
    sub_13024();
  }

  v1 = qword_27FF0;

  return v1;
}

void sub_5458(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "user_data_change");
  v2 = qword_27FF0;
  qword_27FF0 = v1;

  v3 = qword_27FF0;
  if (os_log_type_enabled(qword_27FF0, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> user_data_change [Oct 22 2025 22:39:33]", v4, 2u);
  }
}

id ncs_log_icon_generation()
{
  if (qword_28008 != -1)
  {
    sub_13038();
  }

  v1 = qword_28000;

  return v1;
}

void sub_5520(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "icon_generation");
  v2 = qword_28000;
  qword_28000 = v1;

  v3 = qword_28000;
  if (os_log_type_enabled(qword_28000, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> icon_generation [Oct 22 2025 22:39:33]", v4, 2u);
  }
}

id ncs_log_metrics()
{
  if (qword_28018 != -1)
  {
    sub_1304C();
  }

  v1 = qword_28010;

  return v1;
}

void sub_55E8(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "metrics");
  v2 = qword_28010;
  qword_28010 = v1;

  v3 = qword_28010;
  if (os_log_type_enabled(qword_28010, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> metrics [Oct 22 2025 22:39:33]", v4, 2u);
  }
}

id ncs_log_utility()
{
  if (qword_28028 != -1)
  {
    sub_13060();
  }

  v1 = qword_28020;

  return v1;
}

void sub_56B0(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "utility");
  v2 = qword_28020;
  qword_28020 = v1;

  v3 = qword_28020;
  if (os_log_type_enabled(qword_28020, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> utility [Oct 22 2025 22:39:33]", v4, 2u);
  }
}

id ncs_log_settings()
{
  if (qword_28038 != -1)
  {
    sub_13074();
  }

  v1 = qword_28030;

  return v1;
}

void sub_5778(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "settings");
  v2 = qword_28030;
  qword_28030 = v1;

  v3 = qword_28030;
  if (os_log_type_enabled(qword_28030, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> settings [Oct 22 2025 22:39:33]", v4, 2u);
  }
}

id ncs_log_status_bar()
{
  if (qword_28048 != -1)
  {
    sub_13088();
  }

  v1 = qword_28040;

  return v1;
}

void sub_5840(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "status_bar");
  v2 = qword_28040;
  qword_28040 = v1;

  v3 = qword_28040;
  if (os_log_type_enabled(qword_28040, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> status_bar [Oct 22 2025 22:39:33]", v4, 2u);
  }
}

id ncs_log_complication()
{
  if (qword_28058 != -1)
  {
    sub_1309C();
  }

  v1 = qword_28050;

  return v1;
}

void sub_5908(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "complication");
  v2 = qword_28050;
  qword_28050 = v1;

  v3 = qword_28050;
  if (os_log_type_enabled(qword_28050, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> complication [Oct 22 2025 22:39:33]", v4, 2u);
  }
}

id ncs_log_event_creation()
{
  if (qword_28068 != -1)
  {
    sub_130B0();
  }

  v1 = qword_28060;

  return v1;
}

void sub_59D0(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "event_creation");
  v2 = qword_28060;
  qword_28060 = v1;

  v3 = qword_28060;
  if (os_log_type_enabled(qword_28060, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> event_creation [Oct 22 2025 22:39:33]", v4, 2u);
  }
}

id ncs_log_alerts_ttl()
{
  if (qword_28078 != -1)
  {
    sub_130C4();
  }

  v1 = qword_28070;

  return v1;
}

void sub_5A98(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "alerts_ttl");
  v2 = qword_28070;
  qword_28070 = v1;

  v3 = qword_28070;
  if (os_log_type_enabled(qword_28070, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> alerts_ttl [Oct 22 2025 22:39:33]", v4, 2u);
  }
}

id ncs_log_bulletin_ui()
{
  if (qword_28088 != -1)
  {
    sub_130D8();
  }

  v1 = qword_28080;

  return v1;
}

void sub_5B60(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "bulletin_ui");
  v2 = qword_28080;
  qword_28080 = v1;

  v3 = qword_28080;
  if (os_log_type_enabled(qword_28080, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> bulletin_ui [Oct 22 2025 22:39:33]", v4, 2u);
  }
}

id ncs_log_reminders_snapshot()
{
  if (qword_28098 != -1)
  {
    sub_130EC();
  }

  v1 = qword_28090;

  return v1;
}

void sub_5C28(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "reminders_snapshot");
  v2 = qword_28090;
  qword_28090 = v1;

  v3 = qword_28090;
  if (os_log_type_enabled(qword_28090, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> reminders_snapshot [Oct 22 2025 22:39:33]", v4, 2u);
  }
}

id ncs_log_reminders_demo()
{
  if (qword_280A8 != -1)
  {
    sub_13100();
  }

  v1 = qword_280A0;

  return v1;
}

void sub_5CF0(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "reminders_demo");
  v2 = qword_280A0;
  qword_280A0 = v1;

  v3 = qword_280A0;
  if (os_log_type_enabled(qword_280A0, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> reminders_demo [Oct 22 2025 22:39:33]", v4, 2u);
  }
}

id ncs_log_debugging()
{
  if (qword_280B8 != -1)
  {
    sub_13114();
  }

  v1 = qword_280B0;

  return v1;
}

void sub_5DB8(id a1)
{
  v1 = os_log_create("com.apple.NanoCalendar", "debugging");
  v2 = qword_280B0;
  qword_280B0 = v1;

  v3 = qword_280B0;
  if (os_log_type_enabled(qword_280B0, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "==> debugging [Oct 22 2025 22:39:33]", v4, 2u);
  }
}

uint64_t _actsLikeCustomerBuild()
{
  if (qword_280C8 != -1)
  {
    sub_13128();
  }

  return byte_280C0;
}

void sub_5E74(id a1)
{
  v1 = +[NanoCalendarPreferences appDefaults];
  byte_280C0 = [v1 BOOLForKey:@"ActsLikeCustomerBuild"];
}

uint64_t _isInternalBuild()
{
  if (MGGetBoolAnswer())
  {
    if (qword_280C8 != -1)
    {
      sub_13128();
    }

    v0 = byte_280C0 ^ 1;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t NCSLoggingConfidentionInformationAllowed()
{
  if (qword_280D0 != -1)
  {
    sub_1313C();
  }

  return byte_280D8;
}

id NanoCalLogStringForDateAndTime(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (qword_280E8 != -1)
    {
      sub_13150();
    }

    v2 = [qword_280E0 stringFromDate:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_6940(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_280E0;
  qword_280E0 = v1;

  v3 = qword_280E0;

  [v3 setDateFormat:@"yyyy-MM-dd HH:mm:ss EEE"];
}

__n128 sub_6CE4@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_7938(a1, a1);
  if (a2 == 12)
  {
    v6 = &xmmword_28128;
  }

  else
  {
    if (a2 != 10)
    {
      v5 = ncs_log_complication();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_13164(a2, v5);
      }
    }

    v6 = &xmmword_280F0;
  }

  v7 = v6[1];
  *a3 = *v6;
  *(a3 + 16) = v7;
  result = v6[2];
  *(a3 + 32) = result;
  *(a3 + 48) = *(v6 + 6);
  return result;
}

void sub_6FCC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id sub_6FFC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && (v3 = *(WeakRetained + 6)) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = +[CLKDate complicationDate];
  }

  v5 = v4;

  return v5;
}

void sub_706C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsLayout];
}

id sub_73B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  v4 = *(a1 + 32);

  return [v4 _updateDate];
}

uint64_t sub_7938(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_28164);
  if (qword_28168)
  {
    v3 = qword_28168 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_28170))
  {
    v5 = byte_28160;
  }

  else
  {
    qword_28168 = v2;
    qword_28170 = [v2 version];
    sub_79E0(qword_28170, v2);
    v5 = 1;
    byte_28160 = 1;
  }

  os_unfair_lock_unlock(&stru_28164);

  return v5;
}

void sub_79E0(uint64_t a1, void *a2)
{
  v2 = a2;
  v10 = [CLKDeviceMetrics metricsWithDevice:v2 identitySizeClass:2];
  [v10 scaledValue:10.0];
  *&xmmword_280F0 = v3;
  *(&xmmword_280F0 + 1) = UIFontWeightMedium;
  [v10 scaledValue:14.0];
  *&xmmword_28110 = v4;
  [v10 scaledValue:21.0];
  qword_28100 = v5;
  unk_28108 = *&UIFontWeightMedium;
  [v10 scaledValue:18.0];
  *(&xmmword_28110 + 1) = v6;
  [v10 scaledValue:50.0];
  qword_28120 = v7;
  CLKComplicationGraphicExtraLargeCircularScalingFactor();
  v9 = v8;

  xmmword_28128 = xmmword_280F0;
  *&qword_28138 = *&qword_28100;
  *&xmmword_28128 = v9 * *&xmmword_280F0;
  *&qword_28138 = v9 * *&qword_28100;
  xmmword_28148 = vmulq_n_f64(xmmword_28110, v9);
  *&qword_28158 = v9 * *&qword_28120;
}

id sub_7BAC(uint64_t a1)
{
  v5[0] = @"mirroringCompanion";
  v2 = [NSNumber numberWithBool:*(a1 + 40)];
  v5[1] = @"overlayCalendar";
  v6[0] = v2;
  v6[1] = *(a1 + 32);
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

NSAttributedString *__cdecl sub_8724(id a1, NSString *a2, unint64_t a3, CLKTextProviderStyle *a4)
{
  v6 = a2;
  v7 = 0;
  if (v6 && !a3)
  {
    v8 = a4;
    if ([(CLKTextProviderStyle *)v8 uppercase])
    {
      v9 = +[NSLocale currentLocale];
      v10 = [(NSString *)v6 uppercaseStringWithLocale:v9];

      v6 = v10;
    }

    v11 = [(CLKTextProviderStyle *)v8 font];
    v12 = [v11 fontDescriptor];
    v13 = [v12 fontDescriptorWithSymbolicTraits:1];
    v14 = [(CLKTextProviderStyle *)v8 font];

    [v14 pointSize];
    v15 = [CLKFont fontWithDescriptor:v13 size:?];

    v18 = NSFontAttributeName;
    v19 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v7 = [[NSAttributedString alloc] initWithString:v6 attributes:v16];
  }

  return v7;
}

id sub_88CC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = a4;
    v8 = a2;
    v9 = [v7 font];
    v10 = [v7 smallCapsBaseFont];

    v11 = +[NSTimeZone calendarTimeZone];
    v4 = [NCALTimelineEntryModel _swapPlaceholderString:@"<ATTRIB_TIME_PLACEHOLD>" withTimeStringForDate:v6 inString:v8 usingBaseFont:v9 smallCapsBaseFont:v10 timeZone:v11 options:2];
  }

  return v4;
}

NSAttributedString *__cdecl sub_8E7C(id a1, NSString *a2, unint64_t a3, CLKTextProviderStyle *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v6 && !a3)
  {
    if ([(CLKTextProviderStyle *)v7 uppercase])
    {
      v10 = +[NSLocale currentLocale];
      v11 = [(NSString *)v6 uppercaseStringWithLocale:v10];

      v6 = v11;
    }

    v12 = [(CLKTextProviderStyle *)v8 font];
    [v12 pointSize];
    v13 = [CLKFont systemFontOfSize:"systemFontOfSize:weight:design:" weight:CLKRoundedFontDesignName design:?];

    v16 = NSFontAttributeName;
    v17 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v9 = [[NSAttributedString alloc] initWithString:v6 attributes:v14];
  }

  return v9;
}

void sub_92A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = 40;
  if (!a2)
  {
    v7 = 48;
  }

  v8 = *(a1 + v7);
  v11 = NSFontAttributeName;
  v12 = v8;
  v9 = a2;
  v10 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v6 setAttributes:v10 range:{a3, a4}];
}

uint64_t sub_9810(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_28184);
  if (qword_28188)
  {
    v3 = qword_28188 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_28190))
  {
    v5 = byte_28180;
  }

  else
  {
    qword_28188 = v2;
    qword_28190 = [v2 version];
    sub_98B4();
    v5 = 1;
    byte_28180 = 1;
  }

  os_unfair_lock_unlock(&stru_28184);

  return v5;
}

void sub_98B4()
{
  v0 = NCALComplicationImageNamed(@"analogNextEventCalendar");
  v1 = NCALComplicationImageNamed(@"analogNextEventCalendarBackground");
  v2 = NCALComplicationImageNamed(@"analogNextEventCalendarForeground");
  v3 = [CLKImageProvider imageProviderWithOnePieceImage:v0 twoPieceImageBackground:v1 twoPieceImageForeground:v2];
  v4 = qword_28178;
  qword_28178 = v3;

  v5 = qword_28178;
  v6 = +[UIColor systemRedColor];
  [v5 setTintColor:v6];
}

id sub_9EA0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = a4;
    v8 = a2;
    v9 = [v7 font];
    v10 = [v7 smallCapsBaseFont];

    v11 = +[NSTimeZone calendarTimeZone];
    v4 = [NCALTimelineEntryModel _swapPlaceholderString:@"<ATTRIB_TIME_PLACEHOLD>" withTimeStringForDate:v6 inString:v8 usingBaseFont:v9 smallCapsBaseFont:v10 timeZone:v11 options:6];
  }

  return v4;
}

id sub_AA48(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = a4;
    v8 = a2;
    v9 = [v7 font];
    v10 = [v7 smallCapsBaseFont];

    v11 = +[NSTimeZone calendarTimeZone];
    v4 = [NCALTimelineEntryModel _swapPlaceholderString:@"<ATTRIB_TIME_PLACEHOLD>" withTimeStringForDate:v6 inString:v8 usingBaseFont:v9 smallCapsBaseFont:v10 timeZone:v11 options:2];
  }

  return v4;
}

uint64_t sub_AFA8(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_281A4);
  if (qword_281A8)
  {
    v3 = qword_281A8 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_281B0))
  {
    v5 = byte_281A0;
  }

  else
  {
    qword_281A8 = v2;
    qword_281B0 = [v2 version];
    sub_B04C();
    v5 = 1;
    byte_281A0 = 1;
  }

  os_unfair_lock_unlock(&stru_281A4);

  return v5;
}

void sub_B04C()
{
  v0 = NCALComplicationImageNamed(@"SignatureCornerCalendarNextEvent_Mono");
  v4 = [CLKImageProvider imageProviderWithOnePieceImage:v0];

  v1 = NCALComplicationImageNamed(@"SignatureCornerCalendarNextEvent");
  v2 = [CLKFullColorImageProvider providerWithFullColorImage:v1 tintedImageProvider:v4 applyScalingAndCircularMasking:0];
  v3 = qword_28198;
  qword_28198 = v2;
}

uint64_t sub_B768(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&stru_281C4);
  if (qword_281C8)
  {
    v4 = qword_281C8 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 && (v5 = [v3 version], v5 == qword_281D0))
  {
    v6 = byte_281C0;
  }

  else
  {
    qword_281C8 = v3;
    qword_281D0 = [v3 version];
    v8 = *(a1 + 32);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_B918;
    v9[3] = &unk_20C38;
    v9[4] = v8;
    sub_B918(v9);
    v6 = 1;
    byte_281C0 = 1;
  }

  os_unfair_lock_unlock(&stru_281C4);

  return v6;
}

uint64_t sub_B8A4(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_B918;
  v2[3] = &unk_20C38;
  v2[4] = *(a1 + 32);
  sub_B918(v2);
  return 1;
}

void sub_B918(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = qword_281B8;
  qword_281B8 = v2;

  v4 = qword_281B8;
  v5 = NCALComplicationLocalizedString(@"NEXTEVENT_NEXT_EVENT_TITLE_LARGE_MODULAR");
  v6 = [CLKSimpleTextProvider textProviderWithText:v5];
  [v4 setModularLargeHeader:v6];

  v7 = qword_281B8;
  v8 = NCALComplicationLocalizedString(@"COMPLICATION_LOCKED_PLACEHOLDER_LARGE_MODULAR");
  v9 = [CLKSimpleTextProvider textProviderWithText:v8];
  [v7 setModularLargeFirst:v9];

  v10 = qword_281B8;
  v11 = NCALComplicationLocalizedString(@"COMPLICATION_LOCKED_PLACEHOLDER_LONG_UTILITY");
  v12 = [CLKSimpleTextProvider textProviderWithText:v11];
  [v10 setUtilityLarge:v12];

  v13 = qword_281B8;
  v14 = NCALComplicationLocalizedString(@"UNKNOWN_TIME");
  v15 = [CLKSimpleTextProvider textProviderWithText:v14];
  [v13 setUtilitySmall:v15];

  v16 = qword_281B8;
  v17 = [*(a1 + 32) _modularSmallCalendarImageWithConflicts:0];
  [v16 setModularSmallTop:v17];

  v18 = qword_281B8;
  v19 = NCALComplicationLocalizedString(@"UNKNOWN_TIME");
  v20 = [CLKSimpleTextProvider textProviderWithText:v19];
  [v18 setModularSmallBottom:v20];

  v21 = qword_281B8;
  v22 = NCALComplicationImageNamed(@"colorAnalogCalendarNoContent");
  v23 = [CLKImageProvider imageProviderWithOnePieceImage:v22];
  [v21 setCircularSmallImage:v23];

  v24 = qword_281B8;
  v25 = NCALComplicationImageNamed(@"victoryCalendarNone");
  v26 = [CLKImageProvider imageProviderWithOnePieceImage:v25];
  [v24 setCircularMediumImage:v26];

  v27 = qword_281B8;
  v28 = [*(a1 + 32) _utilityCalendarImageProvider];
  [v27 setUtilityImageProvider:v28];

  v29 = qword_281B8;
  v30 = [*(a1 + 32) _extraLargeCalendarImageProviderWithConflicts:0];
  [v29 setExtraLargeTop:v30];

  v31 = qword_281B8;
  v32 = NCALComplicationLocalizedString(@"UNKNOWN_TIME");
  v33 = [CLKSimpleTextProvider textProviderWithText:v32];
  [v31 setGraphicStackTimeText:v33];

  v34 = qword_281B8;
  v35 = [*(a1 + 32) _graphicExtraLargeImageProviderWithConflicts:0];
  [v34 setGraphicExtraLargeTop:v35];

  v42 = NCALComplicationLocalizedString(@"CALENDAR_BEZEL_COMPLICATION_LOCKED_TEXT");
  v36 = NCALComplicationLocalizedString(@"CALENDAR_BEZEL_COMPLICATION_LOCKED_TEXT_SHORT");
  v37 = qword_281B8;
  v38 = [CLKSimpleTextProvider textProviderWithText:v42 shortText:v36];
  [v37 setSignatureBezel:v38];

  v39 = qword_281B8;
  v40 = NCALComplicationLocalizedString(@"NEXTEVENT_LOCKED_SIGNATURE_CORNER");
  v41 = [CLKSimpleTextProvider textProviderWithText:v40];
  [v39 setSignatureCornerTextProvider:v41];
}

uint64_t sub_BE10(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&stru_281E4);
  if (qword_281E8)
  {
    v4 = qword_281E8 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 && (v5 = [v3 version], v5 == qword_281F0))
  {
    v6 = byte_281E0;
  }

  else
  {
    qword_281E8 = v3;
    qword_281F0 = [v3 version];
    v8 = *(a1 + 32);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_BFC0;
    v9[3] = &unk_20C38;
    v9[4] = v8;
    sub_BFC0(v9);
    v6 = 1;
    byte_281E0 = 1;
  }

  os_unfair_lock_unlock(&stru_281E4);

  return v6;
}

uint64_t sub_BF4C(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_BFC0;
  v2[3] = &unk_20C38;
  v2[4] = *(a1 + 32);
  sub_BFC0(v2);
  return 1;
}

void sub_BFC0(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = qword_281D8;
  qword_281D8 = v2;

  v4 = qword_281D8;
  v5 = NCALComplicationLocalizedString(@"NEXTEVENT_NEXT_EVENT_TITLE_LARGE_MODULAR");
  v6 = [CLKSimpleTextProvider textProviderWithText:v5];
  [v4 setModularLargeHeader:v6];

  v7 = qword_281D8;
  v8 = NCALComplicationLocalizedString(@"NEXTEVENT_FETCHING_LARGE_MODULAR");
  v9 = [CLKSimpleTextProvider textProviderWithText:v8];
  [v7 setModularLargeFirst:v9];

  v10 = qword_281D8;
  v11 = NCALComplicationLocalizedString(@"NEXTEVENT_FETCHING_LONG_UTILITY");
  v12 = [CLKSimpleTextProvider textProviderWithText:v11];
  [v10 setUtilityLarge:v12];

  v13 = qword_281D8;
  v14 = NCALComplicationLocalizedString(@"UNKNOWN_TIME");
  v15 = [CLKSimpleTextProvider textProviderWithText:v14];
  [v13 setUtilitySmall:v15];

  v16 = qword_281D8;
  v17 = [*(a1 + 32) _modularSmallCalendarImageWithConflicts:0];
  [v16 setModularSmallTop:v17];

  v18 = qword_281D8;
  v19 = NCALComplicationLocalizedString(@"UNKNOWN_TIME");
  v20 = [CLKSimpleTextProvider textProviderWithText:v19];
  [v18 setModularSmallBottom:v20];

  v21 = qword_281D8;
  v22 = NCALComplicationImageNamed(@"colorAnalogCalendarNoContent");
  v23 = [CLKImageProvider imageProviderWithOnePieceImage:v22];
  [v21 setCircularSmallImage:v23];

  v24 = qword_281D8;
  v25 = NCALComplicationImageNamed(@"victoryCalendarNone");
  v26 = [CLKImageProvider imageProviderWithOnePieceImage:v25];
  [v24 setCircularMediumImage:v26];

  v27 = qword_281D8;
  v28 = [*(a1 + 32) _utilityCalendarImageProvider];
  [v27 setUtilityImageProvider:v28];

  v29 = qword_281D8;
  v30 = [*(a1 + 32) _extraLargeCalendarImageProviderWithConflicts:0];
  [v29 setExtraLargeTop:v30];

  v31 = qword_281D8;
  v32 = NCALComplicationLocalizedString(@"UNKNOWN_TIME");
  v33 = [CLKSimpleTextProvider textProviderWithText:v32];
  [v31 setGraphicStackTimeText:v33];

  v34 = qword_281D8;
  v35 = [*(a1 + 32) _graphicExtraLargeImageProviderWithConflicts:0];
  [v34 setGraphicExtraLargeTop:v35];

  v36 = qword_281D8;
  v37 = NCALComplicationLocalizedString(@"CALENDAR_BEZEL_COMPLICATION_LOADING_TEXT");
  v38 = [CLKSimpleTextProvider textProviderWithText:v37];
  [v36 setSignatureBezel:v38];

  v39 = qword_281D8;
  v41 = NCALComplicationLocalizedString(@"NEXTEVENT_LOADING_SIGNATURE_CORNER");
  v40 = [CLKSimpleTextProvider textProviderWithText:v41];
  [v39 setSignatureCornerTextProvider:v40];
}

uint64_t sub_EFF4(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_28244);
  if (qword_28248)
  {
    v3 = qword_28248 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_28250))
  {
    v5 = byte_28240;
  }

  else
  {
    qword_28248 = v2;
    qword_28250 = [v2 version];
    sub_F09C(qword_28250, v2);
    v5 = 1;
    byte_28240 = 1;
  }

  os_unfair_lock_unlock(&stru_28244);

  return v5;
}

void sub_F09C(uint64_t a1, void *a2)
{
  v2 = a2;
  IsTallScript = NTKLanguageIsTallScript();
  v14 = [CLKDeviceMetrics metricsWithDevice:v2 identitySizeClass:2];

  [v14 scaledValue:15.5];
  v5 = v4;
  [v14 scaledValue:16.0];
  if (IsTallScript)
  {
    v6 = v5;
  }

  qword_281F8 = v6;
  [v14 scaledValue:19.5];
  qword_28200 = v7;
  [v14 scaledValue:3 withOverride:5.5 forSizeClass:5.5];
  qword_28208 = v8;
  [v14 scaledValue:3 withOverride:-1.5 forSizeClass:-1.0];
  qword_28210 = v9;
  [v14 scaledValue:4.0];
  qword_28218 = v10;
  [v14 scaledValue:2.0];
  qword_28220 = v11;
  [v14 scaledValue:1.0];
  qword_28228 = v12;
  [v14 scaledValue:3 withOverride:6.0 forSizeClass:6.5];
  qword_28230 = v13;
  qword_28238 = v13;
}

id NCALComplicationLocalizedString(void *a1)
{
  v1 = a1;
  v2 = sub_F348();
  v3 = [v2 localizedStringForKey:v1 value:&stru_20EF0 table:@"Localizable"];

  return v3;
}

id NCALComplicationLocalizedFormat(void *a1)
{
  v1 = a1;
  v2 = sub_F348();
  v3 = [v2 localizedStringForKey:v1 value:&stru_20EF0 table:@"Formats"];

  return v3;
}

id NCALComplicationImageNamed(void *a1)
{
  v1 = a1;
  v2 = sub_F348();
  v3 = [UIImage imageNamed:v1 inBundle:v2 compatibleWithTraitCollection:0];

  return v3;
}

id sub_F348()
{
  if (qword_28260 != -1)
  {
    sub_131F0();
  }

  v1 = qword_28258;

  return v1;
}

void sub_F38C(id a1)
{
  qword_28258 = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

void sub_100A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_100D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsLayout];
}

id sub_10118(uint64_t a1)
{
  v2 = +[CLKDate complicationDate];
  v3 = *(a1 + 40);
  v4 = NTKAddDaysToDate();

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = *(WeakRetained + 8);
    if (!v7)
    {
      v7 = v4;
    }

    v8 = v7;

    v4 = v8;
  }

  return v4;
}

void sub_10308(id a1)
{
  v8[0] = @"transform";
  v1 = +[NSNull null];
  v9[0] = v1;
  v8[1] = @"position";
  v2 = +[NSNull null];
  v9[1] = v2;
  v8[2] = @"fillColor";
  v3 = +[NSNull null];
  v9[2] = v3;
  v8[3] = @"filters";
  v4 = +[NSNull null];
  v9[3] = v4;
  v8[4] = @"opacity";
  v5 = +[NSNull null];
  v9[4] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:5];
  v7 = qword_28268;
  qword_28268 = v6;
}

void sub_10878(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v11 = v3;
  if (v5 - 2 < 2)
  {
    v7 = v4 == v3;
    v10 = 88;
    if (v7)
    {
      v10 = 72;
    }

    v9 = *(a1 + v10) + *(a1 + 112) * 0.5;
    v6 = 1;
  }

  else
  {
    if (v5 > 1)
    {
      goto LABEL_10;
    }

    v6 = 0;
    v7 = v4 == v3;
    v8 = 80;
    if (v7)
    {
      v8 = 64;
    }

    v9 = *(a1 + v8);
  }

  [v3 setCircleRadius:v9];
  [v11 setInterior:v6];
LABEL_10:
}

id sub_10A70(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  *(v2 + 64) = 0;

  v4 = *(a1 + 32);

  return [v4 _updateDate];
}

uint64_t sub_11164(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_282E4);
  if (qword_282E8)
  {
    v3 = qword_282E8 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_282F0))
  {
    v5 = byte_282E0;
  }

  else
  {
    qword_282E8 = v2;
    qword_282F0 = [v2 version];
    sub_1120C(qword_282F0, v2);
    v5 = 1;
    byte_282E0 = 1;
  }

  os_unfair_lock_unlock(&stru_282E4);

  return v5;
}

void sub_1120C(uint64_t a1, uint64_t a2)
{
  v11 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  [v11 scaledValue:3 withOverride:13.0 forSizeClass:15.0];
  *&xmmword_28278 = v2;
  [v11 scaledValue:9.0];
  *(&xmmword_28278 + 1) = v3;
  [v11 setRoundingBehavior:2];
  [v11 scaledValue:3 withOverride:96.0 forSizeClass:109.5];
  qword_28288 = v4;
  [v11 scaledValue:3 withOverride:102.5 forSizeClass:117.0];
  qword_28290 = v5;
  [v11 scaledValue:3 withOverride:85.0 forSizeClass:97.0];
  *&xmmword_28298 = v6;
  [v11 scaledValue:3 withOverride:89.5 forSizeClass:102.0];
  *(&xmmword_28298 + 1) = v7;
  [v11 setRoundingBehavior:1];
  xmmword_282A8 = xmmword_17F40;
  [v11 scaledValue:3 withOverride:1.5 forSizeClass:2.0];
  qword_282B8 = v8;
  [v11 scaledValue:3 withOverride:2.5 forSizeClass:2.0];
  qword_282C0 = v9;
  [v11 scaledValue:3 withOverride:3.0 forSizeClass:4.0];
  qword_282C8 = v10;
  *&qword_282D0 = xmmword_17F50;
}

id NextEventIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NextEventIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NextEventIntent();
  return objc_msgSendSuper2(&v2, "init");
}

id NextEventIntent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NextEventIntent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_11C3C()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_28300 = result;
  return result;
}

uint64_t sub_11C90()
{
  v0 = sub_13238();
  sub_12DD0(v0, qword_28390);
  sub_11D5C(v0, qword_28390);
  if (qword_282F8 != -1)
  {
    swift_once();
  }

  v1 = qword_28300;
  return sub_13228();
}

uint64_t sub_11D5C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_11DB8()
{
  v0 = sub_13238();
  sub_12DD0(v0, qword_283A8);
  sub_11D5C(v0, qword_283A8);
  if (qword_282F8 != -1)
  {
    swift_once();
  }

  v1 = qword_28300;
  return sub_13228();
}

uint64_t sub_11EA8()
{
  v0 = sub_13238();
  sub_12DD0(v0, qword_283C0);
  sub_11D5C(v0, qword_283C0);
  if (qword_282F8 != -1)
  {
    swift_once();
  }

  v1 = qword_28300;
  return sub_13228();
}

uint64_t sub_11F98()
{
  v0 = sub_13238();
  sub_12DD0(v0, qword_283D8);
  sub_11D5C(v0, qword_283D8);
  if (qword_282F8 != -1)
  {
    swift_once();
  }

  v1 = qword_28300;
  return sub_13228();
}

uint64_t sub_12088()
{
  v0 = sub_13238();
  sub_12DD0(v0, qword_283F0);
  sub_11D5C(v0, qword_283F0);
  if (qword_282F8 != -1)
  {
    swift_once();
  }

  v1 = qword_28300;
  return sub_13228();
}

uint64_t sub_12178()
{
  v0 = sub_13238();
  sub_12DD0(v0, qword_28408);
  sub_11D5C(v0, qword_28408);
  if (qword_282F8 != -1)
  {
    swift_once();
  }

  v1 = qword_28300;
  return sub_13228();
}

uint64_t sub_12268()
{
  v0 = sub_13238();
  sub_12DD0(v0, qword_28420);
  sub_11D5C(v0, qword_28420);
  if (qword_282F8 != -1)
  {
    swift_once();
  }

  v1 = qword_28300;
  return sub_13228();
}

uint64_t sub_12358()
{
  v0 = sub_13238();
  sub_12DD0(v0, qword_28438);
  sub_11D5C(v0, qword_28438);
  if (qword_282F8 != -1)
  {
    swift_once();
  }

  v1 = qword_28300;
  return sub_13228();
}

uint64_t sub_12448()
{
  v0 = sub_13238();
  sub_12DD0(v0, qword_28450);
  sub_11D5C(v0, qword_28450);
  if (qword_282F8 != -1)
  {
    swift_once();
  }

  v1 = qword_28300;
  return sub_13228();
}

uint64_t sub_12538()
{
  v0 = sub_13238();
  sub_12DD0(v0, qword_28468);
  sub_11D5C(v0, qword_28468);
  if (qword_282F8 != -1)
  {
    swift_once();
  }

  v1 = qword_28300;
  return sub_13228();
}

uint64_t sub_12628()
{
  v0 = sub_13238();
  sub_12DD0(v0, qword_28480);
  sub_11D5C(v0, qword_28480);
  if (qword_282F8 != -1)
  {
    swift_once();
  }

  v1 = qword_28300;
  return sub_13228();
}

uint64_t sub_12718()
{
  v0 = sub_13238();
  sub_12DD0(v0, qword_28498);
  sub_11D5C(v0, qword_28498);
  if (qword_282F8 != -1)
  {
    swift_once();
  }

  v1 = qword_28300;
  return sub_13228();
}

uint64_t sub_12810()
{
  v0 = sub_13238();
  sub_12DD0(v0, qword_284B0);
  sub_11D5C(v0, qword_284B0);
  if (qword_282F8 != -1)
  {
    swift_once();
  }

  v1 = qword_28300;
  return sub_13228();
}

uint64_t sub_12900()
{
  v0 = sub_13238();
  sub_12DD0(v0, qword_284C8);
  sub_11D5C(v0, qword_284C8);
  if (qword_282F8 != -1)
  {
    swift_once();
  }

  v1 = qword_28300;
  return sub_13228();
}

uint64_t sub_129F0()
{
  v0 = sub_13238();
  sub_12DD0(v0, qword_284E0);
  sub_11D5C(v0, qword_284E0);
  if (qword_282F8 != -1)
  {
    swift_once();
  }

  v1 = qword_28300;
  return sub_13228();
}

uint64_t sub_12AE0()
{
  v0 = sub_13238();
  sub_12DD0(v0, qword_284F8);
  sub_11D5C(v0, qword_284F8);
  if (qword_282F8 != -1)
  {
    swift_once();
  }

  v1 = qword_28300;
  return sub_13228();
}

uint64_t sub_12BD0()
{
  v0 = sub_13238();
  sub_12DD0(v0, qword_28510);
  sub_11D5C(v0, qword_28510);
  if (qword_282F8 != -1)
  {
    swift_once();
  }

  v1 = qword_28300;
  return sub_13228();
}

uint64_t sub_12C9C(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_13238();

  return sub_11D5C(v3, a2);
}

uint64_t sub_12D14@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_13238();
  v6 = sub_11D5C(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t *sub_12DD0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void sub_12E48(uint64_t a1, void *a2, NSObject *a3)
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

void sub_13164(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "const LayoutConstants _LayoutConstants(CLKDevice *__strong, CLKComplicationFamily)";
  v4 = 2048;
  v5 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Unhandled complication family in %s constants: %ld", &v2, 0x16u);
}