uint64_t sub_2E7C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isAppleAudioDevice])
  {
    v4 = 1;
  }

  else
  {
    v4 = [*(a1 + 32) containsObject:v3];
  }

  v5 = v4 ^ *(a1 + 40);

  return v5 & 1;
}

void sub_38C8(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Presenting privacy splash", v4, 2u);
  }

  v3 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.healthapp"];
  [v3 setPresentingViewController:*(a1 + 32)];
  [v3 present];
}