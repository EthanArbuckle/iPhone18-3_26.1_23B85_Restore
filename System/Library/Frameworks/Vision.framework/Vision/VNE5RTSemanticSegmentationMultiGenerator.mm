@interface VNE5RTSemanticSegmentationMultiGenerator
+ (id)modelURLForConfigurationOptions:(id)a3 error:(id *)a4;
- (id)observationsFromE5RTExecutionOutputs:(id)a3 forFunctionDescriptor:(id)a4 originatingRequestSpecifier:(id)a5 options:(id)a6 error:(id *)a7;
@end

@implementation VNE5RTSemanticSegmentationMultiGenerator

+ (id)modelURLForConfigurationOptions:(id)a3 error:(id *)a4
{
  v4 = [MEMORY[0x1E69DF988] modelFileURLForModelVersion:objc_msgSend(a1 error:{"modelVersion", a3), a4}];

  return v4;
}

- (id)observationsFromE5RTExecutionOutputs:(id)a3 forFunctionDescriptor:(id)a4 originatingRequestSpecifier:(id)a5 options:(id)a6 error:(id *)a7
{
  v91 = *MEMORY[0x1E69E9840];
  v62 = a3;
  v61 = a4;
  v60 = a5;
  v12 = a6;
  v13 = [VNValidationUtilities requiredSessionInOptions:v12 error:a7];
  if (!v13)
  {
    v23 = 0;
    goto LABEL_48;
  }

  v59 = v13;
  v14 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNSegmentationGeneratorProcessOption_ObjectClassIDs" inOptions:v12 error:a7];
  v57 = v14;
  if (v14)
  {
    v15 = [v14 unsignedIntegerValue];
    v16 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNSegmentationGeneratorProcessOption_OutputPixelFormat" inOptions:v12 error:a7];
    if (!v16 || (v89 = 0, ![VNValidationUtilities getBOOLValue:&v89 forKey:@"VNSegmentationGeneratorProcessOption_ImageRotated" inOptions:v12 error:a7]))
    {
      v23 = 0;
LABEL_46:

      goto LABEL_47;
    }

    v46 = v61;
    v56 = v16;
    v45 = [v46 objectMaskDescriptorsForObjectClassIDs:v15 error:a7];
    if (!v45)
    {
      v23 = 0;
LABEL_45:

      v16 = v56;
      goto LABEL_46;
    }

    v17 = objc_opt_class();
    v85[0] = 0;
    v85[1] = v85;
    v85[2] = 0x4812000000;
    v85[3] = __Block_byref_object_copy__19247;
    v85[4] = __Block_byref_object_dispose__19248;
    v85[5] = "";
    v88 = 0;
    __p = 0;
    v87 = 0;
    v58 = [v17 modelVersion];
    if (v58 == 2)
    {
      v18 = [v46 objectMaskDescriptorsForObjectClassIDs:2048 error:a7];
      v19 = [v18 firstObject];

      if (!v19)
      {
        v48 = 0;
LABEL_41:
        v23 = 0;
LABEL_42:
        _Block_object_dispose(v85, 8);
        if (__p)
        {
          operator delete(__p);
        }

        goto LABEL_45;
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __145__VNE5RTSemanticSegmentationMultiGenerator_observationsFromE5RTExecutionOutputs_forFunctionDescriptor_originatingRequestSpecifier_options_error___block_invoke;
      aBlock[3] = &unk_1E77B5C08;
      v48 = v19;
      v83 = v48;
      v84 = v85;
      v20 = _Block_copy(aBlock);
      v21 = [v48 name];
      v22 = [v62 accessReadOnlyDataForName:v21 usingBlock:v20 error:a7];

      if ((v22 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v48 = 0;
    }

    v50 = [v17 requestKeyToRequestInfo];
    v24 = [v50 count];
    v53 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v51 = [v17 outputMaskBlobNameToRequestKey];
    v52 = [v17 outputMaskBlobNameToFeatureName];
    v25 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNSegmentationGeneratorProcessOption_OriginalRequestSpecifiers" inOptions:v12 error:a7];
    v26 = v25;
    if (v25)
    {
      v49 = v25;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v27 = v45;
      obj = v27;
      v28 = [v27 countByEnumeratingWithState:&v78 objects:v90 count:16];
      if (v28)
      {
        v54 = *v79;
        while (2)
        {
          v55 = v28;
          for (i = 0; i != v55; ++i)
          {
            if (*v79 != v54)
            {
              objc_enumerationMutation(obj);
            }

            v30 = *(*(&v78 + 1) + 8 * i);
            v31 = [v30 name];
            if (v58 == 2 && ([v48 name], v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v31, "isEqualToString:", v32), v32, v33))
            {
            }

            else
            {
              v34 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v24];
              for (j = v24; j; --j)
              {
                v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
                [v34 addObject:v36];
              }

              v65[0] = MEMORY[0x1E69E9820];
              v65[1] = 3221225472;
              v65[2] = __145__VNE5RTSemanticSegmentationMultiGenerator_observationsFromE5RTExecutionOutputs_forFunctionDescriptor_originatingRequestSpecifier_options_error___block_invoke_2;
              v65[3] = &unk_1E77B42A0;
              v65[4] = v30;
              v75 = v85;
              v76 = v58;
              v37 = v31;
              v66 = v37;
              v38 = v56;
              v77 = v89;
              v67 = v38;
              v68 = self;
              v69 = v59;
              v70 = v51;
              v71 = v50;
              v72 = v52;
              v73 = v49;
              v39 = v34;
              v74 = v39;
              v40 = _Block_copy(v65);
              v41 = [v30 name];
              v42 = [v62 accessReadOnlyDataForName:v41 usingBlock:v40 error:a7];

              if (v42)
              {
                if ([v53 count])
                {
                  v63[0] = MEMORY[0x1E69E9820];
                  v63[1] = 3221225472;
                  v63[2] = __145__VNE5RTSemanticSegmentationMultiGenerator_observationsFromE5RTExecutionOutputs_forFunctionDescriptor_originatingRequestSpecifier_options_error___block_invoke_3;
                  v63[3] = &unk_1E77B42C8;
                  v64 = v39;
                  [v53 enumerateObjectsUsingBlock:v63];
                }

                else
                {
                  [v53 addObjectsFromArray:v39];
                }
              }

              if (!v42)
              {
                v23 = 0;
                v43 = obj;
                goto LABEL_38;
              }
            }
          }

          v27 = obj;
          v28 = [obj countByEnumeratingWithState:&v78 objects:v90 count:16];
          if (v28)
          {
            continue;
          }

          break;
        }
      }

      v26 = v49;
      if ([v53 count])
      {
        if ([v60 specifiesRequestClass:objc_opt_class()])
        {
          v23 = [v53 copy];
        }

        else
        {
          v43 = [v53 firstObject];
          v23 = [v43 copy];
LABEL_38:

          v26 = v49;
        }
      }

      else
      {
        v23 = MEMORY[0x1E695E0F0];
      }
    }

    else
    {
      v23 = 0;
    }

    goto LABEL_42;
  }

  v23 = 0;
LABEL_47:

  v13 = v59;
LABEL_48:

  return v23;
}

uint64_t __145__VNE5RTSemanticSegmentationMultiGenerator_observationsFromE5RTExecutionOutputs_forFunctionDescriptor_originatingRequestSpecifier_options_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) dataType] != 65552)
  {
    if (!a3)
    {
      goto LABEL_13;
    }

    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected data type: %lu", objc_msgSend(*(a1 + 32), "dataType")];
    v14 = [VNError errorForInternalErrorWithLocalizedDescription:v13];
LABEL_12:
    *a3 = v14;

    a3 = 0;
    goto LABEL_13;
  }

  v6 = [*(a1 + 32) shape];
  v7 = *([v6 sizes] + 8);

  v8 = [*(a1 + 32) shape];
  v9 = *[v8 sizes];

  v10 = [*(a1 + 32) storageByteCount];
  if ([v5 length] != v10 || v9 != 1 || !v7)
  {
    if (!a3)
    {
      goto LABEL_13;
    }

    v15 = objc_alloc(MEMORY[0x1E696AEC0]);
    v16 = [*(a1 + 32) name];
    v13 = [v15 initWithFormat:@"%@ size is %lu bytes instead of the expected %lu bytes, or maskBufferHeight (%lu) is not 1, or number of object classes (%lu) is zero \n", v16, objc_msgSend(v5, "length"), v10, v9, v7];

    v14 = [VNError errorForInternalErrorWithLocalizedDescription:v13];
    goto LABEL_12;
  }

  v11 = [v5 bytes];
  do
  {
    v12 = *(*(a1 + 40) + 8);
    v18 = *v11 > COERCE_SHORT_FLOAT(5145);
    std::vector<BOOL>::push_back(v12 + 48, &v18);
    ++v11;
    --v7;
  }

  while (v7);
  a3 = 1;
LABEL_13:

  return a3;
}

uint64_t __145__VNE5RTSemanticSegmentationMultiGenerator_observationsFromE5RTExecutionOutputs_forFunctionDescriptor_originatingRequestSpecifier_options_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v52[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  if ([*(a1 + 32) dataType] != 65552 && objc_msgSend(*(a1 + 32), "dataType") != 983056)
  {
    if (a3)
    {
      v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected data type: %lu", objc_msgSend(*(a1 + 32), "dataType")];
      *a3 = [VNError errorForInternalErrorWithLocalizedDescription:v29];
    }

    goto LABEL_16;
  }

  if (*(a1 + 120) == 2)
  {
    v6 = MEMORY[0x1E69DF988];
    v7 = [*(a1 + 32) name];
    v52[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:1];
    v9 = [v6 objectClassNamesToObjectClassesDetectionStatusIndexes:v8 modelVersion:*(a1 + 120) error:a3];

    v10 = [v9 allValues];
    v11 = [v10 firstObject];
    v12 = [v11 unsignedIntegerValue];

    LOBYTE(v10) = ((*(*(*(*(a1 + 112) + 8) + 48) + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v12) & 1) == 0;
    if (v10)
    {
      v20 = 1;
      goto LABEL_28;
    }
  }

  v13 = [*(a1 + 32) shape];
  v14 = v13;
  v15 = *([v13 sizes] + 24);

  v16 = [*(a1 + 32) shape];
  v17 = v16;
  v18 = *([v16 sizes] + 16);

  [*(a1 + 32) dataType];
  v19 = VisionCoreTensorDataTypeGetElementSize() * v15 * v18;
  if ([v5 length] != v19)
  {
    if (a3)
    {
      v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ size is %lu bytes instead of the expected %lu bytes \n", *(a1 + 40), objc_msgSend(v5, "length"), v19];
      *a3 = [VNError errorForInternalErrorWithLocalizedDescription:v28];
    }

LABEL_16:
    v20 = 0;
    goto LABEL_28;
  }

  v20 = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:v15 height:v18 pixelFormatType:1278226534 error:a3];
  if (v20)
  {
    v21 = v5;
    if (+[VNCVPixelBufferHelper renderRawDataBufferWithWidth:height:pixelFormatType:rowBytes:dataBytes:intoCVPixelBuffer:error:](VNCVPixelBufferHelper, v15, v18, 1278226536, [v5 bytes], v20, a3))
    {
      v22 = [*(a1 + 48) objectForKeyedSubscript:*(a1 + 40)];
      v23 = [v22 unsignedIntegerValue];

      if ((*(a1 + 128) & 1) == 0 && v23 == 1278226534)
      {
        goto LABEL_22;
      }

      v24 = objc_autoreleasePoolPush();
      v25 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:v20];
      CVPixelBufferRelease(v20);
      if (*(a1 + 128) == 1)
      {
        v26 = [v25 imageByApplyingCGOrientation:6];

        v27 = v18;
        v25 = v26;
      }

      else
      {
        v27 = v15;
        v15 = v18;
      }

      v32 = *(a1 + 56);
      v33 = [*(a1 + 64) vnciContextManager];
      v51 = 0;
      v20 = [v32 renderCIImage:v25 width:v27 height:v15 format:v23 vnciContextManager:v33 error:&v51];
      v34 = v51;

      objc_autoreleasePoolPop(v24);
      if (v20)
      {

LABEL_22:
        v50 = [*(a1 + 72) objectForKey:*(a1 + 40)];
        v35 = [*(a1 + 80) objectForKey:?];
        v36 = [*(a1 + 88) objectForKey:*(a1 + 40)];
        v37 = *(a1 + 96);
        v38 = [v35 originatingRequestSpecifierKey];
        v39 = [v37 objectForKeyedSubscript:v38];

        v40 = [[VNPixelBufferObservation alloc] initWithOriginatingRequestSpecifier:v39 featureName:v36 CVPixelBuffer:v20];
        LODWORD(v41) = 1.0;
        [(VNObservation *)v40 setConfidence:v41];
        v42 = objc_opt_class();
        v43 = [v42 objectClassOutputNameForObjectClassID:128 modelVersion:*(a1 + 120) error:0];
        v44 = [v42 objectClassOutputNameForObjectClassID:256 modelVersion:*(a1 + 120) error:0];
        if (([*(a1 + 40) isEqualToString:v43] & 1) != 0 || objc_msgSend(*(a1 + 40), "isEqualToString:", v44))
        {
          v45 = [[VNRectangleObservation alloc] initWithOriginatingRequestSpecifier:v39 boundingBox:0.0, 0.0, 1.0, 1.0];
          LODWORD(v46) = 1.0;
          [(VNObservation *)v45 setConfidence:v46];
          [(VNDetectedObjectObservation *)v45 setInstanceSegmentationMask:v40];
          v47 = [*(a1 + 104) objectAtIndex:{objc_msgSend(v35, "originalRequestResultsIndex")}];
          [v47 addObject:v45];
        }

        else
        {
          v45 = [*(a1 + 104) objectAtIndex:{objc_msgSend(v35, "originalRequestResultsIndex")}];
          [(VNRectangleObservation *)v45 addObject:v40];
        }

        v30 = 1;
        v31 = 1;
        goto LABEL_27;
      }

      if (a3)
      {
        v49 = v34;
        *a3 = v34;
      }

      v20 = 0;
    }

    v30 = 0;
    v31 = 0;
LABEL_27:
    CVPixelBufferRelease(v20);
    v20 = v30 | v31;
  }

LABEL_28:

  return v20;
}

void __145__VNE5RTSemanticSegmentationMultiGenerator_observationsFromE5RTExecutionOutputs_forFunctionDescriptor_originatingRequestSpecifier_options_error___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  [v6 addObjectsFromArray:v5];
}

@end