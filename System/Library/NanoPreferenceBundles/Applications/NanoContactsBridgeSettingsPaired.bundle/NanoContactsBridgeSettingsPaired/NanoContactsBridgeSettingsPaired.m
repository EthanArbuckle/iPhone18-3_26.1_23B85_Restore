id NanoContactsSettingsPairedBundle()
{
  if (qword_C6C8 != -1)
  {
    sub_33B0();
  }

  v1 = qword_C6C0;

  return v1;
}

void sub_E24(id a1)
{
  qword_C6C0 = [NSBundle bundleWithIdentifier:@"com.apple.NanoContactsBridgeSettingsPaired"];

  _objc_release_x1();
}

void sub_1BD4(id a1)
{
  qword_C6D0 = [NSSet setWithObject:@"contactsSortOrder"];

  _objc_release_x1();
}

void sub_1C60(id a1)
{
  qword_C6E0 = [NSSet setWithObjects:NSPersonNameDefaultDisplayNameOrderKey, NSPersonNameDefaultShortNameEnabledKey, NSPersonNameDefaultShortNameFormatKey, NSPersonNameDefaultShouldPreferNicknamesKey, 0];

  _objc_release_x1();
}

void sub_22F4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 setInteger:objc_msgSend(a3 forKey:{"integerValue"), v6}];
  [*(a1 + 40) addObject:v6];
}