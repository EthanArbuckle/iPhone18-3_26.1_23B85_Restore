@interface VNPersonSegmentationGeneratorSemantics
+ (id)_inferenceDescriptorForModelConfiguredWithOptions:(id)a3 error:(id *)a4;
+ (id)espressoModelInputImageDimensionsBlobNameForConfigurationOptions:(id)a3;
+ (id)espressoModelPathForConfigurationOptions:(id)a3 error:(id *)a4;
+ (id)inputImageBlobName;
+ (id)outputMaskBlobNameToFeatureName;
+ (id)outputMaskBlobNameToRequestKey;
+ (id)outputMaskBlobNames;
@end

@implementation VNPersonSegmentationGeneratorSemantics

+ (id)outputMaskBlobNameToFeatureName
{
  if (+[VNPersonSegmentationGeneratorSemantics outputMaskBlobNameToFeatureName]::onceToken != -1)
  {
    dispatch_once(&+[VNPersonSegmentationGeneratorSemantics outputMaskBlobNameToFeatureName]::onceToken, &__block_literal_global_24720);
  }

  v3 = +[VNPersonSegmentationGeneratorSemantics outputMaskBlobNameToFeatureName]::outputMaskBlobNameToFeatureName;

  return v3;
}

void __73__VNPersonSegmentationGeneratorSemantics_outputMaskBlobNameToFeatureName__block_invoke()
{
  v7[4] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DF980] objectClassOutputNameForObjectClassID:4 error:0];
  v6[0] = v0;
  v7[0] = @"human_attribute_skin";
  v1 = [MEMORY[0x1E69DF980] objectClassOutputNameForObjectClassID:8 error:0];
  v6[1] = v1;
  v7[1] = @"human_attribute_hair";
  v2 = [MEMORY[0x1E69DF980] objectClassOutputNameForObjectClassID:16 error:0];
  v6[2] = v2;
  v7[2] = @"human_attribute_facial_hair";
  v3 = [MEMORY[0x1E69DF980] objectClassOutputNameForObjectClassID:32 error:0];
  v6[3] = v3;
  v7[3] = @"human_attribute_teeth";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
  v5 = +[VNPersonSegmentationGeneratorSemantics outputMaskBlobNameToFeatureName]::outputMaskBlobNameToFeatureName;
  +[VNPersonSegmentationGeneratorSemantics outputMaskBlobNameToFeatureName]::outputMaskBlobNameToFeatureName = v4;
}

+ (id)outputMaskBlobNameToRequestKey
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = [a1 _inferenceDescriptorForModelConfiguredWithOptions:0 error:0];
  v3 = [v2 humanAttributesMasksOutput];
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v3, "count") + 3}];
  v5 = objc_opt_class();
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = NSStringFromClass(v5);
        v12 = [v10 name];
        [v4 setObject:v11 forKeyedSubscript:v12];
      }

      v7 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v7);
  }

  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = [v2 personsMaskOutput];
  v16 = [v15 name];
  [v4 setObject:v14 forKeyedSubscript:v16];

  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v19 = [v2 skyMaskOutput];
  v20 = [v19 name];
  [v4 setObject:v18 forKeyedSubscript:v20];

  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  v23 = [v2 glassesMaskOutput];
  v24 = [v23 name];
  [v4 setObject:v22 forKeyedSubscript:v24];

  v25 = [v4 copy];

  return v25;
}

+ (id)outputMaskBlobNames
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [a1 _inferenceDescriptorForModelConfiguredWithOptions:0 error:0];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [v2 humanAttributesMasksOutput];
  v5 = [v4 mutableCopy];

  v6 = [v2 personsMaskOutput];
  [v5 addObject:v6];

  v7 = [v2 skyMaskOutput];
  [v5 addObject:v7];

  v8 = [v2 glassesMaskOutput];
  [v5 addObject:v8];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) name];
        [v3 addObject:v13];
      }

      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [v3 copy];

  return v14;
}

+ (id)inputImageBlobName
{
  v2 = [a1 _inferenceDescriptorForModelConfiguredWithOptions:0 error:0];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 allInputNames];
    v5 = [v4 firstObject];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)espressoModelInputImageDimensionsBlobNameForConfigurationOptions:(id)a3
{
  v3 = [a1 inputImageBlobName];

  return v3;
}

+ (id)espressoModelPathForConfigurationOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [VNValidationUtilities computeDeviceForKey:@"VNDetectorInternalOption_ModelComputeDevice" inOptions:v6 error:a4];
  if (v7)
  {
    v8 = [a1 _inferenceDescriptorForModelConfiguredWithOptions:v6 error:a4];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 modelPathForComputeDevice:v7 error:a4];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_inferenceDescriptorForModelConfiguredWithOptions:(id)a3 error:(id *)a4
{
  v5 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__24731;
  v14 = __Block_byref_object_dispose__24732;
  v15 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__VNPersonSegmentationGeneratorSemantics__inferenceDescriptorForModelConfiguredWithOptions_error___block_invoke;
  block[3] = &unk_1E77B69F0;
  block[4] = &v10;
  if (+[VNPersonSegmentationGeneratorSemantics _inferenceDescriptorForModelConfiguredWithOptions:error:]::onceToken != -1)
  {
    dispatch_once(&+[VNPersonSegmentationGeneratorSemantics _inferenceDescriptorForModelConfiguredWithOptions:error:]::onceToken, block);
  }

  v6 = +[VNPersonSegmentationGeneratorSemantics _inferenceDescriptorForModelConfiguredWithOptions:error:]::descriptor;
  if (+[VNPersonSegmentationGeneratorSemantics _inferenceDescriptorForModelConfiguredWithOptions:error:]::descriptor)
  {
    v7 = +[VNPersonSegmentationGeneratorSemantics _inferenceDescriptorForModelConfiguredWithOptions:error:]::descriptor;
  }

  else if (a4)
  {
    *a4 = v11[5];
  }

  _Block_object_dispose(&v10, 8);

  return v6;
}

void __98__VNPersonSegmentationGeneratorSemantics__inferenceDescriptorForModelConfiguredWithOptions_error___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  obj = *(v1 + 40);
  v2 = [MEMORY[0x1E69DF980] semanticSegmentationV4AndReturnError:&obj];
  objc_storeStrong((v1 + 40), obj);
  v3 = +[VNPersonSegmentationGeneratorSemantics _inferenceDescriptorForModelConfiguredWithOptions:error:]::descriptor;
  +[VNPersonSegmentationGeneratorSemantics _inferenceDescriptorForModelConfiguredWithOptions:error:]::descriptor = v2;
}

@end