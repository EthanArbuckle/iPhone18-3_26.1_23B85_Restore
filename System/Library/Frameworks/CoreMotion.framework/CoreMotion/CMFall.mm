@interface CMFall
+ (BOOL)areStatsAvailable;
- (id)sendStatsDataToUrl:(id)a3;
- (unint64_t)setDataCollectionConfiguration:(unint64_t)a3;
- (void)sendStatsDataToUrl:(id)a3 onCompletion:(id)a4;
- (void)simulateEvent:(unint64_t)a3;
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

- (unint64_t)setDataCollectionConfiguration:(unint64_t)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"CMFallDataCollectionConfigurationKey";
  v6[0] = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], a2, a3);
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v3, v6, &v5, 1);
  operator new();
}

- (id)sendStatsDataToUrl:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = NSStringFromSelector(a2);
  objc_msgSend_tccServiceMotionAccessWithLabel_(CMMotionUtils, v5, v4);
  if (objc_msgSend_fileHandleForWritingToURL_(CMMotionUtils, v6, a3))
  {
    sub_19B5D140C();
  }

  v11 = @"CMReturnCode";
  v12[0] = MEMORY[0x1E695E110];
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v12, &v11, 1);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)sendStatsDataToUrl:(id)a3 onCompletion:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = NSStringFromSelector(a2);
  objc_msgSend_tccServiceMotionAccessWithLabel_(CMMotionUtils, v7, v6);
  if (objc_msgSend_fileHandleForWritingToURL_(CMMotionUtils, v8, a3))
  {
    sub_19B5D140C();
  }

  v12 = @"CMReturnCode";
  v13[0] = MEMORY[0x1E695E110];
  v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v9, v13, &v12, 1);
  (*(a4 + 2))(a4, v10);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)simulateEvent:(unint64_t)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"CMAnomalyEventType";
  v5[0] = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], a2, a3);
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v3, v5, &v4, 1);
  operator new();
}

@end