void sub_2DD0(uint64_t a1)
{
  v6 = objc_alloc_init(CSLPRFStingConfiguration);
  v2 = [*(a1 + 32) selectedActivity];
  v3 = [v2 actionType];
  v4 = [v3 integerValue];

  [v6 setActionType:v4];
  v5 = [BPSStingSetupModel defaultBundleIDForActionType:v4];
  [v6 setBundleID:v5];

  [v6 setSource:0];
}

id bps_utility_log()
{
  if (qword_11D48 != -1)
  {
    sub_4F78();
  }

  v1 = qword_11D40;

  return v1;
}

void sub_4EAC(id a1)
{
  qword_11D40 = os_log_create("com.apple.BridgePreferences", "utility");

  _objc_release_x1();
}

id bps_setup_log()
{
  if (qword_11D58 != -1)
  {
    sub_4F8C();
  }

  v1 = qword_11D50;

  return v1;
}

void sub_4F34(id a1)
{
  qword_11D50 = os_log_create("com.apple.BridgePreferences", "setup");

  _objc_release_x1();
}