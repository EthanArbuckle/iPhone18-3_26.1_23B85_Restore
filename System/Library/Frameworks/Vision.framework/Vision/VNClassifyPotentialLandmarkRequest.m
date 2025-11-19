@interface VNClassifyPotentialLandmarkRequest
+ (BOOL)revision:(unint64_t)a3 mayAcceptResultsProducedByRevision:(unint64_t)a4;
+ (id)descriptionForPrivateRevision:(unint64_t)a3;
+ (id)knownClassificationsForRevision:(unint64_t)a3 error:(id *)a4;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4;
- (id)supportedIdentifiersAndReturnError:(id *)a3;
- (unint64_t)imageCropAndScaleOption;
- (void)setImageCropAndScaleOption:(unint64_t)a3;
@end

@implementation VNClassifyPotentialLandmarkRequest

+ (BOOL)revision:(unint64_t)a3 mayAcceptResultsProducedByRevision:(unint64_t)a4
{
  if (a3 != a4)
  {
    return 0;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___VNClassifyPotentialLandmarkRequest;
  return objc_msgSendSuper2(&v7, sel_revision_mayAcceptResultsProducedByRevision_, a3, a3);
}

+ (id)descriptionForPrivateRevision:(unint64_t)a3
{
  if (a3 == 3737841664)
  {
    v5 = @"VNClassifyPotentialLandmarkRequestPrivateRevisionStillCapturePipeline";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___VNClassifyPotentialLandmarkRequest;
    v5 = objc_msgSendSuper2(&v7, sel_descriptionForPrivateRevision_);
  }

  return v5;
}

+ (id)knownClassificationsForRevision:(unint64_t)a3 error:(id *)a4
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

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v8 = a4;
  if (a3 == 1)
  {
    if (a5)
    {
      v9 = [VNError errorForUnsupportedConfigurationOfRequest:self];
LABEL_6:
      *a5 = v9;
    }
  }

  else if (a5)
  {
    v9 = [VNError errorForUnsupportedRevision:a3 ofRequest:self];
    goto LABEL_6;
  }

  return 0;
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(VNClassifyPotentialLandmarkRequest *)self imageCropAndScaleOption];
  if (v5 == [v4 imageCropAndScaleOption])
  {
    v8.receiver = self;
    v8.super_class = VNClassifyPotentialLandmarkRequest;
    v6 = [(VNImageBasedRequest *)&v8 willAcceptCachedResultsFromRequestWithConfiguration:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4
{
  v12.receiver = self;
  v12.super_class = VNClassifyPotentialLandmarkRequest;
  v6 = [(VNRequest *)&v12 newDefaultDetectorOptionsForRequestRevision:a3 session:a4];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VNClassifyPotentialLandmarkRequest imageCropAndScaleOption](self, "imageCropAndScaleOption")}];
  [v6 setObject:v7 forKeyedSubscript:@"VNDetectorProcessOption_ImageCropAndScaleOption"];

  v8 = [VNImageAnalyzerMultiDetector modelForRequestClass:[(VNRequest *)self frameworkClass] revision:a3];
  if (v8)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
    [v6 setObject:v9 forKeyedSubscript:@"VNImageAnalyzerMultiDetectorInitializationOption_Model"];

    v10 = [(VNImageAnalyzerMultiDetectorAnalysisConfiguration *)[VNImageAnalyzerMultiDetectorPotentialLandmarkClassificationConfiguration alloc] initWithObservationsRecipient:self];
    [v6 setObject:v10 forKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_PotentialLandmarkConfiguration"];
  }

  return v6;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4
{
  if (a3 == 1)
  {
    v4 = @"VNImageAnalyzerMultiDetectorType";
    v5 = @"VNImageAnalyzerMultiDetectorType";
  }

  else if (a4)
  {
    [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequest:" ofRequest:?];
    *a4 = v4 = 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setImageCropAndScaleOption:(unint64_t)a3
{
  v4 = [(VNRequest *)self configuration];
  [v4 setImageCropAndScaleOption:a3];
}

- (unint64_t)imageCropAndScaleOption
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 imageCropAndScaleOption];

  return v3;
}

- (id)supportedIdentifiersAndReturnError:(id *)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = [(VNRequest *)self resolvedRevision];
  if (v4 == 1)
  {
    v9[0] = @"VNPotentialLandmarkIdentifier";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  else if (a3)
  {
    v6 = [VNError errorForUnsupportedRevision:v4 ofRequestClass:objc_opt_class()];
    v7 = v6;
    v5 = 0;
    *a3 = v6;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end