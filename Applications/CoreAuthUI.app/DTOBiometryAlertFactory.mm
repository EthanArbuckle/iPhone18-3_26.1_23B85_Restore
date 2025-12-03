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
    v12[2] = sub_1000038FC;
    v12[3] = &unk_1000961C0;
    v12[4] = self;
    v12[5] = type;
    v10 = sub_1000038FC(v12);
    [v10 setPreferredStyle:1];
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"OK" value:&stru_1000992A0 table:@"MobileUI"];
    v6 = [LACUIBiometryAlertAction actionWithType:3 title:v5 handler:&stru_1000961E0];
    [v10 addCustomAction:v6];

    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"LEARN_MORE" value:&stru_1000992A0 table:@"MobileUI"];
    v9 = [LACUIBiometryAlertAction actionWithType:2 title:v8 handler:&stru_100096200];
    [v10 addCustomAction:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end