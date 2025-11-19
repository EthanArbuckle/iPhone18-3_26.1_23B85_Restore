@interface VNANFDMultiDetector
+ (Class)anfdMultiDetectorClassToProcessRequest:(id)a3;
+ (Class)detectorClassForConfigurationOptions:(id)a3 error:(id *)a4;
+ (NSArray)knownAnimalIdentifiers;
+ (NSDictionary)detectedObjectClassToRequestKey;
+ (NSDictionary)detectedObjectRequestKeyToRequestInfo;
+ (NSDictionary)recognizedAnimalObjectClassToAnimalName;
+ (id)configurationOptionKeysForDetectorKey;
+ (id)defaultFilterThresholdsForOptions:(id)a3 error:(id *)a4;
+ (id)espressoModelFileNameForConfigurationOptions:(id)a3;
+ (id)espressoModelInputImageDimensionsBlobNameForConfigurationOptions:(id)a3;
+ (id)requestInfoForRequest:(id)a3;
+ (id)supportedImageSizeSetForOptions:(id)a3 error:(id *)a4;
+ (void)_printDebugInfo:(id)a3 detectedObjectsRaw:(id)a4 faceDetectorBGRAImage:(__CVBuffer *)a5 tempImage:(vImage_Buffer *)a6 session:(id)a7;
- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4;
- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9;
- (BOOL)isDetectedObject:(id)a3 ofAGivenObjectSubClass:(id)a4;
- (BOOL)processDetectedObject:(id)a3 originatingRequestSpecifier:(id)a4 objectBoundingBox:(CGRect)a5 objectGroupId:(id)a6 imageBuffer:(id)a7 qosClass:(unsigned int)a8 session:(id)a9 warningRecorder:(id)a10 detectedObjectResults:(id)a11 error:(id *)a12;
- (id)_alignFace:(id)a3 imageBuffer:(id)a4 qosClass:(unsigned int)a5 session:(id)a6 warningRecorder:(id)a7 error:(id *)a8;
- (id)applicableOptionKeyToShotflowKeyMappingsForOptions:(id)a3 error:(id *)a4;
- (id)filterThresholdsForOptions:(id)a3 error:(id *)a4;
- (id)internalProcessUsingQualityOfServiceClass:(unsigned int)a3 options:(id)a4 regionOfInterest:(CGRect)a5 warningRecorder:(id)a6 error:(id *)a7 progressHandler:(id)a8;
- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9;
- (id)splitDetectedClassResultsIntoSubclasses:(id)a3;
- (void)processRecognizedObjectWithIdentifier:(id)a3 originatingRequestSpecifier:(id)a4 objectBoundingBox:(CGRect)a5 objectGroupId:(id)a6 objectConfidence:(float)a7 detectedObjectResults:(id)a8;
@end

@implementation VNANFDMultiDetector

+ (void)_printDebugInfo:(id)a3 detectedObjectsRaw:(id)a4 faceDetectorBGRAImage:(__CVBuffer *)a5 tempImage:(vImage_Buffer *)a6 session:(id)a7
{
  v47 = *MEMORY[0x1E69E9840];
  v30 = a3;
  v11 = a4;
  v12 = a7;
  if (+[VNFaceDetector shouldDumpDebugIntermediates])
  {
    v29 = a5;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v31 objects:v46 count:16];
    if (v14)
    {
      v15 = *v32;
      v16 = vneg_f32(0x3F0000003FLL);
      do
      {
        v17 = 0;
        do
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v31 + 1) + 8 * v17);
          std::string::basic_string[abi:ne200100]<0>(__p, "unknown");
          *(&v39 + 1) = v16;
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v40 = 0;
          v41 = 0;
          v42 = 0;
          [v18 bounds];
          *&v19 = v19;
          *&v20 = v20;
          *&v21 = v21;
          *(&v39 + 1) = __PAIR64__(LODWORD(v20), LODWORD(v19));
          *&v19 = v22;
          v40 = __PAIR64__(LODWORD(v19), LODWORD(v21));
          [v18 rotationAngle];
          LODWORD(v41) = v23;
          [v18 yawAngle];
          HIDWORD(v41) = v24;
          [v18 confidence];
          v45 = v25;
          v26 = v36;
          if (v36 >= v37)
          {
            v27 = std::vector<vision::mod::DetectedObject>::__emplace_back_slow_path<vision::mod::DetectedObject const&>(&v35, __p);
          }

          else
          {
            vision::mod::DetectedObject::DetectedObject(v36, __p);
            v27 = v26 + 80;
          }

          v36 = v27;
          if (SBYTE7(v39) < 0)
          {
            operator delete(__p[0]);
          }

          ++v17;
        }

        while (v14 != v17);
        v14 = [v13 countByEnumeratingWithState:&v31 objects:v46 count:16];
      }

      while (v14);
    }

    v28 = *&a6->width;
    *__p = *&a6->data;
    v39 = v28;
    [VNFaceDetector printDebugInfo:v30 facesDataRaw:&v35 faceDetectorBGRAImage:v29 tempImage:__p session:v12];
    __p[0] = &v35;
    std::vector<vision::mod::DetectedObject>::__destroy_vector::operator()[abi:ne200100](__p);
  }
}

+ (id)defaultFilterThresholdsForOptions:(id)a3 error:(id *)a4
{
  v4 = [objc_msgSend(a1 detectorClass];

  return v4;
}

+ (id)espressoModelInputImageDimensionsBlobNameForConfigurationOptions:(id)a3
{
  v3 = [objc_msgSend(a1 detectorClass];

  return v3;
}

+ (id)espressoModelFileNameForConfigurationOptions:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() detectorClassForConfigurationOptions:v3 error:0];
  if (v4)
  {
    v5 = [objc_msgSend(v4 "detectorClass")];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)configurationOptionKeysForDetectorKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__VNANFDMultiDetector_configurationOptionKeysForDetectorKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[VNANFDMultiDetector configurationOptionKeysForDetectorKey]::onceToken != -1)
  {
    dispatch_once(&+[VNANFDMultiDetector configurationOptionKeysForDetectorKey]::onceToken, block);
  }

  v2 = +[VNANFDMultiDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys;

  return v2;
}

void __60__VNANFDMultiDetector_configurationOptionKeysForDetectorKey__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___VNANFDMultiDetector;
  v1 = objc_msgSendSuper2(&v5, sel_configurationOptionKeysForDetectorKey);
  v2 = [v1 mutableCopy];

  [v2 addObject:@"VNDetectorOption_PreferBackgroundProcessing"];
  v3 = [v2 copy];
  v4 = +[VNANFDMultiDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys;
  +[VNANFDMultiDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys = v3;
}

+ (NSArray)knownAnimalIdentifiers
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__VNANFDMultiDetector_knownAnimalIdentifiers__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[VNANFDMultiDetector knownAnimalIdentifiers]::onceToken != -1)
  {
    dispatch_once(&+[VNANFDMultiDetector knownAnimalIdentifiers]::onceToken, block);
  }

  v2 = +[VNANFDMultiDetector knownAnimalIdentifiers]::knownAnimalIdentifiers;

  return v2;
}

void __45__VNANFDMultiDetector_knownAnimalIdentifiers__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) recognizedAnimalObjectClassToAnimalName];
  v1 = [v4 allValues];
  v2 = [v1 copy];
  v3 = +[VNANFDMultiDetector knownAnimalIdentifiers]::knownAnimalIdentifiers;
  +[VNANFDMultiDetector knownAnimalIdentifiers]::knownAnimalIdentifiers = v2;
}

+ (NSDictionary)recognizedAnimalObjectClassToAnimalName
{
  if (+[VNANFDMultiDetector recognizedAnimalObjectClassToAnimalName]::onceToken != -1)
  {
    dispatch_once(&+[VNANFDMultiDetector recognizedAnimalObjectClassToAnimalName]::onceToken, &__block_literal_global_100);
  }

  v3 = +[VNANFDMultiDetector recognizedAnimalObjectClassToAnimalName]::recognizedAnimalObjectClassToAnimalName;

  return v3;
}

void __62__VNANFDMultiDetector_recognizedAnimalObjectClassToAnimalName__block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F19C1AB0;
  v2[1] = &unk_1F19C1AC8;
  v3[0] = @"Cat";
  v3[1] = @"Dog";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:2];
  v1 = +[VNANFDMultiDetector recognizedAnimalObjectClassToAnimalName]::recognizedAnimalObjectClassToAnimalName;
  +[VNANFDMultiDetector recognizedAnimalObjectClassToAnimalName]::recognizedAnimalObjectClassToAnimalName = v0;
}

+ (NSDictionary)detectedObjectRequestKeyToRequestInfo
{
  if (+[VNANFDMultiDetector detectedObjectRequestKeyToRequestInfo]::onceToken != -1)
  {
    dispatch_once(&+[VNANFDMultiDetector detectedObjectRequestKeyToRequestInfo]::onceToken, &__block_literal_global_98);
  }

  v3 = +[VNANFDMultiDetector detectedObjectRequestKeyToRequestInfo]::detectedObjectRequestKeyToRequestInfo;

  return v3;
}

void __60__VNANFDMultiDetector_detectedObjectRequestKeyToRequestInfo__block_invoke()
{
  v17[4] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  v2 = [(VNMultiDetectorOriginalRequestInfo *)[VNANFDMultiDetectorOriginalRequestInfo alloc] initWithOriginatingRequestSpecifierProcessingOptionKey:@"VNANFDMultiDetectorProcessingOption_HumanFaceDetectorOriginatingRequestSpecifier" originalRequestResultsIndex:0];
  v17[0] = v2;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(VNMultiDetectorOriginalRequestInfo *)[VNANFDMultiDetectorOriginalRequestInfo alloc] initWithOriginatingRequestSpecifierProcessingOptionKey:@"VNANFDMultiDetectorProcessingOption_HumanHeadDetectorOriginatingRequestSpecifier" originalRequestResultsIndex:1];
  v17[1] = v5;
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 initWithFormat:@"%@%@%@", v8, @"_", MEMORY[0x1E695E118], v1, v4];
  v16[2] = v9;
  v10 = [(VNMultiDetectorOriginalRequestInfo *)[VNANFDMultiDetectorOriginalRequestInfo alloc] initWithOriginatingRequestSpecifierProcessingOptionKey:@"VNANFDMultiDetectorProcessingOption_HumanDetectorOriginatingRequestSpecifier" originalRequestResultsIndex:2];
  v17[2] = v10;
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v16[3] = v12;
  v13 = [(VNMultiDetectorOriginalRequestInfo *)[VNANFDMultiDetectorOriginalRequestInfo alloc] initWithOriginatingRequestSpecifierProcessingOptionKey:@"VNANFDMultiDetectorProcessingOption_AnimalRecognitionOriginatingRequestSpecifier" originalRequestResultsIndex:3];
  v17[3] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];
  v15 = +[VNANFDMultiDetector detectedObjectRequestKeyToRequestInfo]::detectedObjectRequestKeyToRequestInfo;
  +[VNANFDMultiDetector detectedObjectRequestKeyToRequestInfo]::detectedObjectRequestKeyToRequestInfo = v14;
}

+ (NSDictionary)detectedObjectClassToRequestKey
{
  if (+[VNANFDMultiDetector detectedObjectClassToRequestKey]::onceToken != -1)
  {
    dispatch_once(&+[VNANFDMultiDetector detectedObjectClassToRequestKey]::onceToken, &__block_literal_global_87);
  }

  v3 = +[VNANFDMultiDetector detectedObjectClassToRequestKey]::detectedObjectClassToRequestKey;

  return v3;
}

void __54__VNANFDMultiDetector_detectedObjectClassToRequestKey__block_invoke()
{
  v15[5] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  v15[0] = v1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v15[1] = v3;
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 initWithFormat:@"%@%@%@", v6, @"_", MEMORY[0x1E695E118], &unk_1F19C1A68, &unk_1F19C1A80, &unk_1F19C1A98];
  v15[2] = v7;
  v14[3] = &unk_1F19C1AB0;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v15[3] = v9;
  v14[4] = &unk_1F19C1AC8;
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v15[4] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:5];
  v13 = +[VNANFDMultiDetector detectedObjectClassToRequestKey]::detectedObjectClassToRequestKey;
  +[VNANFDMultiDetector detectedObjectClassToRequestKey]::detectedObjectClassToRequestKey = v12;
}

+ (id)requestInfoForRequest:(id)a3
{
  v4 = a3;
  v5 = [a1 detectedObjectRequestKeyToRequestInfo];
  v6 = [VNANFDMultiDetectorOriginalRequestInfo requestKeyFromRequest:v4];
  v7 = [v5 objectForKeyedSubscript:v6];

  return v7;
}

+ (Class)anfdMultiDetectorClassToProcessRequest:(id)a3
{
  v3 = a3;
  v4 = +[VNANFDMultiDetectorOriginalRequestInfo originatingRequestSpecifierToDetectorClassMap];
  v5 = [v3 specifier];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

+ (id)supportedImageSizeSetForOptions:(id)a3 error:(id *)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a1 networkRequiredInputImagePixelFormatForConfigurationOptions:v5];
  [objc_msgSend(a1 "detectorClass")];
  v8 = -[VNSupportedImageSize initWithIdealFormat:width:height:orientation:aspectRatioHandling:orientationAgnostic:]([VNSupportedImageSize alloc], "initWithIdealFormat:width:height:orientation:aspectRatioHandling:orientationAgnostic:", v6, v7, v7, 1, [a1 inputImageAspectRatioHandlingForConfigurationOptions:v5], 0);
  v11[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  return v9;
}

+ (Class)detectorClassForConfigurationOptions:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [VNValidationUtilities originatingRequestSpecifierInOptions:v5 error:a4];
  if (v6)
  {
    v7 = +[VNANFDMultiDetectorOriginalRequestInfo originatingRequestSpecifierToDetectorClassMap];
    v8 = [v7 objectForKeyedSubscript:v6];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else if (a4)
    {
      *a4 = [VNError errorForUnsupportedRequestSpecifier:v6];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isDetectedObject:(id)a3 ofAGivenObjectSubClass:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 labels];
    v8 = [v7 firstObject];
    v9 = [v8 identifier];
    v10 = [v9 containsString:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)splitDetectedClassResultsIntoSubclasses:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v3, 0}];

  return v4;
}

- (void)processRecognizedObjectWithIdentifier:(id)a3 originatingRequestSpecifier:(id)a4 objectBoundingBox:(CGRect)a5 objectGroupId:(id)a6 objectConfidence:(float)a7 detectedObjectResults:(id)a8
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v27[1] = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = a8;
  v20 = [VNClassificationObservation alloc];
  *&v21 = a7;
  v22 = [(VNClassificationObservation *)v20 initWithOriginatingRequestSpecifier:v17 identifier:v16 confidence:v21];
  v23 = [VNRecognizedObjectObservation alloc];
  v27[0] = v22;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  *&v25 = a7;
  v26 = [(VNRecognizedObjectObservation *)v23 initWithOriginatingRequestSpecifier:v17 boundingBox:v24 confidence:0 labels:v18 segmentationMask:x groupId:y, width, height, v25];

  [v19 addObject:v26];
}

- (BOOL)processDetectedObject:(id)a3 originatingRequestSpecifier:(id)a4 objectBoundingBox:(CGRect)a5 objectGroupId:(id)a6 imageBuffer:(id)a7 qosClass:(unsigned int)a8 session:(id)a9 warningRecorder:(id)a10 detectedObjectResults:(id)a11 error:(id *)a12
{
  v13 = *&a8;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v73 = *MEMORY[0x1E69E9840];
  v22 = a3;
  v66 = a4;
  v23 = a6;
  v62 = a7;
  v63 = a9;
  v64 = a10;
  v24 = a11;
  v25 = objc_opt_class();
  v65 = [v25 recognizedAnimalObjectClassToAnimalName];
  v26 = [v22 labelKey];
  if (v26 <= 3)
  {
    switch(v26)
    {
      case 1:
        v35 = [(VNDetectedObjectObservation *)[VNFaceObservation alloc] initWithOriginatingRequestSpecifier:v66 boundingBox:x, y, width, height];
        v36 = v35;
        if (v23)
        {
          [(VNDetectedObjectObservation *)v35 setGroupId:v23];
        }

        [(VNFaceObservation *)v36 setUnalignedBoundingBox:x, y, width, height];
        [v22 confidence];
        [(VNObservation *)v36 setConfidence:?];
        [v22 rotationAngle];
        v38 = ((v37 * 3.1416) / 180.0);
        if (v38 > 3.14159265)
        {
          v38 = v38 + -6.28318531;
        }

        if (v38 <= -3.14159265)
        {
          v38 = v38 + 6.28318531;
        }

        *&v38 = v38;
        v39 = [MEMORY[0x1E696AD98] numberWithFloat:v38];
        [(VNFaceObservation *)v36 setRoll:v39];

        v40 = MEMORY[0x1E696AD98];
        [v22 yawAngle];
        *&v42 = (v41 * 3.1416) / 180.0;
        v43 = [v40 numberWithFloat:v42];
        [(VNFaceObservation *)v36 setYaw:v43];

        v44 = MEMORY[0x1E696AD98];
        [v22 pitchAngle];
        *&v46 = (v45 * 3.1416) / 180.0;
        v47 = [v44 numberWithFloat:v46];
        [(VNFaceObservation *)v36 setPitch:v47];

        if ([v25 shouldAlignFacesForRequestWithSpecifier:v66])
        {
          v48 = [(VNANFDMultiDetector *)self _alignFace:v36 imageBuffer:v62 qosClass:v13 session:v63 warningRecorder:v64 error:a12];
          if (!v48)
          {

LABEL_39:
            v59 = 0;
            goto LABEL_33;
          }

          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          v49 = v48;
          v50 = [v49 countByEnumeratingWithState:&v67 objects:v72 count:16];
          if (v50)
          {
            v51 = *v68;
            do
            {
              for (i = 0; i != v50; ++i)
              {
                if (*v68 != v51)
                {
                  objc_enumerationMutation(v49);
                }

                v53 = *(*(&v67 + 1) + 8 * i);
                [v53 alignedBoundingBoxAsCGRect];
                if (v53)
                {
                  v53[12] = v54;
                  v53[13] = v55;
                  v53[14] = v56;
                  v53[15] = v57;
                }
              }

              v50 = [v49 countByEnumeratingWithState:&v67 objects:v72 count:16];
            }

            while (v50);
          }
        }

        else
        {
          v71 = v36;
          v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v71 count:1];
        }

        [v24 addObjectsFromArray:v49];

        goto LABEL_32;
      case 2:
        v58 = [[VNDetectedObjectObservation alloc] initWithOriginatingRequestSpecifier:v66 boundingBox:x, y, width, height];
        v31 = v58;
        if (v23)
        {
          [(VNDetectedObjectObservation *)v58 setGroupId:v23];
        }

        [v22 confidence];
        [v31 setConfidence:?];
        [v24 addObject:v31];
        goto LABEL_31;
      case 3:
        v27 = [VNHumanObservation alloc];
        [v22 confidence];
        LODWORD(v29) = v28;
        v30 = [(VNHumanObservation *)v27 initWithOriginatingRequestSpecifier:v66 boundingBox:1 upperBodyOnly:x confidence:y, width, height, v29];
        v31 = v30;
        if (v23)
        {
          [(VNDetectedObjectObservation *)v30 setGroupId:v23];
        }

        [v24 addObject:v31];
        goto LABEL_31;
    }

LABEL_34:
    if (a12)
    {
      v61 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected label key for detected object: %d", objc_msgSend(v22, "labelKey")];
      *a12 = [VNError errorForInternalErrorWithLocalizedDescription:v61];
    }

    goto LABEL_39;
  }

  if ((v26 - 4) >= 2)
  {
    goto LABEL_34;
  }

  v32 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v22, "labelKey")}];
  v31 = [v65 objectForKey:v32];

  [v22 confidence];
  LODWORD(v34) = v33;
  [(VNANFDMultiDetector *)self processRecognizedObjectWithIdentifier:v31 originatingRequestSpecifier:v66 objectBoundingBox:v23 objectGroupId:v24 objectConfidence:x detectedObjectResults:y, width, height, v34];
LABEL_31:

LABEL_32:
  v59 = 1;
LABEL_33:

  return v59;
}

- (id)_alignFace:(id)a3 imageBuffer:(id)a4 qosClass:(unsigned int)a5 session:(id)a6 warningRecorder:(id)a7 error:(id *)a8
{
  v10 = *&a5;
  v39[1] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v34 = a6;
  v35 = a7;
  v15 = objc_autoreleasePoolPush();
  v16 = objc_alloc(MEMORY[0x1E695DF90]);
  v17 = [v13 originatingRequestSpecifier];
  v39[0] = v14;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
  v19 = [v16 initWithObjectsAndKeys:{v17, @"VNDetectorOption_OriginatingRequestSpecifier", v18, @"VNDetectorProcessOption_InputImageBuffers", 0}];

  [v14 orientation];
  v37 = 0;
  LOBYTE(v18) = VNSetFaceOrientationInOptionsDictionary(v13, v19, &v37);
  v20 = v37;
  if (v18)
  {
    v38 = v13;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
    [v19 setObject:v21 forKeyedSubscript:@"VNDetectorProcessOption_InputFaceObservations"];

    [v19 setObject:v34 forKeyedSubscript:@"VNDetectorProcessOption_Session"];
    faceBBoxAligner = self->_faceBBoxAligner;
    v23 = *MEMORY[0x1E695F050];
    v24 = *(MEMORY[0x1E695F050] + 8);
    v25 = *(MEMORY[0x1E695F050] + 16);
    v26 = *(MEMORY[0x1E695F050] + 24);
    v36 = v20;
    v27 = [(VNFaceBBoxAligner *)faceBBoxAligner internalProcessUsingQualityOfServiceClass:v10 options:v19 regionOfInterest:v35 warningRecorder:&v36 error:0 progressHandler:v23, v24, v25, v26];
    v28 = v36;

    if (v27 && [v27 count] == 1 && objc_msgSend(v27, "count") != 1)
    {
      v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected number of aligned faces: %lu, should be 1", objc_msgSend(v27, "count")];
      v20 = [VNError errorForInternalErrorWithLocalizedDescription:v32];
    }

    else
    {
      v20 = v28;
    }
  }

  else
  {
    v27 = 0;
  }

  objc_autoreleasePoolPop(v15);
  if (v27)
  {
    v29 = v27;
  }

  else if (a8)
  {
    v30 = v20;
    *a8 = v20;
  }

  return v27;
}

- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v108 = *MEMORY[0x1E69E9840];
  v15 = a5;
  v68 = a7;
  v73 = v15;
  v67 = [VNValidationUtilities requiredSessionInOptions:v15 error:a8];
  if (!v67)
  {
    v23 = 0;
    goto LABEL_59;
  }

  v16 = [(VNDetector *)self validatedImageBufferFromOptions:v15 error:a8];
  v17 = v16;
  v66 = v16;
  if (v16)
  {
    v60 = [v16 width];
    v59 = [v17 height];
    v18 = v15;
    if (self)
    {
      v74 = v18;
      v19 = [(VNANFDMultiDetector *)self filterThresholdsForOptions:v18 error:a8];
      if (v19)
      {
        v20 = [objc_opt_class() filterThresholdsArrayForFilterThresholds:v19 error:a8];
        v21 = v20;
        if (v20)
        {
          v22 = v20;
        }
      }

      else
      {
        v21 = 0;
      }

      v62 = v21;
      if (v21)
      {
        v58 = objc_opt_class();
        v61 = [v58 detectedObjectRequestKeyToRequestInfo];
        v24 = [v61 count];
        v65 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
        v72 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v24];
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        obj = v61;
        v25 = [obj countByEnumeratingWithState:&v102 objects:v107 count:16];
        if (v25)
        {
          v70 = *v103;
          do
          {
            v69 = v25;
            for (i = 0; i != v69; ++i)
            {
              if (*v103 != v70)
              {
                objc_enumerationMutation(obj);
              }

              v27 = *(*(&v102 + 1) + 8 * i);
              v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
              [v72 addObject:v28];

              v29 = [obj objectForKeyedSubscript:v27];
              if (!v29)
              {
                [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"The request info is not found for request class %@", v27}];
LABEL_51:

                v23 = 0;
                goto LABEL_54;
              }

              v30 = [VNANFDMultiDetectorOriginalRequestInfo requestClassNameFromRequestKey:v27];
              v101 = 0;
              v31 = [v29 originatingRequestSpecifierKey];
              v32 = [VNValidationUtilities getOptionalOriginatingRequestSpecifier:&v101 forKey:v31 inOptions:v74 specifyingRequestClass:NSClassFromString(v30) error:a8];
              v33 = v101;

              if (!v32)
              {

                goto LABEL_51;
              }

              if (!v33)
              {
                goto LABEL_26;
              }

              v34 = objc_opt_class();
              v35 = NSStringFromClass(v34);
              v36 = [(NSString *)v30 isEqualToString:v35];

              if (!v36)
              {
                [v65 setObject:v33 forKey:v27];
LABEL_26:

                continue;
              }

              v100 = 1;
              if ([VNValidationUtilities getBOOLValue:&v100 forKey:@"VNANFDMultiDetectorProcessingOption_HumanDetectorUpperBody" inOptions:v74 withDefaultValue:0 error:a8])
              {
                if (v100 == 1)
                {
                  v37 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v38 = [MEMORY[0x1E696AD98] numberWithBool:1];
                  v39 = [v37 initWithFormat:@"%@", v38];

                  v40 = [VNANFDMultiDetectorOriginalRequestInfo requestPropertiesFromRequestKey:v27];
                  v41 = [v40 objectAtIndexedSubscript:0];
                  v42 = [v41 isEqualToString:v39];

                  if (v42)
                  {
                    goto LABEL_31;
                  }
                }

                v99 = 1;
                if ([VNValidationUtilities getBOOLValue:&v99 forKey:@"VNANFDMultiDetectorProcessingOption_HumanDetectorFullBody" inOptions:v74 withDefaultValue:0 error:a8])
                {
                  if (v99 != 1)
                  {
                    goto LABEL_26;
                  }

                  v43 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v44 = [MEMORY[0x1E696AD98] numberWithBool:0];
                  v39 = [v43 initWithFormat:@"%@", v44];

                  v40 = [VNANFDMultiDetectorOriginalRequestInfo requestPropertiesFromRequestKey:v27];
                  v45 = [v40 objectAtIndexedSubscript:0];
                  v46 = [v45 isEqualToString:v39];

                  if (!v46)
                  {

                    goto LABEL_26;
                  }

LABEL_31:
                  [v65 setObject:v33 forKey:v27];

                  v47 = 3;
                  goto LABEL_33;
                }
              }

              v47 = 1;
LABEL_33:

              if (v47 != 3)
              {
                goto LABEL_51;
              }
            }

            v25 = [obj countByEnumeratingWithState:&v102 objects:v107 count:16];
          }

          while (v25);
        }

        v48 = [v58 detectorClass];
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __121__VNANFDMultiDetector_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke;
        aBlock[3] = &unk_1E77B5B80;
        v89 = a4;
        aBlock[4] = self;
        v81 = v62;
        v90 = v58;
        v82 = v66;
        v83 = v67;
        v84 = v65;
        v91 = x;
        v92 = y;
        v93 = width;
        v94 = height;
        v95 = v60;
        v96 = v59;
        v97 = v48;
        v85 = obj;
        v49 = v72;
        v86 = v49;
        v98 = a6;
        v87 = v68;
        v88 = v74;
        v50 = _Block_copy(aBlock);
        if (v50[2](v50, a8, x, y, width, height))
        {
          if ([(VisionCoreRuntimeUtilities *)VNRuntimeUtilities linkTimeOrRunTimeBeforeVersion:393216])
          {
            v51 = &__block_literal_global_125;
            v76 = 0u;
            v77 = 0u;
            v78 = 0u;
            v79 = 0u;
            v52 = v49;
            v53 = [v52 countByEnumeratingWithState:&v76 objects:v106 count:16];
            if (v53)
            {
              v54 = *v77;
              do
              {
                for (j = 0; j != v53; ++j)
                {
                  if (*v77 != v54)
                  {
                    objc_enumerationMutation(v52);
                  }

                  [*(*(&v76 + 1) + 8 * j) sortWithOptions:16 usingComparator:&__block_literal_global_125];
                }

                v53 = [v52 countByEnumeratingWithState:&v76 objects:v106 count:16];
              }

              while (v53);
            }
          }

          v23 = v49;
        }

        else
        {
          v23 = 0;
        }

LABEL_54:
        v56 = v62;
        goto LABEL_57;
      }
    }

    else
    {
    }

    v56 = 0;
    v23 = 0;
LABEL_57:

    goto LABEL_58;
  }

  v23 = 0;
LABEL_58:

LABEL_59:

  return v23;
}

uint64_t __121__VNANFDMultiDetector_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke(uint64_t a1, void *a2)
{
  v90 = *MEMORY[0x1E69E9840];
  BaseAddress = CVPixelBufferGetBaseAddress(*(a1 + 104));
  Height = CVPixelBufferGetHeight(*(a1 + 104));
  Width = CVPixelBufferGetWidth(*(a1 + 104));
  BytesPerRow = CVPixelBufferGetBytesPerRow(*(a1 + 104));
  v82 = 0;
  v83 = &v82;
  v84 = 0x3032000000;
  v85 = __Block_byref_object_copy__31156;
  v86 = __Block_byref_object_dispose__31157;
  v87 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __121__VNANFDMultiDetector_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke_2;
  aBlock[3] = &unk_1E77B5B58;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v77 = &v82;
  v78 = BaseAddress;
  aBlock[4] = v8;
  v79 = Height;
  v80 = Width;
  v81 = BytesPerRow;
  v76 = v9;
  v58 = _Block_copy(aBlock);
  v10 = VNExecuteBlock(v58, a2);
  v11 = v83[5];
  v13 = *(a1 + 104);
  v12 = *(a1 + 112);
  v74[0] = BaseAddress;
  v74[1] = Height;
  v74[2] = Width;
  v74[3] = BytesPerRow;
  [v12 _printDebugInfo:*(a1 + 48) detectedObjectsRaw:v11 faceDetectorBGRAImage:v13 tempImage:v74 session:*(a1 + 56)];
  if (v10)
  {
    if ([v83[5] count])
    {
      v62 = [*(a1 + 112) detectedObjectClassToRequestKey];
      v61 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      obj = v83[5];
      v14 = [obj countByEnumeratingWithState:&v70 objects:v89 count:16];
      if (v14)
      {
        v15 = *v71;
        v16 = Height;
        v17 = Width;
        v18 = Height;
        v19 = 0x1E696A000uLL;
LABEL_5:
        v20 = 0;
        while (1)
        {
          if (*v71 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v70 + 1) + 8 * v20);
          v22 = [*(v19 + 3480) numberWithInt:{objc_msgSend(v21, "labelKey")}];
          v65 = [v62 objectForKey:v22];

          v63 = [*(a1 + 64) objectForKey:v65];
          if (v63)
          {
            if ([v21 groupId])
            {
              v23 = [*(v19 + 3480) numberWithInt:{objc_msgSend(v21, "groupId")}];
              v64 = [v61 objectForKey:v23];

              if (!v64)
              {
                v24 = objc_alloc_init(MEMORY[0x1E696AFB0]);
                v25 = [*(v19 + 3480) numberWithInt:{objc_msgSend(v21, "groupId")}];
                v64 = v24;
                [v61 setObject:v24 forKey:v25];
              }
            }

            else
            {
              v64 = 0;
            }

            [v21 bounds];
            v30 = *(a1 + 152);
            v31 = 0.0;
            v32 = 0.0;
            v33 = 0.0;
            if (v30)
            {
              v34 = *(a1 + 136) / v17;
              v35 = v34;
              v32 = (*(a1 + 120) + v26 * v35) / v30;
              v33 = v28 * v35 / v30;
            }

            v36 = *(a1 + 160);
            v37 = 0.0;
            if (v36)
            {
              v38 = v16 - (v27 + v29);
              v39 = *(a1 + 144) / v18;
              v40 = v39;
              v31 = (*(a1 + 128) + v38 * v40) / v36;
              v37 = v29 * v40 / v36;
            }

            v92.origin.x = 0.0;
            v92.origin.y = 0.0;
            v92.size.width = 1.0;
            v92.size.height = 1.0;
            v91.origin.x = v32;
            v91.origin.y = v31;
            v91.size.width = v33;
            v91.size.height = v37;
            if (CGRectIntersectsRect(v91, v92))
            {
              v41 = [*(a1 + 168) supportedLabelKeys];
              v42 = [*(v19 + 3480) numberWithInt:{objc_msgSend(v21, "labelKey")}];
              v43 = [v41 containsObject:v42];

              if ((v43 & 1) == 0)
              {
                if (a2)
                {
                  v55 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Not supported object type: %d", objc_msgSend(v21, "labelKey")];
                  *a2 = [VNError errorForInternalErrorWithLocalizedDescription:?];
                  goto LABEL_41;
                }

                goto LABEL_42;
              }

              v44 = [*(a1 + 72) objectForKeyedSubscript:v65];
              if (!v44)
              {
                if (a2)
                {
                  v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"The request info is not found for request class %@", v65];
                  *a2 = [VNError errorForInternalErrorWithLocalizedDescription:v56];
                }

                v55 = 0;
LABEL_41:

LABEL_42:
                v54 = 0;
                goto LABEL_43;
              }

              v59 = v44;
              v45 = [*(a1 + 80) objectAtIndexedSubscript:{objc_msgSend(v44, "originalRequestResultsIndex")}];
              v46 = [*(a1 + 32) processDetectedObject:v21 originatingRequestSpecifier:v63 objectBoundingBox:v64 objectGroupId:*(a1 + 48) imageBuffer:*(a1 + 176) qosClass:*(a1 + 56) session:v32 warningRecorder:v31 detectedObjectResults:v33 error:{v37, *(a1 + 88), v45, a2}];
              v47 = v14;
              v48 = v15;
              v49 = a2;
              v68 = 0u;
              v69 = 0u;
              v66 = 0u;
              v67 = 0u;
              v50 = v45;
              v51 = [v50 countByEnumeratingWithState:&v66 objects:v88 count:16];
              if (v51)
              {
                v52 = *v67;
                do
                {
                  for (i = 0; i != v51; ++i)
                  {
                    if (*v67 != v52)
                    {
                      objc_enumerationMutation(v50);
                    }

                    [*(a1 + 32) recordImageCropQuickLookInfoFromOptions:*(a1 + 96) toObservation:*(*(&v66 + 1) + 8 * i)];
                  }

                  v51 = [v50 countByEnumeratingWithState:&v66 objects:v88 count:16];
                }

                while (v51);
              }

              v19 = 0x1E696A000;
              a2 = v49;
              v15 = v48;
              v14 = v47;

              if ((v46 & 1) == 0)
              {
                v55 = v59;
                goto LABEL_41;
              }
            }
          }

          if (++v20 == v14)
          {
            v14 = [obj countByEnumeratingWithState:&v70 objects:v89 count:16];
            if (v14)
            {
              goto LABEL_5;
            }

            break;
          }
        }
      }

      v54 = 1;
LABEL_43:
    }

    else
    {
      v54 = 1;
    }
  }

  else
  {
    v54 = 0;
  }

  _Block_object_dispose(&v82, 8);
  return v54;
}

uint64_t __121__VNANFDMultiDetector_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke_2(void *a1)
{
  v2 = [*(a1[4] + 88) detectAndProcessObjects:a1 + 7 filterThresholds:a1[5] inputIsBGR:1];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return 1;
}

- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v17 = a4;
  v18 = a6;
  v19 = [(VNDetector *)self validatedImageBufferFromOptions:v17 error:a8];
  v20 = v19;
  if (v19)
  {
    v21 = [v19 width];
    v22 = [v20 height];
    if (v21 >= v22)
    {
      v21 = v22;
    }

    [objc_msgSend(objc_opt_class() "detectorClass")];
    if (v21 < v23)
    {
      VNRecordImageTooSmallWarningWithImageMinimumShortDimension(v18, v23);
    }

    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    v40 = CGRectIntegral(v39);
    v24 = v40.origin.x;
    v25 = v40.origin.y;
    v26 = v40.size.width;
    v27 = v40.size.height;
    [objc_opt_class() getSuggestedImageSize:{v40.size.width, v40.size.height}];
    v30 = v28 < v26;
    v31 = v29 < v27;
    if (v30 && v31)
    {
      v32 = v28;
    }

    else
    {
      v32 = v26;
    }

    if (v30 && v31)
    {
      v33 = v29;
    }

    else
    {
      v33 = v27;
    }

    v38 = 0;
    v34 = [v20 croppedBufferWithWidth:v32 height:v33 format:1111970369 cropRect:v17 options:a8 error:&v38 pixelBufferRepsCacheKey:{v24, v25, v26, v27}];
    v35 = v38;
    *a7 = v34;
    v36 = v34 != 0;
    if (v34)
    {
      [(VNDetector *)self recordImageCropQuickLookInfoToOptionsSafe:v17 cacheKey:v35 imageBuffer:v20];
    }
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

- (id)internalProcessUsingQualityOfServiceClass:(unsigned int)a3 options:(id)a4 regionOfInterest:(CGRect)a5 warningRecorder:(id)a6 error:(id *)a7 progressHandler:(id)a8
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v16 = a4;
  v149 = a6;
  v147 = a8;
  v148 = v16;
  v17 = [(VNDetector *)self validatedImageBufferFromOptions:v16 error:a7];
  if (!v17)
  {
    v128 = 0;
    goto LABEL_62;
  }

  v217 = 0;
  v218 = 0;
  v214 = 0;
  v215 = 0;
  v216 = 0;
  v136 = v17;
  v18 = [v17 width];
  v19 = [v136 height];
  LODWORD(v20) = 1050253722;
  LODWORD(v21) = 2.0;
  if ([VNFaceDetector calculateTilesForRegionOfInterest:v18 imageWidth:v19 imageHeight:3145728 tileSizeInPixels:&v218 overlapFraction:&v217 aspectRatioThreshold:&v214 columns:x rows:y tiles:width error:height, v20, v21, a7])
  {
    VNRecordImageTilingWarning(v149, v218, v217);
    v23 = v214;
    v22 = v215;
    v156 = (v215 - v214) >> 5;
    v144 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:?];
    v135 = [objc_opt_class() detectedObjectRequestKeyToRequestInfo];
    v24 = [v135 count];
    v208 = 0;
    v209 = &v208;
    v210 = 0x3032000000;
    v211 = __Block_byref_object_copy__31156;
    v212 = __Block_byref_object_dispose__31157;
    for (i = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v24]; v24; --v24)
    {
      v25 = v209[5];
      v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v25 addObject:v26];
    }

    v206[0] = 0;
    v206[1] = v206;
    v206[2] = 0x3812000000;
    v206[3] = __Block_byref_object_copy__115;
    v206[4] = __Block_byref_object_dispose__116;
    v206[5] = "";
    v207 = 0;
    objc_initWeak(&location, self);
    v27 = objc_opt_class();
    v152 = [v27 VNClassCode];
    v143 = [v27 detectorCropCreationAsyncTasksQueue];
    v146 = dispatch_group_create();
    v142 = [v27 detectorCropProcessingAsyncTasksQueue];
    v134 = a7;
    v145 = dispatch_group_create();
    kdebug_trace();
    VNValidatedLog(1, @"Start processing tilesProcessingGroup. currentDetector: %@", v28, v29, v30, v31, v32, v33, self);
    v158 = self;
    if (v22 != v23)
    {
      v40 = 0;
      v41 = 0;
      v42 = v156;
      if (v156 <= 1)
      {
        v42 = 1;
      }

      v137 = v42;
      do
      {
        v161 = v40;
        v43 = *&v214[v40 + 16];
        v203 = *&v214[v40];
        v204 = v43;
        v201[0] = 0;
        v201[1] = v201;
        v201[2] = 0x3032000000;
        v201[3] = __Block_byref_object_copy__31156;
        v201[4] = __Block_byref_object_dispose__31157;
        v202 = 0;
        v199[0] = 0;
        v199[1] = v199;
        v199[2] = 0x3032000000;
        v199[3] = __Block_byref_object_copy__31156;
        v199[4] = __Block_byref_object_dispose__31157;
        v200 = 0;
        v198[0] = 0;
        v198[1] = v198;
        v198[2] = 0x2020000000;
        v198[3] = 0;
        v44 = [v148 mutableCopy];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __128__VNANFDMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke;
        block[3] = &unk_1E77B65D8;
        objc_copyWeak(v192, &location);
        v196 = v152;
        v190 = v201;
        v192[1] = v41;
        v159 = v146;
        v185 = v159;
        v197 = a3;
        v193 = v203;
        v194 = v204;
        v45 = v44;
        v186 = v45;
        v46 = v149;
        v187 = v46;
        v191 = v198;
        v47 = v147;
        v189 = v47;
        v195 = v156;
        v48 = v143;
        v188 = v48;
        v49 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, a3, 0, block);
        v165[0] = MEMORY[0x1E69E9820];
        v165[1] = 3221225472;
        v165[2] = __128__VNANFDMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_3;
        v165[3] = &unk_1E77B5A90;
        objc_copyWeak(v178, &location);
        v173 = v201;
        v182 = a3;
        v50 = v49;
        v183 = v152;
        v51 = v50;
        v171 = v50;
        v178[1] = v41;
        v52 = v145;
        v166 = v52;
        v179 = v203;
        v180 = v204;
        v174 = v199;
        v175 = v198;
        v53 = v45;
        v167 = v53;
        v168 = v46;
        v172 = v47;
        v176 = v206;
        v177 = &v208;
        v169 = v144;
        v181 = v156;
        v54 = v142;
        v170 = v54;
        v61 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, a3, 0, v165);
        if (v156 < 2)
        {
          VNValidatedLog(1, @"Performing createRegionOfInterestCropForProcessingBlock. currentDetector: %@", v55, v56, v57, v58, v59, v60, v158);
          v51[2](v51);
          VNValidatedLog(1, @"Performing processRegionOfInterestBlock. currentDetector: %@", v68, v69, v70, v71, v72, v73, v158);
          v61[2](v61);
          VNValidatedLog(1, @"Finish processing createRegionOfInterestCropForProcessingBlock and processRegionOfInterestBlock. currentDetector: %@", v74, v75, v76, v77, v78, v79, v158);
        }

        else
        {
          VNValidatedLog(1, @"Scheduling createRegionOfInterestCropForProcessingBlock. currentDetector: %@", v55, v56, v57, v58, v59, v60, v158);
          [v48 dispatchGroupAsyncByPreservingQueueCapacity:v159 block:v51];
          VNValidatedLog(1, @"Scheduling processRegionOfInterestBlock. currentDetector: %@", v62, v63, v64, v65, v66, v67, v158);
          [v54 dispatchGroupAsyncByPreservingQueueCapacity:v52 block:v61];
        }

        objc_destroyWeak(v178);
        objc_destroyWeak(v192);

        _Block_object_dispose(v198, 8);
        _Block_object_dispose(v199, 8);

        _Block_object_dispose(v201, 8);
        ++v41;
        v40 = v161 + 32;
      }

      while (v137 != v41);
    }

    v80 = v158;
    if (v156 > 1)
    {
      VNValidatedLog(1, @"Waiting for tilesCropCreationGroup. currentDetector: %@; group: %@", v34, v35, v36, v37, v38, v39, v158);
      if ([v143 dispatchGroupWait:v146 error:v134])
      {
        VNValidatedLog(1, @"Waiting for tilesCropProcessingGroup. currentDetector: %@ group: %@", v81, v82, v83, v84, v85, v86, v158);
        if ([v142 dispatchGroupWait:v145 error:v134])
        {
          VNValidatedLog(1, @"Finish processing tilesCropCreationGroup and tilesCropProcessingGroup. currentDetector: %@; cropCreationGroup: %@; cropProcessingGroup: %@", v81, v82, v83, v84, v85, v86, v158);
          goto LABEL_17;
        }

        v129 = @"Timed out waiting for tilesCropProcessingGroup when processing %lu anod tiles. currentDetector: %@ group: %@";
      }

      else
      {
        v129 = @"Timed out waiting for tilesCropCreationGroup when processing %lu anod tiles. currentDetector: %@; group: %@";
      }

      VNValidatedLog(4, v129, v81, v82, v83, v84, v85, v86, v156);
      goto LABEL_55;
    }

LABEL_17:
    kdebug_trace();
    if ([VNValidationUtilities validateAsyncStatusResults:v144 error:v134])
    {
      if (v156 >= 2)
      {
        v139 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v138 = objc_alloc_init(MEMORY[0x1E695DF70]);
        for (j = 0; j < [v209[5] count]; ++j)
        {
          v140 = [v209[5] objectAtIndexedSubscript:?];
          v87 = [(VNANFDMultiDetector *)v80 splitDetectedClassResultsIntoSubclasses:v140];
          v153 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v151 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v88 = 0;
          v150 = v87;
          while (v88 < [v87 count])
          {
            v155 = v88;
            v89 = [v87 objectAtIndexedSubscript:v88];
            v90 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v91 = v89;
            v157 = v90;
            v160 = objc_alloc_init(MEMORY[0x1E696AD50]);
            v92 = [v91 count];
            if ((atomic_load_explicit(&_ZGVZZ128__VNANFDMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler__EUb_E27duplicatedObjectToBeRemoved, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_ZGVZZ128__VNANFDMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler__EUb_E27duplicatedObjectToBeRemoved))
            {
              _ZZZ128__VNANFDMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler__EUb_E27duplicatedObjectToBeRemoved = [MEMORY[0x1E695DFB0] null];
              __cxa_guard_release(&_ZGVZZ128__VNANFDMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler__EUb_E27duplicatedObjectToBeRemoved);
              v80 = v158;
            }

            if (v92)
            {
              v93 = 0;
              do
              {
                v94 = [v91 objectAtIndexedSubscript:v93];
                if ([v94 isEqual:_ZZZ128__VNANFDMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler__EUb_E27duplicatedObjectToBeRemoved])
                {
                  v95 = v93 + 1;
                }

                else
                {
                  v96 = objc_alloc_init(MEMORY[0x1E696AD50]);
                  [v94 boundingBox];
                  v98 = v97;
                  v100 = v99;
                  v102 = v101;
                  v104 = v103;
                  v162 = v96;
                  v105 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  v95 = v93 + 1;
                  if (v93 + 1 < v92)
                  {
                    v106 = v93 + 1;
                    do
                    {
                      v107 = [v91 objectAtIndexedSubscript:v106];
                      if (([v107 isEqual:_ZZZ128__VNANFDMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler__EUb_E27duplicatedObjectToBeRemoved] & 1) == 0)
                      {
                        [v107 boundingBox];
                        v222.origin.x = v108;
                        v222.origin.y = v109;
                        v111 = v110;
                        v113 = v112;
                        v220.origin.x = v98;
                        v220.origin.y = v100;
                        v220.size.width = v102;
                        v220.size.height = v104;
                        v222.size.width = v111;
                        v222.size.height = v113;
                        v221 = CGRectIntersection(v220, v222);
                        *&v221.size.width = v221.size.width * v221.size.height / (v102 * v104 + v111 * v113 - v221.size.width * v221.size.height);
                        if (*&v221.size.width >= 0.5)
                        {
                          v114 = v102 * v104;
                          v115 = v111 * v113;
                          if (v114 > v115)
                          {
                            v116 = v106;
                          }

                          else
                          {
                            v116 = v93;
                          }

                          v117 = v116;
                          v118 = [v91 objectAtIndexedSubscript:v116];
                          [v105 addObject:v118];

                          if (v117 == v93)
                          {
                            v119 = [v91 objectAtIndexedSubscript:v106];
                            [v91 setObject:v119 atIndexedSubscript:v93];

                            v120 = [v91 objectAtIndexedSubscript:v93];

                            [v120 boundingBox];
                            v98 = v121;
                            v100 = v122;
                            v102 = v123;
                            v104 = v124;
                            v94 = v120;
                          }

                          [v162 addIndex:v106];
                          [v91 setObject:_ZZZ128__VNANFDMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler__EUb_E27duplicatedObjectToBeRemoved atIndexedSubscript:v106];
                        }
                      }

                      ++v106;
                    }

                    while (v92 != v106);
                  }

                  [v157 setObject:v105 forKey:v94];
                  [v160 addIndexes:v162];
                }

                v93 = v95;
                v80 = v158;
              }

              while (v95 != v92);
            }

            v125 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v91, "count") - objc_msgSend(v160, "count")}];
            if (v92)
            {
              for (k = 0; k != v92; ++k)
              {
                if (([v160 containsIndex:k] & 1) == 0)
                {
                  v127 = [v91 objectAtIndexedSubscript:k];
                  [v125 addObject:v127];
                }
              }
            }

            [v91 setArray:v125];

            [v153 addObjectsFromArray:v91];
            [v151 addEntriesFromDictionary:v157];

            v88 = v155 + 1;
            v87 = v150;
          }

          [v153 sortUsingComparator:&__block_literal_global_31180];
          [v139 addObject:v153];
          [v138 addObject:v151];
        }

        v163[0] = MEMORY[0x1E69E9820];
        v163[1] = 3221225472;
        v163[2] = __128__VNANFDMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_7;
        v163[3] = &unk_1E77B5B30;
        v130 = v138;
        v164 = v130;
        [v139 enumerateObjectsUsingBlock:v163];
        v131 = v209[5];
        v209[5] = v139;
        v132 = v139;
      }

      v128 = v209[5];
      goto LABEL_58;
    }

LABEL_55:
    v128 = 0;
LABEL_58:

    objc_destroyWeak(&location);
    _Block_object_dispose(v206, 8);
    _Block_object_dispose(&v208, 8);

    goto LABEL_59;
  }

  v128 = 0;
LABEL_59:
  if (v214)
  {
    v215 = v214;
    operator delete(v214);
  }

  v17 = v136;
LABEL_62:

  return v128;
}

void __128__VNANFDMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (WeakRetained)
  {
    kdebug_trace();
    VNValidatedLog(1, @"createRegionOfInterestCropForProcessingBlock: start processing; currentDetector: %@", v3, v4, v5, v6, v7, v8, WeakRetained);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __128__VNANFDMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_2;
    aBlock[3] = &unk_1E77B65B0;
    v41 = *(a1 + 148);
    v9 = WeakRetained;
    v34 = v9;
    v39 = *(a1 + 104);
    v40 = *(a1 + 120);
    v35 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 80);
    v36 = v10;
    v38 = v11;
    v37 = *(a1 + 64);
    v12 = _Block_copy(aBlock);
    v13 = *(a1 + 104);
    v14 = *(a1 + 112);
    v15 = *(a1 + 120);
    v16 = *(a1 + 128);
    v32 = 0;
    v17 = v12[2](v12, &v32, v13, v14, v15, v16);
    v18 = v32;
    v19 = [[VNAsyncStatus alloc] initWithStatus:v17 error:v18];
    v20 = *(*(a1 + 72) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    VNValidatedLog(1, @"createRegionOfInterestCropForProcessingBlock: finish processing; currentDetector: %@", v22, v23, v24, v25, v26, v27, v9);
    kdebug_trace();
    if (*(a1 + 136) >= 2uLL)
    {
      [*(a1 + 56) dispatchReportBlockCompletion];
    }
  }

  else
  {
    v28 = [VNError errorForInternalErrorWithLocalizedDescription:@"Currently executed Detector should not be nil"];
    v29 = [[VNAsyncStatus alloc] initWithStatus:0 error:v28];
    v30 = *(*(a1 + 72) + 8);
    v31 = *(v30 + 40);
    *(v30 + 40) = v29;
  }
}

void __128__VNANFDMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 128));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    VNValidatedLog(1, @"processRegionOfInterestBlock: start processing; currentDetector: %@", v3, v4, v5, v6, v7, v8, WeakRetained);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __128__VNANFDMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_4;
    aBlock[3] = &unk_1E77B5A68;
    v39 = *(a1 + 72);
    v10 = v9;
    v46 = *(a1 + 188);
    v11 = *(a1 + 136);
    v35 = v10;
    v43 = v11;
    v36 = *(a1 + 32);
    v47 = *(a1 + 184);
    v41 = *(a1 + 88);
    v12 = *(a1 + 160);
    v44 = *(a1 + 144);
    v45 = v12;
    v42 = *(a1 + 104);
    v37 = *(a1 + 40);
    v38 = *(a1 + 48);
    v40 = *(a1 + 80);
    v13 = _Block_copy(aBlock);
    v33 = 0;
    v14 = VNExecuteBlock(v13, &v33);
    v15 = v33;
    v16 = [[VNAsyncStatus alloc] initWithStatus:v14 error:v15];
    v17 = *(*(a1 + 88) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    os_unfair_lock_lock((*(*(a1 + 112) + 8) + 48));
    v19 = [*(*(*(a1 + 96) + 8) + 40) count];
    if (v19)
    {
      for (i = 0; i != v19; ++i)
      {
        v21 = [*(*(*(a1 + 96) + 8) + 40) objectAtIndex:i];
        v22 = [*(*(*(a1 + 120) + 8) + 40) objectAtIndex:i];
        [v22 addObjectsFromArray:v21];
      }
    }

    [*(a1 + 56) addObject:*(*(*(a1 + 88) + 8) + 40)];
    os_unfair_lock_unlock((*(*(a1 + 112) + 8) + 48));
    VNValidatedLog(1, @"processRegionOfInterestBlock: finish processing; currentDetector: %@", v23, v24, v25, v26, v27, v28, v10);
    kdebug_trace();
    if (*(a1 + 176) >= 2uLL)
    {
      [*(a1 + 64) dispatchReportBlockCompletion];
    }
  }

  else
  {
    v29 = [VNError errorForInternalErrorWithLocalizedDescription:@"Currently executed Detector should not be nil"];
    v30 = [[VNAsyncStatus alloc] initWithStatus:0 error:v29];
    v31 = *(*(a1 + 88) + 8);
    v32 = *(v31 + 40);
    *(v31 + 40) = v30;
  }

  CVPixelBufferRelease(*(*(*(a1 + 104) + 8) + 24));
  *(*(*(a1 + 104) + 8) + 24) = 0;
}

void __128__VNANFDMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_7(uint64_t a1, void *a2, uint64_t a3)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __128__VNANFDMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_8;
  v5[3] = &unk_1E77B5B08;
  v6 = *(a1 + 32);
  v7 = a3;
  [a2 enumerateObjectsUsingBlock:v5];
}

void __128__VNANFDMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __128__VNANFDMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_9;
  v7[3] = &unk_1E77B5AE0;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v6 = v3;
  [v5 enumerateObjectsUsingBlock:v7];
}

void __128__VNANFDMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_9(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (*(a1 + 40) != a3)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __128__VNANFDMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_10;
    v6[3] = &unk_1E77B5AB8;
    v7 = *(a1 + 32);
    [v5 enumerateKeysAndObjectsUsingBlock:v6];
  }
}

void __128__VNANFDMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 groupId];
        v12 = [*(a1 + 32) groupId];
        v13 = [v11 isEqual:v12];

        if (v13)
        {
          v14 = [v10 groupId];
          [(VNDetectedObjectObservation *)v5 setGroupId:v14];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

BOOL __128__VNANFDMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_4(uint64_t a1, void *a2)
{
  if (dispatch_block_wait(*(a1 + 64), 0xFFFFFFFFFFFFFFFFLL))
  {
    if (a2)
    {
      v4 = [VNError errorForExecutionTimeoutWithLocalizedDescription:@"Timed out waiting for dependent task execution"];
LABEL_8:
      v19 = 0;
      *a2 = v4;
      return v19;
    }

    return 0;
  }

  kdebug_trace();
  VNValidatedLog(1, @"processRegionOfInterestBlock: start processing (crop is ready); currentDetector: %@", v5, v6, v7, v8, v9, v10, *(a1 + 32));
  if (([*(*(*(a1 + 80) + 8) + 40) completed] & 1) == 0)
  {
    if (a2)
    {
      v4 = [*(*(*(a1 + 80) + 8) + 40) error];
      goto LABEL_8;
    }

    return 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __128__VNANFDMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_5;
  aBlock[3] = &unk_1E77B5A40;
  v11 = *(a1 + 32);
  v29 = *(a1 + 144);
  v26 = *(a1 + 104);
  v12 = *(a1 + 40);
  v30 = *(a1 + 148);
  v13 = *(a1 + 128);
  v27 = *(a1 + 112);
  v28 = v13;
  v25 = *(a1 + 88);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  *&v16 = v14;
  *(&v16 + 1) = v15;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v22 = v17;
  v23 = v16;
  v24 = *(a1 + 72);
  v18 = _Block_copy(aBlock);
  CVPixelBufferLockBaseAddress(*(*(*(a1 + 96) + 8) + 24), 1uLL);
  [objc_opt_class() runSuccessReportingBlockSynchronously:v18 detector:*(a1 + 32) qosClass:*(a1 + 148) error:a2];
  CVPixelBufferUnlockBaseAddress(*(*(*(a1 + 96) + 8) + 24), 1uLL);
  v19 = *(*(*(a1 + 88) + 8) + 40) != 0;

  return v19;
}

BOOL __128__VNANFDMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_5(uint64_t a1, uint64_t a2)
{
  kdebug_trace();
  VNValidatedLog(1, @"processRegionOfInterest Netto: start processing; currentDetector: %@", v4, v5, v6, v7, v8, v9, *(a1 + 32));
  v10 = [*(a1 + 32) processRegionOfInterest:*(*(*(a1 + 80) + 8) + 24) croppedPixelBuffer:*(a1 + 48) options:*(a1 + 132) qosClass:*(a1 + 56) warningRecorder:a2 error:*(a1 + 64) progressHandler:{*(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120)}];
  v11 = *(*(a1 + 72) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  VNValidatedLog(1, @"processRegionOfInterest Netto: finish processing; currentDetector: %@", v13, v14, v15, v16, v17, v18, *(a1 + 32));
  kdebug_trace();
  return *(*(*(a1 + 72) + 8) + 40) != 0;
}

- (id)applicableOptionKeyToShotflowKeyMappingsForOptions:(id)a3 error:(id *)a4
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = @"VNANFDMultiDetectorProcessingOption_HumanFacePrecisionRecallThresholdOverride";
  v6[1] = @"VNANFDMultiDetectorProcessingOption_HumanHeadPrecisionRecallThresholdOverride";
  v7[0] = @"VNShotflowDetectorFilterThresholdKey_HumanFace";
  v7[1] = @"VNShotflowDetectorFilterThresholdKey_HumanHead";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (id)filterThresholdsForOptions:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = a3;
  v6 = [objc_opt_class() defaultFilterThresholdsForOptions:v26 error:a4];
  if (v6)
  {
    v7 = [(VNANFDMultiDetector *)self applicableOptionKeyToShotflowKeyMappingsForOptions:v26 error:a4];
    v25 = v7;
    if (v7)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v8 = [v7 allKeys];
      obj = v8;
      v9 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v9)
      {
        v24 = *v28;
        do
        {
          v10 = 0;
          do
          {
            if (*v28 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v27 + 1) + 8 * v10);
            v12 = [v25 objectForKeyedSubscript:v11];
            v13 = v6;
            v14 = v12;
            v15 = v11;
            v16 = v26;
            if (self)
            {
              v31 = 0;
              v17 = [VNValidationUtilities getOptionalObject:&v31 ofClass:objc_opt_class() forKey:v15 inOptions:v16 error:a4];
              v18 = v31;
              v19 = v18;
              if (v17)
              {
                if (v18)
                {
                  v6 = [v13 mutableCopy];
                  [v6 setObject:v19 forKeyedSubscript:v14];
                }

                else
                {
                  v6 = v13;
                }
              }

              else
              {
                v6 = 0;
              }
            }

            else
            {
              v6 = 0;
            }

            if (!v6)
            {

              v6 = 0;
              goto LABEL_23;
            }

            ++v10;
          }

          while (v9 != v10);
          v8 = obj;
          v20 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
          v9 = v20;
        }

        while (v20);
      }

      v6 = v6;
      v21 = v6;
    }

    else
    {
LABEL_23:
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4
{
  v27[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v25.receiver = self;
  v25.super_class = VNANFDMultiDetector;
  if ([(VNEspressoModelFileBasedDetector *)&v25 completeInitializationForSession:v6 error:a4])
  {
    v7 = [(VNEspressoModelFileBasedDetector *)self espressoResources];
    v8 = [objc_opt_class() detectorClass];
    v9 = [v7 network];
    v11 = [v8 processingDeviceDetectorWithEspressoNetwork:v9 espressoPlan:{v10, objc_msgSend(v7, "plan")}];
    mMultiHeadedANFDDetector = self->_mMultiHeadedANFDDetector;
    self->_mMultiHeadedANFDDetector = v11;

    if (self->_mMultiHeadedANFDDetector)
    {
      v13 = objc_opt_class();
      if (([v13 isEqual:objc_opt_class()] & 1) != 0 || (-[VNDetector configurationOptions](self, "configurationOptions"), v14 = objc_claimAutoreleasedReturnValue(), +[VNFaceBBoxAligner supportedComputeStageDevicesForOptions:error:](VNFaceBBoxAligner, "supportedComputeStageDevicesForOptions:error:", v14, a4), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "mutableCopy"), v26 = @"VNComputeStageMain", objc_msgSend(v15, "objectForKeyedSubscript:"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "firstObject"), v18 = objc_claimAutoreleasedReturnValue(), v27[0] = v18, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v27, &v26, 1), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "setObject:forKeyedSubscript:", v19, @"VNDetectorOption_ComputeStageDeviceAssignments"), v19, v18, v17, objc_msgSend(v6, "detectorOfType:configuredWithOptions:error:", @"VNFaceBoxAlignerType", v16, a4), v20 = objc_claimAutoreleasedReturnValue(), faceBBoxAligner = self->_faceBBoxAligner, self->_faceBBoxAligner = v20, faceBBoxAligner, v22 = self->_faceBBoxAligner == 0, v16, v15, v14, !v22))
      {
        v23 = 1;
LABEL_10:

        goto LABEL_11;
      }
    }

    else if (a4)
    {
      [VNError errorForInternalErrorWithLocalizedDescription:@"Failure to create multi-headed object detector."];
      *a4 = v23 = 0;
      goto LABEL_10;
    }

    v23 = 0;
    goto LABEL_10;
  }

  v23 = 0;
LABEL_11:

  return v23;
}

@end