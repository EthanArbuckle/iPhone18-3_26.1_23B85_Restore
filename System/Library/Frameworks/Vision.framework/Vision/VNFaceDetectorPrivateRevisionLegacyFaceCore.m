@interface VNFaceDetectorPrivateRevisionLegacyFaceCore
+ (id)_convertVNOptionsToFaceCoreDetectOptions:(id)a3;
+ (id)_convertVNOptionsToFaceCoreExtractOptions:(id)a3;
+ (id)_convertVNOptionsToFaceCoreOptions:(id)a3 optionsMap:(id)a4;
+ (id)_convertVNOptionsToFaceCoreSetupOptions:(id)a3;
+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4;
+ (id)supportedImageSizeSetForOptions:(id)a3 error:(id *)a4;
- (id)internalProcessUsingQualityOfServiceClass:(unsigned int)a3 options:(id)a4 regionOfInterest:(CGRect)a5 warningRecorder:(id)a6 error:(id *)a7 progressHandler:(id)a8;
@end

@implementation VNFaceDetectorPrivateRevisionLegacyFaceCore

+ (id)_convertVNOptionsToFaceCoreOptions:(id)a3 optionsMap:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __93__VNFaceDetectorPrivateRevisionLegacyFaceCore__convertVNOptionsToFaceCoreOptions_optionsMap___block_invoke;
  v13[3] = &unk_1E77B37F0;
  v8 = v7;
  v14 = v8;
  v9 = v5;
  v15 = v9;
  [v6 enumerateKeysAndObjectsUsingBlock:v13];
  v10 = v15;
  v11 = v8;

  return v8;
}

void __93__VNFaceDetectorPrivateRevisionLegacyFaceCore__convertVNOptionsToFaceCoreOptions_optionsMap___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [*(a1 + 40) objectForKeyedSubscript:a2];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
}

+ (id)_convertVNOptionsToFaceCoreExtractOptions:(id)a3
{
  v11[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E6984A60];
  v10[0] = @"VNFaceDetectorPrivateRevisionLegacyFaceCoreProcessOption_EnhanceEyesAndMouthLocalization";
  v10[1] = @"VNFaceDetectorPrivateRevisionLegacyFaceCoreProcessOption_ExtractBlink";
  v6 = *MEMORY[0x1E6984A68];
  v11[0] = v5;
  v11[1] = v6;
  v10[2] = @"VNFaceDetectorPrivateRevisionLegacyFaceCoreProcessOption_ExtractSmile";
  v11[2] = *MEMORY[0x1E6984A70];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];
  v8 = [a1 _convertVNOptionsToFaceCoreOptions:v4 optionsMap:v7];

  return v8;
}

+ (id)_convertVNOptionsToFaceCoreDetectOptions:(id)a3
{
  v11[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E6984A40];
  v10[0] = @"VNFaceDetectorPrivateRevisionLegacyFaceCoreProcessOption_ROIs";
  v10[1] = @"VNFaceDetectorPrivateRevisionLegacyFaceCoreProcessOption_InitialAngle";
  v6 = *MEMORY[0x1E6984A50];
  v11[0] = v5;
  v11[1] = v6;
  v10[2] = @"VNFaceDetectorPrivateRevisionLegacyFaceCoreProcessOption_EnhanceEyesAndMouthLocalization";
  v11[2] = *MEMORY[0x1E6984A48];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];
  v8 = [a1 _convertVNOptionsToFaceCoreOptions:v4 optionsMap:v7];

  return v8;
}

+ (id)_convertVNOptionsToFaceCoreSetupOptions:(id)a3
{
  v24[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v21 = 0;
  v22 = 0;
  v6 = [VNValidationUtilities getNSUIntegerValue:&v22 forKey:@"VNFaceDetectorPrivateRevisionLegacyFaceCoreProcessOption_Type" inOptions:v4 error:&v21];
  v7 = v21;
  v14 = v7;
  if (!v6)
  {
    VNValidatedLog(4, @"FaceCore processing type option does not exist. We should never get here: %@", v8, v9, v10, v11, v12, v13, v7);
  }

  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v15 = FCRPreciseDetectionParameters();
      [v5 addEntriesFromDictionary:v15];
      goto LABEL_13;
    }

    if (v22 == 3)
    {
      [v5 setValue:*MEMORY[0x1E6984AB8] forKey:*MEMORY[0x1E6984AB0]];
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (!v22)
  {
    v15 = FCRFaceDetectionParameters();
    [v5 addEntriesFromDictionary:v15];
    goto LABEL_13;
  }

  if (v22 != 1)
  {
LABEL_10:
    VNValidatedLog(4, @"Unsupported FaceCore processing type: %lu", v8, v9, v10, v11, v12, v13, v22);
    goto LABEL_14;
  }

  v15 = FCRFastFaceDetectionParameters();
  [v5 addEntriesFromDictionary:v15];
LABEL_13:

LABEL_14:
  v16 = *MEMORY[0x1E6984AC0];
  v23[0] = @"VNFaceDetectorPrivateRevisionLegacyFaceCoreProcessOption_MinFaceSize";
  v23[1] = @"VNFaceDetectorPrivateRevisionLegacyFaceCoreProcessOption_NumberOfDetectionAngles";
  v17 = *MEMORY[0x1E6984AC8];
  v24[0] = v16;
  v24[1] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v19 = [a1 _convertVNOptionsToFaceCoreOptions:v4 optionsMap:v18];
  [v5 addEntriesFromDictionary:v19];

  return v5;
}

+ (id)supportedImageSizeSetForOptions:(id)a3 error:(id *)a4
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = [[VNSizeRange alloc] initWithMinimumDimension:0 maximumDimension:-1 idealDimension:0];
  v5 = [[VNSupportedImageSize alloc] initWithIdealFormat:1111970369 pixelsWideRange:v4 pixelsHighRange:v4 aspectRatioHandling:0 idealOrientation:1 orientationAgnostic:0];
  v8[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

  return v6;
}

+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VNComputeStageMain";
  v4 = [VNComputeDeviceUtilities allCPUComputeDevices:a3];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

- (id)internalProcessUsingQualityOfServiceClass:(unsigned int)a3 options:(id)a4 regionOfInterest:(CGRect)a5 warningRecorder:(id)a6 error:(id *)a7 progressHandler:(id)a8
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v77 = *MEMORY[0x1E69E9840];
  v14 = a4;
  v49 = v14;
  v15 = [(VNDetector *)self validatedImageBufferFromOptions:v14 error:a7];
  v16 = v15;
  if (!v15)
  {
    v26 = 0;
    goto LABEL_29;
  }

  v48 = v15;
  v51 = [v15 width];
  v17 = [v16 height];
  v18 = objc_opt_class();
  v19 = [v18 _convertVNOptionsToFaceCoreSetupOptions:v14];
  v20 = [v18 _convertVNOptionsToFaceCoreDetectOptions:v14];
  v46 = v20;
  v47 = [v18 _convertVNOptionsToFaceCoreExtractOptions:v14];
  v80.origin.x = 0.0;
  v80.origin.y = 0.0;
  v80.size.width = 1.0;
  v80.size.height = 1.0;
  v79.origin.x = x;
  v79.origin.y = y;
  v79.size.width = width;
  v79.size.height = height;
  if (!CGRectEqualToRect(v79, v80))
  {
    v75[0] = x * v51;
    v75[1] = (1.0 - y - height) * v17;
    v75[2] = width * v51;
    v75[3] = height * v17;
    v21 = [MEMORY[0x1E696B098] valueWithBytes:v75 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    [v20 setObject:v21 forKeyedSubscript:*MEMORY[0x1E6984A40]];
  }

  v22 = [objc_alloc(MEMORY[0x1E6984AD0]) initWithOptions:v19];
  if (v22)
  {
    v69 = 0;
    v70 = &v69;
    v71 = 0x3032000000;
    v72 = __Block_byref_object_copy__12041;
    v73 = __Block_byref_object_dispose__12042;
    v74 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __152__VNFaceDetectorPrivateRevisionLegacyFaceCore_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke;
    aBlock[3] = &unk_1E77B37C8;
    v63 = x;
    v64 = y;
    v65 = width;
    v66 = height;
    v67 = v51;
    v68 = v17;
    v23 = v22;
    v57 = v48;
    v24 = v14;
    v58 = v24;
    v62 = &v69;
    v44 = v23;
    v59 = v23;
    v60 = v20;
    v61 = v47;
    v45 = _Block_copy(aBlock);
    if (VNExecuteBlock(v45, a7))
    {
      v25 = [VNValidationUtilities originatingRequestSpecifierInOptions:v24 error:a7];
      if (v25)
      {
        v26 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v70[5], "count")}];
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        obj = v70[5];
        v27 = [obj countByEnumeratingWithState:&v52 objects:v76 count:16];
        if (v27)
        {
          v28 = *v53;
          v29 = v51;
          v30 = v17;
          do
          {
            for (i = 0; i != v27; ++i)
            {
              if (*v53 != v28)
              {
                objc_enumerationMutation(obj);
              }

              v32 = [[VNFaceLegacyFaceCore alloc] initWithFace:*(*(&v52 + 1) + 8 * i)];
              [(VNFaceLegacyFaceCore *)v32 faceBoundingBox];
              v37 = 0.0;
              v38 = 0.0;
              v39 = 0.0;
              if (v51)
              {
                v38 = v33 / v29;
                v39 = v35 / v29;
              }

              v40 = 0.0;
              if (v17)
              {
                v37 = v34 / v30;
                v40 = v36 / v30;
              }

              v41 = [(VNDetectedObjectObservation *)[VNFaceObservation alloc] initWithOriginatingRequestSpecifier:v25 boundingBox:v38, v37, v39, v40];
              [(VNFaceObservation *)v41 setUnalignedBoundingBox:v38, v37, v39, v40];
              [(VNFaceObservation *)v41 setLegacyFaceCore:v32];
              [v26 addObject:v41];
            }

            v27 = [obj countByEnumeratingWithState:&v52 objects:v76 count:16];
          }

          while (v27);
        }

        v42 = &__block_literal_global_125;
        [v26 sortWithOptions:16 usingComparator:&__block_literal_global_125];
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
    }

    _Block_object_dispose(&v69, 8);
    goto LABEL_27;
  }

  if (a7)
  {
    v44 = 0;
    [VNError errorForInternalErrorWithLocalizedDescription:@"Failed to create detector"];
    *a7 = v26 = 0;
LABEL_27:
    v22 = v44;
    goto LABEL_28;
  }

  v26 = 0;
LABEL_28:

  v16 = v48;
LABEL_29:

  return v26;
}

uint64_t __152__VNFaceDetectorPrivateRevisionLegacyFaceCore_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke(uint64_t a1, void *a2)
{
  v19[4] = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) originalCGImage];
  if (v4)
  {
    v5 = v4;
    v21.origin.x = 0.0;
    v21.origin.y = 0.0;
    v21.size.width = 1.0;
    v21.size.height = 1.0;
    if (CGRectEqualToRect(*(a1 + 80), v21))
    {
      v6 = 0;
    }

    else
    {
      v8 = *(a1 + 120);
      v9 = *(a1 + 112);
      v20.origin.x = *(a1 + 80) * v9;
      v20.size.width = *(a1 + 96) * v9;
      v20.origin.y = *(a1 + 88) * v8;
      v20.size.height = *(a1 + 104) * v8;
      v6 = CGImageCreateWithImageInRect(v5, v20);
      v5 = v6;
    }

    v18[0] = &unk_1F1972A20;
    v18[1] = v6;
    v18[3] = v18;
    v19[3] = v19;
    _ZNKSt3__110__function6__funcIZZZ152__VNFaceDetectorPrivateRevisionLegacyFaceCore_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler__EUb_ENK3__0clEP7CGImageEUlvE_NS_9allocatorIS5_EEFvvEE7__cloneEPNS0_6__baseIS8_EE(v18, v19);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v18);
    v7 = [objc_alloc(MEMORY[0x1E6984AD8]) initWithCGImage:v5];
    apple::vision::ScopeExit::~ScopeExit(v19);
    if (v7)
    {
      goto LABEL_8;
    }

LABEL_14:
    if (a2)
    {
      [VNError errorForInternalErrorWithLocalizedDescription:@"Failed to create internal image"];
      *a2 = v16 = 0;
      goto LABEL_17;
    }

LABEL_16:
    v16 = 0;
    goto LABEL_17;
  }

  v19[0] = [*(a1 + 32) croppedBufferWithWidth:*(a1 + 80) * *(a1 + 112) height:*(a1 + 88) * *(a1 + 120) format:*(a1 + 96) * *(a1 + 112) cropRect:*(a1 + 104) * *(a1 + 120) options:? error:?];
  if (v19[0])
  {
    v7 = [objc_alloc(MEMORY[0x1E6984AD8]) initWithCVPixelBuffer:v19[0]];
  }

  else
  {
    v7 = 0;
  }

  apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(v19);
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_8:
  v10 = [*(a1 + 48) detectFacesInImage:v7 options:*(a1 + 56) error:a2];
  v11 = *(*(a1 + 72) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (!*(*(*(a1 + 72) + 8) + 40))
  {
    goto LABEL_16;
  }

  if ([*(a1 + 64) count])
  {
    v13 = [*(a1 + 48) extractDetailsForFaces:*(*(*(a1 + 72) + 8) + 40) inImage:v7 options:*(a1 + 64) error:a2];
    v14 = *(*(a1 + 72) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    if (!*(*(*(a1 + 72) + 8) + 40))
    {
      goto LABEL_16;
    }
  }

  v16 = 1;
LABEL_17:

  return v16;
}

@end