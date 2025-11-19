@interface ASKCellularDataInquiry
- (ASKCellularDataInquiry)init;
- (ASKCellularDataInquiry)initWithBundle:(id)a3;
- (BOOL)isEnabledForBundle;
- (BOOL)isEnabledForDevice;
@end

@implementation ASKCellularDataInquiry

- (ASKCellularDataInquiry)initWithBundle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ASKCellularDataInquiry;
  v6 = [(ASKCellularDataInquiry *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundle, a3);
  }

  return v7;
}

- (ASKCellularDataInquiry)init
{
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [(ASKCellularDataInquiry *)self initWithBundle:v3];

  return v4;
}

- (BOOL)isEnabledForDevice
{
  v2 = [(ASKCellularDataInquiry *)self isSupported];
  if (v2)
  {
    v3 = MEMORY[0x1E69C56E0];

    LOBYTE(v2) = [v3 isEnabled];
  }

  return v2;
}

- (BOOL)isEnabledForBundle
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(ASKCellularDataInquiry *)self isEnabledForDevice];
  if (v3)
  {
    v4 = _CTServerConnectionCreateOnTargetQueue();
    if (v4)
    {
      v5 = v4;
      v6 = [(ASKCellularDataInquiry *)self bundle];
      v7 = [v6 bundleIdentifier];

      v8 = _CTServerConnectionCopyCellularUsagePolicy();
      CFRelease(v5);
      if (v8)
      {
        v9 = [MEMORY[0x1E698C968] ask_generalLogConfig];
        if (!v9)
        {
          v9 = [MEMORY[0x1E698C968] sharedConfig];
        }

        v10 = [v9 OSLogObject];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 67240448;
          v14 = v8;
          v15 = 1026;
          v16 = HIDWORD(v8);
          _os_log_impl(&dword_1E12FC000, v10, OS_LOG_TYPE_ERROR, "Could not determine cellular usage policy, reason: CTError(domain: %{public}d, error: %{public}d)", buf, 0xEu);
        }

        goto LABEL_12;
      }

      v4 = 0;
    }

    Value = CFDictionaryGetValue(v4, *MEMORY[0x1E6965248]);
    CFRelease(0);
    if (!Value)
    {
LABEL_12:
      LOBYTE(v3) = 1;
      return v3;
    }

    LOBYTE(v3) = CFBooleanGetValue(Value) != 0;
  }

  return v3;
}

@end