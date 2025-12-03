@interface MLCPlatformInfo
+ (BOOL)gpuUseMPSGraphConvolution;
+ (BOOL)isAneGraphPartitioningConfigSet;
+ (BOOL)isAnePlistKept;
+ (BOOL)isAneSaveGraphPartitioningConfigSet;
+ (BOOL)isInternalBuild;
+ (BOOL)isRNGSeeded;
+ (BOOL)multiGPUUsageUnsupported;
+ (id)aneGraphPartitioningConfigEnvVariable;
+ (id)aneKeepPlistEnvVariable;
+ (id)aneSaveGraphPartitioningConfig;
+ (id)aneSubType;
+ (id)bootArgs;
+ (id)buildVersion;
+ (id)getRandomSeed;
+ (id)mpsGraphConvolutionEnvVariable;
+ (id)osVersion;
+ (id)seedEnvVariable;
+ (int)aneSubTypeVersion;
+ (int64_t)randomSeed;
+ (void)aneSubTypeVersion;
+ (void)setRandomSeedTo:(id)to;
@end

@implementation MLCPlatformInfo

+ (BOOL)isInternalBuild
{
  if (isInternalBuild_onceToken != -1)
  {
    +[MLCPlatformInfo isInternalBuild];
  }

  return isInternalBuild_isInternalBuild;
}

uint64_t __34__MLCPlatformInfo_isInternalBuild__block_invoke()
{
  result = MGGetBoolAnswer();
  isInternalBuild_isInternalBuild = result;
  return result;
}

+ (BOOL)multiGPUUsageUnsupported
{
  if ([self gpuUsageUnsupported])
  {
    return 1;
  }

  v3 = [MLCDeviceGPU filteredGPUListIncludingLowPoweredBuiltin:0];
  v4 = [MLCDeviceGPU multiGPUNotSupportedInFilteredGPUList:v3];

  return v4;
}

+ (id)buildVersion
{
  if (buildVersion_onceToken != -1)
  {
    +[MLCPlatformInfo buildVersion];
  }

  v3 = buildVersion_buildVersionStr;

  return v3;
}

uint64_t __31__MLCPlatformInfo_buildVersion__block_invoke()
{
  buildVersion_buildVersionStr = MGGetStringAnswer();

  return MEMORY[0x2821F96F8]();
}

+ (id)osVersion
{
  v2 = MGCopyAnswer();
  v3 = MGCopyAnswer();
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"???";
  }

  v5 = v4;
  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = @"???";
  }

  v7 = v6;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ (%@)", @"iOS", v5, v7];
  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v8;
}

+ (id)bootArgs
{
  v2 = malloc_type_calloc(1uLL, 0x400uLL, 0xD8068560uLL);
  v5 = 1023;
  if (sysctlbyname("kern.bootargs", v2, &v5, 0, 0))
  {
    v3 = &stru_284B8AA80;
  }

  else
  {
    v2[1023] = 0;
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", v2];
  }

  free(v2);

  return v3;
}

+ (id)mpsGraphConvolutionEnvVariable
{
  if (mpsGraphConvolutionEnvVariable_onceToken != -1)
  {
    +[MLCPlatformInfo mpsGraphConvolutionEnvVariable];
  }

  v3 = mpsGraphConvolutionEnvVariable_envVariable;

  return v3;
}

void __49__MLCPlatformInfo_mpsGraphConvolutionEnvVariable__block_invoke()
{
  v3 = [MEMORY[0x277CCAC38] processInfo];
  v0 = [v3 environment];
  v1 = [v0 objectForKeyedSubscript:@"MLC_GPU_USE_MPSGRAPHCONVOLUTION"];
  v2 = mpsGraphConvolutionEnvVariable_envVariable;
  mpsGraphConvolutionEnvVariable_envVariable = v1;
}

+ (BOOL)gpuUseMPSGraphConvolution
{
  if (gpuUseMPSGraphConvolution_onceToken != -1)
  {
    +[MLCPlatformInfo gpuUseMPSGraphConvolution];
  }

  return gpuUseMPSGraphConvolution_useMPSGraphConvolution;
}

void __44__MLCPlatformInfo_gpuUseMPSGraphConvolution__block_invoke()
{
  v0 = +[MLCPlatformInfo mpsGraphConvolutionEnvVariable];
  gpuUseMPSGraphConvolution_useMPSGraphConvolution = v0 != 0;
}

+ (id)seedEnvVariable
{
  if (seedEnvVariable_onceToken != -1)
  {
    +[MLCPlatformInfo seedEnvVariable];
  }

  v3 = seedEnvVariable_envVariable;

  return v3;
}

void __34__MLCPlatformInfo_seedEnvVariable__block_invoke()
{
  v3 = [MEMORY[0x277CCAC38] processInfo];
  v0 = [v3 environment];
  v1 = [v0 objectForKeyedSubscript:@"MLC_USE_RNG_SEED"];
  v2 = seedEnvVariable_envVariable;
  seedEnvVariable_envVariable = v1;
}

+ (BOOL)isRNGSeeded
{
  if (isRNGSeeded_onceToken != -1)
  {
    +[MLCPlatformInfo isRNGSeeded];
  }

  return isSeeded;
}

void __30__MLCPlatformInfo_isRNGSeeded__block_invoke()
{
  if (isSeeded != 1)
  {
    v0 = +[MLCPlatformInfo seedEnvVariable];
    isSeeded = v0 != 0;
  }
}

+ (int64_t)randomSeed
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__MLCPlatformInfo_randomSeed__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  if (randomSeed_onceToken != -1)
  {
    dispatch_once(&randomSeed_onceToken, block);
  }

  return randomSeed;
}

void __29__MLCPlatformInfo_randomSeed__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = +[MLCPlatformInfo seedEnvVariable];
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v2, "longLongValue")}];
  randomSeed = [v3 longValue];

  v4 = +[MLCLog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = NSStringFromSelector(*(a1 + 32));
    v7 = 138412546;
    v8 = v5;
    v9 = 2048;
    v10 = randomSeed;
    _os_log_impl(&dword_238C1D000, v4, OS_LOG_TYPE_INFO, "%@: Random seed requested. Found seed: %ld", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)setRandomSeedTo:(id)to
{
  v15 = *MEMORY[0x277D85DE8];
  toCopy = to;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__MLCPlatformInfo_setRandomSeedTo___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (setRandomSeedTo__onceToken != -1)
  {
    dispatch_once(&setRandomSeedTo__onceToken, block);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([selfCopy isRNGSeeded])
  {
    v7 = +[MLCLog framework];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(a2);
      *buf = 138412546;
      v12 = v8;
      v13 = 2048;
      v14 = randomSeed;
      _os_log_impl(&dword_238C1D000, v7, OS_LOG_TYPE_INFO, "%@: Overwriting the random seed number which has already been set to : %ld", buf, 0x16u);
    }
  }

  isSeeded = 1;
  randomSeed = [toCopy longValue];
  objc_sync_exit(selfCopy);

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)getRandomSeed
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([selfCopy isRNGSeeded])
  {
    v3 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(selfCopy, "randomSeed")}];
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(selfCopy);

  return v3;
}

+ (id)aneSubType
{
  if (aneSubType_onceToken != -1)
  {
    +[MLCPlatformInfo aneSubType];
  }

  v3 = aneSubType_aneSubType;

  return v3;
}

uint64_t __29__MLCPlatformInfo_aneSubType__block_invoke()
{
  if (AppleNeuralEngineLibrary_onceToken_0 != -1)
  {
    __29__MLCPlatformInfo_aneSubType__block_invoke_cold_1();
  }

  if (AppleNeuralEngineLibrary_frameworkLibrary_0 && softLinkClass_ANEDeviceInfo())
  {
    v0 = [softLinkClass_ANEDeviceInfo() aneSubType];
  }

  else
  {
    v0 = [MEMORY[0x277CCACA8] string];
  }

  aneSubType_aneSubType = v0;

  return MEMORY[0x2821F96F8]();
}

+ (int)aneSubTypeVersion
{
  aneSubType = [self aneSubType];
  capitalizedString = [aneSubType capitalizedString];

  v5 = [capitalizedString rangeOfString:@"H"];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = +[MLCLog framework];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      +[(MLCPlatformInfo *)a2];
    }

    v7 = 0;
  }

  else
  {
    v8 = strlen([@"H" fileSystemRepresentation]) + v5;
    v9 = [capitalizedString substringWithRange:{v8, objc_msgSend(capitalizedString, "length") - v8}];
    v7 = atoi([v9 fileSystemRepresentation]);
  }

  return v7;
}

+ (id)aneKeepPlistEnvVariable
{
  if (aneKeepPlistEnvVariable_onceToken != -1)
  {
    +[MLCPlatformInfo aneKeepPlistEnvVariable];
  }

  v3 = aneKeepPlistEnvVariable_envVariable;

  return v3;
}

void __42__MLCPlatformInfo_aneKeepPlistEnvVariable__block_invoke()
{
  v3 = [MEMORY[0x277CCAC38] processInfo];
  v0 = [v3 environment];
  v1 = [v0 objectForKeyedSubscript:@"MLC_ANE_KEEP_PLIST"];
  v2 = aneKeepPlistEnvVariable_envVariable;
  aneKeepPlistEnvVariable_envVariable = v1;
}

+ (BOOL)isAnePlistKept
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__MLCPlatformInfo_isAnePlistKept__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (isAnePlistKept_onceToken != -1)
  {
    dispatch_once(&isAnePlistKept_onceToken, block);
  }

  return isAnePlistKept_isEnvVariableSet;
}

void __33__MLCPlatformInfo_isAnePlistKept__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) aneKeepPlistEnvVariable];
  isAnePlistKept_isEnvVariableSet = v1 != 0;
}

+ (id)aneGraphPartitioningConfigEnvVariable
{
  if (aneGraphPartitioningConfigEnvVariable_onceToken != -1)
  {
    +[MLCPlatformInfo aneGraphPartitioningConfigEnvVariable];
  }

  v3 = aneGraphPartitioningConfigEnvVariable_envVariable;

  return v3;
}

void __56__MLCPlatformInfo_aneGraphPartitioningConfigEnvVariable__block_invoke()
{
  v3 = [MEMORY[0x277CCAC38] processInfo];
  v0 = [v3 environment];
  v1 = [v0 objectForKeyedSubscript:@"MLC_ANE_GRAPH_PARTITIONING_CONFIG"];
  v2 = aneGraphPartitioningConfigEnvVariable_envVariable;
  aneGraphPartitioningConfigEnvVariable_envVariable = v1;
}

+ (BOOL)isAneGraphPartitioningConfigSet
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__MLCPlatformInfo_isAneGraphPartitioningConfigSet__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (isAneGraphPartitioningConfigSet_onceToken != -1)
  {
    dispatch_once(&isAneGraphPartitioningConfigSet_onceToken, block);
  }

  return isAneGraphPartitioningConfigSet_isEnvVariableSet;
}

void __50__MLCPlatformInfo_isAneGraphPartitioningConfigSet__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) aneGraphPartitioningConfigEnvVariable];
  isAneGraphPartitioningConfigSet_isEnvVariableSet = v1 != 0;
}

+ (id)aneSaveGraphPartitioningConfig
{
  if (aneSaveGraphPartitioningConfig_onceToken != -1)
  {
    +[MLCPlatformInfo aneSaveGraphPartitioningConfig];
  }

  v3 = aneSaveGraphPartitioningConfig_envVariable;

  return v3;
}

void __49__MLCPlatformInfo_aneSaveGraphPartitioningConfig__block_invoke()
{
  v3 = [MEMORY[0x277CCAC38] processInfo];
  v0 = [v3 environment];
  v1 = [v0 objectForKeyedSubscript:@"MLC_ANE_SAVE_GRAPH_PARTITIONING_CONFIG"];
  v2 = aneSaveGraphPartitioningConfig_envVariable;
  aneSaveGraphPartitioningConfig_envVariable = v1;
}

+ (BOOL)isAneSaveGraphPartitioningConfigSet
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__MLCPlatformInfo_isAneSaveGraphPartitioningConfigSet__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (isAneSaveGraphPartitioningConfigSet_onceToken != -1)
  {
    dispatch_once(&isAneSaveGraphPartitioningConfigSet_onceToken, block);
  }

  return isAneSaveGraphPartitioningConfigSet_isEnvVariableSet;
}

void __54__MLCPlatformInfo_isAneSaveGraphPartitioningConfigSet__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) aneSaveGraphPartitioningConfig];
  isAneSaveGraphPartitioningConfigSet_isEnvVariableSet = v1 != 0;
}

+ (void)aneSubTypeVersion
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(self);
  v7 = 138412802;
  v8 = v5;
  v9 = 2112;
  v10 = @"H";
  v11 = 2112;
  v12 = a2;
  _os_log_debug_impl(&dword_238C1D000, a3, OS_LOG_TYPE_DEBUG, "%@: substring %@ is not found in ANE subtype=%@", &v7, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

@end