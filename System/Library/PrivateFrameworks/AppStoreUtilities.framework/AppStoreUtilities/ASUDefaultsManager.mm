@interface ASUDefaultsManager
+ (BOOL)_BOOLForKey:(__CFString *)key applicationId:(__CFString *)id ifMissing:(BOOL)missing;
+ (BOOL)_isRunningInAppleVirtualMachine;
+ (double)_doubleForKey:(__CFString *)key applicationId:(__CFString *)id ifMissing:(double)missing;
+ (id)_copyNumberForKey:(__CFString *)key applicationId:(__CFString *)id;
+ (id)copyDefaultsKeyForEncryptionKeyWithIdentifier:(id)identifier;
+ (id)databaseEncryptionKeyWithIdentifier:(uint64_t)identifier;
+ (id)transporterConfiguration;
+ (uint64_t)setTransporterConfiguration:(uint64_t)configuration;
+ (void)_setDouble:(double)double forKey:(__CFString *)key applicationId:(__CFString *)id;
+ (void)_setNullableValue:(void *)value forKey:(__CFString *)key;
+ (void)setDatabaseEncryptionKey:(void *)key withIdentifier:;
@end

@implementation ASUDefaultsManager

+ (id)databaseEncryptionKeyWithIdentifier:(uint64_t)identifier
{
  v2 = a2;
  v3 = [objc_opt_self() copyDefaultsKeyForEncryptionKeyWithIdentifier:v2];

  v4 = CFPreferencesCopyAppValue(v3, @"com.apple.appstoreutilities");
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v4 options:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)setDatabaseEncryptionKey:(void *)key withIdentifier:
{
  keyCopy = key;
  v5 = a2;
  key = [objc_opt_self() copyDefaultsKeyForEncryptionKeyWithIdentifier:keyCopy];

  v6 = [v5 base64EncodedStringWithOptions:0];

  CFPreferencesSetAppValue(key, v6, @"com.apple.appstoreutilities");
  CFPreferencesAppSynchronize(@"com.apple.appstoreutilities");
}

+ (id)copyDefaultsKeyForEncryptionKeyWithIdentifier:(id)identifier
{
  v4 = MEMORY[0x277CEE470];
  identifierCopy = identifier;
  serialNumber = [v4 serialNumber];
  v7 = serialNumber;
  if (!serialNumber)
  {
    if (([self _isRunningInAppleVirtualMachine] & 1) == 0)
    {
      v8 = ASULogHandleForCategory(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2400F8000, v8, OS_LOG_TYPE_FAULT, "Database defaults key generation failed unexpectedly", buf, 2u);
      }
    }

    v7 = @"xyzzy";
  }

  v9 = v7;

  v10 = [identifierCopy stringByAppendingString:v9];

  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%lu", objc_msgSend(v10, "hash")];
  return v11;
}

+ (id)transporterConfiguration
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"TransporterConfiguration", @"com.apple.appstoreutilities");

  return v0;
}

+ (uint64_t)setTransporterConfiguration:(uint64_t)configuration
{
  v2 = a2;
  objc_opt_self();
  CFPreferencesSetAppValue(@"TransporterConfiguration", v2, @"com.apple.appstoreutilities");

  return CFPreferencesAppSynchronize(@"com.apple.appstoreutilities");
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
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:double];

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
  if (qword_27E3C72C0 != -1)
  {
    dispatch_once(&qword_27E3C72C0, &__block_literal_global_1);
  }

  return _MergedGlobals != 0;
}

void __53__ASUDefaultsManager__isRunningInAppleVirtualMachine__block_invoke()
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = 4;
  if (sysctlbyname("kern.hv_vmm_present", &_MergedGlobals, &v3, 0, 0))
  {
    v0 = ASULogHandleForCategory(1);
    if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
    {
      v2 = *__error();
      *buf = 67109120;
      v5 = v2;
      _os_log_fault_impl(&dword_2400F8000, v0, OS_LOG_TYPE_FAULT, "sysctlbyname for kern.hv_vmm_present failed with error: %{darwin.errno}d", buf, 8u);
    }
  }

  v1 = *MEMORY[0x277D85DE8];
}

@end