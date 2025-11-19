@interface VNImageBasedRequest
- (BOOL)getOptionalValidatedInputDetectedObjectObservations:(id *)a3 forObservationClass:(Class)a4 relationWithRegionOfInterest:(unint64_t)a5 error:(id *)a6;
- (BOOL)getOptionalValidatedInputFaceObservations:(id *)a3 clippedToRegionOfInterest:(BOOL)a4 error:(id *)a5;
- (BOOL)isFullCoverageRegionOfInterest;
- (BOOL)validateConfigurationAndReturnError:(id *)a3;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3;
- (CGRect)regionOfInterest;
- (CGRect)regionOfInterestNonIntegralPixelRectForWidth:(unint64_t)a3 height:(unint64_t)a4;
- (CGRect)regionOfInterestPixelRectForWidth:(unint64_t)a3 height:(unint64_t)a4;
- (NSArray)inputDetectedObjectObservations;
- (NSArray)inputFaceObservations;
- (NSArray)supportedImageSizeSet;
- (NSString)description;
- (id)VNCoreMLTransformerDetectionprintAndReturnError:(id *)a3;
- (id)VNCoreMLTransformerSceneprintsAndReturnError:(id *)a3;
- (id)_detectedObjectObservationsForRegionOfInterestContainingDetectedObjectObservations:(id)a3 relationWithRegionOfInterest:(unint64_t)a4;
- (id)_faceObservationsForRegionOfInterestContainingFaceObservations:(id)a3;
- (void)applyConfigurationOfRequest:(id)a3;
- (void)setInputDetectedObjectObservations:(id)a3;
- (void)setInputFaceObservations:(id)a3;
- (void)setRegionOfInterest:(CGRect)regionOfInterest;
@end

@implementation VNImageBasedRequest

- (BOOL)getOptionalValidatedInputDetectedObjectObservations:(id *)a3 forObservationClass:(Class)a4 relationWithRegionOfInterest:(unint64_t)a5 error:(id *)a6
{
  v11 = [(VNImageBasedRequest *)self inputDetectedObjectObservations];
  if (v11)
  {
    if (![VNValidationUtilities validateOptionalDetectedObjectObservations:v11 forObservationClass:a4 forRequest:self error:a6])
    {
      v14 = 0;
      goto LABEL_10;
    }

    v12 = [(VNImageBasedRequest *)self _detectedObjectObservationsForRegionOfInterestContainingDetectedObjectObservations:v11 relationWithRegionOfInterest:a5];

    if (!a3)
    {
      v14 = 1;
      v11 = v12;
      goto LABEL_10;
    }

    v13 = v12;
    v11 = v12;
    goto LABEL_6;
  }

  if (a3)
  {
LABEL_6:
    *a3 = v11;
  }

  v14 = 1;
LABEL_10:

  return v14;
}

- (id)_detectedObjectObservationsForRegionOfInterestContainingDetectedObjectObservations:(id)a3 relationWithRegionOfInterest:(unint64_t)a4
{
  v6 = a3;
  if ([(VNImageBasedRequest *)self isFullCoverageRegionOfInterest])
  {
    v7 = v6;
  }

  else
  {
    [(VNImageBasedRequest *)self regionOfInterest];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __135__VNImageBasedRequest__detectedObjectObservationsForRegionOfInterestContainingDetectedObjectObservations_relationWithRegionOfInterest___block_invoke;
    v14[3] = &__block_descriptor_72_e44_B32__0__VNDetectedObjectObservation_8Q16_B24l;
    v14[4] = a4;
    v14[5] = v8;
    v14[6] = v9;
    v14[7] = v10;
    v14[8] = v11;
    v12 = [v6 indexesOfObjectsPassingTest:v14];
    v7 = [v6 objectsAtIndexes:v12];
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

- (void)setInputDetectedObjectObservations:(id)a3
{
  v4 = a3;
  v6 = [v4 copy];

  v5 = [(VNRequest *)self configuration];
  [v5 setInputDetectedObjectObservations:v6];
}

- (NSArray)inputDetectedObjectObservations
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 inputDetectedObjectObservations];

  return v3;
}

- (BOOL)getOptionalValidatedInputFaceObservations:(id *)a3 clippedToRegionOfInterest:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v9 = [(VNImageBasedRequest *)self inputFaceObservations];
  if (v9)
  {
    if (![VNValidationUtilities validateOptionalFaceObservations:v9 forRequest:self error:a5])
    {
      v12 = 0;
      goto LABEL_11;
    }

    if (v6)
    {
      v10 = [(VNImageBasedRequest *)self _faceObservationsForRegionOfInterestContainingFaceObservations:v9];

      v9 = v10;
    }

    if (a3)
    {
      v11 = v9;
LABEL_8:
      *a3 = v9;
    }
  }

  else if (a3)
  {
    goto LABEL_8;
  }

  v12 = 1;
LABEL_11:

  return v12;
}

- (id)_faceObservationsForRegionOfInterestContainingFaceObservations:(id)a3
{
  v4 = a3;
  if ([(VNImageBasedRequest *)self isFullCoverageRegionOfInterest])
  {
    v5 = v4;
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
    v10 = [v4 indexesOfObjectsPassingTest:v12];
    v5 = [v4 objectsAtIndexes:v10];
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

- (void)setInputFaceObservations:(id)a3
{
  v4 = a3;
  v6 = [v4 copy];

  v5 = [(VNRequest *)self configuration];
  [v5 setInputFaceObservations:v6];
}

- (NSArray)inputFaceObservations
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 inputFaceObservations];

  return v3;
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

  v10 = [(VNImageBasedRequest *)self inputFaceObservations];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 valueForKey:@"description"];
    v13 = [v12 componentsJoinedByString:{@", "}];
    [v3 appendFormat:@" inputFaceObservations=[%@]", v13];
  }

  v14 = [(VNImageBasedRequest *)self inputDetectedObjectObservations];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 valueForKey:@"uuid"];
    v17 = [v16 componentsJoinedByString:{@", "}];
    [v3 appendFormat:@" inputDetectedObjectObservations=[%@]", v17];
  }

  return v3;
}

- (void)applyConfigurationOfRequest:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    v7.receiver = self;
    v7.super_class = VNImageBasedRequest;
    [(VNRequest *)&v7 applyConfigurationOfRequest:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(VNImageBasedRequest *)v4 regionOfInterest];
      [(VNImageBasedRequest *)self setRegionOfInterest:?];
      v5 = [(VNImageBasedRequest *)v4 inputFaceObservations];
      [(VNImageBasedRequest *)self setInputFaceObservations:v5];

      v6 = [(VNImageBasedRequest *)v4 inputDetectedObjectObservations];
      [(VNImageBasedRequest *)self setInputDetectedObjectObservations:v6];
    }
  }
}

- (CGRect)regionOfInterestPixelRectForWidth:(unint64_t)a3 height:(unint64_t)a4
{
  [(VNImageBasedRequest *)self regionOfInterest];
  v7 = v6 * a3;
  v9 = v8 * a3;
  v11 = v10 * a4;
  v13 = v12 * a4;

  return CGRectIntegral(*&v7);
}

- (CGRect)regionOfInterestNonIntegralPixelRectForWidth:(unint64_t)a3 height:(unint64_t)a4
{
  [(VNImageBasedRequest *)self regionOfInterest];
  v7 = v6 * a3;
  v9 = v8 * a3;
  v11 = v10 * a4;
  v13 = v12 * a4;
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

- (BOOL)validateConfigurationAndReturnError:(id *)a3
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
    if (a3)
    {
      if (!v5)
      {
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The region of interest [%g, %g, %g, %g] is not within the normalized bounds of [0 0 1 1]", *&v7, *&v9, *&v11, *&v13];
        *a3 = [VNError errorWithCode:14 message:v14];

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
  v8 = [(VNRequest *)self configuration];
  [v8 setRegionOfInterest:{x, y, width, height}];
}

- (CGRect)regionOfInterest
{
  v2 = [(VNRequest *)self configuration];
  [v2 regionOfInterest];
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

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(VNImageBasedRequest *)self regionOfInterest];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v4 regionOfInterest];
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

  v17 = [(VNImageBasedRequest *)self inputFaceObservations];
  v18 = [v4 inputFaceObservations];
  IsSubsetOfFaceObservationsCollection = VNFaceObservationsCollectionIsSubsetOfFaceObservationsCollection(v17, v18);

  if ((IsSubsetOfFaceObservationsCollection & 1) == 0)
  {
    goto LABEL_12;
  }

  v20 = [(VNImageBasedRequest *)self inputDetectedObjectObservations];
  v21 = [v4 inputDetectedObjectObservations];
  v22 = v20;
  v23 = v21;
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

          v33 = [*(*(&v47 + 1) + 8 * i) uuid];
          [v28 addObject:v33];
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

          v38 = [*(*(&v43 + 1) + 8 * j) uuid];
          v39 = [v28 containsObject:v38];

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

  v25 = [(VNRequest *)self maximumProcessingDimensionOnTheLongSide];
  if (v25 != [v4 maximumProcessingDimensionOnTheLongSide])
  {
LABEL_12:
    v26 = 0;
    goto LABEL_13;
  }

  v42.receiver = self;
  v42.super_class = VNImageBasedRequest;
  v26 = [(VNRequest *)&v42 willAcceptCachedResultsFromRequestWithConfiguration:v4];
LABEL_13:

  return v26;
}

- (id)VNCoreMLTransformerDetectionprintAndReturnError:(id *)a3
{
  v5 = [(VNRequest *)self results];
  if ([v5 count])
  {
    v6 = [v5 firstObject];
    v7 = [v6 VNCoreMLTransformerDetectionprintAndReturnError:a3];
LABEL_5:

    goto LABEL_6;
  }

  if (a3)
  {
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = [(VNRequest *)self specifier];
    v6 = [v8 initWithFormat:@"%@ did not produce any results", v9];

    [VNError errorForDataUnavailableWithLocalizedDescription:v6];
    *a3 = v7 = 0;
    goto LABEL_5;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (id)VNCoreMLTransformerSceneprintsAndReturnError:(id *)a3
{
  v5 = [(VNRequest *)self results];
  if ([v5 count])
  {
    v6 = [v5 firstObject];
    v7 = [v6 VNCoreMLTransformerSceneprintsAndReturnError:a3];
LABEL_5:

    goto LABEL_6;
  }

  if (a3)
  {
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = [(VNRequest *)self specifier];
    v6 = [v8 initWithFormat:@"%@ did not produce any results", v9];

    [VNError errorForDataUnavailableWithLocalizedDescription:v6];
    *a3 = v7 = 0;
    goto LABEL_5;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

@end