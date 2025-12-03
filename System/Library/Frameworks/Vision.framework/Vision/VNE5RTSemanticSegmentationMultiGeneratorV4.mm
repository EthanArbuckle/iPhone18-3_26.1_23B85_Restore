@interface VNE5RTSemanticSegmentationMultiGeneratorV4
+ (id)createE5RTFunctionDescriptorForConfigurationOptions:(id)options error:(id *)error;
+ (id)outputMaskBlobNameToFeatureName;
+ (id)outputMaskBlobNameToRequestKey;
+ (id)outputMaskBlobNames;
@end

@implementation VNE5RTSemanticSegmentationMultiGeneratorV4

+ (id)outputMaskBlobNames
{
  if (+[VNE5RTSemanticSegmentationMultiGeneratorV4 outputMaskBlobNames]::onceToken != -1)
  {
    dispatch_once(&+[VNE5RTSemanticSegmentationMultiGeneratorV4 outputMaskBlobNames]::onceToken, &__block_literal_global_34_22444);
  }

  v3 = +[VNE5RTSemanticSegmentationMultiGeneratorV4 outputMaskBlobNames]::outputNames;

  return v3;
}

void __65__VNE5RTSemanticSegmentationMultiGeneratorV4_outputMaskBlobNames__block_invoke()
{
  v10[7] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = [v0 objectClassOutputNameForObjectClassID:1 modelVersion:1 error:0];
  v2 = [v0 objectClassOutputNameForObjectClassID:8 modelVersion:1 error:{0, v1}];
  v10[1] = v2;
  v3 = [v0 objectClassOutputNameForObjectClassID:16 modelVersion:1 error:0];
  v10[2] = v3;
  v4 = [v0 objectClassOutputNameForObjectClassID:4 modelVersion:1 error:0];
  v10[3] = v4;
  v5 = [v0 objectClassOutputNameForObjectClassID:32 modelVersion:1 error:0];
  v10[4] = v5;
  v6 = [v0 objectClassOutputNameForObjectClassID:64 modelVersion:1 error:0];
  v10[5] = v6;
  v7 = [v0 objectClassOutputNameForObjectClassID:2 modelVersion:1 error:0];
  v10[6] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:7];
  v9 = +[VNE5RTSemanticSegmentationMultiGeneratorV4 outputMaskBlobNames]::outputNames;
  +[VNE5RTSemanticSegmentationMultiGeneratorV4 outputMaskBlobNames]::outputNames = v8;
}

+ (id)outputMaskBlobNameToRequestKey
{
  if (+[VNE5RTSemanticSegmentationMultiGeneratorV4 outputMaskBlobNameToRequestKey]::onceToken != -1)
  {
    dispatch_once(&+[VNE5RTSemanticSegmentationMultiGeneratorV4 outputMaskBlobNameToRequestKey]::onceToken, &__block_literal_global_28);
  }

  v3 = +[VNE5RTSemanticSegmentationMultiGeneratorV4 outputMaskBlobNameToRequestKey]::outputMaskBlobNameToRequestKey;

  return v3;
}

void __76__VNE5RTSemanticSegmentationMultiGeneratorV4_outputMaskBlobNameToRequestKey__block_invoke()
{
  v25[7] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v23 = [v0 objectClassOutputNameForObjectClassID:1 modelVersion:1 error:0];
  v24[0] = v23;
  v1 = objc_opt_class();
  v21 = NSStringFromClass(v1);
  v25[0] = v21;
  v22 = [v0 objectClassOutputNameForObjectClassID:2 modelVersion:1 error:0];
  v24[1] = v22;
  v2 = objc_opt_class();
  v20 = NSStringFromClass(v2);
  v25[1] = v20;
  v3 = [v0 objectClassOutputNameForObjectClassID:4 modelVersion:1 error:0];
  v24[2] = v3;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v25[2] = v5;
  v6 = [v0 objectClassOutputNameForObjectClassID:8 modelVersion:1 error:0];
  v24[3] = v6;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v25[3] = v8;
  v9 = [v0 objectClassOutputNameForObjectClassID:16 modelVersion:1 error:0];
  v24[4] = v9;
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v25[4] = v11;
  v12 = [v0 objectClassOutputNameForObjectClassID:32 modelVersion:1 error:0];
  v24[5] = v12;
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v25[5] = v14;
  v15 = [v0 objectClassOutputNameForObjectClassID:64 modelVersion:1 error:0];
  v24[6] = v15;
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v25[6] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:7];
  v19 = +[VNE5RTSemanticSegmentationMultiGeneratorV4 outputMaskBlobNameToRequestKey]::outputMaskBlobNameToRequestKey;
  +[VNE5RTSemanticSegmentationMultiGeneratorV4 outputMaskBlobNameToRequestKey]::outputMaskBlobNameToRequestKey = v18;
}

+ (id)outputMaskBlobNameToFeatureName
{
  if (+[VNE5RTSemanticSegmentationMultiGeneratorV4 outputMaskBlobNameToFeatureName]::onceToken != -1)
  {
    dispatch_once(&+[VNE5RTSemanticSegmentationMultiGeneratorV4 outputMaskBlobNameToFeatureName]::onceToken, &__block_literal_global_22453);
  }

  v3 = +[VNE5RTSemanticSegmentationMultiGeneratorV4 outputMaskBlobNameToFeatureName]::outputMaskBlobNameToFeatureName;

  return v3;
}

void __77__VNE5RTSemanticSegmentationMultiGeneratorV4_outputMaskBlobNameToFeatureName__block_invoke()
{
  v8[4] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = [v0 objectClassOutputNameForObjectClassID:4 modelVersion:1 error:0];
  v7[0] = v1;
  v8[0] = @"human_attribute_skin";
  v2 = [v0 objectClassOutputNameForObjectClassID:8 modelVersion:1 error:0];
  v7[1] = v2;
  v8[1] = @"human_attribute_hair";
  v3 = [v0 objectClassOutputNameForObjectClassID:16 modelVersion:1 error:0];
  v7[2] = v3;
  v8[2] = @"human_attribute_facial_hair";
  v4 = [v0 objectClassOutputNameForObjectClassID:32 modelVersion:1 error:0];
  v7[3] = v4;
  v8[3] = @"human_attribute_teeth";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:4];
  v6 = +[VNE5RTSemanticSegmentationMultiGeneratorV4 outputMaskBlobNameToFeatureName]::outputMaskBlobNameToFeatureName;
  +[VNE5RTSemanticSegmentationMultiGeneratorV4 outputMaskBlobNameToFeatureName]::outputMaskBlobNameToFeatureName = v5;
}

+ (id)createE5RTFunctionDescriptorForConfigurationOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v7 = [self E5RTVisionCoreComputeDeviceForConfigurationOptions:optionsCopy error:error];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__22455;
  v16 = __Block_byref_object_dispose__22456;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __104__VNE5RTSemanticSegmentationMultiGeneratorV4_createE5RTFunctionDescriptorForConfigurationOptions_error___block_invoke;
  v11[3] = &unk_1E77B4698;
  v11[4] = &v12;
  v11[5] = v7;
  if (+[VNE5RTSemanticSegmentationMultiGeneratorV4 createE5RTFunctionDescriptorForConfigurationOptions:error:]::onceToken != -1)
  {
    dispatch_once(&+[VNE5RTSemanticSegmentationMultiGeneratorV4 createE5RTFunctionDescriptorForConfigurationOptions:error:]::onceToken, v11);
  }

  v8 = +[VNE5RTSemanticSegmentationMultiGeneratorV4 createE5RTFunctionDescriptorForConfigurationOptions:error:]::descriptor;
  if (+[VNE5RTSemanticSegmentationMultiGeneratorV4 createE5RTFunctionDescriptorForConfigurationOptions:error:]::descriptor)
  {
    v9 = +[VNE5RTSemanticSegmentationMultiGeneratorV4 createE5RTFunctionDescriptorForConfigurationOptions:error:]::descriptor;
  }

  else if (error)
  {
    *error = v13[5];
  }

  _Block_object_dispose(&v12, 8);

  return v8;
}

void __104__VNE5RTSemanticSegmentationMultiGeneratorV4_createE5RTFunctionDescriptorForConfigurationOptions_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  obj = *(v2 + 40);
  v3 = [MEMORY[0x1E69DF988] semanticSegmentationForModelVersion:1 computeDeviceType:v1 error:&obj];
  objc_storeStrong((v2 + 40), obj);
  v4 = +[VNE5RTSemanticSegmentationMultiGeneratorV4 createE5RTFunctionDescriptorForConfigurationOptions:error:]::descriptor;
  +[VNE5RTSemanticSegmentationMultiGeneratorV4 createE5RTFunctionDescriptorForConfigurationOptions:error:]::descriptor = v3;
}

@end