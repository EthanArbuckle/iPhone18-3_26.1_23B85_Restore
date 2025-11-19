@interface ANEStrings
@end

@implementation ANEStrings

void __51___ANEStrings_buildSpecificModelDataVaultDirectory__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) modelDataVaultDirectory];
  v1 = +[_ANEDeviceInfo buildVersion];
  v2 = [v4 stringByAppendingPathComponent:v1];
  v3 = buildSpecificModelDataVaultDirectory__ANEBuildSpecificModelDataVaultDirectory;
  buildSpecificModelDataVaultDirectory__ANEBuildSpecificModelDataVaultDirectory = v2;
}

void __55___ANEStrings_buildSpecificUserModelDataVaultDirectory__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) userModelDataVaultDirectory];
  v1 = +[_ANEDeviceInfo buildVersion];
  v2 = [v4 stringByAppendingPathComponent:v1];
  v3 = buildSpecificUserModelDataVaultDirectory__ANEBuildSpecificUserModelDataVaultDirectory;
  buildSpecificUserModelDataVaultDirectory__ANEBuildSpecificUserModelDataVaultDirectory = v2;
}

void __28___ANEStrings_tempDirectory__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) modelDataVaultDirectory];
  v1 = [v3 stringByAppendingPathComponent:@"tmp"];
  v2 = tempDirectory__ANETempDirectory;
  tempDirectory__ANETempDirectory = v1;
}

void __29___ANEStrings_cloneDirectory__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) modelDataVaultDirectory];
  v1 = [v3 stringByAppendingPathComponent:@"clones"];
  v2 = cloneDirectory__ANECloneDirectory;
  cloneDirectory__ANECloneDirectory = v1;
}

void __32___ANEStrings_userTempDirectory__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) userModelDataVaultDirectory];
  v1 = [v3 stringByAppendingPathComponent:@"tmp"];
  v2 = userTempDirectory__ANETempDirectory;
  userTempDirectory__ANETempDirectory = v1;
}

void __33___ANEStrings_userCloneDirectory__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) userModelDataVaultDirectory];
  v1 = [v3 stringByAppendingPathComponent:@"clones"];
  v2 = userCloneDirectory__ANECloneDirectory;
  userCloneDirectory__ANECloneDirectory = v1;
}

void __36___ANEStrings_testing_zeroModelName__block_invoke()
{
  v0 = testing_zeroModelName__ANETestZeroModelName;
  testing_zeroModelName__ANETestZeroModelName = @"zeroModel";
}

void __42___ANEStrings_testing_ThreeSixtyModelName__block_invoke()
{
  v0 = testing_ThreeSixtyModelName__ANETestThreeSixtyModelName;
  testing_ThreeSixtyModelName__ANETestThreeSixtyModelName = @"threeSixtyModel";
}

void __33___ANEStrings_testing_modelNames__block_invoke()
{
  v0 = testing_modelNames__ANETestModelNames;
  testing_modelNames__ANETestModelNames = &unk_1F22544D0;
}

void __42___ANEStrings_testing_encryptedModelNames__block_invoke()
{
  v0 = testing_encryptedModelNames__ANETestEncryptedModelNames;
  testing_encryptedModelNames__ANETestEncryptedModelNames = &unk_1F22544E8;
}

void __52___ANEStrings_testing_external_precompiledModelPath__block_invoke()
{
  v0 = testing_external_precompiledModelPath__ANEExternalPrecompiledModelPath;
  testing_external_precompiledModelPath__ANEExternalPrecompiledModelPath = @"/System/Library/PrivateFrameworks/VideoProcessing.framework/cnn_frame_enhancer_96p.H16.espresso.hwx";
}

void __43___ANEStrings_testing_defaultMLIRModelName__block_invoke()
{
  v0 = testing_defaultMLIRModelName__ANETestDefaultMLIRModelName;
  testing_defaultMLIRModelName__ANETestDefaultMLIRModelName = @"mlir";
}

@end