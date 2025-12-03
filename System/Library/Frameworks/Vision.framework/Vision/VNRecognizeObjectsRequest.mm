@interface VNRecognizeObjectsRequest
+ (BOOL)revision:(unint64_t)revision mayAcceptResultsProducedByRevision:(unint64_t)byRevision;
+ (id)descriptionForPrivateRevision:(unint64_t)revision;
+ (id)knownObjectIdentifiersRecognizedByRequestRevision:(unint64_t)revision error:(id *)error;
+ (id)privateRevisionsSet;
- (BOOL)useImageAnalyzerScaling;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration;
- (NSArray)targetedIdentifiers;
- (float)modelMinimumDetectionConfidence;
- (float)modelNonMaximumSuppressionThreshold;
- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session;
- (id)supportedIdentifiersAndReturnError:(id *)error;
- (unint64_t)imageCropAndScaleOption;
- (void)setImageCropAndScaleOption:(unint64_t)option;
- (void)setModelMinimumDetectionConfidence:(float)confidence;
- (void)setModelNonMaximumSuppressionThreshold:(float)threshold;
- (void)setTargetedIdentifiers:(id)identifiers;
- (void)setUseImageAnalyzerScaling:(BOOL)scaling;
@end

@implementation VNRecognizeObjectsRequest

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [(VNRecognizeObjectsRequest *)self modelMinimumDetectionConfidence];
  v6 = v5;
  [configurationCopy modelMinimumDetectionConfidence];
  if (v6 == v7 && (-[VNRecognizeObjectsRequest modelNonMaximumSuppressionThreshold](self, "modelNonMaximumSuppressionThreshold"), v9 = v8, [configurationCopy modelNonMaximumSuppressionThreshold], v9 == v10) && (-[VNRecognizeObjectsRequest targetedIdentifiers](self, "targetedIdentifiers"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(configurationCopy, "targetedIdentifiers"), v12 = objc_claimAutoreleasedReturnValue(), v13 = VisionCoreEquivalentOrNilUnorderedArrays(), v12, v11, (v13 & 1) != 0))
  {
    v16.receiver = self;
    v16.super_class = VNRecognizeObjectsRequest;
    v14 = [(VNImageBasedRequest *)&v16 willAcceptCachedResultsFromRequestWithConfiguration:configurationCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session
{
  v18[1] = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = VNRecognizeObjectsRequest;
  v6 = [(VNRequest *)&v17 newDefaultDetectorOptionsForRequestRevision:revision session:session];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VNRecognizeObjectsRequest imageCropAndScaleOption](self, "imageCropAndScaleOption")}];
  [v6 setObject:v7 forKeyedSubscript:@"VNDetectorProcessOption_ImageCropAndScaleOption"];

  frameworkClass = [(VNRequest *)self frameworkClass];
  if ([VNCoreSceneUnderstandingDetector handlesRequestClass:frameworkClass revision:revision])
  {
    v9 = [[VNCoreSceneUnderstandingDetectorRecognizeObjectsConfiguration alloc] initWithObservationsRecipient:self];
    v18[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    [v6 setObject:v10 forKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_RecognizeObjectsConfigurations"];

    v11 = v6;
  }

  else
  {
    v12 = [VNImageAnalyzerMultiDetector modelForRequestClass:frameworkClass revision:revision];
    if (v12)
    {
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
      [v6 setObject:v13 forKeyedSubscript:@"VNImageAnalyzerMultiDetectorInitializationOption_Model"];

      [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNImageAnalyzerMultiDetectorInitializationOption_RequireObjDetNet"];
      v14 = [[VNImageAnalyzerMultiDetectorRecognizeObjectsConfiguration alloc] initWithObservationsRecipient:self];
      [v6 setObject:v14 forKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_RecognizeObjectsConfiguration"];
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

- (void)setTargetedIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  configuration = [(VNRequest *)self configuration];
  [configuration setTargetedIdentifiers:identifiersCopy];
}

- (NSArray)targetedIdentifiers
{
  configuration = [(VNRequest *)self configuration];
  targetedIdentifiers = [configuration targetedIdentifiers];

  return targetedIdentifiers;
}

- (void)setModelNonMaximumSuppressionThreshold:(float)threshold
{
  configuration = [(VNRequest *)self configuration];
  *&v4 = threshold;
  [configuration setModelNonMaximumSuppressionThreshold:v4];
}

- (float)modelNonMaximumSuppressionThreshold
{
  configuration = [(VNRequest *)self configuration];
  [configuration modelNonMaximumSuppressionThreshold];
  v4 = v3;

  return v4;
}

- (void)setModelMinimumDetectionConfidence:(float)confidence
{
  configuration = [(VNRequest *)self configuration];
  *&v4 = confidence;
  [configuration setModelMinimumDetectionConfidence:v4];
}

- (float)modelMinimumDetectionConfidence
{
  configuration = [(VNRequest *)self configuration];
  [configuration modelMinimumDetectionConfidence];
  v4 = v3;

  return v4;
}

- (void)setUseImageAnalyzerScaling:(BOOL)scaling
{
  scalingCopy = scaling;
  configuration = [(VNRequest *)self configuration];
  [configuration setUseImageAnalyzerScaling:scalingCopy];
}

- (BOOL)useImageAnalyzerScaling
{
  configuration = [(VNRequest *)self configuration];
  useImageAnalyzerScaling = [configuration useImageAnalyzerScaling];

  return useImageAnalyzerScaling;
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
    v8 = [(objc_class *)v6 allRecognizedObjectIdentifiersWithConfigurationOptions:v7 error:error];
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
      [VNError errorForUnsupportedRevision:[(VNRequest *)self resolvedRevision] ofRequest:self];
      *error = v8 = 0;
      goto LABEL_12;
    }

LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  v8 = [v11 allRecognizedObjectsIdentifiersWithOptions:v9 error:error];
LABEL_12:

LABEL_13:

  return v8;
}

+ (BOOL)revision:(unint64_t)revision mayAcceptResultsProducedByRevision:(unint64_t)byRevision
{
  v7 = [VNImageAnalyzerMultiDetector modelForRequestClass:self revision:revision];
  if (v7 != [VNImageAnalyzerMultiDetector modelForRequestClass:self revision:byRevision])
  {
    return 0;
  }

  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___VNRecognizeObjectsRequest;
  return objc_msgSendSuper2(&v9, sel_revision_mayAcceptResultsProducedByRevision_, revision, byRevision);
}

+ (id)descriptionForPrivateRevision:(unint64_t)revision
{
  if (revision - 3737841664u > 3)
  {
    return 0;
  }

  else
  {
    return *(&off_1E77B3180 + revision - 3737841664u);
  }
}

+ (id)privateRevisionsSet
{
  if (+[VNRecognizeObjectsRequest privateRevisionsSet]::onceToken != -1)
  {
    dispatch_once(&+[VNRecognizeObjectsRequest privateRevisionsSet]::onceToken, &__block_literal_global_8407);
  }

  v3 = +[VNRecognizeObjectsRequest privateRevisionsSet]::ourPrivateRevisions;

  return v3;
}

uint64_t __48__VNRecognizeObjectsRequest_privateRevisionsSet__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  +[VNRecognizeObjectsRequest privateRevisionsSet]::ourPrivateRevisions = VNRequestPrivateRevisionsSet(0xDECAF003uLL, a2, a3, a4, a5, a6, a7, a8, 0);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)knownObjectIdentifiersRecognizedByRequestRevision:(unint64_t)revision error:(id *)error
{
  v6 = objc_alloc_init(self);
  if ([v6 setRevision:revision error:error])
  {
    v7 = [v6 supportedIdentifiersAndReturnError:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end