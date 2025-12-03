@interface VNImageBasedRequest
- (BOOL)getOptionalValidatedInputDetectedObjectObservations:(id *)observations forObservationClass:(Class)class relationWithRegionOfInterest:(unint64_t)interest error:(id *)error;
- (BOOL)getOptionalValidatedInputFaceObservations:(id *)observations clippedToRegionOfInterest:(BOOL)interest error:(id *)error;
- (BOOL)isFullCoverageRegionOfInterest;
- (BOOL)validateConfigurationAndReturnError:(id *)error;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration;
- (CGRect)regionOfInterest;
- (CGRect)regionOfInterestNonIntegralPixelRectForWidth:(unint64_t)width height:(unint64_t)height;
- (CGRect)regionOfInterestPixelRectForWidth:(unint64_t)width height:(unint64_t)height;
- (NSArray)inputDetectedObjectObservations;
- (NSArray)inputFaceObservations;
- (NSArray)supportedImageSizeSet;
- (NSString)description;
- (id)VNCoreMLTransformerDetectionprintAndReturnError:(id *)error;
- (id)VNCoreMLTransformerSceneprintsAndReturnError:(id *)error;
- (id)_detectedObjectObservationsForRegionOfInterestContainingDetectedObjectObservations:(id)observations relationWithRegionOfInterest:(unint64_t)interest;
- (id)_faceObservationsForRegionOfInterestContainingFaceObservations:(id)observations;
- (void)applyConfigurationOfRequest:(id)request;
- (void)setInputDetectedObjectObservations:(id)observations;
- (void)setInputFaceObservations:(id)observations;
- (void)setRegionOfInterest:(CGRect)regionOfInterest;
@end

@implementation VNImageBasedRequest

- (BOOL)getOptionalValidatedInputDetectedObjectObservations:(id *)observations forObservationClass:(Class)class relationWithRegionOfInterest:(unint64_t)interest error:(id *)error
{
  inputDetectedObjectObservations = [(VNImageBasedRequest *)self inputDetectedObjectObservations];
  if (inputDetectedObjectObservations)
  {
    if (![VNValidationUtilities validateOptionalDetectedObjectObservations:inputDetectedObjectObservations forObservationClass:class forRequest:self error:error])
    {
      v14 = 0;
      goto LABEL_10;
    }

    v12 = [(VNImageBasedRequest *)self _detectedObjectObservationsForRegionOfInterestContainingDetectedObjectObservations:inputDetectedObjectObservations relationWithRegionOfInterest:interest];

    if (!observations)
    {
      v14 = 1;
      inputDetectedObjectObservations = v12;
      goto LABEL_10;
    }

    v13 = v12;
    inputDetectedObjectObservations = v12;
    goto LABEL_6;
  }

  if (observations)
  {
LABEL_6:
    *observations = inputDetectedObjectObservations;
  }

  v14 = 1;
LABEL_10:

  return v14;
}

- (id)_detectedObjectObservationsForRegionOfInterestContainingDetectedObjectObservations:(id)observations relationWithRegionOfInterest:(unint64_t)interest
{
  observationsCopy = observations;
  if ([(VNImageBasedRequest *)self isFullCoverageRegionOfInterest])
  {
    v7 = observationsCopy;
  }

  else
  {
    [(VNImageBasedRequest *)self regionOfInterest];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __135__VNImageBasedRequest__detectedObjectObservationsForRegionOfInterestContainingDetectedObjectObservations_relationWithRegionOfInterest___block_invoke;
    v14[3] = &__block_descriptor_72_e44_B32__0__VNDetectedObjectObservation_8Q16_B24l;
    v14[4] = interest;
    v14[5] = v8;
    v14[6] = v9;
    v14[7] = v10;
    v14[8] = v11;
    v12 = [observationsCopy indexesOfObjectsPassingTest:v14];
    v7 = [observationsCopy objectsAtIndexes:v12];
  }

  return v7;
}

BOOL __135__VNImageBasedRequest__detectedObjectObservationsForRegionOfInterestContainingDetectedObjectObservations_relationWithRegionOfInterest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 boundingBox];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *(a1 + 32);
  if (v12 == 1)
  {
    v13 = CGRectIntersectsRect(*(a1 + 40), *&v5);
  }

  else
  {
    if (v12)
    {
      v14 = 0;
      goto LABEL_7;
    }

    v13 = CGRectContainsRect(*(a1 + 40), *&v5);
  }

  v14 = v13;
LABEL_7:

  return v14;
}

- (void)setInputDetectedObjectObservations:(id)observations
{
  observationsCopy = observations;
  v6 = [observationsCopy copy];

  configuration = [(VNRequest *)self configuration];
  [configuration setInputDetectedObjectObservations:v6];
}

- (NSArray)inputDetectedObjectObservations
{
  configuration = [(VNRequest *)self configuration];
  inputDetectedObjectObservations = [configuration inputDetectedObjectObservations];

  return inputDetectedObjectObservations;
}

- (BOOL)getOptionalValidatedInputFaceObservations:(id *)observations clippedToRegionOfInterest:(BOOL)interest error:(id *)error
{
  interestCopy = interest;
  inputFaceObservations = [(VNImageBasedRequest *)self inputFaceObservations];
  if (inputFaceObservations)
  {
    if (![VNValidationUtilities validateOptionalFaceObservations:inputFaceObservations forRequest:self error:error])
    {
      v12 = 0;
      goto LABEL_11;
    }

    if (interestCopy)
    {
      v10 = [(VNImageBasedRequest *)self _faceObservationsForRegionOfInterestContainingFaceObservations:inputFaceObservations];

      inputFaceObservations = v10;
    }

    if (observations)
    {
      v11 = inputFaceObservations;
LABEL_8:
      *observations = inputFaceObservations;
    }
  }

  else if (observations)
  {
    goto LABEL_8;
  }

  v12 = 1;
LABEL_11:

  return v12;
}

- (id)_faceObservationsForRegionOfInterestContainingFaceObservations:(id)observations
{
  observationsCopy = observations;
  if ([(VNImageBasedRequest *)self isFullCoverageRegionOfInterest])
  {
    v5 = observationsCopy;
  }

  else
  {
    [(VNImageBasedRequest *)self regionOfInterest];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __86__VNImageBasedRequest__faceObservationsForRegionOfInterestContainingFaceObservations___block_invoke;
    v12[3] = &__block_descriptor_64_e34_B32__0__VNFaceObservation_8Q16_B24l;
    v12[4] = v6;
    v12[5] = v7;
    v12[6] = v8;
    v12[7] = v9;
    v10 = [observationsCopy indexesOfObjectsPassingTest:v12];
    v5 = [observationsCopy objectsAtIndexes:v10];
  }

  return v5;
}

BOOL __86__VNImageBasedRequest__faceObservationsForRegionOfInterestContainingFaceObservations___block_invoke(CGRect *a1, void *a2)
{
  v3 = a2;
  [v3 boundingBox];
  v10.origin.x = v4;
  v10.origin.y = v5;
  v10.size.width = v6;
  v10.size.height = v7;
  v8 = CGRectContainsRect(a1[1], v10);

  return v8;
}

- (void)setInputFaceObservations:(id)observations
{
  observationsCopy = observations;
  v6 = [observationsCopy copy];

  configuration = [(VNRequest *)self configuration];
  [configuration setInputFaceObservations:v6];
}

- (NSArray)inputFaceObservations
{
  configuration = [(VNRequest *)self configuration];
  inputFaceObservations = [configuration inputFaceObservations];

  return inputFaceObservations;
}

- (NSArray)supportedImageSizeSet
{
  v6 = 0;
  v2 = [(VNRequest *)self applicableDetectorClassAndOptions:&v6 forRevision:[(VNRequest *)self resolvedRevision] error:0];
  v3 = v6;
  if (!v2 || ([(objc_class *)v2 supportedImageSizeSetForOptions:v3 error:0], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v19.receiver = self;
  v19.super_class = VNImageBasedRequest;
  v4 = [(VNRequest *)&v19 description];
  [(VNImageBasedRequest *)self regionOfInterest];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%g, %g, %g, %g]", v5, v6, v7, v8];
  [v3 appendFormat:@"%@ ROI=%@", v4, v9];

  inputFaceObservations = [(VNImageBasedRequest *)self inputFaceObservations];
  v11 = inputFaceObservations;
  if (inputFaceObservations)
  {
    v12 = [inputFaceObservations valueForKey:@"description"];
    v13 = [v12 componentsJoinedByString:{@", "}];
    [v3 appendFormat:@" inputFaceObservations=[%@]", v13];
  }

  inputDetectedObjectObservations = [(VNImageBasedRequest *)self inputDetectedObjectObservations];
  v15 = inputDetectedObjectObservations;
  if (inputDetectedObjectObservations)
  {
    v16 = [inputDetectedObjectObservations valueForKey:@"uuid"];
    v17 = [v16 componentsJoinedByString:{@", "}];
    [v3 appendFormat:@" inputDetectedObjectObservations=[%@]", v17];
  }

  return v3;
}

- (void)applyConfigurationOfRequest:(id)request
{
  requestCopy = request;
  if (self != requestCopy)
  {
    v7.receiver = self;
    v7.super_class = VNImageBasedRequest;
    [(VNRequest *)&v7 applyConfigurationOfRequest:requestCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(VNImageBasedRequest *)requestCopy regionOfInterest];
      [(VNImageBasedRequest *)self setRegionOfInterest:?];
      inputFaceObservations = [(VNImageBasedRequest *)requestCopy inputFaceObservations];
      [(VNImageBasedRequest *)self setInputFaceObservations:inputFaceObservations];

      inputDetectedObjectObservations = [(VNImageBasedRequest *)requestCopy inputDetectedObjectObservations];
      [(VNImageBasedRequest *)self setInputDetectedObjectObservations:inputDetectedObjectObservations];
    }
  }
}

- (CGRect)regionOfInterestPixelRectForWidth:(unint64_t)width height:(unint64_t)height
{
  [(VNImageBasedRequest *)self regionOfInterest];
  v7 = v6 * width;
  v9 = v8 * width;
  v11 = v10 * height;
  v13 = v12 * height;

  return CGRectIntegral(*&v7);
}

- (CGRect)regionOfInterestNonIntegralPixelRectForWidth:(unint64_t)width height:(unint64_t)height
{
  [(VNImageBasedRequest *)self regionOfInterest];
  v7 = v6 * width;
  v9 = v8 * width;
  v11 = v10 * height;
  v13 = v12 * height;
  result.size.height = v13;
  result.size.width = v9;
  result.origin.y = v11;
  result.origin.x = v7;
  return result;
}

- (BOOL)isFullCoverageRegionOfInterest
{
  [(VNImageBasedRequest *)self regionOfInterest];
  v6 = 0;
  v7 = 0;
  v8 = 1.0;
  v9 = 1.0;

  return CGRectEqualToRect(*&v2, *&v6);
}

- (BOOL)validateConfigurationAndReturnError:(id *)error
{
  v16.receiver = self;
  v16.super_class = VNImageBasedRequest;
  v5 = [(VNRequest *)&v16 validateConfigurationAndReturnError:?];
  if (v5)
  {
    [(VNImageBasedRequest *)self regionOfInterest];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v17.origin.x = 0.0;
    v17.origin.y = 0.0;
    v17.size.width = 1.0;
    v17.size.height = 1.0;
    v18.origin.x = v7;
    v18.origin.y = v9;
    v18.size.width = v11;
    v18.size.height = v13;
    LOBYTE(v5) = CGRectContainsRect(v17, v18);
    if (error)
    {
      if (!v5)
      {
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The region of interest [%g, %g, %g, %g] is not within the normalized bounds of [0 0 1 1]", *&v7, *&v9, *&v11, *&v13];
        *error = [VNError errorWithCode:14 message:v14];

        LOBYTE(v5) = 0;
      }
    }
  }

  return v5;
}

- (void)setRegionOfInterest:(CGRect)regionOfInterest
{
  v10 = CGRectStandardize(regionOfInterest);
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  configuration = [(VNRequest *)self configuration];
  [configuration setRegionOfInterest:{x, y, width, height}];
}

- (CGRect)regionOfInterest
{
  configuration = [(VNRequest *)self configuration];
  [configuration regionOfInterest];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration
{
  v53 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  [(VNImageBasedRequest *)self regionOfInterest];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [configurationCopy regionOfInterest];
  v55.origin.x = v13;
  v55.origin.y = v14;
  v55.size.width = v15;
  v55.size.height = v16;
  v54.origin.x = v6;
  v54.origin.y = v8;
  v54.size.width = v10;
  v54.size.height = v12;
  if (!CGRectEqualToRect(v54, v55))
  {
    goto LABEL_12;
  }

  inputFaceObservations = [(VNImageBasedRequest *)self inputFaceObservations];
  inputFaceObservations2 = [configurationCopy inputFaceObservations];
  IsSubsetOfFaceObservationsCollection = VNFaceObservationsCollectionIsSubsetOfFaceObservationsCollection(inputFaceObservations, inputFaceObservations2);

  if ((IsSubsetOfFaceObservationsCollection & 1) == 0)
  {
    goto LABEL_12;
  }

  inputDetectedObjectObservations = [(VNImageBasedRequest *)self inputDetectedObjectObservations];
  inputDetectedObjectObservations2 = [configurationCopy inputDetectedObjectObservations];
  v22 = inputDetectedObjectObservations;
  v23 = inputDetectedObjectObservations2;
  v40 = v22;
  v41 = v23;
  if (v22 == v23)
  {
  }

  else
  {
    if (!v22 || !v23 || (v24 = [v22 count], v24 > objc_msgSend(v41, "count")))
    {

LABEL_8:
      goto LABEL_12;
    }

    v28 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v29 = v41;
    v30 = [v29 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v30)
    {
      v31 = *v48;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v48 != v31)
          {
            objc_enumerationMutation(v29);
          }

          uuid = [*(*(&v47 + 1) + 8 * i) uuid];
          [v28 addObject:uuid];
        }

        v30 = [v29 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v30);
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v34 = v40;
    v35 = [v34 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v35)
    {
      v36 = *v44;
      while (2)
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v44 != v36)
          {
            objc_enumerationMutation(v34);
          }

          uuid2 = [*(*(&v43 + 1) + 8 * j) uuid];
          v39 = [v28 containsObject:uuid2];

          if ((v39 & 1) == 0)
          {

            goto LABEL_8;
          }
        }

        v35 = [v34 countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (v35)
        {
          continue;
        }

        break;
      }
    }
  }

  maximumProcessingDimensionOnTheLongSide = [(VNRequest *)self maximumProcessingDimensionOnTheLongSide];
  if (maximumProcessingDimensionOnTheLongSide != [configurationCopy maximumProcessingDimensionOnTheLongSide])
  {
LABEL_12:
    v26 = 0;
    goto LABEL_13;
  }

  v42.receiver = self;
  v42.super_class = VNImageBasedRequest;
  v26 = [(VNRequest *)&v42 willAcceptCachedResultsFromRequestWithConfiguration:configurationCopy];
LABEL_13:

  return v26;
}

- (id)VNCoreMLTransformerDetectionprintAndReturnError:(id *)error
{
  results = [(VNRequest *)self results];
  if ([results count])
  {
    firstObject = [results firstObject];
    v7 = [firstObject VNCoreMLTransformerDetectionprintAndReturnError:error];
LABEL_5:

    goto LABEL_6;
  }

  if (error)
  {
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    specifier = [(VNRequest *)self specifier];
    firstObject = [v8 initWithFormat:@"%@ did not produce any results", specifier];

    [VNError errorForDataUnavailableWithLocalizedDescription:firstObject];
    *error = v7 = 0;
    goto LABEL_5;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (id)VNCoreMLTransformerSceneprintsAndReturnError:(id *)error
{
  results = [(VNRequest *)self results];
  if ([results count])
  {
    firstObject = [results firstObject];
    v7 = [firstObject VNCoreMLTransformerSceneprintsAndReturnError:error];
LABEL_5:

    goto LABEL_6;
  }

  if (error)
  {
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    specifier = [(VNRequest *)self specifier];
    firstObject = [v8 initWithFormat:@"%@ did not produce any results", specifier];

    [VNError errorForDataUnavailableWithLocalizedDescription:firstObject];
    *error = v7 = 0;
    goto LABEL_5;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

@end