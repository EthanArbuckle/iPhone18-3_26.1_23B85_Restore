@interface ABPK2DDetectionConfiguration
- (ABPK2DDetectionConfiguration)initWithAlgorithmMode:(int64_t)a3;
- (ABPK2DDetectionConfiguration)initWithAlgorithmMode:(int64_t)a3 abpkDeviceOrientation:(int64_t)a4;
@end

@implementation ABPK2DDetectionConfiguration

- (ABPK2DDetectionConfiguration)initWithAlgorithmMode:(int64_t)a3
{
  self->_abpkDeviceOrientation = 3;
  v13.receiver = self;
  v13.super_class = ABPK2DDetectionConfiguration;
  v4 = [(ABPK2DDetectionConfiguration *)&v13 init];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

  v4->_algMode = a3;
  v6 = determineDeviceANEVersionPriorOrEqualToH12();
  v5->_deviceANEVersionPriorOrEqualToH12 = v6;
  algMode = v5->_algMode;
  if (((algMode == 2) & v6) == 1)
  {
    v8 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12[0] = 0;
      v9 = " Breakthrough Gesture mode not supported on this device ";
LABEL_8:
      _os_log_impl(&dword_23EDDC000, v8, OS_LOG_TYPE_ERROR, v9, v12, 2u);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if (((algMode == 0) & v6) != 1)
  {
LABEL_10:
    v10 = v5;
    goto LABEL_11;
  }

  v8 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v12[0] = 0;
    v9 = " Gesture Detection mode not supported on this device ";
    goto LABEL_8;
  }

LABEL_9:

  v10 = 0;
LABEL_11:

  return v10;
}

- (ABPK2DDetectionConfiguration)initWithAlgorithmMode:(int64_t)a3 abpkDeviceOrientation:(int64_t)a4
{
  result = [(ABPK2DDetectionConfiguration *)self initWithAlgorithmMode:a3];
  if (result)
  {
    result->_abpkDeviceOrientation = a4;
  }

  return result;
}

@end