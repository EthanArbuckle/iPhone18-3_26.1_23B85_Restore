@interface ANSTVideoMaskRefineAlgorithmConfiguration
- (ANSTVideoMaskRefineAlgorithmConfiguration)initWithVersion:(unint64_t)a3;
- (id)description;
@end

@implementation ANSTVideoMaskRefineAlgorithmConfiguration

- (ANSTVideoMaskRefineAlgorithmConfiguration)initWithVersion:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = ANSTVideoMaskRefineAlgorithmConfiguration;
  return [(ANSTConfiguration *)&v4 initWithVersion:a3];
}

- (id)description
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_version(self, a2, v2);
  v6 = ANSTVideoMaskRefineAlgorithmVersionToNSString(v5);
  v9 = objc_msgSend_qualityOfService(self, v7, v8);
  v11 = v9;
  if (v9 > 20)
  {
    switch(v9)
    {
      case 21:
        objc_msgSend_stringWithFormat_(v4, v10, @"ANSTVideoMaskRefineAlgorithmConfiguration [version %@, QoS %@]", v6, @"DEFAULT");
        goto LABEL_17;
      case 33:
        objc_msgSend_stringWithFormat_(v4, v10, @"ANSTVideoMaskRefineAlgorithmConfiguration [version %@, QoS %@]", v6, @"USER_INTERACTIVE");
        goto LABEL_17;
      case 25:
        objc_msgSend_stringWithFormat_(v4, v10, @"ANSTVideoMaskRefineAlgorithmConfiguration [version %@, QoS %@]", v6, @"USER_INITIATED");
        goto LABEL_17;
    }
  }

  else
  {
    switch(v9)
    {
      case 0:
        objc_msgSend_stringWithFormat_(v4, v10, @"ANSTVideoMaskRefineAlgorithmConfiguration [version %@, QoS %@]", v6, @"UNSPECIFIED");
        goto LABEL_17;
      case 9:
        objc_msgSend_stringWithFormat_(v4, v10, @"ANSTVideoMaskRefineAlgorithmConfiguration [version %@, QoS %@]", v6, @"BACKGROUND");
        goto LABEL_17;
      case 17:
        objc_msgSend_stringWithFormat_(v4, v10, @"ANSTVideoMaskRefineAlgorithmConfiguration [version %@, QoS %@]", v6, @"UTILITY");
        goto LABEL_17;
    }
  }

  v12 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_22E6585F0(v11, v12);
  }

  objc_msgSend_stringWithFormat_(v4, v13, @"ANSTVideoMaskRefineAlgorithmConfiguration [version %@, QoS %@]", v6, @"UNEXPECTED_ENUM_VALUE");
  v14 = LABEL_17:;

  return v14;
}

@end