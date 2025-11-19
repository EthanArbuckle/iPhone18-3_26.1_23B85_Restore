@interface ASUDefaultsManager
+ (BOOL)_BOOLForKey:(__CFString *)a3 applicationId:(__CFString *)a4 ifMissing:(BOOL)a5;
+ (BOOL)_isRunningInAppleVirtualMachine;
+ (double)_doubleForKey:(__CFString *)a3 applicationId:(__CFString *)a4 ifMissing:(double)a5;
+ (id)_copyNumberForKey:(__CFString *)a3 applicationId:(__CFString *)a4;
+ (id)copyDefaultsKeyForEncryptionKeyWithIdentifier:(id)a3;
+ (void)_setBool:(BOOL)a3 forKey:(__CFString *)a4 applicationId:(__CFString *)a5;
+ (void)_setDouble:(double)a3 forKey:(__CFString *)a4 applicationId:(__CFString *)a5;
+ (void)_setNullableValue:(void *)a3 forKey:(__CFString *)a4;
@end

@implementation ASUDefaultsManager

+ (id)copyDefaultsKeyForEncryptionKeyWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[AMSDevice serialNumber];
  v6 = v5;
  if (!v5)
  {
    if (([a1 _isRunningInAppleVirtualMachine] & 1) == 0)
    {
      v7 = ASULogHandleForCategory(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        sub_1001EA238(v7);
      }
    }

    v6 = @"xyzzy";
  }

  v8 = v6;

  v9 = [v4 stringByAppendingString:v8];

  v10 = [[NSString alloc] initWithFormat:@"%lu", objc_msgSend(v9, "hash")];
  return v10;
}

+ (BOOL)_BOOLForKey:(__CFString *)a3 applicationId:(__CFString *)a4 ifMissing:(BOOL)a5
{
  keyExistsAndHasValidFormat = 0;
  v6 = CFPreferencesGetAppBooleanValue(a3, a4, &keyExistsAndHasValidFormat) == 1;
  if (keyExistsAndHasValidFormat == 1)
  {
    return v6;
  }

  else
  {
    return a5;
  }
}

+ (void)_setBool:(BOOL)a3 forKey:(__CFString *)a4 applicationId:(__CFString *)a5
{
  v7 = [NSNumber numberWithBool:a3];

  CFPreferencesSetAppValue(a4, v7, a5);
}

+ (double)_doubleForKey:(__CFString *)a3 applicationId:(__CFString *)a4 ifMissing:(double)a5
{
  v6 = [a1 _copyNumberForKey:a3 applicationId:a4];
  v7 = v6;
  if (v6)
  {
    [v6 doubleValue];
    a5 = v8;
  }

  return a5;
}

+ (void)_setDouble:(double)a3 forKey:(__CFString *)a4 applicationId:(__CFString *)a5
{
  v7 = [NSNumber numberWithDouble:a3];

  CFPreferencesSetAppValue(a4, v7, a5);
}

+ (id)_copyNumberForKey:(__CFString *)a3 applicationId:(__CFString *)a4
{
  v4 = CFPreferencesCopyAppValue(a3, a4);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v6;
}

+ (void)_setNullableValue:(void *)a3 forKey:(__CFString *)a4
{
  CFPreferencesSetAppValue(a4, a3, @"com.apple.appstoreutilities");

  CFPreferencesAppSynchronize(@"com.apple.appstoreutilities");
}

+ (BOOL)_isRunningInAppleVirtualMachine
{
  if (qword_10078B108 != -1)
  {
    sub_1001EA27C();
  }

  return dword_10078B100 != 0;
}

@end