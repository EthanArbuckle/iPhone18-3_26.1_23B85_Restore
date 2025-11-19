@interface VNE5RTSemanticSegmentationMultiGeneratorV7
+ (id)createE5RTFunctionDescriptorForConfigurationOptions:(id)a3 error:(id *)a4;
+ (id)outputMaskBlobNameToFeatureName;
+ (id)outputMaskBlobNameToRequestKey;
+ (id)outputMaskBlobNames;
@end

@implementation VNE5RTSemanticSegmentationMultiGeneratorV7

+ (id)outputMaskBlobNames
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__VNE5RTSemanticSegmentationMultiGeneratorV7_outputMaskBlobNames__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[VNE5RTSemanticSegmentationMultiGeneratorV7 outputMaskBlobNames]::onceToken != -1)
  {
    dispatch_once(&+[VNE5RTSemanticSegmentationMultiGeneratorV7 outputMaskBlobNames]::onceToken, block);
  }

  v2 = +[VNE5RTSemanticSegmentationMultiGeneratorV7 outputMaskBlobNames]::outputNames;

  return v2;
}

void __65__VNE5RTSemanticSegmentationMultiGeneratorV7_outputMaskBlobNames__block_invoke(uint64_t a1)
{
  v18[12] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  v3 = [*(a1 + 32) modelVersion];
  v17 = [v2 objectClassOutputNameForObjectClassID:128 modelVersion:v3 error:0];
  v18[0] = v17;
  v16 = [v2 objectClassOutputNameForObjectClassID:256 modelVersion:v3 error:0];
  v18[1] = v16;
  v15 = [v2 objectClassOutputNameForObjectClassID:512 modelVersion:v3 error:0];
  v18[2] = v15;
  v4 = [v2 objectClassOutputNameForObjectClassID:1024 modelVersion:v3 error:0];
  v18[3] = v4;
  v5 = [v2 objectClassOutputNameForObjectClassID:2048 modelVersion:v3 error:0];
  v18[4] = v5;
  v6 = [v2 objectClassOutputNameForObjectClassID:1 modelVersion:v3 error:0];
  v18[5] = v6;
  v7 = [v2 objectClassOutputNameForObjectClassID:8 modelVersion:v3 error:0];
  v18[6] = v7;
  v8 = [v2 objectClassOutputNameForObjectClassID:16 modelVersion:v3 error:0];
  v18[7] = v8;
  v9 = [v2 objectClassOutputNameForObjectClassID:4 modelVersion:v3 error:0];
  v18[8] = v9;
  v10 = [v2 objectClassOutputNameForObjectClassID:32 modelVersion:v3 error:0];
  v18[9] = v10;
  v11 = [v2 objectClassOutputNameForObjectClassID:64 modelVersion:v3 error:0];
  v18[10] = v11;
  v12 = [v2 objectClassOutputNameForObjectClassID:2 modelVersion:v3 error:0];
  v18[11] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:12];
  v14 = +[VNE5RTSemanticSegmentationMultiGeneratorV7 outputMaskBlobNames]::outputNames;
  +[VNE5RTSemanticSegmentationMultiGeneratorV7 outputMaskBlobNames]::outputNames = v13;
}

+ (id)outputMaskBlobNameToRequestKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__VNE5RTSemanticSegmentationMultiGeneratorV7_outputMaskBlobNameToRequestKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[VNE5RTSemanticSegmentationMultiGeneratorV7 outputMaskBlobNameToRequestKey]::onceToken != -1)
  {
    dispatch_once(&+[VNE5RTSemanticSegmentationMultiGeneratorV7 outputMaskBlobNameToRequestKey]::onceToken, block);
  }

  v2 = +[VNE5RTSemanticSegmentationMultiGeneratorV7 outputMaskBlobNameToRequestKey]::outputMaskBlobNameToRequestKey;

  return v2;
}

void __76__VNE5RTSemanticSegmentationMultiGeneratorV7_outputMaskBlobNameToRequestKey__block_invoke(uint64_t a1)
{
  v48[11] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  v3 = [*(a1 + 32) modelVersion];
  v37 = [v2 objectClassOutputNameForObjectClassID:1 modelVersion:v3 error:0];
  v4 = objc_opt_class();
  v48[0] = NSStringFromClass(v4);
  v35 = v48[0];
  v38 = [v2 objectClassOutputNameForObjectClassID:2 modelVersion:v3 error:0];
  v36 = v38;
  v5 = objc_opt_class();
  v33 = NSStringFromClass(v5);
  v48[1] = v33;
  v34 = [v2 objectClassOutputNameForObjectClassID:4 modelVersion:v3 error:0];
  v39 = v34;
  v6 = objc_opt_class();
  v31 = NSStringFromClass(v6);
  v48[2] = v31;
  v32 = [v2 objectClassOutputNameForObjectClassID:8 modelVersion:v3 error:0];
  v40 = v32;
  v7 = objc_opt_class();
  v29 = NSStringFromClass(v7);
  v48[3] = v29;
  v30 = [v2 objectClassOutputNameForObjectClassID:16 modelVersion:v3 error:0];
  v41 = v30;
  v8 = objc_opt_class();
  v27 = NSStringFromClass(v8);
  v48[4] = v27;
  v28 = [v2 objectClassOutputNameForObjectClassID:32 modelVersion:v3 error:0];
  v42 = v28;
  v9 = objc_opt_class();
  v25 = NSStringFromClass(v9);
  v48[5] = v25;
  v26 = [v2 objectClassOutputNameForObjectClassID:64 modelVersion:v3 error:0];
  v43 = v26;
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v48[6] = v11;
  v12 = [v2 objectClassOutputNameForObjectClassID:128 modelVersion:v3 error:0];
  v44 = v12;
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v48[7] = v14;
  v15 = [v2 objectClassOutputNameForObjectClassID:256 modelVersion:v3 error:0];
  v45 = v15;
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v48[8] = v17;
  v18 = [v2 objectClassOutputNameForObjectClassID:512 modelVersion:v3 error:0];
  v46 = v18;
  v19 = [MEMORY[0x1E695DFB0] null];
  v48[9] = v19;
  v20 = [v2 objectClassOutputNameForObjectClassID:1024 modelVersion:v3 error:0];
  v47 = v20;
  v21 = [MEMORY[0x1E695DFB0] null];
  v48[10] = v21;
  v22 = v37;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v37 count:11];
  v24 = +[VNE5RTSemanticSegmentationMultiGeneratorV7 outputMaskBlobNameToRequestKey]::outputMaskBlobNameToRequestKey;
  +[VNE5RTSemanticSegmentationMultiGeneratorV7 outputMaskBlobNameToRequestKey]::outputMaskBlobNameToRequestKey = v23;
}

+ (id)outputMaskBlobNameToFeatureName
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__VNE5RTSemanticSegmentationMultiGeneratorV7_outputMaskBlobNameToFeatureName__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[VNE5RTSemanticSegmentationMultiGeneratorV7 outputMaskBlobNameToFeatureName]::onceToken != -1)
  {
    dispatch_once(&+[VNE5RTSemanticSegmentationMultiGeneratorV7 outputMaskBlobNameToFeatureName]::onceToken, block);
  }

  v2 = +[VNE5RTSemanticSegmentationMultiGeneratorV7 outputMaskBlobNameToFeatureName]::outputMaskBlobNameToFeatureName;

  return v2;
}

void __77__VNE5RTSemanticSegmentationMultiGeneratorV7_outputMaskBlobNameToFeatureName__block_invoke(uint64_t a1)
{
  v13[6] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  v3 = [*(a1 + 32) modelVersion];
  v4 = [v2 objectClassOutputNameForObjectClassID:4 modelVersion:v3 error:0];
  v12[0] = v4;
  v13[0] = @"human_attribute_skin";
  v5 = [v2 objectClassOutputNameForObjectClassID:8 modelVersion:v3 error:0];
  v12[1] = v5;
  v13[1] = @"human_attribute_hair";
  v6 = [v2 objectClassOutputNameForObjectClassID:16 modelVersion:v3 error:0];
  v12[2] = v6;
  v13[2] = @"human_attribute_facial_hair";
  v7 = [v2 objectClassOutputNameForObjectClassID:32 modelVersion:v3 error:0];
  v12[3] = v7;
  v13[3] = @"human_attribute_teeth";
  v8 = [v2 objectClassOutputNameForObjectClassID:128 modelVersion:v3 error:0];
  v12[4] = v8;
  v13[4] = @"cat";
  v9 = [v2 objectClassOutputNameForObjectClassID:256 modelVersion:v3 error:0];
  v12[5] = v9;
  v13[5] = @"dog";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:6];
  v11 = +[VNE5RTSemanticSegmentationMultiGeneratorV7 outputMaskBlobNameToFeatureName]::outputMaskBlobNameToFeatureName;
  +[VNE5RTSemanticSegmentationMultiGeneratorV7 outputMaskBlobNameToFeatureName]::outputMaskBlobNameToFeatureName = v10;
}

+ (id)createE5RTFunctionDescriptorForConfigurationOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 E5RTVisionCoreComputeDeviceForConfigurationOptions:v6 error:a4];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__12905;
  v16 = __Block_byref_object_dispose__12906;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __104__VNE5RTSemanticSegmentationMultiGeneratorV7_createE5RTFunctionDescriptorForConfigurationOptions_error___block_invoke;
  v11[3] = &unk_1E77B4698;
  v11[4] = &v12;
  v11[5] = v7;
  if (+[VNE5RTSemanticSegmentationMultiGeneratorV7 createE5RTFunctionDescriptorForConfigurationOptions:error:]::onceToken != -1)
  {
    dispatch_once(&+[VNE5RTSemanticSegmentationMultiGeneratorV7 createE5RTFunctionDescriptorForConfigurationOptions:error:]::onceToken, v11);
  }

  v8 = +[VNE5RTSemanticSegmentationMultiGeneratorV7 createE5RTFunctionDescriptorForConfigurationOptions:error:]::descriptor;
  if (+[VNE5RTSemanticSegmentationMultiGeneratorV7 createE5RTFunctionDescriptorForConfigurationOptions:error:]::descriptor)
  {
    v9 = +[VNE5RTSemanticSegmentationMultiGeneratorV7 createE5RTFunctionDescriptorForConfigurationOptions:error:]::descriptor;
  }

  else if (a4)
  {
    *a4 = v13[5];
  }

  _Block_object_dispose(&v12, 8);

  return v8;
}

void __104__VNE5RTSemanticSegmentationMultiGeneratorV7_createE5RTFunctionDescriptorForConfigurationOptions_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  obj = *(v2 + 40);
  v3 = [MEMORY[0x1E69DF988] semanticSegmentationForModelVersion:2 computeDeviceType:v1 error:&obj];
  objc_storeStrong((v2 + 40), obj);
  v4 = +[VNE5RTSemanticSegmentationMultiGeneratorV7 createE5RTFunctionDescriptorForConfigurationOptions:error:]::descriptor;
  +[VNE5RTSemanticSegmentationMultiGeneratorV7 createE5RTFunctionDescriptorForConfigurationOptions:error:]::descriptor = v3;
}

@end