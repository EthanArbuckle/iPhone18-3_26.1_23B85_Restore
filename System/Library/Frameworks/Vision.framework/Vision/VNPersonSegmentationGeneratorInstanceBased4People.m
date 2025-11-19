@interface VNPersonSegmentationGeneratorInstanceBased4People
+ (NSArray)outputConfidenceBlobNames;
+ (NSArray)outputMaskBlobNames;
+ (id)_inferenceDescriptorForModelConfiguredWithOptions:(uint64_t)a1 error:(void *)a2;
+ (id)espressoModelInputImageDimensionsBlobNameForConfigurationOptions:(id)a3;
+ (id)espressoModelPathForConfigurationOptions:(id)a3 error:(id *)a4;
+ (id)inputImageBlobName;
+ (id)outputMaskBlobNameToRequestKey;
+ (unsigned)networkRequiredInputImagePixelFormatForConfigurationOptions:(id)a3;
- (BOOL)bindOutputConfidenceBuffersAndReturnError:(id *)a3;
- (BOOL)validateMaskForBlobName:(id)a3 options:(id)a4 maskConfidence:(float *)a5 maskAcceptable:(BOOL *)a6 error:(id *)a7;
- (id).cxx_construct;
@end

@implementation VNPersonSegmentationGeneratorInstanceBased4People

+ (NSArray)outputConfidenceBlobNames
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [VNPersonSegmentationGeneratorInstanceBased4People _inferenceDescriptorForModelConfiguredWithOptions:a1 error:0];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v2 personInstanceMaskConfidencesOutput];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v4 = v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) name];
        [v3 addObject:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [v3 copy];

  return v9;
}

+ (id)_inferenceDescriptorForModelConfiguredWithOptions:(uint64_t)a1 error:(void *)a2
{
  objc_opt_self();
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__28992;
  v11 = __Block_byref_object_dispose__28993;
  v12 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __109__VNPersonSegmentationGeneratorInstanceBased4People__inferenceDescriptorForModelConfiguredWithOptions_error___block_invoke;
  block[3] = &unk_1E77B69F0;
  block[4] = &v7;
  if (+[VNPersonSegmentationGeneratorInstanceBased4People _inferenceDescriptorForModelConfiguredWithOptions:error:]::onceToken != -1)
  {
    dispatch_once(&+[VNPersonSegmentationGeneratorInstanceBased4People _inferenceDescriptorForModelConfiguredWithOptions:error:]::onceToken, block);
  }

  v3 = +[VNPersonSegmentationGeneratorInstanceBased4People _inferenceDescriptorForModelConfiguredWithOptions:error:]::descriptor;
  if (+[VNPersonSegmentationGeneratorInstanceBased4People _inferenceDescriptorForModelConfiguredWithOptions:error:]::descriptor)
  {
    v4 = +[VNPersonSegmentationGeneratorInstanceBased4People _inferenceDescriptorForModelConfiguredWithOptions:error:]::descriptor;
  }

  else if (a2)
  {
    *a2 = v8[5];
  }

  _Block_object_dispose(&v7, 8);

  return v3;
}

void __109__VNPersonSegmentationGeneratorInstanceBased4People__inferenceDescriptorForModelConfiguredWithOptions_error___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  obj = *(v1 + 40);
  v2 = [MEMORY[0x1E69DF958] personInstanceMaskV1AndReturnError:&obj];
  objc_storeStrong((v1 + 40), obj);
  v3 = +[VNPersonSegmentationGeneratorInstanceBased4People _inferenceDescriptorForModelConfiguredWithOptions:error:]::descriptor;
  +[VNPersonSegmentationGeneratorInstanceBased4People _inferenceDescriptorForModelConfiguredWithOptions:error:]::descriptor = v2;
}

+ (id)outputMaskBlobNameToRequestKey
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [a1 outputMaskBlobNames];
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v2, "count")}];
  v4 = objc_opt_class();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = NSStringFromClass(v4);
        [v3 setObject:v10 forKeyedSubscript:{v9, v13}];
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];

  return v11;
}

+ (NSArray)outputMaskBlobNames
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [VNPersonSegmentationGeneratorInstanceBased4People _inferenceDescriptorForModelConfiguredWithOptions:a1 error:0];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v2 personInstanceMasksOutput];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v4 = v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) name];
        [v3 addObject:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [v3 copy];

  return v9;
}

+ (id)inputImageBlobName
{
  v2 = [VNPersonSegmentationGeneratorInstanceBased4People _inferenceDescriptorForModelConfiguredWithOptions:a1 error:0];
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
  v3 = [VNPersonSegmentationGeneratorInstanceBased4People _inferenceDescriptorForModelConfiguredWithOptions:a1 error:0];
  v4 = [v3 onlyInputImage];
  v5 = [v4 name];

  return v5;
}

+ (unsigned)networkRequiredInputImagePixelFormatForConfigurationOptions:(id)a3
{
  v3 = [VNPersonSegmentationGeneratorInstanceBased4People _inferenceDescriptorForModelConfiguredWithOptions:a1 error:0];
  v4 = [v3 onlyInputImage];
  v5 = [v4 pixelFormatType];

  return v5;
}

+ (id)espressoModelPathForConfigurationOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [VNValidationUtilities computeDeviceForKey:@"VNDetectorInternalOption_ModelComputeDevice" inOptions:v6 error:a4];
  if (v7)
  {
    v8 = [VNPersonSegmentationGeneratorInstanceBased4People _inferenceDescriptorForModelConfiguredWithOptions:a1 error:a4];
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

- (id).cxx_construct
{
  *(self + 216) = 0u;
  *(self + 232) = 0u;
  *(self + 62) = 1065353216;
  return self;
}

- (BOOL)bindOutputConfidenceBuffersAndReturnError:(id *)a3
{
  v5 = [objc_opt_class() outputConfidenceBlobNames];
  +[VNError VNAssert:log:](VNError, "VNAssert:log:", [v5 count] == 1, @"VNSegmentationGenerator - internal error in number confidence buffer names");
  [v5 firstObject];
  v20 = 0;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v6 = v10 = 0u;
  v9 = v6;
  v7 = std::__hash_table<std::__hash_value_type<NSString * {__strong},espresso_buffer_t>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},espresso_buffer_t>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},espresso_buffer_t>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},espresso_buffer_t>>>::__emplace_unique_key_args<NSString * {__strong},std::pair<NSString * {__strong},espresso_buffer_t>>(&self->_espressoConfidencesOutputBuffer.__table_.__bucket_list_.__ptr_, &v9);

  LOBYTE(a3) = [(VNEspressoModelFileBasedDetector *)self bindBuffer:v7 + 3 toNetworkOutputBlobName:v7[2] error:a3];
  return a3;
}

- (BOOL)validateMaskForBlobName:(id)a3 options:(id)a4 maskConfidence:(float *)a5 maskAcceptable:(BOOL *)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  if (a5)
  {
    v14 = a6 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  v32 = v13;
  [VNError VNAssert:v15 log:@"One or more of output parameters is/are NULL", v12];
  v16 = v12;
  v17 = v16;
  if (!self)
  {

    goto LABEL_9;
  }

  v31 = a7;
  [VNError VNAssert:self->_espressoConfidencesOutputBuffer.__table_.__size_ == 1 log:@"VNSegmentationGenerator - internal error in number confidence buffers"];
  v18 = *(self->_espressoConfidencesOutputBuffer.__table_.__first_node_.__next_ + 3);
  v19 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v19 setNumberStyle:1];
  v20 = [v17 componentsSeparatedByString:@":"];
  v21 = [v20 firstObject];

  v22 = [v21 componentsSeparatedByString:@"_"];
  v23 = [v22 lastObject];

  v24 = [v19 numberFromString:v23];
  v25 = [v24 unsignedIntegerValue] - 1;

  [VNError VNAssert:v25 < 4 log:@"VNSegmentationGenerator - internal error calculating confidence index"];
  v26 = *(v18 + 4 * v25);

  if (v26 < 0.5)
  {
LABEL_9:
    *a6 = 0;
    v27 = 1;
    v28 = v32;
    goto LABEL_15;
  }

  v33 = 0.0;
  v28 = v32;
  v27 = [VNValidationUtilities getFloatValue:&v33 forKey:@"VNSegmentationGeneratorProcessOption_MinimumConfidence" inOptions:v32 withDefaultValue:v31 error:0.0];
  if (v27)
  {
    if (v26 >= v33)
    {
      *a5 = v26;
      v29 = 1;
    }

    else
    {
      v29 = 0;
    }

    *a6 = v29;
  }

LABEL_15:

  return v27;
}

@end