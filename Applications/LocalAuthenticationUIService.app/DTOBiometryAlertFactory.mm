@interface DTOBiometryAlertFactory
- (id)biometryRequiredAlertWithBiometryType:(int64_t)type;
@end

@implementation DTOBiometryAlertFactory

- (id)biometryRequiredAlertWithBiometryType:(int64_t)type
{
  if (LACBiometryTypeFaceID == type || LACBiometryTypeTouchID == type)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __65__DTOBiometryAlertFactory_biometryRequiredAlertWithBiometryType___block_invoke;
    v12[3] = &unk_1000AAB08;
    v12[4] = self;
    v12[5] = type;
    v10 = __65__DTOBiometryAlertFactory_biometryRequiredAlertWithBiometryType___block_invoke(v12);
    [v10 setPreferredStyle:1];
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"OK" value:&stru_1000ADB50 table:@"MobileUI"];
    v6 = [LACUIBiometryAlertAction actionWithType:3 title:v5 handler:&__block_literal_global_32];
    [v10 addCustomAction:v6];

    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"LEARN_MORE" value:&stru_1000ADB50 table:@"MobileUI"];
    v9 = [LACUIBiometryAlertAction actionWithType:2 title:v8 handler:&__block_literal_global_37];
    [v10 addCustomAction:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

TouchIdAlertController *__65__DTOBiometryAlertFactory_biometryRequiredAlertWithBiometryType___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == LACBiometryTypeTouchID)
  {
    v2 = objc_alloc_init(TouchIdAlertController);
    v3 = *(a1 + 32);
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"TOUCH_ID_REQUIRED" value:&stru_1000ADB50 table:@"MobileUI"];
    [(TouchIdAlertController *)v2 setTitle:v5];

    v6 = *(a1 + 32);
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"DTO_IS_ACTIVE_TOUCH_ID" value:&stru_1000ADB50 table:@"MobileUI-Ratchet"];
    [(TouchIdAlertController *)v2 setMessage:v8];

    v9 = +[UIColor tertiaryLabelColor];
    v10 = [(TouchIdAlertController *)v2 _headerContentViewController];
    v11 = [v10 view];
    [v11 setTintColor:v9];
  }

  else
  {
    v2 = objc_alloc_init(FaceIdAlertViewController);
    v12 = __65__DTOBiometryAlertFactory_biometryRequiredAlertWithBiometryType___block_invoke_2();
    [(TouchIdAlertController *)v2 setGlyph:v12];

    v13 = *(a1 + 32);
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"FACE_ID_REQUIRED" value:&stru_1000ADB50 table:@"MobileUI"];
    [(TouchIdAlertController *)v2 setTitle:v15];

    v16 = *(a1 + 32);
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"DTO_IS_ACTIVE_FACE_ID" value:&stru_1000ADB50 table:@"MobileUI-Ratchet"];
    [(TouchIdAlertController *)v2 setMessage:v10];
  }

  return v2;
}

id __65__DTOBiometryAlertFactory_biometryRequiredAlertWithBiometryType___block_invoke_2()
{
  v0 = +[LAUIPearlGlyphStaticConfiguration createSystemApertureConfiguration];
  [v0 setInitialStyle:2];
  v1 = [[LAUIPearlGlyphView alloc] initWithConfiguration:v0];

  return v1;
}

void __65__DTOBiometryAlertFactory_biometryRequiredAlertWithBiometryType___block_invoke_4(id a1)
{
  v1 = +[LACUIDTOUtilities dtoLearnMoreLinkURL];
  v2 = +[URLOpener sharedInstance];
  v3 = [v2 openURL:v1];

  if (v3)
  {
    v4 = LACLogUI();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __65__DTOBiometryAlertFactory_biometryRequiredAlertWithBiometryType___block_invoke_4_cold_1(v1, v3, v4);
    }
  }
}

void __65__DTOBiometryAlertFactory_biometryRequiredAlertWithBiometryType___block_invoke_4_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to open URL: %{public}@ error: %{public}@", &v3, 0x16u);
}

@end