id sub_7E8()
{
  if (qword_8008 != -1)
  {
    sub_1118();
  }

  v1 = qword_8010;

  return v1;
}

void sub_82C(id a1)
{
  qword_8010 = os_log_create("com.apple.icloud.findmydeviced", "_");

  _objc_release_x1();
}

id sub_870()
{
  if (qword_8018 != -1)
  {
    sub_112C();
  }

  v1 = qword_8020;

  return v1;
}

void sub_8B4(id a1)
{
  qword_8020 = os_log_create("com.apple.icloud.findmydeviced", "locations");

  _objc_release_x1();
}

id sub_8F8()
{
  if (qword_8028 != -1)
  {
    sub_1140();
  }

  v1 = qword_8030;

  return v1;
}

void sub_93C(id a1)
{
  qword_8030 = os_log_create("com.apple.icloud.findmydeviced", "accessory");

  _objc_release_x1();
}

id sub_980()
{
  if (qword_8038 != -1)
  {
    sub_1154();
  }

  v1 = qword_8040;

  return v1;
}

void sub_9C4(id a1)
{
  qword_8040 = os_log_create("com.apple.icloud.findmydeviced", "traffic");

  _objc_release_x1();
}

id sub_A08()
{
  if (qword_8048 != -1)
  {
    sub_1168();
  }

  v1 = qword_8050;

  return v1;
}

void sub_A4C(id a1)
{
  qword_8050 = os_log_create("com.apple.icloud.findmydeviced", "encoder");

  _objc_release_x1();
}

id sub_A90()
{
  if (qword_8058 != -1)
  {
    sub_117C();
  }

  v1 = qword_8060;

  return v1;
}

void sub_AD4(id a1)
{
  qword_8060 = os_log_create("com.apple.icloud.findmydeviced", "bluetoothsession");

  _objc_release_x1();
}

id sub_B18()
{
  if (qword_8068 != -1)
  {
    sub_1190();
  }

  v1 = qword_8070;

  return v1;
}

void sub_B5C(id a1)
{
  qword_8070 = os_log_create("com.apple.icloud.findmydeviced", "extensions");

  _objc_release_x1();
}

id sub_BA0()
{
  if (qword_8078 != -1)
  {
    sub_11A4();
  }

  v1 = qword_8080;

  return v1;
}

void sub_BE4(id a1)
{
  qword_8080 = os_log_create("com.apple.icloud.findmydeviced", "extensions_playSound");

  _objc_release_x1();
}

id sub_C28()
{
  if (qword_8088 != -1)
  {
    sub_11B8();
  }

  v1 = qword_8090;

  return v1;
}

void sub_C6C(id a1)
{
  qword_8090 = os_log_create("com.apple.icloud.findmydeviced", "secureLocations");

  _objc_release_x1();
}

id sub_CB0()
{
  if (qword_8098 != -1)
  {
    sub_11CC();
  }

  v1 = qword_80A0;

  return v1;
}

void sub_CF4(id a1)
{
  qword_80A0 = os_log_create("com.apple.icloud.findmydeviced", "healUCRT");

  _objc_release_x1();
}

id sub_D38()
{
  if (qword_80A8 != -1)
  {
    sub_11E0();
  }

  v1 = qword_80B0;

  return v1;
}

void sub_D7C(id a1)
{
  qword_80B0 = os_log_create("com.apple.icloud.findmydeviced", "DeviceTnL");

  _objc_release_x1();
}

id sub_DC0()
{
  if (qword_80B8 != -1)
  {
    sub_11F4();
  }

  v1 = qword_80C0;

  return v1;
}

void sub_E04(id a1)
{
  qword_80C0 = os_log_create("com.apple.icloud.findmydeviced", "repairDevice");

  _objc_release_x1();
}

id sub_E48()
{
  if (qword_80C8 != -1)
  {
    sub_1208();
  }

  v1 = qword_80D0;

  return v1;
}

void sub_E8C(id a1)
{
  qword_80D0 = os_log_create("com.apple.icloud.findmydeviced", "ALFailureAnalytics");

  _objc_release_x1();
}

id sub_ED0()
{
  if (qword_80D8 != -1)
  {
    sub_121C();
  }

  v1 = qword_80E0;

  return v1;
}

void sub_F14(id a1)
{
  qword_80E0 = os_log_create("com.apple.icloud.findmydeviced", "disableLocationDisplay");

  _objc_release_x1();
}

id sub_F58()
{
  if (qword_80E8 != -1)
  {
    sub_1230();
  }

  v1 = qword_80F0;

  return v1;
}

void sub_F9C(id a1)
{
  qword_80F0 = os_log_create("com.apple.icloud.findmydeviced", "accountRatchet");

  _objc_release_x1();
}

id sub_FE0()
{
  if (qword_80F8 != -1)
  {
    sub_1244();
  }

  v1 = qword_8100;

  return v1;
}

void sub_1024(id a1)
{
  qword_8100 = os_log_create("com.apple.icloud.findmydeviced", "ownerAuthentication");

  _objc_release_x1();
}

id sub_1068()
{
  if (qword_8108 != -1)
  {
    sub_1258();
  }

  v1 = qword_8110;

  return v1;
}

void sub_10AC(id a1)
{
  if ([FMPreferencesUtil BOOLForKey:@"ShowAutomationLogs" inDomain:@"com.apple.icloud.findmydeviced.notbackedup"])
  {
    qword_8110 = os_log_create("com.apple.icloud.findmydeviced", "automation");

    _objc_release_x1();
  }
}