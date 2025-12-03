@interface _ANEStrings
+ (BOOL)trimmedModelPath:(id)path trimmedPath:(id *)trimmedPath;
+ (id)buildSpecificModelDataVaultDirectory;
+ (id)buildSpecificUserModelDataVaultDirectory;
+ (id)cloneDirectory;
+ (id)pps_defaultSystemPathDir;
+ (id)tempDirectory;
+ (id)testing_ThreeSixtyModelName;
+ (id)testing_cacheDirectoryWithSuffix:(id)suffix;
+ (id)testing_cacheDirectoryWithSuffix:(id)suffix buildVersion:(id)version;
+ (id)testing_defaultMLIRModelName;
+ (id)testing_encryptedModelNames;
+ (id)testing_external_precompiledModelPath;
+ (id)testing_modelDirectory;
+ (id)testing_modelDirectory:(id)directory;
+ (id)testing_modelNames;
+ (id)testing_userCacheDirectoryWithSuffix:(id)suffix;
+ (id)testing_userCacheDirectoryWithSuffix:(id)suffix buildVersion:(id)version;
+ (id)testing_zeroModelName;
+ (id)userCloneDirectory;
+ (id)userTempDirectory;
@end

@implementation _ANEStrings

+ (id)pps_defaultSystemPathDir
{
  v18[10] = *MEMORY[0x1E69E9840];
  testing_inputDirectory = [self testing_inputDirectory];
  testing_modelDirectory = [self testing_modelDirectory];
  v17 = [testing_inputDirectory stringByAppendingPathComponent:testing_modelDirectory];

  v18[0] = v17;
  systemLibraryPath = [self systemLibraryPath];
  v18[1] = systemLibraryPath;
  internalLibraryPath = [self internalLibraryPath];
  v18[2] = internalLibraryPath;
  pps_frameworkDir = [self pps_frameworkDir];
  v18[3] = pps_frameworkDir;
  pps_privateFrameworkDir = [self pps_privateFrameworkDir];
  v18[4] = pps_privateFrameworkDir;
  pps_varDir = [self pps_varDir];
  v18[5] = pps_varDir;
  pps_tmpDir = [self pps_tmpDir];
  v18[6] = pps_tmpDir;
  pps_internalDir = [self pps_internalDir];
  v18[7] = pps_internalDir;
  pps_applicationDir = [self pps_applicationDir];
  v18[8] = pps_applicationDir;
  pps_catalogDir = [self pps_catalogDir];
  v18[9] = pps_catalogDir;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:10];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)testing_modelDirectory
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v8 = 0;
  testing_inputDirectory = [self testing_inputDirectory];
  v5 = [testing_inputDirectory stringByAppendingPathComponent:@"Contents/Resources"];

  if ([defaultManager fileExistsAtPath:v5 isDirectory:&v8] && v8 == 1)
  {
    v6 = [@"Contents/Resources" stringByAppendingPathComponent:@"TestModels"];
  }

  else
  {
    v6 = @"TestModels";
  }

  return v6;
}

+ (id)buildSpecificModelDataVaultDirectory
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51___ANEStrings_buildSpecificModelDataVaultDirectory__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (buildSpecificModelDataVaultDirectory_onceToken != -1)
  {
    dispatch_once(&buildSpecificModelDataVaultDirectory_onceToken, block);
  }

  v2 = buildSpecificModelDataVaultDirectory__ANEBuildSpecificModelDataVaultDirectory;

  return v2;
}

+ (id)buildSpecificUserModelDataVaultDirectory
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55___ANEStrings_buildSpecificUserModelDataVaultDirectory__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (buildSpecificUserModelDataVaultDirectory_onceToken != -1)
  {
    dispatch_once(&buildSpecificUserModelDataVaultDirectory_onceToken, block);
  }

  v2 = buildSpecificUserModelDataVaultDirectory__ANEBuildSpecificUserModelDataVaultDirectory;

  return v2;
}

+ (id)tempDirectory
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28___ANEStrings_tempDirectory__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (tempDirectory_onceToken != -1)
  {
    dispatch_once(&tempDirectory_onceToken, block);
  }

  v2 = tempDirectory__ANETempDirectory;

  return v2;
}

+ (id)cloneDirectory
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29___ANEStrings_cloneDirectory__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (cloneDirectory_onceToken != -1)
  {
    dispatch_once(&cloneDirectory_onceToken, block);
  }

  v2 = cloneDirectory__ANECloneDirectory;

  return v2;
}

+ (id)userTempDirectory
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32___ANEStrings_userTempDirectory__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (userTempDirectory_onceToken != -1)
  {
    dispatch_once(&userTempDirectory_onceToken, block);
  }

  v2 = userTempDirectory__ANETempDirectory;

  return v2;
}

+ (id)userCloneDirectory
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33___ANEStrings_userCloneDirectory__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (userCloneDirectory_onceToken != -1)
  {
    dispatch_once(&userCloneDirectory_onceToken, block);
  }

  v2 = userCloneDirectory__ANECloneDirectory;

  return v2;
}

+ (id)testing_cacheDirectoryWithSuffix:(id)suffix
{
  v4 = MEMORY[0x1E696AEC0];
  suffixCopy = suffix;
  testing_cacheDirectory = [self testing_cacheDirectory];
  suffixCopy = [v4 stringWithFormat:@"%@%@/", testing_cacheDirectory, suffixCopy];

  return suffixCopy;
}

+ (id)testing_cacheDirectoryWithSuffix:(id)suffix buildVersion:(id)version
{
  versionCopy = version;
  v7 = [self testing_cacheDirectoryWithSuffix:suffix];
  v8 = [v7 stringByAppendingPathComponent:versionCopy];

  return v8;
}

+ (id)testing_userCacheDirectoryWithSuffix:(id)suffix
{
  v4 = MEMORY[0x1E696AEC0];
  suffixCopy = suffix;
  testing_userCacheDirectory = [self testing_userCacheDirectory];
  suffixCopy = [v4 stringWithFormat:@"%@%@/", testing_userCacheDirectory, suffixCopy];

  return suffixCopy;
}

+ (id)testing_userCacheDirectoryWithSuffix:(id)suffix buildVersion:(id)version
{
  versionCopy = version;
  v7 = [self testing_userCacheDirectoryWithSuffix:suffix];
  v8 = [v7 stringByAppendingPathComponent:versionCopy];

  return v8;
}

+ (id)testing_modelDirectory:(id)directory
{
  directoryCopy = directory;
  testing_modelDirectory = [self testing_modelDirectory];
  v6 = [testing_modelDirectory stringByAppendingPathComponent:directoryCopy];

  return v6;
}

+ (id)testing_zeroModelName
{
  if (testing_zeroModelName_onceToken != -1)
  {
    +[_ANEStrings testing_zeroModelName];
  }

  v3 = testing_zeroModelName__ANETestZeroModelName;

  return v3;
}

+ (id)testing_ThreeSixtyModelName
{
  if (testing_ThreeSixtyModelName_onceToken != -1)
  {
    +[_ANEStrings testing_ThreeSixtyModelName];
  }

  v3 = testing_ThreeSixtyModelName__ANETestThreeSixtyModelName;

  return v3;
}

+ (id)testing_modelNames
{
  if (testing_modelNames_onceToken != -1)
  {
    +[_ANEStrings testing_modelNames];
  }

  v3 = testing_modelNames__ANETestModelNames;

  return v3;
}

+ (id)testing_encryptedModelNames
{
  if (testing_encryptedModelNames_onceToken != -1)
  {
    +[_ANEStrings testing_encryptedModelNames];
  }

  v3 = testing_encryptedModelNames__ANETestEncryptedModelNames;

  return v3;
}

+ (id)testing_external_precompiledModelPath
{
  if (testing_external_precompiledModelPath_onceToken != -1)
  {
    +[_ANEStrings testing_external_precompiledModelPath];
  }

  v3 = testing_external_precompiledModelPath__ANEExternalPrecompiledModelPath;

  return v3;
}

+ (id)testing_defaultMLIRModelName
{
  if (testing_defaultMLIRModelName_onceToken != -1)
  {
    +[_ANEStrings testing_defaultMLIRModelName];
  }

  v3 = testing_defaultMLIRModelName__ANETestDefaultMLIRModelName;

  return v3;
}

+ (BOOL)trimmedModelPath:(id)path trimmedPath:(id *)trimmedPath
{
  pathCopy = path;
  v7 = pathCopy;
  v8 = pathCopy == 0;
  if (pathCopy && ([pathCopy path], v9 = objc_claimAutoreleasedReturnValue(), *trimmedPath = v9, objc_msgSend(self, "pps_defaultUserPathPrefix"), v10 = objc_claimAutoreleasedReturnValue(), LOBYTE(v9) = objc_msgSend(v9, "hasPrefix:", v10), v10, (v9 & 1) == 0))
  {
    v11 = *trimmedPath;
    pps_applicationDir = [self pps_applicationDir];
    LOBYTE(v11) = [v11 hasPrefix:pps_applicationDir];

    v8 = v11 ^ 1;
    if (+[_ANEDeviceInfo isInternalBuild])
    {
      v13 = *trimmedPath;
      pps_defaultSystemPathDir = [self pps_defaultSystemPathDir];
      v15 = [pps_defaultSystemPathDir objectAtIndexedSubscript:0];
      *trimmedPath = [v13 stringByReplacingOccurrencesOfString:v15 withString:@"0_"];
    }

    pps_defaultSystemPathDir2 = [self pps_defaultSystemPathDir];
    v17 = [pps_defaultSystemPathDir2 count];

    v18 = v17 - 1;
    if (v17 != 1)
    {
      do
      {
        v19 = *trimmedPath;
        pps_defaultSystemPathDir3 = [self pps_defaultSystemPathDir];
        v21 = [pps_defaultSystemPathDir3 objectAtIndexedSubscript:v18];
        v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld_", v18];
        *trimmedPath = [v19 stringByReplacingOccurrencesOfString:v21 withString:v22];

        --v18;
      }

      while (v18);
    }
  }

  else
  {
    *trimmedPath = &stru_1F224D6A0;
  }

  return v8;
}

@end