@interface CMFall
+ (BOOL)areStatsAvailable;
- (id)sendStatsDataToUrl:(id)url;
- (unint64_t)setDataCollectionConfiguration:(unint64_t)configuration;
- (void)sendStatsDataToUrl:(id)url onCompletion:(id)completion;
- (void)simulateEvent:(unint64_t)event;
@end

@implementation CMFall

+ (BOOL)areStatsAvailable
{
  if (sub_19B4215D8())
  {
    return 0;
  }

  return objc_msgSend_featureAvailability_(CMMotionUtils, v2, "kCLConnectionMessageFallStatsAvailable");
}

- (unint64_t)setDataCollectionConfiguration:(unint64_t)configuration
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"CMFallDataCollectionConfigurationKey";
  v6[0] = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], a2, configuration);
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v3, v6, &v5, 1);
  operator new();
}

- (id)sendStatsDataToUrl:(id)url
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = NSStringFromSelector(a2);
  objc_msgSend_tccServiceMotionAccessWithLabel_(CMMotionUtils, v5, v4);
  if (objc_msgSend_fileHandleForWritingToURL_(CMMotionUtils, v6, url))
  {
    sub_19B5D140C();
  }

  v11 = @"CMReturnCode";
  v12[0] = MEMORY[0x1E695E110];
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v12, &v11, 1);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)sendStatsDataToUrl:(id)url onCompletion:(id)completion
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = NSStringFromSelector(a2);
  objc_msgSend_tccServiceMotionAccessWithLabel_(CMMotionUtils, v7, v6);
  if (objc_msgSend_fileHandleForWritingToURL_(CMMotionUtils, v8, url))
  {
    sub_19B5D140C();
  }

  v12 = @"CMReturnCode";
  v13[0] = MEMORY[0x1E695E110];
  v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v9, v13, &v12, 1);
  (*(completion + 2))(completion, v10);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)simulateEvent:(unint64_t)event
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"CMAnomalyEventType";
  v5[0] = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], a2, event);
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v3, v5, &v4, 1);
  operator new();
}

@end