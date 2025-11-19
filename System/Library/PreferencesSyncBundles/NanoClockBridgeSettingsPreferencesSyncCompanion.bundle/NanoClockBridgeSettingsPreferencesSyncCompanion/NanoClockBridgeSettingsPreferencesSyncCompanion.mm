id NTALogForCategory(unint64_t a1)
{
  if (a1 >= 0xF)
  {
    sub_840();
  }

  if (qword_8078 != -1)
  {
    sub_82C();
  }

  v2 = qword_8000[a1];

  return v2;
}

void sub_650(id a1)
{
  v1 = os_log_create("com.apple.nanotimeapps", "NanoTimeApps");
  v2 = qword_8000[0];
  qword_8000[0] = v1;

  v3 = os_log_create("com.apple.nanotimeapps", "TimeAppServices");
  v4 = qword_8008;
  qword_8008 = v3;

  v5 = os_log_create("com.apple.nanotimeapps", "TimeAppServicesSound");
  v6 = qword_8070;
  qword_8070 = v5;

  v7 = os_log_create("com.apple.nanotimeapps", "NanoTimer");
  v8 = qword_8010;
  qword_8010 = v7;

  v9 = os_log_create("com.apple.nanotimeapps", "NanoAlarm");
  v10 = qword_8018;
  qword_8018 = v9;

  v11 = os_log_create("com.apple.nanotimeapps", "NanoStopwatch");
  v12 = qword_8020;
  qword_8020 = v11;

  v13 = os_log_create("com.apple.nanotimeapps", "NanoWorldClock");
  v14 = qword_8028;
  qword_8028 = v13;

  v15 = os_log_create("com.apple.nanotimeapps", "NanoClockAlertProvider");
  v16 = qword_8048;
  qword_8048 = v15;

  v17 = os_log_create("com.apple.nanotimeapps", "NanoClockActivateProvider");
  v18 = qword_8050;
  qword_8050 = v17;

  v19 = os_log_create("com.apple.nanotimeapps", "NanoTimerSiri");
  v20 = qword_8058;
  qword_8058 = v19;

  v21 = os_log_create("com.apple.nanotimeapps", "Tool");
  v22 = qword_8060;
  qword_8060 = v21;

  v23 = os_log_create("com.apple.nanotimeapps", "SessionProvider");
  v24 = qword_8068;
  qword_8068 = v23;

  v25 = os_log_create("com.apple.nanotimeapps", "Complication");
  v26 = qword_8030;
  qword_8030 = v25;

  v27 = os_log_create("com.apple.nanotimeapps", "SunriseComplication");
  v28 = qword_8038;
  qword_8038 = v27;

  qword_8040 = os_log_create("com.apple.nanotimeapps", "WorldClockComplication");

  _objc_release_x1();
}