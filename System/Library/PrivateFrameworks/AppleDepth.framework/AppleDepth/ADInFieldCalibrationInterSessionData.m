@interface ADInFieldCalibrationInterSessionData
+ (id)interSessionDataFromFile:(id)a3;
- (ADInFieldCalibrationInterSessionData)init;
- (ADInFieldCalibrationInterSessionData)initWithDictionaryRepresentation:(id)a3;
- (BOOL)writeToFile:(id)a3 atomically:(BOOL)a4;
- (id)persistenceData;
- (int64_t)insertEntryAndCalculate:(id)a3 withWeight:(double)a4 toResult:(id *)a5;
@end

@implementation ADInFieldCalibrationInterSessionData

- (BOOL)writeToFile:(id)a3 atomically:(BOOL)a4
{
  v11 = *MEMORY[0x277D85DE8];
  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136446466;
      v8 = "/Library/Caches/com.apple.xbs/Sources/AppleDepth/AppleDepth/Utils/ADInFieldCalibrationInterSessionData.mm";
      v9 = 2082;
      v10 = "[ADInFieldCalibrationInterSessionData writeToFile:atomically:]";
      v4 = MEMORY[0x277D86220];
      v5 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&dword_2402F6000, v4, v5, "Deprecated function was called: %{public}s : %{public}s", &v7, 0x16u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = 136446466;
    v8 = "/Library/Caches/com.apple.xbs/Sources/AppleDepth/AppleDepth/Utils/ADInFieldCalibrationInterSessionData.mm";
    v9 = 2082;
    v10 = "[ADInFieldCalibrationInterSessionData writeToFile:atomically:]";
    v4 = MEMORY[0x277D86220];
    v5 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }

  return 0;
}

- (int64_t)insertEntryAndCalculate:(id)a3 withWeight:(double)a4 toResult:(id *)a5
{
  v6 = [(ADInterSessionFilter *)self->_isf insertEntryAndCalculate:a3 withWeight:a4];
  *a5 = v6;
  if (v6)
  {
    return 0;
  }

  else
  {
    return -22950;
  }
}

- (ADInFieldCalibrationInterSessionData)init
{
  v6.receiver = self;
  v6.super_class = ADInFieldCalibrationInterSessionData;
  v2 = [(ADInFieldCalibrationInterSessionData *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CED098]);
    isfParameters = v2->_isfParameters;
    v2->_isfParameters = v3;

    v2->_version = 0;
  }

  return v2;
}

- (ADInFieldCalibrationInterSessionData)initWithDictionaryRepresentation:(id)a3
{
  v4 = objc_opt_new();

  return v4;
}

- (id)persistenceData
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)interSessionDataFromFile:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136446466;
      v7 = "/Library/Caches/com.apple.xbs/Sources/AppleDepth/AppleDepth/Utils/ADInFieldCalibrationInterSessionData.mm";
      v8 = 2082;
      v9 = "+[ADInFieldCalibrationInterSessionData interSessionDataFromFile:]";
      v3 = MEMORY[0x277D86220];
      v4 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&dword_2402F6000, v3, v4, "Deprecated function was called: %{public}s : %{public}s", &v6, 0x16u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = 136446466;
    v7 = "/Library/Caches/com.apple.xbs/Sources/AppleDepth/AppleDepth/Utils/ADInFieldCalibrationInterSessionData.mm";
    v8 = 2082;
    v9 = "+[ADInFieldCalibrationInterSessionData interSessionDataFromFile:]";
    v3 = MEMORY[0x277D86220];
    v4 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }

  return 0;
}

@end