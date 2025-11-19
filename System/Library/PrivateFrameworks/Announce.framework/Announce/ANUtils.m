@interface ANUtils
+ (BOOL)isHomeAppInstalled;
+ (BOOL)isInternalBuild;
+ (NSDateFormatter)an_dateFormatterForFilename;
+ (double)machTimeToSeconds:(unint64_t)a3;
+ (unint64_t)secondsToMachTime:(double)a3;
+ (void)asyncDispatchOnGlobalQueue:(id)a3;
@end

@implementation ANUtils

+ (BOOL)isInternalBuild
{
  if (isInternalBuild_onceToken != -1)
  {
    +[ANUtils isInternalBuild];
  }

  return isInternalBuild_isInternal;
}

uint64_t __26__ANUtils_isInternalBuild__block_invoke()
{
  result = os_variant_allows_internal_security_policies();
  isInternalBuild_isInternal = result;
  return result;
}

+ (NSDateFormatter)an_dateFormatterForFilename
{
  if (an_dateFormatterForFilename_onceToken != -1)
  {
    +[ANUtils an_dateFormatterForFilename];
  }

  v3 = an_dateFormatterForFilename_dateFormatter;

  return v3;
}

uint64_t __38__ANUtils_an_dateFormatterForFilename__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = an_dateFormatterForFilename_dateFormatter;
  an_dateFormatterForFilename_dateFormatter = v0;

  v2 = an_dateFormatterForFilename_dateFormatter;
  v3 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en-US"];
  [v2 setLocale:v3];

  v4 = an_dateFormatterForFilename_dateFormatter;

  return [v4 setDateFormat:@"yyyy_MM_dd-HHmmss.SSS"];
}

+ (BOOL)isHomeAppInstalled
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = @"com.apple.Home";
  v8 = 0;
  v3 = [MEMORY[0x277CC1E70] bundleRecordWithBundleIdentifier:v2 allowPlaceholder:0 error:&v8];
  v4 = v8;
  if (v4)
  {
    if (ANLogHandleUtils_once != -1)
    {
      +[ANUtils isHomeAppInstalled];
    }

    v5 = ANLogHandleUtils_logger;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v10 = &stru_2836DAA20;
      v11 = 2112;
      v12 = v2;
      v13 = 2112;
      v14 = v3;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_2237C8000, v5, OS_LOG_TYPE_ERROR, "%@Failed to look up bundle record for bundleID (%@), Record: %@ Error: %@", buf, 0x2Au);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3 != 0;
}

+ (double)machTimeToSeconds:(unint64_t)a3
{
  if (machTimeToSeconds__onceToken != -1)
  {
    +[ANUtils machTimeToSeconds:];
  }

  LODWORD(v3) = dword_27D09AA94;
  return (machTimeToSeconds___timeBaseInfo * a3) / (v3 * 1000000000.0);
}

+ (unint64_t)secondsToMachTime:(double)a3
{
  if (secondsToMachTime__onceToken != -1)
  {
    +[ANUtils secondsToMachTime:];
  }

  return (*algn_27D09AAA4 * a3 * (1000000000.0 / secondsToMachTime___timeBaseInfo));
}

+ (void)asyncDispatchOnGlobalQueue:(id)a3
{
  v3 = a3;
  v4 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ANUtils_asyncDispatchOnGlobalQueue___block_invoke;
  block[3] = &unk_2784E2088;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

@end