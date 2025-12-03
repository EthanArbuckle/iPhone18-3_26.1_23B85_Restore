@interface VNVYvzEtX1JlUdu8xx5qhDI
+ (BOOL)revision:(unint64_t)revision mayAcceptResultsProducedByRevision:(unint64_t)byRevision;
+ (id)descriptionForPrivateRevision:(unint64_t)revision;
+ (id)knownClassificationsForRevision:(unint64_t)revision error:(id *)error;
+ (id)privateRevisionsSet;
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration;
- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session;
- (id)supportedIdentifiersAndReturnError:(id *)error;
- (unint64_t)imageCropAndScaleOption;
- (void)setImageCropAndScaleOption:(unint64_t)option;
@end

@implementation VNVYvzEtX1JlUdu8xx5qhDI

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  if (error)
  {
    *error = [VNError errorForUnsupportedRevision:revision ofRequest:self];
  }

  return 0;
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  imageCropAndScaleOption = [configurationCopy imageCropAndScaleOption];
  if (imageCropAndScaleOption == [(VNVYvzEtX1JlUdu8xx5qhDI *)self imageCropAndScaleOption])
  {
    v8.receiver = self;
    v8.super_class = VNVYvzEtX1JlUdu8xx5qhDI;
    v6 = [(VNImageBasedRequest *)&v8 willAcceptCachedResultsFromRequestWithConfiguration:configurationCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session
{
  v12.receiver = self;
  v12.super_class = VNVYvzEtX1JlUdu8xx5qhDI;
  v6 = [(VNRequest *)&v12 newDefaultDetectorOptionsForRequestRevision:revision session:session];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VNVYvzEtX1JlUdu8xx5qhDI imageCropAndScaleOption](self, "imageCropAndScaleOption")}];
  [v6 setObject:v7 forKeyedSubscript:@"VNDetectorProcessOption_ImageCropAndScaleOption"];

  v8 = [VNImageAnalyzerMultiDetector modelForRequestClass:[(VNRequest *)self frameworkClass] revision:revision];
  if (v8)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
    [v6 setObject:v9 forKeyedSubscript:@"VNImageAnalyzerMultiDetectorInitializationOption_Model"];

    v10 = [(VNImageAnalyzerMultiDetectorAnalysisConfiguration *)[VNImageAnalyzerMultiDetectorVNVYvzEtX1JlUdu8xx5qhDIConfiguration alloc] initWithObservationsRecipient:self];
    [v6 setObject:v10 forKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_VNVYvzEtX1JlUdu8xx5qhDIConfiguration"];
  }

  return v6;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error
{
  if (revision == 3737841665 || revision == 1)
  {
    v5 = @"VNImageAnalyzerMultiDetectorType";
    v6 = @"VNImageAnalyzerMultiDetectorType";
  }

  else if (error)
  {
    [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequest:" ofRequest:?];
    *error = v5 = 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
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
  v10[11] = *MEMORY[0x1E69E9840];
  resolvedRevision = [(VNRequest *)self resolvedRevision];
  if (resolvedRevision == 3737841665 || resolvedRevision == 1)
  {
    v10[0] = @"VN62b042cc67e0a7d589ecdb58232fe23d";
    v10[1] = @"VN9bdc36cda32be948a5089e37392596ec";
    v10[2] = @"VN81aedeb999c79d74e79af7f1c922cf97";
    v10[3] = @"VN9f5b8e9dc1b3c824d79372f87b072ee3";
    v10[4] = @"VNbe5c67b06e95370f5a7b67b13e73637c";
    v10[5] = @"VN220a6626eb3cb51295a4e250ad9da319";
    v10[6] = @"VN0af6454e97767772ce64a19ddaf61f0c";
    v10[7] = @"VNeeab04670e53ebeb25150a31963a1aa6";
    v10[8] = @"VNa0c07362d05e1dafb35b96d20d5ce42d";
    v10[9] = @"VN79a8f83d9d55eb4eb2c9695902c47b53";
    v10[10] = @"VNacdca02f0900c2cb198193f3eec7b6c9";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:11];
  }

  else if (error)
  {
    v7 = [VNError errorForUnsupportedRevision:resolvedRevision ofRequest:self];
    v8 = v7;
    v6 = 0;
    *error = v7;
  }

  else
  {
    v6 = 0;
  }

  return v6;
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
  v7.super_class = &OBJC_METACLASS___VNVYvzEtX1JlUdu8xx5qhDI;
  return objc_msgSendSuper2(&v7, sel_revision_mayAcceptResultsProducedByRevision_, revision, revision);
}

+ (id)descriptionForPrivateRevision:(unint64_t)revision
{
  if (revision == 3737841664)
  {
    v5 = @"VNJ4fWm08v8TFm5lmRVji9G";
  }

  else if (revision == 3737841665)
  {
    v5 = @"VNBcvG8BSEpHsJWme0UsCjT";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___VNVYvzEtX1JlUdu8xx5qhDI;
    v5 = objc_msgSendSuper2(&v7, sel_descriptionForPrivateRevision_);
  }

  return v5;
}

+ (id)privateRevisionsSet
{
  if (+[VNVYvzEtX1JlUdu8xx5qhDI privateRevisionsSet]::onceToken != -1)
  {
    dispatch_once(&+[VNVYvzEtX1JlUdu8xx5qhDI privateRevisionsSet]::onceToken, &__block_literal_global_6948);
  }

  v3 = +[VNVYvzEtX1JlUdu8xx5qhDI privateRevisionsSet]::ourPrivateRevisions;

  return v3;
}

uint64_t __46__VNVYvzEtX1JlUdu8xx5qhDI_privateRevisionsSet__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  +[VNVYvzEtX1JlUdu8xx5qhDI privateRevisionsSet]::ourPrivateRevisions = VNRequestPrivateRevisionsSet(0xDECAF001uLL, a2, a3, a4, a5, a6, a7, a8, 0);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)knownClassificationsForRevision:(unint64_t)revision error:(id *)error
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

@end