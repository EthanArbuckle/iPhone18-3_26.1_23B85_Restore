@interface VNClassifyImageRequest
+ (BOOL)revision:(unint64_t)revision mayAcceptResultsProducedByRevision:(unint64_t)byRevision;
+ (NSArray)knownClassificationsForRevision:(NSUInteger)requestRevision error:(NSError *)error;
+ (id)descriptionForPrivateRevision:(unint64_t)revision;
+ (id)privateRevisionsSet;
- (BOOL)defineCustomHierarchy:(id)hierarchy error:(id *)error;
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration;
- (NSArray)supportedIdentifiersAndReturnError:(NSError *)error;
- (VNClassificationCustomHierarchy)customHierarchy;
- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error;
- (id)defineCustomHierarchyWithRelationships:(id)relationships error:(id *)error;
- (id)description;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session;
- (unint64_t)imageCropAndScaleOption;
- (unint64_t)maximumHierarchicalObservations;
- (unint64_t)maximumLeafObservations;
- (void)_setCustomHierarchy:(id)hierarchy;
- (void)applyConfigurationOfRequest:(id)request;
- (void)resolvedRevisionDidChangeFromRevision:(unint64_t)revision;
- (void)setImageCropAndScaleOption:(unint64_t)option;
- (void)setMaximumHierarchicalObservations:(unint64_t)observations;
- (void)setMaximumLeafObservations:(unint64_t)observations;
@end

@implementation VNClassifyImageRequest

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

- (id)defineCustomHierarchyWithRelationships:(id)relationships error:(id *)error
{
  relationshipsCopy = relationships;
  v7 = [VNClassificationCustomHierarchy customHierarchyForRequest:self error:error];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 customHierarchyWithAdditionalRelationships:relationshipsCopy error:error];

    if (v9 && [(VNClassifyImageRequest *)self defineCustomHierarchy:v9 error:error])
    {
      v10 = v9;
      v9 = v10;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  return v10;
}

- (BOOL)defineCustomHierarchy:(id)hierarchy error:(id *)error
{
  hierarchyCopy = hierarchy;
  if (!hierarchyCopy)
  {
    [(VNClassifyImageRequest *)self _setCustomHierarchy:0];
    goto LABEL_5;
  }

  resolvedRevision = [(VNRequest *)self resolvedRevision];
  requestRevision = [hierarchyCopy requestRevision];
  if (resolvedRevision == requestRevision)
  {
    [(VNClassifyImageRequest *)self _setCustomHierarchy:hierarchyCopy];
LABEL_5:
    LOBYTE(error) = 1;
    goto LABEL_8;
  }

  if (error)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"the custom hierarchy is for request revision %lu, not %lu", requestRevision, resolvedRevision];
    *error = [VNError errorForInvalidOperationWithLocalizedDescription:v9];

    LOBYTE(error) = 0;
  }

LABEL_8:

  return error;
}

- (VNClassificationCustomHierarchy)customHierarchy
{
  configuration = [(VNRequest *)self configuration];
  customHierarchy = [configuration customHierarchy];

  return customHierarchy;
}

- (void)setMaximumHierarchicalObservations:(unint64_t)observations
{
  configuration = [(VNRequest *)self configuration];
  [configuration setMaximumHierarchicalObservations:observations];
}

- (unint64_t)maximumHierarchicalObservations
{
  configuration = [(VNRequest *)self configuration];
  maximumHierarchicalObservations = [configuration maximumHierarchicalObservations];

  return maximumHierarchicalObservations;
}

- (void)setMaximumLeafObservations:(unint64_t)observations
{
  configuration = [(VNRequest *)self configuration];
  [configuration setMaximumLeafObservations:observations];
}

- (unint64_t)maximumLeafObservations
{
  configuration = [(VNRequest *)self configuration];
  maximumLeafObservations = [configuration maximumLeafObservations];

  return maximumLeafObservations;
}

- (NSArray)supportedIdentifiersAndReturnError:(NSError *)error
{
  resolvedRevision = [(VNRequest *)self resolvedRevision];
  v15 = 0;
  v6 = [(VNRequest *)self applicableDetectorClassAndOptions:&v15 forRevision:resolvedRevision error:error];
  v7 = v15;
  if (!v6)
  {
    v8 = 0;
    goto LABEL_5;
  }

  if ([(objc_class *)v6 isSubclassOfClass:objc_opt_class()])
  {
    v8 = [(objc_class *)v6 allClassificationIdentifiersWithConfigurationOptions:v7 error:error];
LABEL_5:
    v9 = v7;
    goto LABEL_16;
  }

  v10 = objc_alloc_init(VNSession);
  v14 = v7;
  v11 = [(VNRequest *)self applicableDetectorAndOptions:&v14 forRevision:resolvedRevision loadedInSession:v10 error:error];
  v9 = v14;

  if (!v11)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 supportedClassificationIdentifiersWithOptions:v9 error:error];
      goto LABEL_11;
    }

    if (error)
    {
      [VNError errorForUnsupportedRevision:resolvedRevision ofRequest:self];
      *error = v8 = 0;
      goto LABEL_15;
    }

LABEL_14:
    v8 = 0;
    goto LABEL_15;
  }

  v12 = [v11 allSceneIdentifiersWithOptions:v9 error:error];
LABEL_11:
  v8 = v12;
LABEL_15:

LABEL_16:

  return v8;
}

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  contextCopy = context;
  if (revision == 1)
  {
    if (error)
    {
      v9 = [VNError errorForUnsupportedConfigurationOfRequest:self];
LABEL_6:
      *error = v9;
    }
  }

  else if (error)
  {
    v9 = [VNError errorForInvalidOperationForRequestClass:objc_opt_class() revision:revision];
    goto LABEL_6;
  }

  return 0;
}

- (void)applyConfigurationOfRequest:(id)request
{
  requestCopy = request;
  if (self != requestCopy)
  {
    v6.receiver = self;
    v6.super_class = VNClassifyImageRequest;
    [(VNImageBasedRequest *)&v6 applyConfigurationOfRequest:requestCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      customHierarchy = [(VNClassifyImageRequest *)requestCopy customHierarchy];
      [(VNClassifyImageRequest *)self _setCustomHierarchy:customHierarchy];

      [(VNClassifyImageRequest *)self setMaximumLeafObservations:[(VNClassifyImageRequest *)requestCopy maximumLeafObservations]];
      [(VNClassifyImageRequest *)self setMaximumHierarchicalObservations:[(VNClassifyImageRequest *)requestCopy maximumHierarchicalObservations]];
      [(VNClassifyImageRequest *)self setImageCropAndScaleOption:[(VNClassifyImageRequest *)requestCopy imageCropAndScaleOption]];
    }
  }
}

- (void)resolvedRevisionDidChangeFromRevision:(unint64_t)revision
{
  v7.receiver = self;
  v7.super_class = VNClassifyImageRequest;
  [(VNRequest *)&v7 resolvedRevisionDidChangeFromRevision:revision];
  resolvedRevision = [(VNRequest *)self resolvedRevision];
  customHierarchy = [(VNClassifyImageRequest *)self customHierarchy];
  v6 = customHierarchy;
  if (customHierarchy && [customHierarchy requestRevision] != resolvedRevision)
  {
    [(VNClassifyImageRequest *)self _setCustomHierarchy:0];
  }

  if (resolvedRevision == 3737841665)
  {
    [(VNClassifyImageRequest *)self setMaximumLeafObservations:0x7FFFFFFFFFFFFFFFLL];
    [(VNClassifyImageRequest *)self setMaximumHierarchicalObservations:0x7FFFFFFFFFFFFFFFLL];
  }
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  customHierarchy = [(VNClassifyImageRequest *)self customHierarchy];
  customHierarchy2 = [configurationCopy customHierarchy];
  v7 = VisionCoreEqualOrNilObjects();

  if ((v7 & 1) != 0 && (v8 = -[VNClassifyImageRequest maximumLeafObservations](self, "maximumLeafObservations"), v8 == [configurationCopy maximumLeafObservations]) && (v9 = -[VNClassifyImageRequest maximumHierarchicalObservations](self, "maximumHierarchicalObservations"), v9 == objc_msgSend(configurationCopy, "maximumHierarchicalObservations")))
  {
    v12.receiver = self;
    v12.super_class = VNClassifyImageRequest;
    v10 = [(VNImageBasedRequest *)&v12 willAcceptCachedResultsFromRequestWithConfiguration:configurationCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session
{
  v16[1] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = VNClassifyImageRequest;
  v6 = [(VNRequest *)&v13 newDefaultDetectorOptionsForRequestRevision:revision session:session];
  frameworkClass = [(VNRequest *)self frameworkClass];
  if ([VNCoreSceneUnderstandingDetector handlesRequestClass:frameworkClass revision:revision])
  {
    if (revision == 3737841667)
    {
      v8 = [[VNCoreSceneUnderstandingDetectorEntityNetClassificationConfiguration alloc] initWithObservationsRecipient:self];
      v16[0] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
      [v6 setObject:v9 forKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_EntityNetClassificationConfigurations"];
    }

    else
    {
      v8 = [[VNCoreSceneUnderstandingDetectorImageClassificationConfiguration alloc] initWithObservationsRecipient:self];
      v15 = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
      [v6 setObject:v9 forKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_ImageClassificationConfigurations"];
    }

    goto LABEL_11;
  }

  v10 = [VNImageAnalyzerMultiDetector modelForRequestClass:frameworkClass revision:revision];
  if (v10)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
    [v6 setObject:v11 forKeyedSubscript:@"VNImageAnalyzerMultiDetectorInitializationOption_Model"];

    if (revision != 3737841667)
    {
      v8 = [[VNImageAnalyzerMultiDetectorSceneClassificationConfiguration alloc] initWithObservationsRecipient:self];
      v14 = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
      [v6 setObject:v9 forKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_SceneConfigurations"];
LABEL_11:

      goto LABEL_12;
    }

    v8 = [[VNImageAnalyzerMultiDetectorEntityNetClassificationConfiguration alloc] initWithObservationsRecipient:self];
    [v6 setObject:v8 forKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_EntityNetConfiguration"];
LABEL_12:

    return v6;
  }

  if (revision == 3737841665)
  {
    [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNSmartCam5GatingDetectorProcessingOption_ClassificationEnabled"];
    v8 = [v6 objectForKeyedSubscript:@"VNDetectorOption_OriginatingRequestSpecifier"];
    [v6 setObject:v8 forKeyedSubscript:@"VNSmartCam5GatingDetectorProcessingOption_ClassificationOriginatingRequestSpecifier"];
    goto LABEL_12;
  }

  return v6;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error
{
  frameworkClass = [(VNRequest *)self frameworkClass];
  if ([VNCoreSceneUnderstandingDetector handlesRequestClass:frameworkClass revision:revision])
  {
    v8 = @"VNCoreSceneUnderstandingDetectorType";
LABEL_7:
    v9 = v8;
    goto LABEL_8;
  }

  if ([VNImageAnalyzerMultiDetector modelForRequestClass:frameworkClass revision:revision])
  {
    v8 = @"VNImageAnalyzerMultiDetectorType";
    goto LABEL_7;
  }

  if (revision == 3737841665)
  {
    v8 = @"VNSmartCam5GatingDetectorType";
    goto LABEL_7;
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

LABEL_8:

  return v8;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v9.receiver = self;
  v9.super_class = VNClassifyImageRequest;
  v4 = [(VNImageBasedRequest *)&v9 description];
  v5 = VNImageCropAndScaleOptionToString([(VNClassifyImageRequest *)self imageCropAndScaleOption]);
  [v3 appendFormat:@"%@ %@", v4, v5];

  customHierarchy = [(VNClassifyImageRequest *)self customHierarchy];
  v7 = customHierarchy;
  if (customHierarchy)
  {
    [v3 appendFormat:@" %@", customHierarchy];
  }

  return v3;
}

- (void)_setCustomHierarchy:(id)hierarchy
{
  hierarchyCopy = hierarchy;
  configuration = [(VNRequest *)self configuration];
  [configuration setCustomHierarchy:hierarchyCopy];
}

+ (NSArray)knownClassificationsForRevision:(NSUInteger)requestRevision error:(NSError *)error
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(self);
  if ([v6 setRevision:requestRevision error:error])
  {
    v7 = [v6 supportedIdentifiersAndReturnError:error];
    if (v7)
    {
      specifier = [v6 specifier];
      v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v10 = v7;
      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        v12 = *v20;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v19 + 1) + 8 * i);
            v15 = [VNClassificationObservation alloc];
            LODWORD(v16) = 1.0;
            v17 = [(VNClassificationObservation *)v15 initWithOriginatingRequestSpecifier:specifier identifier:v14 confidence:v16, v19];
            [v9 addObject:v17];
          }

          v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v11);
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)descriptionForPrivateRevision:(unint64_t)revision
{
  if (revision - 3737841664u >= 4)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___VNClassifyImageRequest;
    v5 = objc_msgSendSuper2(&v7, sel_descriptionForPrivateRevision_);
  }

  else
  {
    v5 = off_1E77B3358[revision - 3737841664u];
  }

  return v5;
}

+ (id)privateRevisionsSet
{
  if (+[VNClassifyImageRequest privateRevisionsSet]::onceToken != -1)
  {
    dispatch_once(&+[VNClassifyImageRequest privateRevisionsSet]::onceToken, &__block_literal_global_9309);
  }

  v3 = +[VNClassifyImageRequest privateRevisionsSet]::ourPrivateRevisions;

  return v3;
}

uint64_t __45__VNClassifyImageRequest_privateRevisionsSet__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  +[VNClassifyImageRequest privateRevisionsSet]::ourPrivateRevisions = VNRequestPrivateRevisionsSet(0xDECAF001uLL, a2, a3, a4, a5, a6, a7, a8, 3737841666);

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)revision:(unint64_t)revision mayAcceptResultsProducedByRevision:(unint64_t)byRevision
{
  v7 = [VNImageAnalyzerMultiDetector modelForRequestClass:self revision:revision];
  if (v7 != [VNImageAnalyzerMultiDetector modelForRequestClass:self revision:byRevision])
  {
    return 0;
  }

  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___VNClassifyImageRequest;
  return objc_msgSendSuper2(&v9, sel_revision_mayAcceptResultsProducedByRevision_, revision, byRevision);
}

@end