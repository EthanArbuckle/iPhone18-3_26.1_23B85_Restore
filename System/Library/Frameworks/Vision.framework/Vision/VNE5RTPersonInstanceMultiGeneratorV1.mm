@interface VNE5RTPersonInstanceMultiGeneratorV1
+ (id)createE5RTFunctionDescriptorForConfigurationOptions:(id)options error:(id *)error;
+ (id)modelURLForConfigurationOptions:(id)options error:(id *)error;
+ (id)outputMaskBlobNameToRequestKey;
+ (id)outputMaskBlobNames;
- (id)observationsFromE5RTExecutionOutputs:(id)outputs forFunctionDescriptor:(id)descriptor originatingRequestSpecifier:(id)specifier options:(id)options error:(id *)error;
@end

@implementation VNE5RTPersonInstanceMultiGeneratorV1

+ (id)outputMaskBlobNames
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__VNE5RTPersonInstanceMultiGeneratorV1_outputMaskBlobNames__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[VNE5RTPersonInstanceMultiGeneratorV1 outputMaskBlobNames]::onceToken != -1)
  {
    dispatch_once(&+[VNE5RTPersonInstanceMultiGeneratorV1 outputMaskBlobNames]::onceToken, block);
  }

  v2 = +[VNE5RTPersonInstanceMultiGeneratorV1 outputMaskBlobNames]::outputMaskBlobNames;

  return v2;
}

void __59__VNE5RTPersonInstanceMultiGeneratorV1_outputMaskBlobNames__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) E5RTFunctionDescriptorForConfigurationOptions:MEMORY[0x1E695E0F8] error:0];
  v2 = [v1 personInstanceMasksOutput];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v2, "count")}];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v11 + 1) + 8 * v7) name];
        [v3 addObject:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [v3 copy];
  v10 = +[VNE5RTPersonInstanceMultiGeneratorV1 outputMaskBlobNames]::outputMaskBlobNames;
  +[VNE5RTPersonInstanceMultiGeneratorV1 outputMaskBlobNames]::outputMaskBlobNames = v9;
}

+ (id)outputMaskBlobNameToRequestKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__VNE5RTPersonInstanceMultiGeneratorV1_outputMaskBlobNameToRequestKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[VNE5RTPersonInstanceMultiGeneratorV1 outputMaskBlobNameToRequestKey]::onceToken != -1)
  {
    dispatch_once(&+[VNE5RTPersonInstanceMultiGeneratorV1 outputMaskBlobNameToRequestKey]::onceToken, block);
  }

  v2 = +[VNE5RTPersonInstanceMultiGeneratorV1 outputMaskBlobNameToRequestKey]::outputMaskBlobNameToRequestKey;

  return v2;
}

void __70__VNE5RTPersonInstanceMultiGeneratorV1_outputMaskBlobNameToRequestKey__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [*(a1 + 32) outputMaskBlobNames];
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [v5 setObject:v3 forKey:{*(*(&v12 + 1) + 8 * v9++), v12}];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = [v5 copy];
  v11 = +[VNE5RTPersonInstanceMultiGeneratorV1 outputMaskBlobNameToRequestKey]::outputMaskBlobNameToRequestKey;
  +[VNE5RTPersonInstanceMultiGeneratorV1 outputMaskBlobNameToRequestKey]::outputMaskBlobNameToRequestKey = v10;
}

+ (id)createE5RTFunctionDescriptorForConfigurationOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v7 = [self E5RTVisionCoreComputeDeviceForConfigurationOptions:optionsCopy error:error];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__16947;
  v16 = __Block_byref_object_dispose__16948;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __98__VNE5RTPersonInstanceMultiGeneratorV1_createE5RTFunctionDescriptorForConfigurationOptions_error___block_invoke;
  v11[3] = &unk_1E77B4698;
  v11[4] = &v12;
  v11[5] = v7;
  if (+[VNE5RTPersonInstanceMultiGeneratorV1 createE5RTFunctionDescriptorForConfigurationOptions:error:]::onceToken != -1)
  {
    dispatch_once(&+[VNE5RTPersonInstanceMultiGeneratorV1 createE5RTFunctionDescriptorForConfigurationOptions:error:]::onceToken, v11);
  }

  v8 = +[VNE5RTPersonInstanceMultiGeneratorV1 createE5RTFunctionDescriptorForConfigurationOptions:error:]::descriptor;
  if (+[VNE5RTPersonInstanceMultiGeneratorV1 createE5RTFunctionDescriptorForConfigurationOptions:error:]::descriptor)
  {
    v9 = +[VNE5RTPersonInstanceMultiGeneratorV1 createE5RTFunctionDescriptorForConfigurationOptions:error:]::descriptor;
  }

  else if (error)
  {
    *error = v13[5];
  }

  _Block_object_dispose(&v12, 8);

  return v8;
}

void __98__VNE5RTPersonInstanceMultiGeneratorV1_createE5RTFunctionDescriptorForConfigurationOptions_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  obj = *(v2 + 40);
  v3 = [MEMORY[0x1E69DF960] personInstanceMaskForModelVersion:1 computeDeviceType:v1 error:&obj];
  objc_storeStrong((v2 + 40), obj);
  v4 = +[VNE5RTPersonInstanceMultiGeneratorV1 createE5RTFunctionDescriptorForConfigurationOptions:error:]::descriptor;
  +[VNE5RTPersonInstanceMultiGeneratorV1 createE5RTFunctionDescriptorForConfigurationOptions:error:]::descriptor = v3;
}

+ (id)modelURLForConfigurationOptions:(id)options error:(id *)error
{
  v4 = [MEMORY[0x1E69DF960] modelFileURLForModelVersion:objc_msgSend(self error:{"modelVersion", options), error}];

  return v4;
}

- (id)observationsFromE5RTExecutionOutputs:(id)outputs forFunctionDescriptor:(id)descriptor originatingRequestSpecifier:(id)specifier options:(id)options error:(id *)error
{
  v96 = *MEMORY[0x1E69E9840];
  outputsCopy = outputs;
  descriptorCopy = descriptor;
  specifierCopy = specifier;
  optionsCopy = options;
  v12 = [VNValidationUtilities requiredSessionInOptions:"requiredSessionInOptions:error:" error:?];
  if (!v12)
  {
    v41 = 0;
    goto LABEL_49;
  }

  v57 = v12;
  v13 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNSegmentationGeneratorProcessOption_ObjectClassIDs" inOptions:optionsCopy error:error];
  v56 = v13;
  if (v13)
  {
    unsignedIntegerValue = [v13 unsignedIntegerValue];
    v15 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNSegmentationGeneratorProcessOption_OutputPixelFormat" inOptions:optionsCopy error:error];
    if (!v15)
    {
      v41 = 0;
LABEL_47:

      goto LABEL_48;
    }

    v53 = v15;
    v79 = 0;
    if (![VNValidationUtilities getBOOLValue:&v79 forKey:@"VNSegmentationGeneratorProcessOption_ImageRotated" inOptions:optionsCopy error:error])
    {
      v41 = 0;
LABEL_46:
      v15 = v53;
      goto LABEL_47;
    }

    v49 = descriptorCopy;
    v48 = [v49 objectMaskDescriptorsForObjectClassIDs:unsignedIntegerValue error:error];
    if (!v48)
    {
      v41 = 0;
LABEL_45:

      goto LABEL_46;
    }

    v16 = objc_opt_class();
    [v16 requestKeyToRequestInfo];
    v47 = v52 = self;
    v17 = [v47 count];
    for (i = objc_alloc_init(MEMORY[0x1E695DF70]); v17; --v17)
    {
      v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [i addObject:v18];
    }

    outputMaskBlobNameToRequestKey = [v16 outputMaskBlobNameToRequestKey];
    v19 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNSegmentationGeneratorProcessOption_OriginalRequestSpecifiers" inOptions:optionsCopy error:error];
    if (!v19 || (v78 = 0, ![VNValidationUtilities getFloatValue:&v78 forKey:@"VNSegmentationGeneratorProcessOption_MinimumConfidence" inOptions:optionsCopy withDefaultValue:error error:0.0]))
    {
      v41 = 0;
LABEL_44:

      goto LABEL_45;
    }

    v44 = v19;
    v20 = [v49 objectMaskDescriptorsForObjectClassIDs:16 error:error];
    firstObject = [v20 firstObject];

    if (firstObject)
    {
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v21 = v48;
      obj = v21;
      v22 = [v21 countByEnumeratingWithState:&v74 objects:v95 count:16];
      if (v22)
      {
        v50 = *v75;
        while (2)
        {
          v51 = v22;
          for (j = 0; j != v51; ++j)
          {
            if (*v75 != v50)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v74 + 1) + 8 * j);
            name = [v24 name];
            name2 = [firstObject name];
            v27 = [name isEqualToString:name2];

            if ((v27 & 1) == 0)
            {
              v28 = v78;
              v29 = name;
              v30 = firstObject;
              v55 = outputsCopy;
              if (!v52)
              {

LABEL_41:
                v41 = 0;
                firstObject2 = obj;
                goto LABEL_42;
              }

              [VNError VNAssert:1 log:@"One or more of output parameters is/are NULL"];
              v91 = 0;
              v92 = &v91;
              v93 = 0x2020000000;
              v94 = 0;
              v87 = 0;
              v88 = &v87;
              v89 = 0x2020000000;
              v90 = 1;
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 3221225472;
              aBlock[2] = __167__VNE5RTPersonInstanceMultiGeneratorV1_validateMaskForBlobName_confidenceScoresDescriptor_functionOutputObjects_minimumConfidence_maskConfidence_maskAcceptable_error___block_invoke;
              aBlock[3] = &unk_1E77B3FA8;
              v31 = v30;
              v84 = &v91;
              v81 = v31;
              v82 = v52;
              v29 = v29;
              v83 = v29;
              v85 = &v87;
              v86 = v28;
              v32 = _Block_copy(aBlock);
              name3 = [v31 name];
              v34 = [v55 accessReadOnlyDataForName:name3 usingBlock:v32 error:error];

              if (v34)
              {
                v35 = v92[6];
                v36 = *(v88 + 24);
              }

              else
              {
                v36 = 0;
                v35 = 1.0;
              }

              _Block_object_dispose(&v87, 8);
              _Block_object_dispose(&v91, 8);

              if ((v34 & 1) == 0)
              {
                goto LABEL_41;
              }

              if (v36)
              {
                v63[0] = MEMORY[0x1E69E9820];
                v63[1] = 3221225472;
                v63[2] = __141__VNE5RTPersonInstanceMultiGeneratorV1_observationsFromE5RTExecutionOutputs_forFunctionDescriptor_originatingRequestSpecifier_options_error___block_invoke;
                v63[3] = &unk_1E77B3F80;
                v63[4] = v24;
                v29 = v29;
                v64 = v29;
                v37 = v53;
                v73 = v79;
                v65 = v37;
                v66 = v52;
                v67 = v57;
                v68 = outputMaskBlobNameToRequestKey;
                v69 = v47;
                v70 = v44;
                v72 = v35;
                v71 = i;
                v38 = _Block_copy(v63);
                name4 = [v24 name];
                v40 = [v55 accessReadOnlyDataForName:name4 usingBlock:v38 error:error];

                if ((v40 & 1) == 0)
                {
                  goto LABEL_41;
                }
              }
            }
          }

          v21 = obj;
          v22 = [obj countByEnumeratingWithState:&v74 objects:v95 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }

      if (![i count])
      {
        v41 = MEMORY[0x1E695E0F0];
        goto LABEL_43;
      }

      if ([specifierCopy specifiesRequestClass:objc_opt_class()])
      {
        v41 = [i copy];
LABEL_43:

        v19 = v44;
        goto LABEL_44;
      }

      firstObject2 = [i firstObject];
      v41 = [firstObject2 copy];
    }

    else
    {
      if (!error)
      {
        v41 = 0;
        goto LABEL_43;
      }

      firstObject2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Cannot find confidence score descriptor"];
      [VNError errorForInternalErrorWithLocalizedDescription:?];
      *error = v41 = 0;
    }

LABEL_42:

    goto LABEL_43;
  }

  v41 = 0;
LABEL_48:

  v12 = v57;
LABEL_49:

  return v41;
}

uint64_t __141__VNE5RTPersonInstanceMultiGeneratorV1_observationsFromE5RTExecutionOutputs_forFunctionDescriptor_originatingRequestSpecifier_options_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) dataType] == 65552 || objc_msgSend(*(a1 + 32), "dataType") == 983056)
  {
    v6 = [*(a1 + 32) shape];
    v7 = *([v6 sizes] + 24);

    v8 = [*(a1 + 32) shape];
    v9 = *([v8 sizes] + 16);

    [*(a1 + 32) dataType];
    v10 = VisionCoreTensorDataTypeGetElementSize() * v7 * v9;
    if ([v5 length] == v10)
    {
      v11 = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:v7 height:v9 pixelFormatType:1278226534 error:a3];
      if (v11)
      {
        if (+[VNCVPixelBufferHelper renderRawDataBufferWithWidth:height:pixelFormatType:rowBytes:dataBytes:intoCVPixelBuffer:error:](VNCVPixelBufferHelper, v7, v9, 1278226536, [v5 bytes], v11, a3))
        {
          v12 = [*(a1 + 48) objectForKeyedSubscript:*(a1 + 40)];
          v13 = [v12 unsignedIntegerValue];

          if ((*(a1 + 108) & 1) == 0 && v13 == 1278226534)
          {
            goto LABEL_20;
          }

          v14 = objc_autoreleasePoolPush();
          v15 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:v11];
          CVPixelBufferRelease(v11);
          if (*(a1 + 108) == 1)
          {
            v16 = [v15 imageByApplyingCGOrientation:6];

            v17 = v9;
            v15 = v16;
          }

          else
          {
            v17 = v7;
            v7 = v9;
          }

          v20 = *(a1 + 56);
          v21 = [*(a1 + 64) vnciContextManager];
          v33 = 0;
          v11 = [v20 renderCIImage:v15 width:v17 height:v7 format:v13 vnciContextManager:v21 error:&v33];
          v22 = v33;

          objc_autoreleasePoolPop(v14);
          if (v11)
          {

LABEL_20:
            v23 = [*(a1 + 72) objectForKey:*(a1 + 40)];
            v24 = [*(a1 + 80) objectForKey:v23];
            v25 = *(a1 + 88);
            v26 = [v24 originatingRequestSpecifierKey];
            v27 = [v25 objectForKeyedSubscript:v26];

            v28 = [[VNPixelBufferObservation alloc] initWithOriginatingRequestSpecifier:v27 featureName:0 CVPixelBuffer:v11];
            LODWORD(v29) = *(a1 + 104);
            [(VNObservation *)v28 setConfidence:v29];
            v30 = [*(a1 + 96) objectAtIndex:{objc_msgSend(v24, "originalRequestResultsIndex")}];
            [v30 addObject:v28];

            a3 = 1;
            goto LABEL_21;
          }

          if (a3)
          {
            v32 = v22;
            *a3 = v22;
          }

          v11 = 0;
        }

        a3 = 0;
LABEL_21:
        CVPixelBufferRelease(v11);
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    if (a3)
    {
      v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ size is %lu bytes instead of the expected %lu bytes \n", *(a1 + 40), objc_msgSend(v5, "length"), v10];
      v19 = [VNError errorForInternalErrorWithLocalizedDescription:v18];
LABEL_14:
      *a3 = v19;

LABEL_15:
      a3 = 0;
    }
  }

  else if (a3)
  {
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected data type: %lu", objc_msgSend(*(a1 + 32), "dataType")];
    v19 = [VNError errorForInternalErrorWithLocalizedDescription:v18];
    goto LABEL_14;
  }

LABEL_22:

  return a3;
}

BOOL __167__VNE5RTPersonInstanceMultiGeneratorV1_validateMaskForBlobName_confidenceScoresDescriptor_functionOutputObjects_minimumConfidence_maskConfidence_maskAcceptable_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) dataType];
  if (v6 == 65552)
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = v5;
    v10 = v9;
    v29 = v8;
    if (v7)
    {
      v11 = [v9 bytes];
      v12 = objc_alloc_init(MEMORY[0x1E696ADA0]);
      [v12 setNumberStyle:1];
      v13 = [v8 componentsSeparatedByString:@":"];
      v14 = [v13 firstObject];

      v15 = [v14 componentsSeparatedByString:@"_"];
      v16 = [v15 lastObject];

      v17 = [v12 numberFromString:v16];
      v18 = [v17 unsignedIntegerValue] - 1;

      [VNError VNAssert:v18 < 4 log:@"VNSegmentationGenerator - internal error calculating confidence index"];
      _H0 = *(v11 + 2 * v18);
      __asm { FCVT            S8, H0 }
    }

    else
    {
      _S8 = 0;
    }

    *(*(*(a1 + 56) + 8) + 24) = _S8;
    v25 = *(*(*(a1 + 56) + 8) + 24);
    if (v25 >= 0.5)
    {
      v26 = *(*(a1 + 64) + 8);
      if (v25 >= *(a1 + 72))
      {
        *(v26 + 24) = 1;
        goto LABEL_11;
      }
    }

    else
    {
      v26 = *(*(a1 + 64) + 8);
    }

    *(v26 + 24) = 0;
  }

  else if (a3)
  {
    v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected data type: %lu", objc_msgSend(*(a1 + 32), "dataType")];
    *a3 = [VNError errorForInternalErrorWithLocalizedDescription:v27];
  }

LABEL_11:

  return v6 == 65552;
}

@end