@interface VNCRImageReaderForDocumentsDetector
+ (id)imageReaderRecognitionOptionsForProcessOptions:(id)options;
- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler;
- (BOOL)warmUpSession:(id)session withOptions:(id)options error:(id *)error;
- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
@end

@implementation VNCRImageReaderForDocumentsDetector

+ (id)imageReaderRecognitionOptionsForProcessOptions:(id)options
{
  optionsCopy = options;
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___VNCRImageReaderForDocumentsDetector;
  v5 = objc_msgSendSuper2(&v10, sel_imageReaderRecognitionOptionsForProcessOptions_, optionsCopy);
  v6 = *MEMORY[0x1E69D9CF0];
  v7 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69D9CF0]];
  [v5 setObject:v7 forKeyedSubscript:v6];

  v8 = [optionsCopy objectForKeyedSubscript:@"VNCRImageReaderForDocumentsDetectorProcessOption_DetectionOnly"];
  [v5 setObject:v8 forKeyedSubscript:*MEMORY[0x1E69D9CA0]];

  return v5;
}

- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  v75 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  handlerCopy = handler;
  v37 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNCRImageReaderForDocumentsDetectorProcessOption_OriginatingRequest" inOptions:optionsCopy error:error];
  if (!v37)
  {
    v21 = 0;
    goto LABEL_35;
  }

  v36 = [(VNDetector *)self requiredCancellerInOptions:optionsCopy error:error];
  if (v36)
  {
    v35 = [objc_opt_class() imageReaderRecognitionOptionsForProcessOptions:optionsCopy];
    if (!v35)
    {
      v21 = 0;
LABEL_33:

      goto LABEL_34;
    }

    v32 = [optionsCopy objectForKeyedSubscript:@"VNCRImageReaderForDocumentsDetectorProcessOption_CRImageReaderTrackingSession"];
    cachedImageReader = [(VNCRImageReaderDetector *)self cachedImageReader];
    v14 = [optionsCopy objectForKeyedSubscript:@"VNCRImageReaderForDocumentsDetectorProcessOption_TextObservationsToRecognize"];
    v34 = v14;
    if ([v14 count])
    {
      v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v14, "count")}];
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v16 = v14;
      v17 = [v16 countByEnumeratingWithState:&v69 objects:v74 count:16];
      if (v17)
      {
        v18 = *v70;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v70 != v18)
            {
              objc_enumerationMutation(v16);
            }

            getCROutputRegion = [*(*(&v69 + 1) + 8 * i) getCROutputRegion];
            [v15 addObject:getCROutputRegion];
          }

          v17 = [v16 countByEnumeratingWithState:&v69 objects:v74 count:16];
        }

        while (v17);
      }
    }

    else
    {
      v15 = 0;
    }

    v63 = 0;
    v64 = &v63;
    v65 = 0x3032000000;
    v66 = __Block_byref_object_copy__5007;
    v67 = __Block_byref_object_dispose__5008;
    v68 = 0;
    v57 = 0;
    v58 = &v57;
    v59 = 0x3032000000;
    v60 = __Block_byref_object_copy__5007;
    v61 = __Block_byref_object_dispose__5008;
    v62 = 0;
    v53 = 0;
    v54 = &v53;
    v55 = 0x2020000000;
    v56 = 0;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __137__VNCRImageReaderForDocumentsDetector_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke;
    v42[3] = &unk_1E77B2BC8;
    bufferCopy = buffer;
    v49 = handlerCopy;
    v22 = v15;
    v43 = v22;
    v44 = cachedImageReader;
    v50 = &v57;
    v51 = &v63;
    v23 = v32;
    v45 = v23;
    selfCopy = self;
    v47 = optionsCopy;
    v48 = v35;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __137__VNCRImageReaderForDocumentsDetector_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke_2;
    v39[3] = &unk_1E77B2BF0;
    v41 = &v53;
    v24 = v44;
    v40 = v24;
    v25 = [v36 tryToPerformBlock:v42 usingSignallingBlock:v39];
    if ((v54[3] & 1) != 0 || ![(VNCRImageReaderDetector *)self isCRImageReaderViableAfterError:v58[5]])
    {
      v26 = [(VNCRImageReaderDetector *)self newImageReaderAndReturnError:0];
      if (v26)
      {
        [(VNCRImageReaderDetector *)self setCachedImageReader:v26];
      }
    }

    if (v25)
    {
      v27 = v58[5];
      if (!v27 && v64[5])
      {
        v29 = [VNDocumentObservation alloc];
        v30 = [(VNDocumentObservation *)v29 initWithTopLevelRegion:v64[5] requestRevision:[(VNRequest *)v37 revision]];
        v73 = v30;
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];

        goto LABEL_32;
      }

      if (error)
      {
        v28 = _vnErrorForError(v27, v37);
LABEL_28:
        v21 = 0;
        *error = v28;
LABEL_32:

        _Block_object_dispose(&v53, 8);
        _Block_object_dispose(&v57, 8);

        _Block_object_dispose(&v63, 8);
        goto LABEL_33;
      }
    }

    else if (error)
    {
      v28 = [VNError errorForCancellationOfRequest:v37];
      goto LABEL_28;
    }

    v21 = 0;
    goto LABEL_32;
  }

  v21 = 0;
LABEL_34:

LABEL_35:

  return v21;
}

void __137__VNCRImageReaderForDocumentsDetector_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69D9DA8]) initWithCVPixelBuffer:*(a1 + 104)];
  v3 = _Block_copy(*(a1 + 80));
  if (*(a1 + 32))
  {
    Width = CVPixelBufferGetWidth(*(a1 + 104));
    Height = CVPixelBufferGetHeight(*(a1 + 104));
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = *(*(a1 + 88) + 8);
    obj = *(v8 + 40);
    v9 = [v6 recognizeDetectedBlocks:v7 inImage:v2 error:&obj withProgressHandler:v3];
    objc_storeStrong((v8 + 40), obj);
    v10 = [MEMORY[0x1E69D9D68] documentWithRegions:v9 title:0 confidence:2 imageSize:{Width, Height}];
    v11 = *(*(a1 + 96) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else if (*(a1 + 48))
  {
    v9 = [*(a1 + 56) validatedImageBufferFromOptions:*(a1 + 64) error:0];
    v13 = [v9 sceneStabilityMetric];
    [v2 setSceneStabilityMetric:v13];
    v14 = *(a1 + 72);
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v17 = *(*(a1 + 88) + 8);
    v27 = *(v17 + 40);
    v18 = [v15 documentOutputRegionForImage:v2 options:v14 roi:v16 trackingSession:&v27 error:v3 withProgressHandler:{0.0, 0.0, 1.0, 1.0}];
    objc_storeStrong((v17 + 40), v27);
    v19 = *(*(a1 + 96) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;
  }

  else
  {
    v21 = *(a1 + 40);
    v22 = *(a1 + 72);
    v23 = *(*(a1 + 88) + 8);
    v26 = *(v23 + 40);
    v24 = [v21 documentOutputRegionForImage:v2 options:v22 roi:&v26 error:v3 withProgressHandler:{0.0, 0.0, 1.0, 1.0}];
    objc_storeStrong((v23 + 40), v26);
    v25 = *(*(a1 + 96) + 8);
    v9 = *(v25 + 40);
    *(v25 + 40) = v24;
  }
}

- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  optionsCopy = options;
  v17 = [(VNDetector *)self validatedImageBufferFromOptions:optionsCopy error:error];
  if (v17)
  {
    cachedImageReader = [(VNCRImageReaderDetector *)self cachedImageReader];
    v19 = [optionsCopy objectForKeyedSubscript:@"VNCRImageReaderDetectorProcessOption_MinimumTextHeight"];
    [v19 doubleValue];
    v21 = v20;

    width = [v17 width];
    height = [v17 height];
    v39.origin.x = x * width;
    v39.size.width = width * width;
    v39.origin.y = y * height;
    v39.size.height = height * height;
    v40 = CGRectIntegral(v39);
    v24 = v40.origin.x;
    v25 = v40.origin.y;
    v26 = v40.size.width;
    v27 = v40.size.height;
    [cachedImageReader smallestImageSizeForTextWithRelativeHeight:v21 originalImageSize:{v40.size.width, v40.size.height}];
    v29 = v28;
    v31 = v30;
    v38 = 0.0;
    [VNValidationUtilities getDoubleValue:&v38 forKey:@"VNCRImageReaderForDocumentsDetectorProcessOption_MaximumProcessingDimensionOnTheLongSide" inOptions:optionsCopy withDefaultValue:error error:0.0];
    if (v38 > 0.0)
    {
      v32 = v29 >= v31 ? v29 : v31;
      if (v32 > v38)
      {
        v29 = v29 * (v38 / v32);
        v31 = v31 * (v38 / v32);
      }
    }

    v33 = (v31 + 1) & 0xFFFFFFFFFFFFFFFELL;
    if (((v29 + 1) & 0xFFFFFFFFFFFFFFFELL) >= 3 && v33 > 2)
    {
      v36 = [v17 croppedBufferWithWidth:v24 height:v25 format:v26 cropRect:v27 options:? error:?];
      *buffer = v36;
      LOBYTE(error) = v36 != 0;
    }

    else if (error)
    {
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The image is too small in at least one dimension %ld x %ld (each dimension has to be more than 2 pixels)", (v29 + 1) & 0xFFFFFFFFFFFFFFFELL, v33];
      *error = [VNError errorForInvalidImageFailureWithLocalizedDescription:v35];

      LOBYTE(error) = 0;
    }
  }

  else
  {
    LOBYTE(error) = 0;
  }

  return error;
}

- (BOOL)warmUpSession:(id)session withOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v13.receiver = self;
  v13.super_class = VNCRImageReaderForDocumentsDetector;
  if ([(VNDetector *)&v13 warmUpSession:session withOptions:optionsCopy error:error])
  {
    v9 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69D9CF0]];
    integerValue = [v9 integerValue];

    v11 = [MEMORY[0x1E69D9D90] preheatModelsForOptions:optionsCopy revision:integerValue error:error];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end