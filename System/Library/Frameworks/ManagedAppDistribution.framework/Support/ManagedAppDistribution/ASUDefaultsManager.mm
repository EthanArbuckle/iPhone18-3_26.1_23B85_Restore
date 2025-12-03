@interface ASUDefaultsManager
+ (BOOL)_BOOLForKey:(__CFString *)key applicationId:(__CFString *)id ifMissing:(BOOL)missing;
+ (BOOL)_isRunningInAppleVirtualMachine;
+ (double)_doubleForKey:(__CFString *)key applicationId:(__CFString *)id ifMissing:(double)missing;
+ (id)_copyNumberForKey:(__CFString *)key applicationId:(__CFString *)id;
+ (id)copyDefaultsKeyForEncryptionKeyWithIdentifier:(id)identifier;
+ (void)_setBool:(BOOL)bool forKey:(__CFString *)key applicationId:(__CFString *)id;
+ (void)_setDouble:(double)double forKey:(__CFString *)key applicationId:(__CFString *)id;
+ (void)_setNullableValue:(void *)value forKey:(__CFString *)key;
@end

@implementation ASUDefaultsManager

+ (id)copyDefaultsKeyForEncryptionKeyWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[AMSDevice serialNumber];
  v6 = v5;
  if (!v5)
  {
    if (([self _isRunningInAppleVirtualMachine] & 1) == 0)
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

  v9 = [identifierCopy stringByAppendingString:v8];

  v10 = [[NSString alloc] initWithFormat:@"%lu", objc_msgSend(v9, "hash")];
  return v10;
}

+ (BOOL)_BOOLForKey:(__CFString *)key applicationId:(__CFString *)id ifMissing:(BOOL)missing
{
  keyExistsAndHasValidFormat = 0;
  v6 = CFPreferencesGetAppBooleanValue(key, id, &keyExistsAndHasValidFormat) == 1;
  if (keyExistsAndHasValidFormat == 1)
  {
    return v6;
  }

  else
  {
    return missing;
  }
}

+ (void)_setBool:(BOOL)bool forKey:(__CFString *)key applicationId:(__CFString *)id
{
  v7 = [NSNumber numberWithBool:bool];

  CFPreferencesSetAppValue(key, v7, id);
}

+ (double)_doubleForKey:(__CFString *)key applicationId:(__CFString *)id ifMissing:(double)missing
{
  v6 = [self _copyNumberForKey:key applicationId:id];
  v7 = v6;
  if (v6)
  {
    [v6 doubleValue];
    missing = v8;
  }

  return missing;
}

+ (void)_setDouble:(double)double forKey:(__CFString *)key applicationId:(__CFString *)id
{
  v7 = [NSNumber numberWithDouble:double];

  CFPreferencesSetAppValue(key, v7, id);
}

+ (id)_copyNumberForKey:(__CFString *)key applicationId:(__CFString *)id
{
  v4 = CFPreferencesCopyAppValue(key, id);
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

+ (void)_setNullableValue:(void *)value forKey:(__CFString *)key
{
  CFPreferencesSetAppValue(key, value, @"com.apple.appstoreutilities");

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