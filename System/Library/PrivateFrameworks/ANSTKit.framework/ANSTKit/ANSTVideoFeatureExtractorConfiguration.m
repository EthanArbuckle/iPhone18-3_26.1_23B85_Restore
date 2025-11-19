@interface ANSTVideoFeatureExtractorConfiguration
+ (unint64_t)foundationModelVersionOfFeatureExtractorVersion:(unint64_t)a3;
- (ANSTVideoFeatureExtractorConfiguration)initWithVersion:(unint64_t)a3;
- (id)description;
@end

@implementation ANSTVideoFeatureExtractorConfiguration

- (ANSTVideoFeatureExtractorConfiguration)initWithVersion:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = ANSTVideoFeatureExtractorConfiguration;
  v5 = [(ANSTConfiguration *)&v7 initWithVersion:?];
  if (v5)
  {
    v5->_foundationModelVersion = objc_msgSend_foundationModelVersionOfFeatureExtractorVersion_(ANSTVideoFeatureExtractorConfiguration, v4, a3);
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_msgSend_version(self, a2, v2);
  v5 = ANSTVideoFeatureExtractorVersionToNSString(v4);
  v7 = objc_msgSend_stringWithFormat_(v3, v6, @"ANSTVideoFeatureExtractorConfiguration [version %@]", v5);

  return v7;
}

+ (unint64_t)foundationModelVersionOfFeatureExtractorVersion:(unint64_t)a3
{
  if (a3 != 0x10000)
  {
    v3 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_22E65CB18();
    }
  }

  return 0x10000;
}

@end