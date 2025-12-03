@interface APECPurposeConfig
+ (Class)_classForPurpose:(int64_t)purpose;
+ (id)purposeConfig:(int64_t)config;
@end

@implementation APECPurposeConfig

+ (id)purposeConfig:(int64_t)config
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend__classForPurpose_(self, a2, config);
  if (v4)
  {
    v6 = objc_msgSend_configurationForClass_(APConfigurationMediator, v5, v4);
  }

  else
  {
    if (config >= 1)
    {
      v7 = APLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138478083;
        v14 = objc_opt_class();
        v15 = 2048;
        configCopy = config;
        v8 = v14;
        _os_log_impl(&dword_1CA1CE000, v7, OS_LOG_TYPE_ERROR, "[%{private}@]: Error, class not implemented for purpose: %lu.", buf, 0x16u);
      }

      v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, @"Error: Class not implemented for purpose: %lu.", config);
      APSimulateCrash();
    }

    v6 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (Class)_classForPurpose:(int64_t)purpose
{
  v4 = 0;
  if (purpose > 8500)
  {
    switch(purpose)
    {
      case 8501:
        v5 = off_1E83689A0;
        break;
      case 8502:
        v5 = off_1E83689A8;
        break;
      case 8503:
        v5 = off_1E8368990;
        break;
      default:
        goto LABEL_15;
    }
  }

  else
  {
    switch(purpose)
    {
      case 'd':
        v5 = off_1E8368998;
        break;
      case 'e':
        v5 = off_1E8368988;
        break;
      case 'g':
        v5 = off_1E83689B8;
        break;
      default:
        goto LABEL_15;
    }
  }

  v6 = *v5;
  v4 = objc_opt_class();
LABEL_15:

  return v4;
}

@end