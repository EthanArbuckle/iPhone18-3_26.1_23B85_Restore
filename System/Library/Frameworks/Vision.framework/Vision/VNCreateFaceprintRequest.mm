@interface VNCreateFaceprintRequest
+ (BOOL)revision:(unint64_t)a3 mayAcceptResultsProducedByRevision:(unint64_t)a4;
+ (id)createVNEntityIdentificationModelEntryPrintForRevision:(unint64_t)a3 fromDescriptorData:(const void *)a4 length:(unint64_t)a5 elementCount:(unint64_t)a6 error:(id *)a7;
+ (id)descriptionForPrivateRevision:(unint64_t)a3;
+ (id)privateRevisionsSet;
+ (id)publicRevisionsSet;
- (BOOL)forceFaceprintCreation;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (BOOL)warmUpSession:(id)a3 error:(id *)a4;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3;
- (void)setForceFaceprintCreation:(BOOL)a3;
@end

@implementation VNCreateFaceprintRequest

+ (id)createVNEntityIdentificationModelEntryPrintForRevision:(unint64_t)a3 fromDescriptorData:(const void *)a4 length:(unint64_t)a5 elementCount:(unint64_t)a6 error:(id *)a7
{
  v11 = [VNFaceprint alloc];
  LODWORD(v12) = 1.0;
  v13 = [(VNFaceprint *)v11 initWithData:a4 elementCount:a6 elementType:1 lengthInBytes:a5 confidence:a3 requestRevision:v12];

  return v13;
}

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = [VNError errorForUnsupportedRevision:1 ofRequestClass:objc_opt_class()];
  }

  return 0;
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(VNCreateFaceprintRequest *)self forceFaceprintCreation];
  if (v5 == [v4 forceFaceprintCreation])
  {
    v8.receiver = self;
    v8.super_class = VNCreateFaceprintRequest;
    v6 = [(VNImageBasedRequest *)&v8 willAcceptCachedResultsFromRequestWithConfiguration:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setForceFaceprintCreation:(BOOL)a3
{
  v3 = a3;
  v4 = [(VNRequest *)self configuration];
  [v4 setForceFaceprintCreation:v3];
}

- (BOOL)forceFaceprintCreation
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 forceFaceprintCreation];

  return v3;
}

- (BOOL)warmUpSession:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = VNCreateFaceprintRequest;
  if ([(VNRequest *)&v18 warmUpSession:v6 error:a4])
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __48__VNCreateFaceprintRequest_warmUpSession_error___block_invoke;
    v15 = &unk_1E77B62D0;
    v16 = self;
    v17 = v6;
    v7 = _Block_copy(&v12);
    v8 = [(VNRequest *)self resolvedRevision:v12];
    if (v8 > 3737841668)
    {
      if (v8 == 3737841669)
      {
        v9 = v7[2](v7, 7, a4);
      }

      else
      {
        if (v8 != 3737841670)
        {
          goto LABEL_10;
        }

        v9 = v7[2](v7, 101, a4);
      }
    }

    else
    {
      if (v8 != 3737841666)
      {
        if (v8 == 3737841667)
        {
          v9 = v7[2](v7, 6, a4);
          goto LABEL_14;
        }

LABEL_10:
        if (a4)
        {
          [VNError errorForUnsupportedRevision:v8 ofRequest:self];
          *a4 = v10 = 0;
LABEL_17:

          goto LABEL_18;
        }

LABEL_16:
        v10 = 0;
        goto LABEL_17;
      }

      v9 = v7[2](v7, 100, a4);
    }

LABEL_14:
    if (v9)
    {
      v10 = 1;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v10 = 0;
LABEL_18:

  return v10;
}

uint64_t __48__VNCreateFaceprintRequest_warmUpSession_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = [VNFaceAnalyzerCompoundRequest alloc];
  v14[0] = *(a1 + 32);
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v8 = [(VNCompoundRequest *)v6 initWithOriginalRequests:v7];

  v9 = [(VNRequest *)v8 newDefaultDetectorOptionsForRequestRevision:a2 session:*(a1 + 40)];
  v10 = [*(a1 + 40) detectorOfType:@"VNFaceAnalyzerMultiDetectorType" configuredWithOptions:v9 error:a3];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 warmUpSession:*(a1 + 40) withOptions:v9 error:a3];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)descriptionForPrivateRevision:(unint64_t)a3
{
  v5 = a3 - 3737841666u;
  if (a3 - 3737841666u < 5 && ((0x1Bu >> v5) & 1) != 0)
  {
    v6 = off_1E77B62F0[v5];
  }

  else
  {
    v9 = v3;
    v10 = v4;
    v8.receiver = a1;
    v8.super_class = &OBJC_METACLASS___VNCreateFaceprintRequest;
    v6 = objc_msgSendSuper2(&v8, sel_descriptionForPrivateRevision_);
  }

  return v6;
}

+ (id)privateRevisionsSet
{
  if (+[VNCreateFaceprintRequest privateRevisionsSet]::onceToken != -1)
  {
    dispatch_once(&+[VNCreateFaceprintRequest privateRevisionsSet]::onceToken, &__block_literal_global_35113);
  }

  v3 = +[VNCreateFaceprintRequest privateRevisionsSet]::ourPrivateRevisions;

  return v3;
}

uint64_t __47__VNCreateFaceprintRequest_privateRevisionsSet__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  +[VNCreateFaceprintRequest privateRevisionsSet]::ourPrivateRevisions = VNRequestPrivateRevisionsSet(0xDECAF005uLL, a2, a3, a4, a5, a6, a7, a8, 3737841666);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)publicRevisionsSet
{
  v2 = objc_alloc_init(MEMORY[0x1E696AC90]);

  return v2;
}

+ (BOOL)revision:(unint64_t)a3 mayAcceptResultsProducedByRevision:(unint64_t)a4
{
  if (a3 != a4)
  {
    return 0;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___VNCreateFaceprintRequest;
  return objc_msgSendSuper2(&v7, sel_revision_mayAcceptResultsProducedByRevision_, a3, a3);
}

@end