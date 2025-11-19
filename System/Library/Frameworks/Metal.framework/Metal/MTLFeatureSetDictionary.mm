@interface MTLFeatureSetDictionary
@end

@implementation MTLFeatureSetDictionary

uint64_t ___MTLFeatureSetDictionary_block_invoke()
{
  v3[19] = *MEMORY[0x1E69E9840];
  v2[0] = @"MTLFeatureSet_iOS_GPUFamily1_v1";
  v2[1] = @"MTLFeatureSet_iOS_GPUFamily2_v1";
  v3[0] = &unk_1EF4CFB70;
  v3[1] = &unk_1EF4CFB88;
  v2[2] = @"MTLFeatureSet_iOS_GPUFamily1_v2";
  v2[3] = @"MTLFeatureSet_iOS_GPUFamily2_v2";
  v3[2] = &unk_1EF4CFBA0;
  v3[3] = &unk_1EF4CFBB8;
  v2[4] = @"MTLFeatureSet_iOS_GPUFamily3_v1";
  v2[5] = @"MTLFeatureSet_iOS_GPUFamily1_v3";
  v3[4] = &unk_1EF4CFBD0;
  v3[5] = &unk_1EF4CFBE8;
  v2[6] = @"MTLFeatureSet_iOS_GPUFamily2_v3";
  v2[7] = @"MTLFeatureSet_iOS_GPUFamily3_v2";
  v3[6] = &unk_1EF4CFC00;
  v3[7] = &unk_1EF4CFC18;
  v2[8] = @"MTLFeatureSet_iOS_GPUFamily1_v4";
  v2[9] = @"MTLFeatureSet_iOS_GPUFamily2_v4";
  v3[8] = &unk_1EF4CFC30;
  v3[9] = &unk_1EF4CFC48;
  v2[10] = @"MTLFeatureSet_iOS_GPUFamily3_v3";
  v2[11] = @"MTLFeatureSet_iOS_GPUFamily4_v1";
  v3[10] = &unk_1EF4CFC60;
  v3[11] = &unk_1EF4CFC78;
  v2[12] = @"MTLFeatureSet_iOS_GPUFamily1_v5";
  v2[13] = @"MTLFeatureSet_iOS_GPUFamily2_v5";
  v3[12] = &unk_1EF4CFC90;
  v3[13] = &unk_1EF4CFCA8;
  v2[14] = @"MTLFeatureSet_iOS_GPUFamily3_v4";
  v2[15] = @"MTLFeatureSet_iOS_GPUFamily4_v2";
  v3[14] = &unk_1EF4CFCC0;
  v3[15] = &unk_1EF4CFCD8;
  v2[16] = @"MTLFeatureSet_iOS_GPUFamily5_v1";
  v2[17] = @"MTLFeatureSet_iOS_GPUFamily6_v1";
  v3[16] = &unk_1EF4CFCF0;
  v3[17] = &unk_1EF4CFD08;
  v2[18] = @"MTLFeatureSet_iOS_GPUFamily7_v1";
  v3[18] = &unk_1EF4CFD20;
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:19];
  _MTLFeatureSetDictionary::featureSetDictionary = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

@end