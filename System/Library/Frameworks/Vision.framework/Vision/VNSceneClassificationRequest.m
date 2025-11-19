@interface VNSceneClassificationRequest
+ (BOOL)revision:(unint64_t)a3 mayAcceptResultsProducedByRevision:(unint64_t)a4;
+ (NSArray)knownSceneClassifications;
+ (const)dependentRequestCompatibility;
+ (id)descriptionForPrivateRevision:(unint64_t)a3;
+ (id)knownSceneClassificationsForRevision:(unint64_t)a3 error:(id *)a4;
+ (id)privateRevisionsSet;
- (BOOL)defineCustomHierarchy:(id)a3 error:(id *)a4;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3;
- (VNClassificationCustomHierarchy)customHierarchy;
- (VNSceneClassificationRequest)initWithSceneObservation:(id)a3 completionHandler:(id)a4;
- (VNSceneObservation)sceneObservation;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
- (id)defineCustomHierarchyWithRelationships:(id)a3 error:(id *)a4;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4;
- (id)supportedIdentifiersAndReturnError:(id *)a3;
- (unint64_t)maximumHierarchicalObservations;
- (unint64_t)maximumLeafObservations;
- (void)_setCustomHierarchy:(id)a3;
- (void)applyConfigurationOfRequest:(id)a3;
- (void)resolvedRevisionDidChangeFromRevision:(unint64_t)a3;
- (void)setMaximumHierarchicalObservations:(unint64_t)a3;
- (void)setMaximumLeafObservations:(unint64_t)a3;
- (void)setSceneObservation:(id)a3;
@end

@implementation VNSceneClassificationRequest

+ (id)descriptionForPrivateRevision:(unint64_t)a3
{
  if (a3 == 3737841664)
  {
    v5 = @"VNSceneClassificationRequestPrivateRevisionSceneNetV4";
  }

  else if (a3 == 3737841665)
  {
    v5 = @"VNSceneClassificationRequestPrivateRevisionSceneNetV5";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = a1;
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

+ (id)knownSceneClassificationsForRevision:(unint64_t)a3 error:(id *)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(a1);
  if ([v6 setRevision:a3 error:a4])
  {
    v7 = [v6 supportedIdentifiersAndReturnError:a4];
    if (v7)
    {
      v8 = [v6 specifier];
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
            v17 = [(VNClassificationObservation *)v15 initWithOriginatingRequestSpecifier:v8 identifier:v14 confidence:v16, v19];
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
  v2 = [a1 knownSceneClassificationsForRevision:objc_msgSend(a1 error:{"defaultRevision"), 0}];
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

+ (BOOL)revision:(unint64_t)a3 mayAcceptResultsProducedByRevision:(unint64_t)a4
{
  v7 = [VNImageAnalyzerMultiDetector modelForRequestClass:a1 revision:a3];
  if (v7 != [VNImageAnalyzerMultiDetector modelForRequestClass:a1 revision:a4])
  {
    return 0;
  }

  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___VNSceneClassificationRequest;
  return objc_msgSendSuper2(&v9, sel_revision_mayAcceptResultsProducedByRevision_, a3, a4);
}

- (id)defineCustomHierarchyWithRelationships:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [VNClassificationCustomHierarchy customHierarchyForRequest:self error:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 customHierarchyWithAdditionalRelationships:v6 error:a4];

    if (v9 && [(VNSceneClassificationRequest *)self defineCustomHierarchy:v9 error:a4])
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

- (BOOL)defineCustomHierarchy:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    [(VNSceneClassificationRequest *)self _setCustomHierarchy:0];
    goto LABEL_5;
  }

  v7 = [(VNRequest *)self resolvedRevision];
  v8 = [v6 requestRevision];
  if (v7 == v8)
  {
    [(VNSceneClassificationRequest *)self _setCustomHierarchy:v6];
LABEL_5:
    LOBYTE(a4) = 1;
    goto LABEL_8;
  }

  if (a4)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"the custom hierarchy is for request revision %lu, not %lu", v8, v7];
    *a4 = [VNError errorForInvalidOperationWithLocalizedDescription:v9];

    LOBYTE(a4) = 0;
  }

LABEL_8:

  return a4;
}

- (VNClassificationCustomHierarchy)customHierarchy
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 customHierarchy];

  return v3;
}

- (void)setMaximumHierarchicalObservations:(unint64_t)a3
{
  v4 = [(VNRequest *)self configuration];
  [v4 setMaximumHierarchicalObservations:a3];
}

- (unint64_t)maximumHierarchicalObservations
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 maximumHierarchicalObservations];

  return v3;
}

- (void)setMaximumLeafObservations:(unint64_t)a3
{
  v4 = [(VNRequest *)self configuration];
  [v4 setMaximumLeafObservations:a3];
}

- (unint64_t)maximumLeafObservations
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 maximumLeafObservations];

  return v3;
}

- (void)setSceneObservation:(id)a3
{
  v5 = a3;
  v4 = [(VNRequest *)self configuration];
  [v4 setSceneObservation:v5];
}

- (VNSceneObservation)sceneObservation
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 sceneObservation];

  return v3;
}

- (id)supportedIdentifiersAndReturnError:(id *)a3
{
  v5 = [(VNRequest *)self resolvedRevision];
  v14 = 0;
  v6 = [(VNRequest *)self applicableDetectorClassAndOptions:&v14 forRevision:v5 error:a3];
  v7 = v14;
  if (!v6)
  {
    v8 = 0;
    goto LABEL_5;
  }

  if ([(objc_class *)v6 isSubclassOfClass:objc_opt_class()])
  {
    v8 = [(objc_class *)v6 allClassificationIdentifiersWithConfigurationOptions:v7 error:a3];
LABEL_5:
    v9 = v7;
    goto LABEL_13;
  }

  v10 = objc_alloc_init(VNSession);
  v13 = v7;
  v11 = [(VNRequest *)self applicableDetectorAndOptions:&v13 forRevision:v5 loadedInSession:v10 error:a3];
  v9 = v13;

  if (!v11)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a3)
    {
      [VNError errorForUnsupportedRevision:v5 ofRequest:self];
      *a3 = v8 = 0;
      goto LABEL_12;
    }

LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  v8 = [v11 allSceneIdentifiersWithOptions:v9 error:a3];
LABEL_12:

LABEL_13:

  return v8;
}

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v8 = a4;
  if (a3 == 3737841665 || a3 == 2)
  {
    if (a5)
    {
      v9 = [VNError errorForUnsupportedConfigurationOfRequest:self];
LABEL_7:
      *a5 = v9;
    }
  }

  else if (a5)
  {
    v9 = [VNError errorForUnsupportedRevision:a3 ofRequest:self];
    goto LABEL_7;
  }

  return 0;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = VNSceneClassificationRequest;
  v6 = [(VNRequest *)&v18 newDefaultDetectorOptionsForRequestRevision:a3 session:a4];
  v7 = [(VNRequest *)self frameworkClass];
  if ([VNCoreSceneUnderstandingDetector handlesRequestClass:v7 revision:a3])
  {
    v8 = [[VNCoreSceneUnderstandingDetectorImageClassificationConfiguration alloc] initWithObservationsRecipient:self];
    v20[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    [v6 setObject:v9 forKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_ImageClassificationConfigurations"];

    v10 = v6;
  }

  else
  {
    v11 = [VNImageAnalyzerMultiDetector modelForRequestClass:v7 revision:a3];
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

- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4
{
  v7 = [(VNRequest *)self frameworkClass];
  if ([VNCoreSceneUnderstandingDetector handlesRequestClass:v7 revision:a3])
  {
    v8 = @"VNCoreSceneUnderstandingDetectorType";
LABEL_5:
    v9 = v8;
    goto LABEL_6;
  }

  if ([VNImageAnalyzerMultiDetector modelForRequestClass:v7 revision:a3])
  {
    v8 = @"VNImageAnalyzerMultiDetectorType";
    goto LABEL_5;
  }

  if (a4)
  {
    [VNError errorForUnsupportedRevision:a3 ofRequest:self];
    *a4 = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

LABEL_6:

  return v8;
}

- (void)applyConfigurationOfRequest:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    v7.receiver = self;
    v7.super_class = VNSceneClassificationRequest;
    [(VNImageBasedRequest *)&v7 applyConfigurationOfRequest:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(VNSceneClassificationRequest *)v4 sceneObservation];
      [(VNSceneClassificationRequest *)self setSceneObservation:v5];

      v6 = [(VNSceneClassificationRequest *)v4 customHierarchy];
      [(VNSceneClassificationRequest *)self _setCustomHierarchy:v6];

      [(VNSceneClassificationRequest *)self setMaximumLeafObservations:[(VNSceneClassificationRequest *)v4 maximumLeafObservations]];
      [(VNSceneClassificationRequest *)self setMaximumHierarchicalObservations:[(VNSceneClassificationRequest *)v4 maximumHierarchicalObservations]];
    }
  }
}

- (void)resolvedRevisionDidChangeFromRevision:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = VNSceneClassificationRequest;
  [(VNRequest *)&v7 resolvedRevisionDidChangeFromRevision:a3];
  v4 = [(VNSceneClassificationRequest *)self customHierarchy];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 requestRevision];
    if (v6 != [(VNRequest *)self resolvedRevision])
    {
      [(VNSceneClassificationRequest *)self _setCustomHierarchy:0];
    }
  }
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(VNSceneClassificationRequest *)self customHierarchy];
  v6 = [v4 customHierarchy];
  v7 = VisionCoreEqualOrNilObjects();

  if ((v7 & 1) != 0 && (v8 = -[VNSceneClassificationRequest maximumLeafObservations](self, "maximumLeafObservations"), v8 == [v4 maximumLeafObservations]) && (v9 = -[VNSceneClassificationRequest maximumHierarchicalObservations](self, "maximumHierarchicalObservations"), v9 == objc_msgSend(v4, "maximumHierarchicalObservations")) && ((v10 = objc_msgSend(v4, "resolvedRevision"), v10 == 2) || v10 == 3737841665) && (objc_msgSend(v4, "sceneObservation"), v11 = objc_claimAutoreleasedReturnValue(), v11, !v11) && (v12 = -[VNRequest detectionLevel](self, "detectionLevel"), v12 == objc_msgSend(v4, "detectionLevel")))
  {
    v15.receiver = self;
    v15.super_class = VNSceneClassificationRequest;
    v13 = [(VNImageBasedRequest *)&v15 willAcceptCachedResultsFromRequestWithConfiguration:v4];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_setCustomHierarchy:(id)a3
{
  v5 = a3;
  v4 = [(VNRequest *)self configuration];
  [v4 setCustomHierarchy:v5];
}

- (VNSceneClassificationRequest)initWithSceneObservation:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(VNRequest *)self initWithCompletionHandler:v7];
  v9 = v8;
  if (v8)
  {
    [(VNSceneClassificationRequest *)v8 setSceneObservation:v6];
    -[VNRequest setRevision:](v9, "setRevision:", [v6 requestRevision]);
    v10 = v9;
  }

  return v9;
}

@end