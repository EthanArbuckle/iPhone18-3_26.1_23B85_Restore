@interface LSRebuildStatisticsGatherer
- (LSRebuildStatisticsGatherer)init;
- (uint64_t)performContainerizedContentScan:(uint64_t)result;
- (uint64_t)performCryptexContentScan:(uint64_t)result;
- (uint64_t)performRebuild:(uint64_t)result;
- (uint64_t)performSystemContentSave:(uint64_t)result;
- (uint64_t)performSystemContentScan:(uint64_t)result;
- (uint64_t)setIsUserRequested:(uint64_t)result;
- (uint64_t)setMigratorRunning:(uint64_t)result;
- (uint64_t)setOnlyCryptexContent:(uint64_t)result;
- (uint64_t)setRebuildReasonFlags:(uint64_t)result;
- (void)registeredBundleOfType:(uint64_t)a1;
- (void)setRebuildError:(void *)a1;
- (void)submitAnalytics;
@end

@implementation LSRebuildStatisticsGatherer

- (LSRebuildStatisticsGatherer)init
{
  v3.receiver = self;
  v3.super_class = LSRebuildStatisticsGatherer;
  result = [(LSRebuildStatisticsGatherer *)&v3 init];
  if (result)
  {
    result->_numApplications = 0;
    *&result->_containerizedContentScanTime = 0u;
    *&result->_systemContentSaveTime = 0u;
    *&result->_totalRebuildTime = 0u;
  }

  return result;
}

void __46__LSRebuildStatisticsGatherer_submitAnalytics__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.lsd.rebuildAnalyticsSubmit", v2);
  v1 = _MergedGlobals_1;
  _MergedGlobals_1 = v0;
}

- (uint64_t)performRebuild:(uint64_t)result
{
  if (result)
  {
    result = OUTLINED_FUNCTION_5_3(result, a2);
    *(v2 + 8) = result;
  }

  return result;
}

- (uint64_t)performSystemContentScan:(uint64_t)result
{
  if (result)
  {
    result = OUTLINED_FUNCTION_5_3(result, a2);
    *(v2 + 16) = result;
  }

  return result;
}

- (uint64_t)performSystemContentSave:(uint64_t)result
{
  if (result)
  {
    result = OUTLINED_FUNCTION_5_3(result, a2);
    *(v2 + 24) = result;
  }

  return result;
}

- (uint64_t)performCryptexContentScan:(uint64_t)result
{
  if (result)
  {
    result = OUTLINED_FUNCTION_5_3(result, a2);
    *(v2 + 32) = result;
  }

  return result;
}

- (uint64_t)performContainerizedContentScan:(uint64_t)result
{
  if (result)
  {
    result = OUTLINED_FUNCTION_5_3(result, a2);
    *(v2 + 40) = result;
  }

  return result;
}

- (void)registeredBundleOfType:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v7 = v3;
    if ([v3 isEqualToString:@"PluginKitPlugin"])
    {
      v5 = 48;
LABEL_10:
      v4 = v7;
LABEL_11:
      ++*(a1 + v5);
      goto LABEL_12;
    }

    if ([v7 isEqualToString:@"CoreServices"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"Internal") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"User") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"System") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"SystemAppPlaceholder"))
    {
      v5 = 56;
      goto LABEL_10;
    }

    v6 = [v7 isEqualToString:@"VPNPlugin"];
    v4 = v7;
    if (v6)
    {
      v5 = 56;
      goto LABEL_11;
    }
  }

LABEL_12:
}

- (void)submitAnalytics
{
  if (a1)
  {
    if (qword_1ED4452F8 != -1)
    {
      dispatch_once(&qword_1ED4452F8, &__block_literal_global_48);
    }

    if (qword_1ED445300 || (qword_1ED445300 = dlopen("/System/Library/PrivateFrameworks/CoreAnalytics.framework/CoreAnalytics", 2)) != 0)
    {
      v2 = os_transaction_create();
      v3 = _MergedGlobals_1;
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __46__LSRebuildStatisticsGatherer_submitAnalytics__block_invoke_21;
      v5[3] = &unk_1E6A18F50;
      v5[4] = a1;
      v6 = v2;
      v4 = v2;
      dispatch_async(v3, v5);
    }

    else
    {
      v4 = _LSDefaultLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18162D000, v4, OS_LOG_TYPE_ERROR, "CoreAnalytics is not available; not sending rebuild analytics", buf, 2u);
      }
    }
  }
}

void __46__LSRebuildStatisticsGatherer_submitAnalytics__block_invoke_21(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = OUTLINED_FUNCTION_1_9();
  if (v5)
  {
    LOBYTE(v5) = *(v5 + 64);
  }

  v6 = [v4 numberWithBool:v5 & 1];
  OUTLINED_FUNCTION_3_3();

  v7 = OUTLINED_FUNCTION_1_9();
  if (v8)
  {
    LOBYTE(v8) = *(v8 + 66);
  }

  v9 = [v7 numberWithBool:v8 & 1];
  OUTLINED_FUNCTION_3_3();

  v10 = OUTLINED_FUNCTION_1_9();
  if (v11)
  {
    LOBYTE(v11) = *(v11 + 65);
  }

  v12 = [v10 numberWithBool:v11 & 1];
  OUTLINED_FUNCTION_3_3();

  v13 = OUTLINED_FUNCTION_1_9();
  if (v14)
  {
    v15 = *(v14 + 68);
  }

  else
  {
    v15 = 0;
  }

  v16 = [v13 numberWithUnsignedShort:v15];
  OUTLINED_FUNCTION_3_3();

  v17 = OUTLINED_FUNCTION_1_9();
  v19 = [v17 numberWithUnsignedLongLong:*(v18 + 48)];
  OUTLINED_FUNCTION_3_3();

  v20 = OUTLINED_FUNCTION_1_9();
  v22 = [v20 numberWithUnsignedLongLong:*(v21 + 56)];
  OUTLINED_FUNCTION_3_3();

  v23 = *(a1 + 32);
  if (v23)
  {
    v24 = *(v23 + 72);
    v25 = v24;
    if (v24)
    {
      v26 = MEMORY[0x1E696AEC0];
      v27 = [v24 domain];
      v1 = [v26 stringWithFormat:@"%@, %ld", v27, objc_msgSend(v25, "code")];
      OUTLINED_FUNCTION_2_9();
    }
  }

  else
  {
    v25 = 0;
  }

  v28 = *(a1 + 32);
  if (v28[1])
  {
    v29 = OUTLINED_FUNCTION_6_2();
    v30 = [v1 numberWithDouble:OUTLINED_FUNCTION_0_14(v29) / 1000000000.0];
    OUTLINED_FUNCTION_2_9();

    v31 = MEMORY[0x1E696AD98];
    v32 = (*(*(a1 + 32) + 8) - vaddvq_s64(vaddq_s64(*(*(a1 + 32) + 16), *(*(a1 + 32) + 32))));
    v33 = _LSGetMachTimebase();
    v1 = [v31 numberWithDouble:v33 / HIDWORD(v33) * v32 / 1000000000.0];
    OUTLINED_FUNCTION_2_9();

    v28 = *(a1 + 32);
  }

  if (v28[2])
  {
    v34 = OUTLINED_FUNCTION_6_2();
    v1 = [v1 numberWithDouble:OUTLINED_FUNCTION_0_14(v34) / 1000000000.0];
    OUTLINED_FUNCTION_2_9();

    v28 = *(a1 + 32);
  }

  if (v28[3])
  {
    v35 = OUTLINED_FUNCTION_6_2();
    v1 = [v1 numberWithDouble:OUTLINED_FUNCTION_0_14(v35) / 1000000000.0];
    OUTLINED_FUNCTION_2_9();

    v28 = *(a1 + 32);
  }

  if (v28[4])
  {
    v36 = OUTLINED_FUNCTION_6_2();
    v37 = [v1 numberWithDouble:OUTLINED_FUNCTION_0_14(v36) / 1000000000.0];
    OUTLINED_FUNCTION_2_9();

    v28 = *(a1 + 32);
  }

  if (v28[5])
  {
    v38 = MEMORY[0x1E696AD98];
    v39 = _LSGetMachTimebase();
    v40 = [v38 numberWithDouble:OUTLINED_FUNCTION_0_14(v39) / 1000000000.0];
    [v3 setObject:v40 forKeyedSubscript:@"containerizedContentScanTime"];
  }

  v41 = _LSDefaultLog();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v44 = v3;
    _os_log_impl(&dword_18162D000, v41, OS_LOG_TYPE_DEFAULT, "Noting rebuild statistics: %{public}@", buf, 0xCu);
  }

  softLinkAnalyticsSendEvent(@"com.apple.coreservices.DatabaseRebuildStatistics", v3);
  v42 = *MEMORY[0x1E69E9840];
}

- (uint64_t)setOnlyCryptexContent:(uint64_t)result
{
  if (result)
  {
    *(result + 64) = a2;
  }

  return result;
}

- (uint64_t)setMigratorRunning:(uint64_t)result
{
  if (result)
  {
    *(result + 65) = a2;
  }

  return result;
}

- (uint64_t)setIsUserRequested:(uint64_t)result
{
  if (result)
  {
    *(result + 66) = a2;
  }

  return result;
}

- (uint64_t)setRebuildReasonFlags:(uint64_t)result
{
  if (result)
  {
    *(result + 68) = a2;
  }

  return result;
}

- (void)setRebuildError:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 72);
  }
}

@end