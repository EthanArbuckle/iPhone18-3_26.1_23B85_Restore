@interface VNCRImageReaderDetector
+ (id)_imageReaderInitializationOptionsForCreationOptions:(id)a3 computeDevice:(id)a4 error:(id *)a5;
+ (id)computeStagesToBindForConfigurationOptions:(id)a3;
+ (id)configurationOptionKeysForDetectorKey;
+ (id)imageReaderRecognitionOptionsForProcessOptions:(id)a3;
+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4;
+ (id)supportedLanguagesForProcessOptions:(id)a3 error:(id *)a4;
- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4;
- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9;
- (BOOL)isCRImageReaderViableAfterError:(id)a3;
- (id)_observationsForImageReaderOutput:(id)a3 requestRevision:(unint64_t)a4 error:(id *)a5;
- (id)newImageReaderAndReturnError:(id *)a3;
- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9;
@end

@implementation VNCRImageReaderDetector

+ (id)configurationOptionKeysForDetectorKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__VNCRImageReaderDetector_configurationOptionKeysForDetectorKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[VNCRImageReaderDetector configurationOptionKeysForDetectorKey]::onceToken != -1)
  {
    dispatch_once(&+[VNCRImageReaderDetector configurationOptionKeysForDetectorKey]::onceToken, block);
  }

  v2 = +[VNCRImageReaderDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys;

  return v2;
}

void __64__VNCRImageReaderDetector_configurationOptionKeysForDetectorKey__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___VNCRImageReaderDetector;
  v1 = objc_msgSendSuper2(&v5, sel_configurationOptionKeysForDetectorKey);
  v2 = [v1 mutableCopy];

  [v2 addObject:@"VNCRImageReaderDetectorCreationOption_CRImageReaderRevisionKey"];
  [v2 addObject:@"VNCRImageReaderDetectorCreationOption_FastRecognition"];
  [v2 addObject:@"VNCRImageReaderDetectorCreationOption_MaximumCandidatesCount"];
  [v2 addObject:@"VNCRImageReaderDetectorCreationOption_RecognitionLanguages"];
  [v2 addObject:@"VNCRImageReaderDetectorCreationOption_UsesLanguageDetection"];
  [v2 addObject:@"VNCRImageReaderDetectorCreationOption_UsesAlternateLineGrouping"];
  [v2 addObject:@"VNCRImageReaderDetectorCreationOption_CustomWords"];
  [v2 addObject:@"VNCRImageReaderDetectorCreationOption_DisableLanguageCorrection"];
  [v2 addObject:@"VNCRImageReaderDetectorCreationOption_UsesCoreMode"];
  [v2 addObject:@"VNCRImageReaderDetectorCreationOption_SkipVerticalText"];
  [v2 addObject:@"VNCRImageReaderDetectorCreationOption_KeepResourcesLoaded"];
  v3 = [v2 copy];
  v4 = +[VNCRImageReaderDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys;
  +[VNCRImageReaderDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys = v3;
}

+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v12 = 0;
  if ([VNValidationUtilities getNSIntegerValue:&v12 forKey:@"VNCRImageReaderDetectorCreationOption_CRImageReaderRevisionKey" inOptions:v6 error:a4])
  {
    v7 = [a1 _imageReaderInitializationOptionsForCreationOptions:v6 computeDevice:0 error:a4];
    if (v7)
    {
      v8 = [MEMORY[0x1E69D9D90] supportedComputeDevicesForOptions:v7 revision:v12 error:a4];
      v9 = v8;
      if (v8)
      {
        v13 = @"VNComputeStageMain";
        v14[0] = v8;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
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
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)computeStagesToBindForConfigurationOptions:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"VNComputeStageMain";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (id)supportedLanguagesForProcessOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 computeDeviceForComputeStage:@"VNComputeStageMain" configurationOptions:v6 error:a4];
  v8 = [a1 _imageReaderInitializationOptionsForCreationOptions:v6 computeDevice:v7 error:a4];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 mutableCopy];
    v11 = [a1 imageReaderRecognitionOptionsForProcessOptions:v6];
    [v10 addEntriesFromDictionary:v11];

    v12 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69D9CF0]];
    v13 = [v12 unsignedIntegerValue];

    v14 = [MEMORY[0x1E69D9D90] supportedLanguagesForOptions:v10 revision:v13 error:a4];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)imageReaderRecognitionOptionsForProcessOptions:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [v3 objectForKeyedSubscript:@"VNCRImageReaderDetectorProcessOption_MinimumTextHeight"];
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x1E69D9CD8]];

  v6 = [v3 objectForKeyedSubscript:@"VNCRImageReaderDetectorProcessOption_UsesFormFieldDetection"];
  [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x1E69D9C98]];

  return v4;
}

+ (id)_imageReaderInitializationOptionsForCreationOptions:(id)a3 computeDevice:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v8 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69D9C88]];
  v9 = [v6 objectForKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_FastRecognition"];
  v10 = [v9 BOOLValue];

  v11 = *MEMORY[0x1E69D9D00];
  if (v10)
  {
    [v8 setObject:*MEMORY[0x1E69D9D08] forKeyedSubscript:v11];
    v12 = MEMORY[0x1E69D9D20];
  }

  else
  {
    [v8 setObject:*MEMORY[0x1E69D9D10] forKeyedSubscript:v11];
    v12 = MEMORY[0x1E69D9D28];
  }

  [v8 setObject:*v12 forKeyedSubscript:*MEMORY[0x1E69D9D18]];
  v13 = [v6 objectForKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_MaximumCandidatesCount"];
  [v8 setObject:v13 forKeyedSubscript:*MEMORY[0x1E69D9CE0]];

  v14 = [v6 objectForKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_RecognitionLanguages"];
  [v8 setObject:v14 forKeyedSubscript:*MEMORY[0x1E69D9CD0]];
  v15 = [v6 objectForKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_UsesLanguageDetection"];
  v16 = [v15 BOOLValue];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:v16 ^ 1u];
  [v8 setObject:v17 forKeyedSubscript:*MEMORY[0x1E69D9CB0]];

  v18 = [v6 objectForKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_CRImageReaderRevisionKey"];
  [v8 setObject:v18 forKeyedSubscript:*MEMORY[0x1E69D9CF0]];

  v19 = [v6 objectForKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_CustomWords"];
  [v8 setObject:v19 forKeyedSubscript:*MEMORY[0x1E69D9CB8]];

  v20 = [v6 objectForKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_DisableLanguageCorrection"];
  [v8 setObject:v20 forKeyedSubscript:*MEMORY[0x1E69D9CA8]];

  v21 = [v6 objectForKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_UsesAlternateLineGrouping"];
  [v8 setObject:v21 forKeyedSubscript:*MEMORY[0x1E69D9CE8]];

  v22 = [v6 objectForKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_UsesCoreMode"];
  [v8 setObject:v22 forKeyedSubscript:*MEMORY[0x1E69D9C90]];

  v23 = [v6 objectForKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_SkipVerticalText"];
  [v8 setObject:v23 forKeyedSubscript:*MEMORY[0x1E69D9CF8]];

  v24 = [v6 objectForKeyedSubscript:@"VNCRImageReaderDetectorCreationOption_KeepResourcesLoaded"];
  [v8 setObject:v24 forKeyedSubscript:*MEMORY[0x1E69D9CC8]];

  return v8;
}

- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9
{
  v66 = *MEMORY[0x1E69E9840];
  v13 = a5;
  v14 = a9;
  v15 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNCRImageReaderDetectorProcessOption_OriginatingRequest" inOptions:v13 error:a8];
  if (!v15)
  {
    v24 = 0;
    goto LABEL_31;
  }

  v34 = [(VNDetector *)self requiredCancellerInOptions:v13 error:a8];
  if (v34)
  {
    v33 = v15;
    v16 = [objc_opt_class() imageReaderRecognitionOptionsForProcessOptions:v13];
    v17 = self->_imageReader;
    v59 = 0;
    v60 = &v59;
    v61 = 0x3032000000;
    v62 = __Block_byref_object_copy__1959;
    v63 = __Block_byref_object_dispose__1960;
    v64 = 0;
    v53 = 0;
    v54 = &v53;
    v55 = 0x3032000000;
    v56 = __Block_byref_object_copy__1959;
    v57 = __Block_byref_object_dispose__1960;
    v58 = 0;
    v49 = 0;
    v50 = &v49;
    v51 = 0x2020000000;
    v52 = 0;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __125__VNCRImageReaderDetector_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke;
    v42[3] = &unk_1E77B2708;
    v45 = v14;
    v46 = &v59;
    v43 = v17;
    v48 = a4;
    v18 = v16;
    v44 = v18;
    v47 = &v53;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __125__VNCRImageReaderDetector_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke_2;
    v39[3] = &unk_1E77B2BF0;
    v41 = &v49;
    v19 = v43;
    v40 = v19;
    v20 = [v34 tryToPerformBlock:v42 usingSignallingBlock:v39];
    if ((v50[3] & 1) != 0 || ![(VNCRImageReaderDetector *)self isCRImageReaderViableAfterError:v54[5]])
    {
      v21 = [(VNCRImageReaderDetector *)self newImageReaderAndReturnError:0];
      if (v21)
      {
        objc_storeStrong(&self->_imageReader, v21);
      }
    }

    if (v20)
    {
      v22 = v54[5];
      if (!v22)
      {
        v25 = v60[5];
        if (v25)
        {
          v26 = [(VNCRImageReaderDetector *)self _observationsForImageReaderOutput:v25 requestRevision:[(VNRequest *)v15 revision] error:a8];
          v24 = v26;
          if (v26)
          {
            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v27 = v26;
            v28 = [v27 countByEnumeratingWithState:&v35 objects:v65 count:16];
            if (v28)
            {
              v29 = *v36;
              do
              {
                for (i = 0; i != v28; ++i)
                {
                  if (*v36 != v29)
                  {
                    objc_enumerationMutation(v27);
                  }

                  [(VNDetector *)self recordImageCropQuickLookInfoFromOptions:v13 toObservation:*(*(&v35 + 1) + 8 * i)];
                }

                v28 = [v27 countByEnumeratingWithState:&v35 objects:v65 count:16];
              }

              while (v28);
            }

            v15 = v33;
            v31 = v27;
          }

          goto LABEL_29;
        }
      }

      if (a8)
      {
        v23 = _vnErrorForError(v22, v15);
LABEL_16:
        v24 = 0;
        *a8 = v23;
LABEL_29:

        _Block_object_dispose(&v49, 8);
        _Block_object_dispose(&v53, 8);

        _Block_object_dispose(&v59, 8);
        goto LABEL_30;
      }
    }

    else if (a8)
    {
      v23 = [VNError errorForCancellationOfRequest:v15];
      goto LABEL_16;
    }

    v24 = 0;
    goto LABEL_29;
  }

  v24 = 0;
LABEL_30:

LABEL_31:

  return v24;
}

void __125__VNCRImageReaderDetector_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[9];
  v6 = *(a1[8] + 8);
  v9 = *(v6 + 40);
  v8 = (v6 + 40);
  v7 = v9;
  if (v2)
  {
    v16 = v7;
    v10 = &v16;
    v11 = [v3 resultsForPixelBuffer:v5 roi:v4 options:&v16 error:0.0 withProgressHandler:{0.0, 1.0, 1.0}];
  }

  else
  {
    v15 = v7;
    v10 = &v15;
    v11 = [v3 resultsForPixelBuffer:v5 options:v4 error:&v15];
  }

  v12 = v11;
  objc_storeStrong(v8, *v10);
  v13 = *(a1[7] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16 = a4;
  v17 = [(VNDetector *)self validatedImageBufferFromOptions:v16 error:a8];
  if (v17)
  {
    v18 = self->_imageReader;
    v19 = [v16 objectForKeyedSubscript:@"VNCRImageReaderDetectorProcessOption_MinimumTextHeight"];
    [v19 doubleValue];
    v21 = v20;

    v22 = [v17 width];
    v23 = [v17 height];
    v36.origin.x = x * v22;
    v36.size.width = width * v22;
    v36.origin.y = y * v23;
    v36.size.height = height * v23;
    v37 = CGRectIntegral(v36);
    v24 = v37.origin.x;
    v25 = v37.origin.y;
    v26 = v37.size.width;
    v27 = v37.size.height;
    [(CRImageReader *)v18 smallestImageSizeForTextWithRelativeHeight:v21 originalImageSize:v37.size.width, v37.size.height];
    v30 = (v29 + 1) & 0xFFFFFFFFFFFFFFFELL;
    if (((v28 + 1) & 0xFFFFFFFFFFFFFFFELL) >= 3 && v30 > 2)
    {
      v33 = [v17 croppedBufferWithWidth:v24 height:v25 format:v26 cropRect:v27 options:? error:? pixelBufferRepsCacheKey:?];
      v34 = 0;
      *a7 = v33;
      LOBYTE(a8) = v33 != 0;
      if (v33)
      {
        [(VNDetector *)self recordImageCropQuickLookInfoToOptions:v16 cacheKey:v34 imageBuffer:v17];
      }
    }

    else if (a8)
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The image is too small in at least one dimension %ld x %ld (each dimension has to be more than 2 pixels)", (v28 + 1) & 0xFFFFFFFFFFFFFFFELL, v30];
      *a8 = [VNError errorForInvalidImageFailureWithLocalizedDescription:v32];

      LOBYTE(a8) = 0;
    }
  }

  else
  {
    LOBYTE(a8) = 0;
  }

  return a8;
}

- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = VNCRImageReaderDetector;
  if ([(VNDetector *)&v11 completeInitializationForSession:v6 error:a4])
  {
    v7 = [(VNCRImageReaderDetector *)self newImageReaderAndReturnError:a4];
    imageReader = self->_imageReader;
    self->_imageReader = v7;

    v9 = self->_imageReader != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_observationsForImageReaderOutput:(id)a3 requestRevision:(unint64_t)a4 error:(id *)a5
{
  v63 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v6;
  v47 = v7;
  v8 = [obj countByEnumeratingWithState:&v57 objects:v62 count:16];
  if (v8)
  {
    v51 = *v58;
    v50 = *MEMORY[0x1E69D9D30];
    v9 = &selRef__isAnimalFaceprintingSupportedForRequestRevision_;
    while (2)
    {
      v49 = v8;
      v10 = 0;
      v45 = v9[369];
      do
      {
        if (*v58 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v57 + 1) + 8 * v10);
        v12 = [v11 type];
        v13 = [v12 isEqualToString:v50];

        if (v13)
        {
          v14 = [v11 stringValue];
          v15 = v14 == 0;

          if (!v15)
          {
            v16 = [VNRecognizedTextObservation alloc];
            [v11 topLeft];
            v18 = v17;
            v20 = v19;
            [v11 topRight];
            v22 = v21;
            v24 = v23;
            [v11 bottomRight];
            v26 = v25;
            v28 = v27;
            [v11 bottomLeft];
            v31 = [(VNRectangleObservation *)v16 initWithRequestRevision:a4 topLeft:v18 topRight:1.0 - v20 bottomRight:v22 bottomLeft:1.0 - v24, v26, 1.0 - v28, v30, 1.0 - v29];
            if (!v31)
            {
              if (a5)
              {
                *a5 = +[VNError errorForMemoryAllocationFailure];
              }

LABEL_26:

              v43 = 0;
              v42 = v47;
              goto LABEL_27;
            }

            v48 = v31;
            v32 = [v11 confidence];
            v33 = 0.0;
            if (v32 <= 2)
            {
              LODWORD(v33) = dword_1A6050128[v32];
            }

            [(VNObservation *)v31 setConfidence:v33];
            -[VNRecognizedTextObservation setIsTitle:](v31, "setIsTitle:", [v11 isTitle]);
            v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v35 = [v11 performSelector:v45];
            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            v36 = v35;
            v37 = [v36 countByEnumeratingWithState:&v53 objects:v61 count:16];
            if (v37)
            {
              v38 = *v54;
              while (2)
              {
                for (i = 0; i != v37; ++i)
                {
                  if (*v54 != v38)
                  {
                    objc_enumerationMutation(v36);
                  }

                  v40 = [[VNRecognizedText alloc] initWithRequestRevision:a4 CRImageReaderOutput:*(*(&v53 + 1) + 8 * i)];
                  if (!v40)
                  {
                    if (a5)
                    {
                      *a5 = +[VNError errorForMemoryAllocationFailure];
                    }

                    goto LABEL_26;
                  }

                  [v34 addObject:v40];
                }

                v37 = [v36 countByEnumeratingWithState:&v53 objects:v61 count:16];
                if (v37)
                {
                  continue;
                }

                break;
              }
            }

            [(VNRecognizedTextObservation *)v48 setTextObjects:v34];
            v41 = [v11 stringValue];
            [(VNRecognizedTextObservation *)v48 setText:v41];

            [v47 addObject:v48];
          }
        }

        ++v10;
      }

      while (v10 != v49);
      v8 = [obj countByEnumeratingWithState:&v57 objects:v62 count:16];
      v9 = &selRef__isAnimalFaceprintingSupportedForRequestRevision_;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v42 = v47;
  v43 = v47;
LABEL_27:

  return v43;
}

- (id)newImageReaderAndReturnError:(id *)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = [(VNDetector *)self configurationOptions];
  v6 = [(VNDetector *)self computeDeviceForComputeStage:@"VNComputeStageMain" processingOptions:v5 error:a3];
  if (v6)
  {
    v7 = [objc_opt_class() _imageReaderInitializationOptionsForCreationOptions:v5 computeDevice:v6 error:a3];
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E69D9D90]) initWithOptions:v7];
      v11[0] = *MEMORY[0x1E69D9D30];
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
      [v8 setOutputObjectTypes:v9];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isCRImageReaderViableAfterError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    v6 = [v5 isEqualToString:*MEMORY[0x1E69D9CC0]];

    v7 = v6 ^ 1;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

@end