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
  v3 = +[NSBundle mainBundle];
  v4 = [(ASKCellularDataInquiry *)self initWithBundle:v3];

  return v4;
}

- (BOOL)isEnabledForDevice
{
  v2 = [(ASKCellularDataInquiry *)self isSupported];
  if (v2)
  {

    LOBYTE(v2) = +[PSCellularDataSettingsDetail isEnabled];
  }

  return v2;
}

- (BOOL)isEnabledForBundle
{
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
        v9 = [NSString stringWithFormat:@"Could not determine cellular usage policy, reason: CTError(domain: %d, error: %d)", v8, HIDWORD(v8)];
        ASKLog(v9, OS_LOG_TYPE_ERROR);
      }
    }

    LOBYTE(v3) = 1;
  }

  return v3;
}

@end