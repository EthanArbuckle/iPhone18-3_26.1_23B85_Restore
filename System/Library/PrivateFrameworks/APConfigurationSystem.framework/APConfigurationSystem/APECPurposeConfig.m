@interface APECPurposeConfig
+ (Class)_classForPurpose:(int64_t)a3;
+ (id)purposeConfig:(int64_t)a3;
@end

@implementation APECPurposeConfig

+ (id)purposeConfig:(int64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend__classForPurpose_(a1, a2, a3);
  if (v4)
  {
    v6 = objc_msgSend_configurationForClass_(APConfigurationMediator, v5, v4);
  }

  else
  {
    if (a3 >= 1)
    {
      v7 = APLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138478083;
        v14 = objc_opt_class();
        v15 = 2048;
        v16 = a3;
        v8 = v14;
        _os_log_impl(&dword_1CA1CE000, v7, OS_LOG_TYPE_ERROR, "[%{private}@]: Error, class not implemented for purpose: %lu.", buf, 0x16u);
      }

      v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, @"Error: Class not implemented for purpose: %lu.", a3);
      APSimulateCrash();
    }

    v6 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (Class)_classForPurpose:(int64_t)a3
{
  v4 = 0;
  if (a3 > 8500)
  {
    switch(a3)
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
    switch(a3)
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