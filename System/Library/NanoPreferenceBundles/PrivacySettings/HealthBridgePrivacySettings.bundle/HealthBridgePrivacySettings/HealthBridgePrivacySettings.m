void sub_128C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  objc_opt_self();
  v9 = [NSURL URLWithString:v6];

  [BPSWatchSettingsNavigationDonation emitNavigationEventForSystemSettingWithIconSpecifierIdentifier:@"PRIVACY_ID" title:v8 localizedNavigationComponents:v7 deepLink:v9];
}

id sub_1340()
{
  objc_opt_self();
  v0 = [NSBundle bundleForClass:objc_opt_class()];
  v1 = [v0 bundleURL];

  return v1;
}

id sub_13AC()
{
  objc_opt_self();
  v0 = [_NSLocalizedStringResource alloc];
  v1 = +[NSLocale currentLocale];
  objc_opt_class();
  v2 = sub_1340();
  v3 = [v0 initWithKey:@"TITLE" table:@"Privacy" locale:v1 bundleURL:v2];

  return v3;
}

id sub_1450()
{
  objc_opt_self();
  v0 = [_NSLocalizedStringResource alloc];
  v1 = +[NSLocale currentLocale];
  objc_opt_class();
  v2 = sub_1340();
  v3 = [v0 initWithKey:@"HEADPHONE_AUDIO_MEASUREMENTS_LABEL" table:@"Privacy" locale:v1 bundleURL:v2];

  return v3;
}

id sub_1590()
{
  objc_opt_self();
  objc_opt_class();
  objc_opt_self();
  v0 = [NSString stringWithFormat:@"bridge:root=%@", @"PRIVACY_ID"];
  v1 = [v0 stringByAppendingString:@"&path=HeadphoneAudio"];

  return v1;
}

void sub_4D50(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 featureIdentifier];
  v7 = 138543618;
  v8 = v6;
  v9 = 2114;
  v10 = a3;
  _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "[%{public}@] Error retrieving remote availability: %{public}@", &v7, 0x16u);
}

void sub_4E10(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "[Fitness] Error resetting motion calibration data: %@", &v2, 0xCu);
}

void sub_4E88(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "[Respiratory Rate] Error retrieving feature status: %@", &v2, 0xCu);
}