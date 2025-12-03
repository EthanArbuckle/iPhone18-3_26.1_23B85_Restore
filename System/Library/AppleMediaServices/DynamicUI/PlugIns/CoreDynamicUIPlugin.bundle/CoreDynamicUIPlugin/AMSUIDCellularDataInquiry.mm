@interface AMSUIDCellularDataInquiry
- (AMSUIDCellularDataInquiry)init;
- (AMSUIDCellularDataInquiry)initWithBundle:(id)bundle;
- (BOOL)isEnabledForBundle;
- (BOOL)isEnabledForDevice;
@end

@implementation AMSUIDCellularDataInquiry

- (AMSUIDCellularDataInquiry)initWithBundle:(id)bundle
{
  bundleCopy = bundle;
  v9.receiver = self;
  v9.super_class = AMSUIDCellularDataInquiry;
  v6 = [(AMSUIDCellularDataInquiry *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundle, bundle);
  }

  return v7;
}

- (AMSUIDCellularDataInquiry)init
{
  v3 = +[NSBundle mainBundle];
  v4 = [(AMSUIDCellularDataInquiry *)self initWithBundle:v3];

  return v4;
}

- (BOOL)isEnabledForDevice
{
  isSupported = [(AMSUIDCellularDataInquiry *)self isSupported];
  if (isSupported)
  {

    LOBYTE(isSupported) = +[PSCellularDataSettingsDetail isEnabled];
  }

  return isSupported;
}

- (BOOL)isEnabledForBundle
{
  isEnabledForDevice = [(AMSUIDCellularDataInquiry *)self isEnabledForDevice];
  if (isEnabledForDevice)
  {
    v4 = _CTServerConnectionCreateOnTargetQueue();
    if (v4)
    {
      v5 = v4;
      bundle = [(AMSUIDCellularDataInquiry *)self bundle];
      bundleIdentifier = [bundle bundleIdentifier];

      v8 = _CTServerConnectionCopyCellularUsagePolicy();
      CFRelease(v5);
      if (v8)
      {
        v9 = +[AMSLogConfig sharedConfig];
        if (!v9)
        {
          v9 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject = [v9 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
        {
          *buf = 67240448;
          v14 = v8;
          v15 = 1026;
          v16 = HIDWORD(v8);
          _os_log_impl(&def_4BB18, oSLogObject, OS_LOG_TYPE_ERROR, "Could not determine cellular usage policy, reason: CTError(domain: %{public}d, error: %{public}d)", buf, 0xEu);
        }

        goto LABEL_12;
      }

      v4 = 0;
    }

    Value = CFDictionaryGetValue(v4, kCTCellularUsagePolicyDataAllowed);
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