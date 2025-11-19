void sub_1B40(uint64_t a1)
{
  [*(a1 + 32) hideContentViewController];
  v2 = +[AXUIDisplayManager sharedDisplayManager];
  v3 = [*(a1 + 32) lastShownAlertIdentifier];
  [v2 hideAlertWithIdentifier:v3 forService:*(a1 + 32)];

  v5 = +[AXUIDisplayManager sharedDisplayManager];
  v4 = [*(a1 + 32) lastShownBannerIdentifier];
  [v5 hideAlertWithIdentifier:v4 forService:*(a1 + 32)];
}

uint64_t sub_203C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) objectForKeyedSubscript:@"simple alert text"];
  v4 = [v2 showAlertWithText:v3 subtitleText:0 iconImage:0 type:0 forService:*(a1 + 32)];
  [*(a1 + 32) setLastShownAlertIdentifier:v4];

  v6 = *(a1 + 32);
  return AXPerformBlockOnMainThreadAfterDelay();
}

BOOL HNDIsPhoneUserInterfaceIdiom()
{
  v0 = +[UIDevice currentDevice];
  v1 = [v0 userInterfaceIdiom] == 0;

  return v1;
}

id HNDLocString(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 localizedStringForKey:v1 value:&stru_8408 table:@"HNDUIServer"];
  }

  else
  {
    _AXAssert();
    v4 = 0;
  }

  return v4;
}