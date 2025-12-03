@interface VNPersonSegmentationGeneratorInstanceBased4People
+ (NSArray)outputConfidenceBlobNames;
+ (NSArray)outputMaskBlobNames;
+ (id)_inferenceDescriptorForModelConfiguredWithOptions:(uint64_t)options error:(void *)error;
+ (id)espressoModelInputImageDimensionsBlobNameForConfigurationOptions:(id)options;
+ (id)espressoModelPathForConfigurationOptions:(id)options error:(id *)error;
+ (id)inputImageBlobName;
+ (id)outputMaskBlobNameToRequestKey;
+ (unsigned)networkRequiredInputImagePixelFormatForConfigurationOptions:(id)options;
- (BOOL)bindOutputConfidenceBuffersAndReturnError:(id *)error;
- (BOOL)validateMaskForBlobName:(id)name options:(id)options maskConfidence:(float *)confidence maskAcceptable:(BOOL *)acceptable error:(id *)error;
- (id).cxx_construct;
@end

@implementation VNPersonSegmentationGeneratorInstanceBased4People

+ (NSArray)outputConfidenceBlobNames
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [VNPersonSegmentationGeneratorInstanceBased4People _inferenceDescriptorForModelConfiguredWithOptions:self error:0];
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

        name = [*(*(&v11 + 1) + 8 * i) name];
        [v3 addObject:name];
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [v3 copy];

  return v9;
}

+ (id)_inferenceDescriptorForModelConfiguredWithOptions:(uint64_t)options error:(void *)error
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

  else if (error)
  {
    *error = v8[5];
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
  outputMaskBlobNames = [self outputMaskBlobNames];
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(outputMaskBlobNames, "count")}];
  v4 = objc_opt_class();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = outputMaskBlobNames;
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
  v2 = [VNPersonSegmentationGeneratorInstanceBased4People _inferenceDescriptorForModelConfiguredWithOptions:self error:0];
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

        name = [*(*(&v11 + 1) + 8 * i) name];
        [v3 addObject:name];
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
  v2 = [VNPersonSegmentationGeneratorInstanceBased4People _inferenceDescriptorForModelConfiguredWithOptions:self error:0];
  v3 = v2;
  if (v2)
  {
    allInputNames = [v2 allInputNames];
    firstObject = [allInputNames firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

+ (id)espressoModelInputImageDimensionsBlobNameForConfigurationOptions:(id)options
{
  v3 = [VNPersonSegmentationGeneratorInstanceBased4People _inferenceDescriptorForModelConfiguredWithOptions:self error:0];
  onlyInputImage = [v3 onlyInputImage];
  name = [onlyInputImage name];

  return name;
}

+ (unsigned)networkRequiredInputImagePixelFormatForConfigurationOptions:(id)options
{
  v3 = [VNPersonSegmentationGeneratorInstanceBased4People _inferenceDescriptorForModelConfiguredWithOptions:self error:0];
  onlyInputImage = [v3 onlyInputImage];
  pixelFormatType = [onlyInputImage pixelFormatType];

  return pixelFormatType;
}

+ (id)espressoModelPathForConfigurationOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v7 = [VNValidationUtilities computeDeviceForKey:@"VNDetectorInternalOption_ModelComputeDevice" inOptions:optionsCopy error:error];
  if (v7)
  {
    v8 = [VNPersonSegmentationGeneratorInstanceBased4People _inferenceDescriptorForModelConfiguredWithOptions:self error:error];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 modelPathForComputeDevice:v7 error:error];
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

- (BOOL)bindOutputConfidenceBuffersAndReturnError:(id *)error
{
  outputConfidenceBlobNames = [objc_opt_class() outputConfidenceBlobNames];
  +[VNError VNAssert:log:](VNError, "VNAssert:log:", [outputConfidenceBlobNames count] == 1, @"VNSegmentationGenerator - internal error in number confidence buffer names");
  [outputConfidenceBlobNames firstObject];
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

  LOBYTE(error) = [(VNEspressoModelFileBasedDetector *)self bindBuffer:v7 + 3 toNetworkOutputBlobName:v7[2] error:error];
  return error;
}

- (BOOL)validateMaskForBlobName:(id)name options:(id)options maskConfidence:(float *)confidence maskAcceptable:(BOOL *)acceptable error:(id *)error
{
  nameCopy = name;
  optionsCopy = options;
  if (confidence)
  {
    v14 = acceptable == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  v32 = optionsCopy;
  [VNError VNAssert:v15 log:@"One or more of output parameters is/are NULL", nameCopy];
  v16 = nameCopy;
  v17 = v16;
  if (!self)
  {

    goto LABEL_9;
  }

  errorCopy = error;
  [VNError VNAssert:self->_espressoConfidencesOutputBuffer.__table_.__size_ == 1 log:@"VNSegmentationGenerator - internal error in number confidence buffers"];
  v18 = *(self->_espressoConfidencesOutputBuffer.__table_.__first_node_.__next_ + 3);
  v19 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v19 setNumberStyle:1];
  v20 = [v17 componentsSeparatedByString:@":"];
  firstObject = [v20 firstObject];

  v22 = [firstObject componentsSeparatedByString:@"_"];
  lastObject = [v22 lastObject];

  v24 = [v19 numberFromString:lastObject];
  v25 = [v24 unsignedIntegerValue] - 1;

  [VNError VNAssert:v25 < 4 log:@"VNSegmentationGenerator - internal error calculating confidence index"];
  v26 = *(v18 + 4 * v25);

  if (v26 < 0.5)
  {
LABEL_9:
    *acceptable = 0;
    v27 = 1;
    v28 = v32;
    goto LABEL_15;
  }

  v33 = 0.0;
  v28 = v32;
  v27 = [VNValidationUtilities getFloatValue:&v33 forKey:@"VNSegmentationGeneratorProcessOption_MinimumConfidence" inOptions:v32 withDefaultValue:errorCopy error:0.0];
  if (v27)
  {
    if (v26 >= v33)
    {
      *confidence = v26;
      v29 = 1;
    }

    else
    {
      v29 = 0;
    }

    *acceptable = v29;
  }

LABEL_15:

  return v27;
}

@end