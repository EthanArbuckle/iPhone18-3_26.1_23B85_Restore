void sub_BD4(id a1)
{
  v1 = +[AXValidationManager sharedInstance];
  [v1 performValidations:&stru_40C8 withPreValidationHandler:&stru_40E8 postValidationHandler:0 safeCategoryInstallationHandler:&stru_4128];
}

BOOL sub_C40(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 setValidationTargetName:@"AX NanoMailBridgeSettings"];
  [(AXValidationManager *)v2 setOverrideProcessName:@"AX NanoMailBridgeSettings"];
  [(AXValidationManager *)v2 setDebugBuild:0];

  return _AXPerformValidationChecks();
}

id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 localizedStringForKey:v1 value:&stru_4188 table:@"Accessibility"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}