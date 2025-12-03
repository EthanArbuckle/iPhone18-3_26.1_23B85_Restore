@interface VNSceneClassificationRequest
+ (BOOL)revision:(unint64_t)revision mayAcceptResultsProducedByRevision:(unint64_t)byRevision;
+ (NSArray)knownSceneClassifications;
+ (const)dependentRequestCompatibility;
+ (id)descriptionForPrivateRevision:(unint64_t)revision;
+ (id)knownSceneClassificationsForRevision:(unint64_t)revision error:(id *)error;
+ (id)privateRevisionsSet;
- (BOOL)defineCustomHierarchy:(id)hierarchy error:(id *)error;
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration;
- (VNClassificationCustomHierarchy)customHierarchy;
- (VNSceneClassificationRequest)initWithSceneObservation:(id)observation completionHandler:(id)handler;
- (VNSceneObservation)sceneObservation;
- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error;
- (id)defineCustomHierarchyWithRelationships:(id)relationships error:(id *)error;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session;
- (id)supportedIdentifiersAndReturnError:(id *)error;
- (unint64_t)maximumHierarchicalObservations;
- (unint64_t)maximumLeafObservations;
- (void)_setCustomHierarchy:(id)hierarchy;
- (void)applyConfigurationOfRequest:(id)request;
- (void)resolvedRevisionDidChangeFromRevision:(unint64_t)revision;
- (void)setMaximumHierarchicalObservations:(unint64_t)observations;
- (void)setMaximumLeafObservations:(unint64_t)observations;
- (void)setSceneObservation:(id)observation;
@end

@implementation VNSceneClassificationRequest

+ (id)descriptionForPrivateRevision:(unint64_t)revision
{
  if (revision == 3737841664)
  {
    v5 = @"VNSceneClassificationRequestPrivateRevisionSceneNetV4";
  }

  else if (revision == 3737841665)
  {
    v5 = @"VNSceneClassificationRequestPrivateRevisionSceneNetV5";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___VNSceneClassificationRequest;
    v5 = objc_msgSendSuper2(&v7, sel_descriptionForPrivateRevision_);
  }

  return v5;
}

+ (id)privateRevisionsSet
{
  if (+[VNSceneClassificationRequest privateRevisionsSet]::onceToken != -1)
  {
    dispatch_once(&+[VNSceneClassificationRequest privateRevisionsSet]::onceToken, &__block_literal_global_2463);
  }

  v3 = +[VNSceneClassificationRequest privateRevisionsSet]::ourPrivateRevisions;

  return v3;
}

uint64_t __51__VNSceneClassificationRequest_privateRevisionsSet__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  +[VNSceneClassificationRequest privateRevisionsSet]::ourPrivateRevisions = VNRequestPrivateRevisionsSet(0xDECAF001uLL, a2, a3, a4, a5, a6, a7, a8, 0);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)knownSceneClassificationsForRevision:(unint64_t)revision error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(self);
  if ([v6 setRevision:revision error:error])
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

+ (NSArray)knownSceneClassifications
{
  v2 = [self knownSceneClassificationsForRevision:objc_msgSend(self error:{"defaultRevision"), 0}];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = v4;

  return v4;
}

+ (const)dependentRequestCompatibility
{
  {
    +[VNSceneClassificationRequest dependentRequestCompatibility]::ourDependentRequestCompatibilityTable = 1;
    qword_1EB285AC0 = objc_opt_class();
    unk_1EB285AC8 = xmmword_1A5FF36F0;
    qword_1EB285AD8 = objc_opt_class();
    unk_1EB285AE0 = 2;
    qword_1EB285AF0 = 0;
    unk_1EB285AF8 = 0;
    qword_1EB285AE8 = 0;
  }

  return &+[VNSceneClassificationRequest dependentRequestCompatibility]::ourDependentRequestCompatibilityTable;
}

+ (BOOL)revision:(unint64_t)revision mayAcceptResultsProducedByRevision:(unint64_t)byRevision
{
  v7 = [VNImageAnalyzerMultiDetector modelForRequestClass:self revision:revision];
  if (v7 != [VNImageAnalyzerMultiDetector modelForRequestClass:self revision:byRevision])
  {
    return 0;
  }

  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___VNSceneClassificationRequest;
  return objc_msgSendSuper2(&v9, sel_revision_mayAcceptResultsProducedByRevision_, revision, byRevision);
}

- (id)defineCustomHierarchyWithRelationships:(id)relationships error:(id *)error
{
  relationshipsCopy = relationships;
  v7 = [VNClassificationCustomHierarchy customHierarchyForRequest:self error:error];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 customHierarchyWithAdditionalRelationships:relationshipsCopy error:error];

    if (v9 && [(VNSceneClassificationRequest *)self defineCustomHierarchy:v9 error:error])
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
    [(VNSceneClassificationRequest *)self _setCustomHierarchy:0];
    goto LABEL_5;
  }

  resolvedRevision = [(VNRequest *)self resolvedRevision];
  requestRevision = [hierarchyCopy requestRevision];
  if (resolvedRevision == requestRevision)
  {
    [(VNSceneClassificationRequest *)self _setCustomHierarchy:hierarchyCopy];
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

- (void)setSceneObservation:(id)observation
{
  observationCopy = observation;
  configuration = [(VNRequest *)self configuration];
  [configuration setSceneObservation:observationCopy];
}

- (VNSceneObservation)sceneObservation
{
  configuration = [(VNRequest *)self configuration];
  sceneObservation = [configuration sceneObservation];

  return sceneObservation;
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
    v8 = [(objc_class *)v6 allClassificationIdentifiersWithConfigurationOptions:v7 error:error];
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

  v8 = [v11 allSceneIdentifiersWithOptions:v9 error:error];
LABEL_12:

LABEL_13:

  return v8;
}

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  contextCopy = context;
  if (revision == 3737841665 || revision == 2)
  {
    if (error)
    {
      v9 = [VNError errorForUnsupportedConfigurationOfRequest:self];
LABEL_7:
      *error = v9;
    }
  }

  else if (error)
  {
    v9 = [VNError errorForUnsupportedRevision:revision ofRequest:self];
    goto LABEL_7;
  }

  return 0;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session
{
  v20[1] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = VNSceneClassificationRequest;
  v6 = [(VNRequest *)&v18 newDefaultDetectorOptionsForRequestRevision:revision session:session];
  frameworkClass = [(VNRequest *)self frameworkClass];
  if ([VNCoreSceneUnderstandingDetector handlesRequestClass:frameworkClass revision:revision])
  {
    v8 = [[VNCoreSceneUnderstandingDetectorImageClassificationConfiguration alloc] initWithObservationsRecipient:self];
    v20[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    [v6 setObject:v9 forKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_ImageClassificationConfigurations"];

    v10 = v6;
  }

  else
  {
    v11 = [VNImageAnalyzerMultiDetector modelForRequestClass:frameworkClass revision:revision];
    if (v11)
    {
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
      [v6 setObject:v12 forKeyedSubscript:@"VNImageAnalyzerMultiDetectorInitializationOption_Model"];

      v13 = [[VNImageAnalyzerMultiDetectorSceneClassificationConfiguration alloc] initWithObservationsRecipient:self];
      v19 = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
      [v6 setObject:v14 forKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_SceneConfigurations"];

      v15 = v6;
    }

    else
    {
      v16 = v6;
    }
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

- (void)applyConfigurationOfRequest:(id)request
{
  requestCopy = request;
  if (self != requestCopy)
  {
    v7.receiver = self;
    v7.super_class = VNSceneClassificationRequest;
    [(VNImageBasedRequest *)&v7 applyConfigurationOfRequest:requestCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sceneObservation = [(VNSceneClassificationRequest *)requestCopy sceneObservation];
      [(VNSceneClassificationRequest *)self setSceneObservation:sceneObservation];

      customHierarchy = [(VNSceneClassificationRequest *)requestCopy customHierarchy];
      [(VNSceneClassificationRequest *)self _setCustomHierarchy:customHierarchy];

      [(VNSceneClassificationRequest *)self setMaximumLeafObservations:[(VNSceneClassificationRequest *)requestCopy maximumLeafObservations]];
      [(VNSceneClassificationRequest *)self setMaximumHierarchicalObservations:[(VNSceneClassificationRequest *)requestCopy maximumHierarchicalObservations]];
    }
  }
}

- (void)resolvedRevisionDidChangeFromRevision:(unint64_t)revision
{
  v7.receiver = self;
  v7.super_class = VNSceneClassificationRequest;
  [(VNRequest *)&v7 resolvedRevisionDidChangeFromRevision:revision];
  customHierarchy = [(VNSceneClassificationRequest *)self customHierarchy];
  v5 = customHierarchy;
  if (customHierarchy)
  {
    requestRevision = [customHierarchy requestRevision];
    if (requestRevision != [(VNRequest *)self resolvedRevision])
    {
      [(VNSceneClassificationRequest *)self _setCustomHierarchy:0];
    }
  }
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  customHierarchy = [(VNSceneClassificationRequest *)self customHierarchy];
  customHierarchy2 = [configurationCopy customHierarchy];
  v7 = VisionCoreEqualOrNilObjects();

  if ((v7 & 1) != 0 && (v8 = -[VNSceneClassificationRequest maximumLeafObservations](self, "maximumLeafObservations"), v8 == [configurationCopy maximumLeafObservations]) && (v9 = -[VNSceneClassificationRequest maximumHierarchicalObservations](self, "maximumHierarchicalObservations"), v9 == objc_msgSend(configurationCopy, "maximumHierarchicalObservations")) && ((v10 = objc_msgSend(configurationCopy, "resolvedRevision"), v10 == 2) || v10 == 3737841665) && (objc_msgSend(configurationCopy, "sceneObservation"), v11 = objc_claimAutoreleasedReturnValue(), v11, !v11) && (v12 = -[VNRequest detectionLevel](self, "detectionLevel"), v12 == objc_msgSend(configurationCopy, "detectionLevel")))
  {
    v15.receiver = self;
    v15.super_class = VNSceneClassificationRequest;
    v13 = [(VNImageBasedRequest *)&v15 willAcceptCachedResultsFromRequestWithConfiguration:configurationCopy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_setCustomHierarchy:(id)hierarchy
{
  hierarchyCopy = hierarchy;
  configuration = [(VNRequest *)self configuration];
  [configuration setCustomHierarchy:hierarchyCopy];
}

- (VNSceneClassificationRequest)initWithSceneObservation:(id)observation completionHandler:(id)handler
{
  observationCopy = observation;
  handlerCopy = handler;
  v8 = [(VNRequest *)self initWithCompletionHandler:handlerCopy];
  v9 = v8;
  if (v8)
  {
    [(VNSceneClassificationRequest *)v8 setSceneObservation:observationCopy];
    -[VNRequest setRevision:](v9, "setRevision:", [observationCopy requestRevision]);
    v10 = v9;
  }

  return v9;
}

@end