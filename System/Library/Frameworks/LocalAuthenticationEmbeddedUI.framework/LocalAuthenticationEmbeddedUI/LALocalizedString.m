@interface LALocalizedString
+ (id)_localizedStringWithKey:(uint64_t)a1;
+ (id)_localizedStringWithKey:(void *)a3 tableSuffix:;
+ (id)passcodeChangeBackoffMessage:(int64_t)a3;
+ (id)passcodeChangeErrorInvalidPasscodeWithFailedAttemptsCount:(int64_t)a3;
+ (id)passcodeRemovalNotAllowedTextFaceID;
+ (id)passcodeRemovalNotAllowedTextOpticID;
+ (id)passcodeRemovalNotAllowedTextTouchID;
+ (id)passcodeRemovalNotAllowedTitle:(uint64_t)a1;
+ (id)passcodeRemovalNotAllowedTitleFaceID;
+ (id)passcodeRemovalNotAllowedTitleOpticID;
+ (id)passcodeRemovalNotAllowedTitleTouchID;
@end

@implementation LALocalizedString

+ (id)_localizedStringWithKey:(uint64_t)a1
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = [(LALocalizedString *)v3 _localizedStringWithKey:v2 tableSuffix:0];

  return v4;
}

+ (id)passcodeRemovalNotAllowedTitle:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"PASSCODE_REMOVAL_NOT_ALLOWED_TITLE" value:&stru_284B7B4C0 table:@"Localizable"];
  v6 = [v3 stringWithFormat:v5, v2];

  return v6;
}

+ (id)passcodeRemovalNotAllowedTitleFaceID
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PASSCODE_REMOVAL_NOT_ALLOWED_TITLE_FACE_ID" value:&stru_284B7B4C0 table:@"Localizable"];
  v5 = [v2 stringWithFormat:v4];

  return v5;
}

+ (id)passcodeRemovalNotAllowedTitleTouchID
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PASSCODE_REMOVAL_NOT_ALLOWED_TITLE_TOUCH_ID" value:&stru_284B7B4C0 table:@"Localizable"];
  v5 = [v2 stringWithFormat:v4];

  return v5;
}

+ (id)passcodeRemovalNotAllowedTitleOpticID
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PASSCODE_REMOVAL_NOT_ALLOWED_TITLE_OPTIC_ID" value:&stru_284B7B4C0 table:@"Localizable"];
  v5 = [v2 stringWithFormat:v4];

  return v5;
}

+ (id)passcodeRemovalNotAllowedTextFaceID
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PASSCODE_REMOVAL_NOT_ALLOWED_TEXT_FACE_ID" value:&stru_284B7B4C0 table:@"Localizable"];
  v5 = [v2 stringWithFormat:v4];

  return v5;
}

+ (id)passcodeRemovalNotAllowedTextTouchID
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PASSCODE_REMOVAL_NOT_ALLOWED_TEXT_TOUCH_ID" value:&stru_284B7B4C0 table:@"Localizable"];
  v5 = [v2 stringWithFormat:v4];

  return v5;
}

+ (id)passcodeRemovalNotAllowedTextOpticID
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PASSCODE_REMOVAL_NOT_ALLOWED_TEXT_OPTIC_ID" value:&stru_284B7B4C0 table:@"Localizable"];
  v5 = [v2 stringWithFormat:v4];

  return v5;
}

+ (id)passcodeChangeErrorInvalidPasscodeWithFailedAttemptsCount:(int64_t)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"PASSCODE_RECOVERY_ERROR_FAILED_ATTEMPTS" value:&stru_284B7B4C0 table:@"Localizable"];
  v7 = [v4 stringWithFormat:v6, a3];

  return v7;
}

+ (id)passcodeChangeBackoffMessage:(int64_t)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"MINUTES_TO_UNBLOCK" value:&stru_284B7B4C0 table:@"Localizable"];
  v7 = [v4 stringWithFormat:v6, a3];

  return v7;
}

+ (id)_localizedStringWithKey:(void *)a3 tableSuffix:
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = @"Localizable";
  if ([v4 length])
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", @"Localizable", v4];
  }

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:v5 value:&stru_284B7B4C0 table:v6];

  return v8;
}

@end