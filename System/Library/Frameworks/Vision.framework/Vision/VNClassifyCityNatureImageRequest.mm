@interface VNClassifyCityNatureImageRequest
+ (BOOL)revision:(unint64_t)revision mayAcceptResultsProducedByRevision:(unint64_t)byRevision;
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session;
- (id)supportedIdentifiersAndReturnError:(id *)error;
- (unint64_t)imageCropAndScaleOption;
- (void)setImageCropAndScaleOption:(unint64_t)option;
@end

@implementation VNClassifyCityNatureImageRequest

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  v19[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v9 = [contextCopy imageBufferAndReturnError:error];
  if (v9)
  {
    session = [contextCopy session];
    v18 = 0;
    v11 = [(VNRequest *)self applicableDetectorAndOptions:&v18 forRevision:revision loadedInSession:session error:error];
    v12 = v18;
    if (v11)
    {
      v19[0] = v9;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
      [v12 setObject:v13 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

      qosClass = [contextCopy qosClass];
      [(VNImageBasedRequest *)self regionOfInterest];
      v15 = [v11 processUsingQualityOfServiceClass:qosClass options:v12 regionOfInterest:self warningRecorder:error error:0 progressHandler:?];
      v16 = v15 != 0;
      if (v15)
      {
        [(VNRequest *)self setResults:v15];
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session
{
  v18[1] = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = VNClassifyCityNatureImageRequest;
  v6 = [(VNRequest *)&v17 newDefaultDetectorOptionsForRequestRevision:revision session:session];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VNClassifyCityNatureImageRequest imageCropAndScaleOption](self, "imageCropAndScaleOption")}];
  [v6 setObject:v7 forKeyedSubscript:@"VNDetectorProcessOption_ImageCropAndScaleOption"];

  frameworkClass = [(VNRequest *)self frameworkClass];
  if ([VNCoreSceneUnderstandingDetector handlesRequestClass:frameworkClass revision:revision])
  {
    v9 = [(VNCoreSceneUnderstandingDetectorFeatureConfiguration *)[VNCoreSceneUnderstandingDetectorCityNatureConfiguration alloc] initWithObservationsRecipient:self];
    v18[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    [v6 setObject:v10 forKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_CityNatureGatingConfigurations"];

    v11 = v6;
  }

  else
  {
    v12 = [VNImageAnalyzerMultiDetector modelForRequestClass:frameworkClass revision:revision];
    if (v12)
    {
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
      [v6 setObject:v13 forKeyedSubscript:@"VNImageAnalyzerMultiDetectorInitializationOption_Model"];

      v14 = [(VNImageAnalyzerMultiDetectorAnalysisConfiguration *)[VNImageAnalyzerMultiDetectorCityNatureClassificationConfiguration alloc] initWithObservationsRecipient:self];
      [v6 setObject:v14 forKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_CityNatureGatingConfiguration"];
    }

    v15 = v6;
  }

  return v6;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error
{
  frameworkClass = [(VNRequest *)self frameworkClass];
  if ([VNCoreSceneUnderstandingDetector handlesRequestClass:frameworkClass revision:revision])
  {
    v8 = @"VNCoreSceneUnderstandingDetectorType";
LABEL_5:
    v9 = v8;
    goto LABEL_6;
  }

  if ([VNImageAnalyzerMultiDetector modelForRequestClass:frameworkClass revision:revision])
  {
    v8 = @"VNImageAnalyzerMultiDetectorType";
    goto LABEL_5;
  }

  if (error)
  {
    [VNError errorForUnsupportedRevision:revision ofRequest:self];
    *error = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

LABEL_6:

  return v8;
}

- (void)setImageCropAndScaleOption:(unint64_t)option
{
  configuration = [(VNRequest *)self configuration];
  [configuration setImageCropAndScaleOption:option];
}

- (unint64_t)imageCropAndScaleOption
{
  configuration = [(VNRequest *)self configuration];
  imageCropAndScaleOption = [configuration imageCropAndScaleOption];

  return imageCropAndScaleOption;
}

- (id)supportedIdentifiersAndReturnError:(id *)error
{
  resolvedRevision = [(VNRequest *)self resolvedRevision];
  v14 = 0;
  v6 = [(VNRequest *)self applicableDetectorClassAndOptions:&v14 forRevision:resolvedRevision error:error];
  v7 = v14;
  if (!v6)
  {
    v8 = 0;
    goto LABEL_5;
  }

  if ([(objc_class *)v6 isSubclassOfClass:objc_opt_class()])
  {
    v8 = [(objc_class *)v6 allCityNatureIdentifiersWithConfigurationOptions:v7 error:error];
LABEL_5:
    v9 = v7;
    goto LABEL_13;
  }

  v10 = objc_alloc_init(VNSession);
  v13 = v7;
  v11 = [(VNRequest *)self applicableDetectorAndOptions:&v13 forRevision:resolvedRevision loadedInSession:v10 error:error];
  v9 = v13;

  if (!v11)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      [VNError errorForUnsupportedRevision:resolvedRevision ofRequest:self];
      *error = v8 = 0;
      goto LABEL_12;
    }

LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  v8 = [v11 allCityNatureIdentifiersWithOptions:v9 error:error];
LABEL_12:

LABEL_13:

  return v8;
}

+ (BOOL)revision:(unint64_t)revision mayAcceptResultsProducedByRevision:(unint64_t)byRevision
{
  if (revision != byRevision)
  {
    return 0;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___VNClassifyCityNatureImageRequest;
  return objc_msgSendSuper2(&v7, sel_revision_mayAcceptResultsProducedByRevision_, revision, revision);
}

@end