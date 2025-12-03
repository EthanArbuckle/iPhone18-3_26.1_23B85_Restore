@interface VNDetectRectanglesRequest
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration;
- (NSUInteger)maximumObservations;
- (VNAspectRatio)maximumAspectRatio;
- (VNAspectRatio)minimumAspectRatio;
- (VNConfidence)minimumConfidence;
- (VNDegrees)quadratureTolerance;
- (float)minimumSize;
- (id)supportedImageSizeSet;
- (int64_t)dependencyProcessingOrdinality;
- (unint64_t)requiredVersion;
- (void)applyConfigurationOfRequest:(id)request;
- (void)setMaximumAspectRatio:(VNAspectRatio)maximumAspectRatio;
- (void)setMaximumObservations:(NSUInteger)maximumObservations;
- (void)setMinimumAspectRatio:(VNAspectRatio)minimumAspectRatio;
- (void)setMinimumConfidence:(VNConfidence)minimumConfidence;
- (void)setMinimumSize:(float)minimumSize;
- (void)setProcessedResults:(id)results;
- (void)setQuadratureTolerance:(VNDegrees)quadratureTolerance;
- (void)setRequiredVersion:(unint64_t)version;
@end

@implementation VNDetectRectanglesRequest

- (id)supportedImageSizeSet
{
  v3 = [(VNRequest *)self newDefaultDetectorOptionsForSession:0];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VNDetectRectanglesRequest requiredVersion](self, "requiredVersion")}];
  [v3 setObject:v4 forKeyedSubscript:@"VNRectangleDetectorProcessOption_Version"];

  v5 = [VNRectangleDetector supportedImageSizeSetForOptions:v3 error:0];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = v7;

  return v7;
}

- (void)applyConfigurationOfRequest:(id)request
{
  requestCopy = request;
  if (self != requestCopy)
  {
    v5.receiver = self;
    v5.super_class = VNDetectRectanglesRequest;
    [(VNImageBasedRequest *)&v5 applyConfigurationOfRequest:requestCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(VNDetectRectanglesRequest *)self setRequiredVersion:[(VNDetectRectanglesRequest *)requestCopy requiredVersion]];
      [(VNDetectRectanglesRequest *)requestCopy minimumAspectRatio];
      [(VNDetectRectanglesRequest *)self setMinimumAspectRatio:?];
      [(VNDetectRectanglesRequest *)requestCopy maximumAspectRatio];
      [(VNDetectRectanglesRequest *)self setMaximumAspectRatio:?];
      [(VNDetectRectanglesRequest *)requestCopy quadratureTolerance];
      [(VNDetectRectanglesRequest *)self setQuadratureTolerance:?];
      [(VNDetectRectanglesRequest *)requestCopy minimumSize];
      [(VNDetectRectanglesRequest *)self setMinimumSize:?];
      [(VNDetectRectanglesRequest *)requestCopy minimumConfidence];
      [(VNDetectRectanglesRequest *)self setMinimumConfidence:?];
      [(VNDetectRectanglesRequest *)self setMaximumObservations:[(VNDetectRectanglesRequest *)requestCopy maximumObservations]];
    }
  }
}

- (void)setMaximumObservations:(NSUInteger)maximumObservations
{
  configuration = [(VNRequest *)self configuration];
  [configuration setMaximumObservations:maximumObservations];
}

- (NSUInteger)maximumObservations
{
  configuration = [(VNRequest *)self configuration];
  maximumObservations = [configuration maximumObservations];

  return maximumObservations;
}

- (void)setRequiredVersion:(unint64_t)version
{
  if (version - 1 <= 1)
  {
    configuration = [(VNRequest *)self configuration];
    [configuration setRequiredVersion:version];
  }
}

- (unint64_t)requiredVersion
{
  configuration = [(VNRequest *)self configuration];
  requiredVersion = [configuration requiredVersion];

  return requiredVersion;
}

- (void)setMinimumConfidence:(VNConfidence)minimumConfidence
{
  if (minimumConfidence >= 0.0 && minimumConfidence <= 1.0)
  {
    configuration = [(VNRequest *)self configuration];
    *&v5 = minimumConfidence;
    [configuration setMinimumConfidence:v5];
  }
}

- (VNConfidence)minimumConfidence
{
  configuration = [(VNRequest *)self configuration];
  [configuration minimumConfidence];
  v4 = v3;

  return v4;
}

- (void)setMinimumSize:(float)minimumSize
{
  if (minimumSize >= 0.0 && minimumSize <= 1.0)
  {
    configuration = [(VNRequest *)self configuration];
    *&v5 = minimumSize;
    [configuration setMinimumSize:v5];
  }
}

- (float)minimumSize
{
  configuration = [(VNRequest *)self configuration];
  [configuration minimumSize];
  v4 = v3;

  return v4;
}

- (void)setQuadratureTolerance:(VNDegrees)quadratureTolerance
{
  if (quadratureTolerance >= 0.0 && quadratureTolerance <= 45.0)
  {
    configuration = [(VNRequest *)self configuration];
    *&v5 = quadratureTolerance;
    [configuration setQuadratureTolerance:v5];
  }
}

- (VNDegrees)quadratureTolerance
{
  configuration = [(VNRequest *)self configuration];
  [configuration quadratureTolerance];
  v4 = v3;

  return v4;
}

- (void)setMaximumAspectRatio:(VNAspectRatio)maximumAspectRatio
{
  if (maximumAspectRatio >= 0.0 && maximumAspectRatio <= 1.0)
  {
    configuration = [(VNRequest *)self configuration];
    *&v5 = maximumAspectRatio;
    [configuration setMaximumAspectRatio:v5];
  }
}

- (VNAspectRatio)maximumAspectRatio
{
  configuration = [(VNRequest *)self configuration];
  [configuration maximumAspectRatio];
  v4 = v3;

  return v4;
}

- (void)setMinimumAspectRatio:(VNAspectRatio)minimumAspectRatio
{
  if (minimumAspectRatio >= 0.0 && minimumAspectRatio <= 1.0)
  {
    configuration = [(VNRequest *)self configuration];
    *&v5 = minimumAspectRatio;
    [configuration setMinimumAspectRatio:v5];
  }
}

- (VNAspectRatio)minimumAspectRatio
{
  configuration = [(VNRequest *)self configuration];
  [configuration minimumAspectRatio];
  v4 = v3;

  return v4;
}

- (void)setProcessedResults:(id)results
{
  resultsCopy = results;
  maximumObservations = [(VNDetectRectanglesRequest *)self maximumObservations];
  if (maximumObservations && [resultsCopy count] > maximumObservations)
  {
    v6 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, maximumObservations}];
    v7 = [resultsCopy objectsAtIndexes:v6];

    resultsCopy = v7;
  }

  v8.receiver = self;
  v8.super_class = VNDetectRectanglesRequest;
  [(VNRequest *)&v8 setProcessedResults:resultsCopy];
}

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  v37[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v9 = [contextCopy imageBufferAndReturnError:error];
  if (v9 && [(VNRequest *)self validateImageBuffer:v9 ofNonZeroWidth:0 andHeight:0 error:error])
  {
    session = [contextCopy session];
    v36 = 0;
    v11 = [(VNRequest *)self applicableDetectorAndOptions:&v36 forRevision:revision loadedInSession:session error:error];
    v12 = v36;
    if (v11)
    {
      v37[0] = v9;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
      [v12 setObject:v13 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VNDetectRectanglesRequest requiredVersion](self, "requiredVersion")}];
      [v12 setObject:v14 forKeyedSubscript:@"VNRectangleDetectorProcessOption_Version"];

      v15 = MEMORY[0x1E696AD98];
      [(VNDetectRectanglesRequest *)self minimumConfidence];
      v16 = [v15 numberWithFloat:?];
      [v12 setObject:v16 forKeyedSubscript:@"VNRectangleDetectorProcessOption_MinimumConfidence"];

      v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNRequest detectionLevel](self, "detectionLevel") != 2}];
      [v12 setObject:v17 forKeyedSubscript:@"VNRectangleDetectorProcessOption_HighAccuracy"];

      v18 = MEMORY[0x1E696AD98];
      [(VNDetectRectanglesRequest *)self minimumAspectRatio];
      v19 = [v18 numberWithFloat:?];
      [v12 setObject:v19 forKeyedSubscript:@"VNRectangleDetectorProcessOption_MinimumAspectRatio"];

      v20 = MEMORY[0x1E696AD98];
      [(VNDetectRectanglesRequest *)self maximumAspectRatio];
      v21 = [v20 numberWithFloat:?];
      [v12 setObject:v21 forKeyedSubscript:@"VNRectangleDetectorProcessOption_MaximumAspectRatio"];

      v22 = MEMORY[0x1E696AD98];
      [(VNDetectRectanglesRequest *)self quadratureTolerance];
      v23 = [v22 numberWithFloat:?];
      [v12 setObject:v23 forKeyedSubscript:@"VNRectangleDetectorProcessOption_QuadratureTolerance"];

      v24 = MEMORY[0x1E696AD98];
      [(VNDetectRectanglesRequest *)self minimumSize];
      v25 = [v24 numberWithFloat:?];
      [v12 setObject:v25 forKeyedSubscript:@"VNRectangleDetectorProcessOption_MinimumSize"];

      maximumObservations = [(VNDetectRectanglesRequest *)self maximumObservations];
      if (maximumObservations - 0x7FFFFFFF <= 0xFFFFFFFF80000001)
      {
        width = [v9 width];
        height = [v9 height];
        if (width <= height)
        {
          v29 = height;
        }

        else
        {
          v29 = width;
        }

        if (width >= height)
        {
          v30 = height;
        }

        else
        {
          v30 = width;
        }

        maximumObservations = (16 * vcvtps_s32_f32((v29 * 256.0) / v30));
      }

      v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:maximumObservations];
      [v12 setObject:v31 forKeyedSubscript:@"VNRectangleDetectorProcessOption_MaximumNumber"];

      qosClass = [contextCopy qosClass];
      [(VNImageBasedRequest *)self regionOfInterest];
      v33 = [v11 processUsingQualityOfServiceClass:qosClass options:v12 regionOfInterest:self warningRecorder:error error:0 progressHandler:?];
      v34 = v33 != 0;
      if (v33)
      {
        [(VNRequest *)self setResults:v33];
      }
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  requiredVersion = [(VNDetectRectanglesRequest *)self requiredVersion];
  if (requiredVersion != [configurationCopy requiredVersion])
  {
    goto LABEL_7;
  }

  [(VNDetectRectanglesRequest *)self minimumAspectRatio];
  v7 = v6;
  [configurationCopy minimumAspectRatio];
  if (v7 < v8)
  {
    goto LABEL_7;
  }

  [(VNDetectRectanglesRequest *)self maximumAspectRatio];
  v10 = v9;
  [configurationCopy maximumAspectRatio];
  if (v10 > v11)
  {
    goto LABEL_7;
  }

  [(VNDetectRectanglesRequest *)self quadratureTolerance];
  v13 = v12;
  [configurationCopy quadratureTolerance];
  if (v13 < v14)
  {
    goto LABEL_7;
  }

  [(VNDetectRectanglesRequest *)self minimumSize];
  v16 = v15;
  [configurationCopy minimumSize];
  if (v16 < v17)
  {
    goto LABEL_7;
  }

  [(VNDetectRectanglesRequest *)self minimumConfidence];
  v19 = v18;
  [configurationCopy minimumConfidence];
  if (v19 < v20)
  {
    goto LABEL_7;
  }

  maximumObservations = [(VNDetectRectanglesRequest *)self maximumObservations];
  maximumObservations2 = [configurationCopy maximumObservations];
  if (maximumObservations && maximumObservations2)
  {
    if (maximumObservations <= maximumObservations2)
    {
LABEL_15:
      v25.receiver = self;
      v25.super_class = VNDetectRectanglesRequest;
      v21 = [(VNImageBasedRequest *)&v25 willAcceptCachedResultsFromRequestWithConfiguration:configurationCopy];
      goto LABEL_8;
    }
  }

  else if (maximumObservations || !maximumObservations2)
  {
    goto LABEL_15;
  }

LABEL_7:
  v21 = 0;
LABEL_8:

  return v21;
}

- (int64_t)dependencyProcessingOrdinality
{
  v8.receiver = self;
  v8.super_class = VNDetectRectanglesRequest;
  dependencyProcessingOrdinality = [(VNRequest *)&v8 dependencyProcessingOrdinality];
  maximumObservations = [(VNDetectRectanglesRequest *)self maximumObservations];
  v5 = 20;
  if (maximumObservations < 0x14)
  {
    v5 = maximumObservations;
  }

  v6 = -100 * v5;
  if (!maximumObservations)
  {
    v6 = -2000;
  }

  return dependencyProcessingOrdinality + v6;
}

@end