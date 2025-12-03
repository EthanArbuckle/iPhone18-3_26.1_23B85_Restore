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
  v3 = +[NSBundle mainBundle];
  v4 = [(ASKCellularDataInquiry *)self initWithBundle:v3];

  return v4;
}

- (BOOL)isEnabledForDevice
{
  isSupported = [(ASKCellularDataInquiry *)self isSupported];
  if (isSupported)
  {

    LOBYTE(isSupported) = +[PSCellularDataSettingsDetail isEnabled];
  }

  return isSupported;
}

- (BOOL)isEnabledForBundle
{
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
        v9 = [NSString stringWithFormat:@"Could not determine cellular usage policy, reason: CTError(domain: %d, error: %d)", v8, HIDWORD(v8)];
        ASKLog(v9, OS_LOG_TYPE_ERROR);
      }
    }

    LOBYTE(isEnabledForDevice) = 1;
  }

  return isEnabledForDevice;
}

@end