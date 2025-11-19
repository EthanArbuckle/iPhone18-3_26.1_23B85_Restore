@interface _ANEStrings
+ (BOOL)trimmedModelPath:(id)a3 trimmedPath:(id *)a4;
+ (id)buildSpecificModelDataVaultDirectory;
+ (id)buildSpecificUserModelDataVaultDirectory;
+ (id)cloneDirectory;
+ (id)pps_defaultSystemPathDir;
+ (id)tempDirectory;
+ (id)testing_ThreeSixtyModelName;
+ (id)testing_cacheDirectoryWithSuffix:(id)a3;
+ (id)testing_cacheDirectoryWithSuffix:(id)a3 buildVersion:(id)a4;
+ (id)testing_defaultMLIRModelName;
+ (id)testing_encryptedModelNames;
+ (id)testing_external_precompiledModelPath;
+ (id)testing_modelDirectory;
+ (id)testing_modelDirectory:(id)a3;
+ (id)testing_modelNames;
+ (id)testing_userCacheDirectoryWithSuffix:(id)a3;
+ (id)testing_userCacheDirectoryWithSuffix:(id)a3 buildVersion:(id)a4;
+ (id)testing_zeroModelName;
+ (id)userCloneDirectory;
+ (id)userTempDirectory;
@end

@implementation _ANEStrings

+ (id)pps_defaultSystemPathDir
{
  v18[10] = *MEMORY[0x1E69E9840];
  v3 = [a1 testing_inputDirectory];
  v4 = [a1 testing_modelDirectory];
  v17 = [v3 stringByAppendingPathComponent:v4];

  v18[0] = v17;
  v5 = [a1 systemLibraryPath];
  v18[1] = v5;
  v6 = [a1 internalLibraryPath];
  v18[2] = v6;
  v7 = [a1 pps_frameworkDir];
  v18[3] = v7;
  v8 = [a1 pps_privateFrameworkDir];
  v18[4] = v8;
  v9 = [a1 pps_varDir];
  v18[5] = v9;
  v10 = [a1 pps_tmpDir];
  v18[6] = v10;
  v11 = [a1 pps_internalDir];
  v18[7] = v11;
  v12 = [a1 pps_applicationDir];
  v18[8] = v12;
  v13 = [a1 pps_catalogDir];
  v18[9] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:10];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)testing_modelDirectory
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = 0;
  v4 = [a1 testing_inputDirectory];
  v5 = [v4 stringByAppendingPathComponent:@"Contents/Resources"];

  if ([v3 fileExistsAtPath:v5 isDirectory:&v8] && v8 == 1)
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
  block[4] = a1;
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
  block[4] = a1;
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
  block[4] = a1;
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
  block[4] = a1;
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
  block[4] = a1;
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
  block[4] = a1;
  if (userCloneDirectory_onceToken != -1)
  {
    dispatch_once(&userCloneDirectory_onceToken, block);
  }

  v2 = userCloneDirectory__ANECloneDirectory;

  return v2;
}

+ (id)testing_cacheDirectoryWithSuffix:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [a1 testing_cacheDirectory];
  v7 = [v4 stringWithFormat:@"%@%@/", v6, v5];

  return v7;
}

+ (id)testing_cacheDirectoryWithSuffix:(id)a3 buildVersion:(id)a4
{
  v6 = a4;
  v7 = [a1 testing_cacheDirectoryWithSuffix:a3];
  v8 = [v7 stringByAppendingPathComponent:v6];

  return v8;
}

+ (id)testing_userCacheDirectoryWithSuffix:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [a1 testing_userCacheDirectory];
  v7 = [v4 stringWithFormat:@"%@%@/", v6, v5];

  return v7;
}

+ (id)testing_userCacheDirectoryWithSuffix:(id)a3 buildVersion:(id)a4
{
  v6 = a4;
  v7 = [a1 testing_userCacheDirectoryWithSuffix:a3];
  v8 = [v7 stringByAppendingPathComponent:v6];

  return v8;
}

+ (id)testing_modelDirectory:(id)a3
{
  v4 = a3;
  v5 = [a1 testing_modelDirectory];
  v6 = [v5 stringByAppendingPathComponent:v4];

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

+ (BOOL)trimmedModelPath:(id)a3 trimmedPath:(id *)a4
{
  v6 = a3;
  v7 = v6;
  v8 = v6 == 0;
  if (v6 && ([v6 path], v9 = objc_claimAutoreleasedReturnValue(), *a4 = v9, objc_msgSend(a1, "pps_defaultUserPathPrefix"), v10 = objc_claimAutoreleasedReturnValue(), LOBYTE(v9) = objc_msgSend(v9, "hasPrefix:", v10), v10, (v9 & 1) == 0))
  {
    v11 = *a4;
    v12 = [a1 pps_applicationDir];
    LOBYTE(v11) = [v11 hasPrefix:v12];

    v8 = v11 ^ 1;
    if (+[_ANEDeviceInfo isInternalBuild])
    {
      v13 = *a4;
      v14 = [a1 pps_defaultSystemPathDir];
      v15 = [v14 objectAtIndexedSubscript:0];
      *a4 = [v13 stringByReplacingOccurrencesOfString:v15 withString:@"0_"];
    }

    v16 = [a1 pps_defaultSystemPathDir];
    v17 = [v16 count];

    v18 = v17 - 1;
    if (v17 != 1)
    {
      do
      {
        v19 = *a4;
        v20 = [a1 pps_defaultSystemPathDir];
        v21 = [v20 objectAtIndexedSubscript:v18];
        v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld_", v18];
        *a4 = [v19 stringByReplacingOccurrencesOfString:v21 withString:v22];

        --v18;
      }

      while (v18);
    }
  }

  else
  {
    *a4 = &stru_1F224D6A0;
  }

  return v8;
}

@end