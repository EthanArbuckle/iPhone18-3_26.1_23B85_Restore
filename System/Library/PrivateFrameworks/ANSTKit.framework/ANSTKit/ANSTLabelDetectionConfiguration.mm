@interface ANSTLabelDetectionConfiguration
- (ANSTLabelDetectionConfiguration)initWithVersion:(unint64_t)version;
- (id)description;
@end

@implementation ANSTLabelDetectionConfiguration

- (ANSTLabelDetectionConfiguration)initWithVersion:(unint64_t)version
{
  v4.receiver = self;
  v4.super_class = ANSTLabelDetectionConfiguration;
  result = [(ANSTConfiguration *)&v4 initWithVersion:version];
  if (result)
  {
    result->_networkResolution = 0;
    result->_runningFrameRate = 0;
  }

  return result;
}

- (id)description
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_version(self, a2, v2);
  v6 = ANSTLabelDetectionVersionToNSString(v5);
  v9 = objc_msgSend_qualityOfService(self, v7, v8);
  v10 = v9;
  if (v9 > 20)
  {
    switch(v9)
    {
      case 21:
        v11 = @"DEFAULT";
        goto LABEL_17;
      case 33:
        v11 = @"USER_INTERACTIVE";
        goto LABEL_17;
      case 25:
        v11 = @"USER_INITIATED";
        goto LABEL_17;
    }
  }

  else
  {
    switch(v9)
    {
      case 0:
        v11 = @"UNSPECIFIED";
        goto LABEL_17;
      case 9:
        v11 = @"BACKGROUND";
        goto LABEL_17;
      case 17:
        v11 = @"UTILITY";
        goto LABEL_17;
    }
  }

  v12 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_22E6585F0(v10, v12);
  }

  v11 = @"UNEXPECTED_ENUM_VALUE";
LABEL_17:
  v13 = ANSTLabelDetectionResolutionToNSString(self->_networkResolution);
  v14 = ANSTLabelDetectionFrameRateToNSString(self->_runningFrameRate);
  v16 = objc_msgSend_stringWithFormat_(v4, v15, @"ANSTLabelDetectionConfiguration [version %@, QoS %@, networkResolution %@, runningFrameRate %@]", v6, v11, v13, v14);

  return v16;
}

@end