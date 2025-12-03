@interface ASKCellularDataInquiry
- (ASKCellularDataInquiry)init;
- (ASKCellularDataInquiry)initWithBundle:(id)bundle;
- (BOOL)isEnabledForBundle;
- (BOOL)isEnabledForDevice;
@end

@implementation ASKCellularDataInquiry

- (ASKCellularDataInquiry)initWithBundle:(id)bundle
{
  bundleCopy = bundle;
  v9.receiver = self;
  v9.super_class = ASKCellularDataInquiry;
  v6 = [(ASKCellularDataInquiry *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundle, bundle);
  }

  return v7;
}

- (ASKCellularDataInquiry)init
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [(ASKCellularDataInquiry *)self initWithBundle:mainBundle];

  return v4;
}

- (BOOL)isEnabledForDevice
{
  isSupported = [(ASKCellularDataInquiry *)self isSupported];
  if (isSupported)
  {
    v3 = MEMORY[0x1E69C56E0];

    LOBYTE(isSupported) = [v3 isEnabled];
  }

  return isSupported;
}

- (BOOL)isEnabledForBundle
{
  v17 = *MEMORY[0x1E69E9840];
  isEnabledForDevice = [(ASKCellularDataInquiry *)self isEnabledForDevice];
  if (isEnabledForDevice)
  {
    v4 = _CTServerConnectionCreateOnTargetQueue();
    if (v4)
    {
      v5 = v4;
      bundle = [(ASKCellularDataInquiry *)self bundle];
      bundleIdentifier = [bundle bundleIdentifier];

      v8 = _CTServerConnectionCopyCellularUsagePolicy();
      CFRelease(v5);
      if (v8)
      {
        ask_generalLogConfig = [MEMORY[0x1E698C968] ask_generalLogConfig];
        if (!ask_generalLogConfig)
        {
          ask_generalLogConfig = [MEMORY[0x1E698C968] sharedConfig];
        }

        oSLogObject = [ask_generalLogConfig OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
        {
          *buf = 67240448;
          v14 = v8;
          v15 = 1026;
          v16 = HIDWORD(v8);
          _os_log_impl(&dword_1E12FC000, oSLogObject, OS_LOG_TYPE_ERROR, "Could not determine cellular usage policy, reason: CTError(domain: %{public}d, error: %{public}d)", buf, 0xEu);
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
      LOBYTE(isEnabledForDevice) = 1;
      return isEnabledForDevice;
    }

    LOBYTE(isEnabledForDevice) = CFBooleanGetValue(Value) != 0;
  }

  return isEnabledForDevice;
}

@end