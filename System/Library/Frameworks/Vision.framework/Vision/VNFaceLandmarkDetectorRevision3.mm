@interface VNFaceLandmarkDetectorRevision3
+ (void)recordDefaultConfigurationOptionsInDictionary:(id)dictionary;
- (CGRect)normalizedFaceBBoxForLandmarks:(id)landmarks;
- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
@end

@implementation VNFaceLandmarkDetectorRevision3

+ (void)recordDefaultConfigurationOptionsInDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___VNFaceLandmarkDetectorRevision3;
  objc_msgSendSuper2(&v5, sel_recordDefaultConfigurationOptionsInDictionary_, dictionaryCopy);
  [dictionaryCopy setObject:&unk_1F19C15D0 forKeyedSubscript:@"VNFaceLandmarkDetectorDNNProcessOption_Constellation"];
}

- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  v12 = *&class;
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  v62[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  recorderCopy = recorder;
  handlerCopy = handler;
  v61.receiver = self;
  v61.super_class = VNFaceLandmarkDetectorRevision3;
  height = [(VNFaceLandmarkDetectorDNN *)&v61 processRegionOfInterest:buffer croppedPixelBuffer:optionsCopy options:v12 qosClass:recorderCopy warningRecorder:error error:handlerCopy progressHandler:x, y, width, height];
  v23 = height;
  if (!height)
  {
    v44 = 0;
    goto LABEL_44;
  }

  firstObject = [height firstObject];
  if (firstObject)
  {
    if ([v23 count] != 1)
    {
      if (error)
      {
        [VNError errorForInternalErrorWithLocalizedDescription:@"Internal error while processing Face Landmarks"];
        *error = v44 = 0;
      }

      else
      {
        v44 = 0;
      }

      goto LABEL_43;
    }

    v25 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy error:error];
    if (!v25 || (v60 = 0, v59 = 0, ![(VNFaceLandmarkDetectorDNN *)self requestConstellation:&v60 cvmlConstellation:&v59 fromOptions:optionsCopy error:error]))
    {
      v44 = 0;
LABEL_42:

      goto LABEL_43;
    }

    v26 = [(VNDetector *)self validatedImageBufferFromOptions:optionsCopy error:error];
    if (!v26)
    {
      v44 = 0;
LABEL_41:

      goto LABEL_42;
    }

    __p = 0;
    v57 = 0;
    v58 = 0;
    if (!-[VNFaceLandmarkDetectorDNN getLandmarkPoints:forRequestConstellation:error:](self, "getLandmarkPoints:forRequestConstellation:error:", &__p, 2, error) || (v27 = -[VNFaceLandmarkDetectorDNN landmarkPoints65](self, "landmarkPoints65"), !-[VNFaceLandmarkDetector postprocessLandmarkResultsForLandmarks:imageBuffer:outputFace:options:warningRecorder:error:](self, "postprocessLandmarkResultsForLandmarks:imageBuffer:outputFace:options:warningRecorder:error:", v27, v26, firstObject, optionsCopy, recorderCopy, error)) || (v53 = *(__p + 6), std::vector<_Geometry2D_point2D_>::push_back[abi:ne200100](v27, &v53), v53 = *(__p + 13), std::vector<_Geometry2D_point2D_>::push_back[abi:ne200100](v27, &v53), !-[VNFaceLandmarkDetectorDNN translateAndNormalizeLandmarkPointsWrtLLCofAlignedFaceBBox:imageBuffer:outputFace:error:](self, "translateAndNormalizeLandmarkPointsWrtLLCofAlignedFaceBBox:imageBuffer:outputFace:error:", v27, v26, firstObject, error)))
    {
      v44 = 0;
      goto LABEL_38;
    }

    v28 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:*v27 length:v27[1] - *v27];
    if (v28)
    {
      v52 = v28;
      [firstObject setLandmarkPoints65Data:? originatingRequestSpecifier:?];
      if ([(VNFaceLandmarkDetectorDNN *)self translateAndNormalizeLandmarkPointsWrtLLCofAlignedFaceBBox:&__p imageBuffer:v26 outputFace:firstObject error:error])
      {
        v53 = 0;
        v54 = 0;
        v55 = 0;
        if ([(VNFaceLandmarkDetectorDNN *)self getLandmarkErrorEstimates:&v53 forRequestConstellation:2 error:error])
        {
          v30 = v53;
          if (v53 != v54)
          {
            v31 = (v53 + 4);
            if (v53 + 4 != v54)
            {
              v32 = *v53;
              v33 = (v53 + 4);
              do
              {
                v34 = *v33++;
                v35 = v34;
                if (v32 < v34)
                {
                  v32 = v35;
                  v30 = v31;
                }

                v31 = v33;
              }

              while (v33 != v54);
            }
          }

          v36 = *v30 / 0.2;
          if (v36 > 1.0)
          {
            v36 = 1.0;
          }

          *&v29 = 1.0 - v36;
          if (*&v29 < 0.0)
          {
            *&v29 = 0.0;
          }

          if (*&v29 > 1.0)
          {
            *&v29 = 1.0;
          }

          [firstObject setLandmarkScore:v29];
          if (v59 == 1)
          {
            goto LABEL_55;
          }

          if (v59 == 2)
          {
            v37 = objc_alloc(MEMORY[0x1E695DEF0]);
            v38 = [v37 initWithBytes:__p length:v57 - __p];
            v49 = v38;
            if (v38)
            {
              [firstObject setLandmarkPointsData:v38 originatingRequestSpecifier:v25];
              v39 = objc_alloc(MEMORY[0x1E695DF70]);
              v51 = [v39 initWithCapacity:(v54 - v53) >> 2];
              v42 = v53;
              v41 = v54;
              v50 = v54;
              while (v42 != v41)
              {
                LODWORD(v40) = *v42;
                v43 = [MEMORY[0x1E696AD98] numberWithFloat:v40];
                [v51 addObject:v43];

                ++v42;
                v41 = v50;
              }

              v48 = [v51 copy];
              [firstObject setLandmarkPrecisionEstimatesPerPoint:v48];

LABEL_55:
              v62[0] = firstObject;
              v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:1];
              goto LABEL_56;
            }

            if (error)
            {
              [VNError errorForInternalErrorWithLocalizedDescription:@"Internal error while processing Face Landmarks"];
              *error = v44 = 0;
LABEL_56:
              if (v53)
              {
                v54 = v53;
                operator delete(v53);
              }

              goto LABEL_58;
            }
          }

          else if (error)
          {
            v46 = objc_alloc(MEMORY[0x1E696AEC0]);
            v47 = [v46 initWithFormat:@"Unexpected landmarks constellation (%d) while processing Face Landmarks", v59];
            *error = [VNError errorForInternalErrorWithLocalizedDescription:v47];
          }
        }

        v44 = 0;
        goto LABEL_56;
      }

      v44 = 0;
    }

    else
    {
      if (!error)
      {
        v44 = 0;
LABEL_59:

LABEL_38:
        if (__p)
        {
          v57 = __p;
          operator delete(__p);
        }

        goto LABEL_41;
      }

      v52 = 0;
      [VNError errorForInternalErrorWithLocalizedDescription:@"Internal error while processing Face Landmarks"];
      *error = v44 = 0;
    }

LABEL_58:
    v28 = v52;
    goto LABEL_59;
  }

  v44 = v23;
LABEL_43:

LABEL_44:
  [(VNFaceLandmarkDetectorDNN *)self releaseResources];

  return v44;
}

- (CGRect)normalizedFaceBBoxForLandmarks:(id)landmarks
{
  landmarksCopy = landmarks;
  if ([landmarksCopy requestRevision] == 2 || objc_msgSend(landmarksCopy, "requestRevision") == 3737841664)
  {
    [landmarksCopy unalignedBoundingBox];
    v15 = CGRectInset(v14, v14.size.width * -0.399999976 * 0.5, v14.size.height * -0.399999976 * 0.5);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = VNFaceLandmarkDetectorRevision3;
    [(VNFaceLandmarkDetector *)&v13 normalizedFaceBBoxForLandmarks:landmarksCopy];
  }

  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;

  v9 = x;
  v10 = y;
  v11 = width;
  v12 = height;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

@end