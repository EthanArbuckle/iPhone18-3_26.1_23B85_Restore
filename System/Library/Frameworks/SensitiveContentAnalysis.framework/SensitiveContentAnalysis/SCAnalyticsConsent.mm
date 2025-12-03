@interface SCAnalyticsConsent
+ (BOOL)_SCIsScreenTimeCommunicationSafetyAnalyticsEnabled;
+ (BOOL)_SCIsSensitiveContentDetectionAnalyticsEnabled;
+ (BOOL)isEnabled;
+ (void)_SCIsScreenTimeCommunicationSafetyAnalyticsEnabled;
@end

@implementation SCAnalyticsConsent

+ (BOOL)isEnabled
{
  if (+[SCAnalyticsConsent _SCIsScreenTimeCommunicationSafetyAnalyticsEnabled])
  {
    return 1;
  }

  return +[SCAnalyticsConsent _SCIsSensitiveContentDetectionAnalyticsEnabled];
}

+ (BOOL)_SCIsScreenTimeCommunicationSafetyAnalyticsEnabled
{
  v20 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v2 = getSTCommunicationClientClass_softClass;
  v19 = getSTCommunicationClientClass_softClass;
  if (!getSTCommunicationClientClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __getSTCommunicationClientClass_block_invoke;
    v14 = &unk_1E7A43950;
    v15 = &v16;
    __getSTCommunicationClientClass_block_invoke(buf);
    v2 = v17[3];
  }

  v3 = v2;
  _Block_object_dispose(&v16, 8);
  v4 = objc_alloc_init(v2);
  v10 = 0;
  v5 = [v4 currentConfigurationWithError:&v10];
  v6 = v10;
  if (v5)
  {
    isCommunicationSafetyAnalyticsEnabled = [v5 isCommunicationSafetyAnalyticsEnabled];
  }

  else
  {
    if (v6)
    {
      v8 = +[SCLog client];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        +[(SCAnalyticsConsent *)v6];
      }
    }

    else
    {
      v8 = +[SCLog client];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AEA3F000, v8, OS_LOG_TYPE_DEFAULT, "Unavailable CommSafety configuration from ScreenTime", buf, 2u);
      }
    }

    isCommunicationSafetyAnalyticsEnabled = 0;
  }

  return isCommunicationSafetyAnalyticsEnabled;
}

+ (BOOL)_SCIsSensitiveContentDetectionAnalyticsEnabled
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.communicationSafetySettings"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLForKey:@"analyticsEnabled"];
  }

  else
  {
    v5 = +[SCLog client];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = @"com.apple.communicationSafetySettings";
      _os_log_impl(&dword_1AEA3F000, v5, OS_LOG_TYPE_DEFAULT, "Unable to access user preferences domain %@", &v7, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

+ (void)_SCIsScreenTimeCommunicationSafetyAnalyticsEnabled
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_1AEA3F000, a2, OS_LOG_TYPE_ERROR, "Error fetching CommSafety configuration from ScreenTime: %@", &v2, 0xCu);
}

@end