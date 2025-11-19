@interface VNRecognizeSportBallsRequest
+ (id)descriptionForPrivateRevision:(unint64_t)a3;
+ (id)privateRevisionsSet;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
- (id)supportedIdentifiersAndReturnError:(id *)a3;
@end

@implementation VNRecognizeSportBallsRequest

+ (id)descriptionForPrivateRevision:(unint64_t)a3
{
  if (a3 == 3737841664)
  {
    v5 = @"VNRecognizeSportBallsRequestPrivateRevisionANSTModel";
  }

  else if (a3 == 3737841665)
  {
    v5 = @"VNRecognizeSportBallsRequestPrivateRevisionANODv5";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___VNRecognizeSportBallsRequest;
    v5 = objc_msgSendSuper2(&v7, sel_descriptionForPrivateRevision_);
  }

  return v5;
}

+ (id)privateRevisionsSet
{
  if (+[VNRecognizeSportBallsRequest privateRevisionsSet]::onceToken != -1)
  {
    dispatch_once(&+[VNRecognizeSportBallsRequest privateRevisionsSet]::onceToken, &__block_literal_global_10912);
  }

  v3 = +[VNRecognizeSportBallsRequest privateRevisionsSet]::ourPrivateRevisions;

  return v3;
}

void __51__VNRecognizeSportBallsRequest_privateRevisionsSet__block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  if (+[VNANFDMultiDetectorANSTv1 supportsExecution])
  {
    [v2 addIndex:3737841664];
  }

  [v2 addIndex:3737841665];
  v0 = [v2 copy];
  v1 = +[VNRecognizeSportBallsRequest privateRevisionsSet]::ourPrivateRevisions;
  +[VNRecognizeSportBallsRequest privateRevisionsSet]::ourPrivateRevisions = v0;
}

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  if (a5)
  {
    v7 = [(VNRequest *)self applicableDetectorClassAndOptions:0 forRevision:a3 error:0];
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = objc_opt_class();
    v10 = VNRequestRevisionString(v9, a3);
    v11 = NSStringFromClass(v7);
    v12 = [v8 initWithFormat:@"%@ is handled by %@", v10, v11];

    *a5 = [VNError errorForInternalErrorWithLocalizedDescription:v12];
  }

  return 0;
}

- (id)supportedIdentifiersAndReturnError:(id *)a3
{
  v5 = [(VNRequest *)self applicableDetectorClassAndOptions:0 forRevision:[(VNRequest *)self resolvedRevision] error:a3];
  if (v5)
  {
    v6 = v5;
    if (objc_opt_respondsToSelector())
    {
      v5 = [(objc_class *)v6 knownSportBallIdentifiers];
    }

    else
    {
      if (a3)
      {
        v7 = [(VNRequest *)self specifier];
        *a3 = [VNError errorForUnsupportedRequestSpecifier:v7];
      }

      v5 = 0;
    }
  }

  return v5;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4
{
  if (a3 - 3737841664u < 2 || a3 == 1)
  {
    v5 = @"VNANFDMultiDetectorType";
    v6 = @"VNANFDMultiDetectorType";
  }

  else if (a4)
  {
    [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequest:" ofRequest:?];
    *a4 = v5 = 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end