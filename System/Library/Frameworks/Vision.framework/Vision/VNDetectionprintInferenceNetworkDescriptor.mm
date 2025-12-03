@interface VNDetectionprintInferenceNetworkDescriptor
+ (id)URLForEspressoModelNamed:(id)named error:(id *)error;
+ (id)_descriptorForNetworkFileName:(id)name networkSpecifier:(id)specifier imageInputName:(id)inputName tensorKeyToOutputNames:(id)names error:(id *)error;
+ (id)sceneNetV3BasedNetworkAndReturnError:(id *)error;
@end

@implementation VNDetectionprintInferenceNetworkDescriptor

+ (id)URLForEspressoModelNamed:(id)named error:(id *)error
{
  v4 = [MEMORY[0x1E69DF908] URLForModelNamed:named error:error];

  return v4;
}

+ (id)sceneNetV3BasedNetworkAndReturnError:(id *)error
{
  v5 = objc_alloc(MEMORY[0x1E69DF968]);
  v6 = [objc_alloc(MEMORY[0x1E69DF970]) initWithMajor:3 minor:0 micro:0];
  v7 = [v5 initWithIdentifier:@"VNDetectionprintInferenceNetworkIdentifier" version:v6];

  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __83__VNDetectionprintInferenceNetworkDescriptor_sceneNetV3BasedNetworkAndReturnError___block_invoke;
  v17 = &unk_1E77B6848;
  selfCopy = self;
  v8 = v7;
  v18 = v8;
  v9 = _Block_copy(&v14);
  v10 = [VNFrameworkManager manager:v14];
  detectorDescriptorsCache = [v10 detectorDescriptorsCache];
  v12 = [detectorDescriptorsCache objectForIdentifier:v8 creationBlock:v9 error:error];

  return v12;
}

id __83__VNDetectionprintInferenceNetworkDescriptor_sceneNetV3BasedNetworkAndReturnError___block_invoke(uint64_t a1, uint64_t a2)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"VNDetectionprintTensorKeyMixed2";
  v7[1] = @"VNDetectionprintTensorKeyMixed6";
  v8[0] = @"classification/mixed_2/concat_channels";
  v8[1] = @"classification/mixed_6/concat_channels";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v5 = [*(a1 + 40) _descriptorForNetworkFileName:@"detector_print_mixed26.espresso" networkSpecifier:*(a1 + 32) imageInputName:@"data" tensorKeyToOutputNames:v4 error:a2];

  return v5;
}

+ (id)_descriptorForNetworkFileName:(id)name networkSpecifier:(id)specifier imageInputName:(id)inputName tensorKeyToOutputNames:(id)names error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  specifierCopy = specifier;
  inputNameCopy = inputName;
  namesCopy = names;
  v13 = [self URLForEspressoModelNamed:name error:error];
  if (v13)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    allValues = [namesCopy allValues];
    v16 = [allValues countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v16)
    {
      v17 = *v33;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(allValues);
          }

          [v14 setObject:&unk_1F19C1E28 forKeyedSubscript:*(*(&v32 + 1) + 8 * i)];
        }

        v16 = [allValues countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v16);
    }

    v30 = 0;
    v31 = 0;
    v19 = [MEMORY[0x1E69DF908] getInputImageTensorDescriptor:&v31 outputTensorDescriptors:&v30 forNetworkModelFileURL:v13 inputBlobName:inputNameCopy pixelFormatType:1111970369 outputBlobNamesWithTypes:v14 confidencesBlobNamesWithLabelsFiles:0 error:error];
    v20 = v31;
    v21 = v30;
    if (v19)
    {
      v22 = [self alloc];
      allValues2 = [v21 allValues];
      v24 = [v22 initWithURL:v13 specifier:specifierCopy networkHeadVersions:0 inputImage:v20 outputs:allValues2 confidencesOutput:0];

      v25 = [namesCopy copy];
      v26 = v24[8];
      v24[8] = v25;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

@end