@interface VNRecognizeSportBallsRequest
+ (id)descriptionForPrivateRevision:(unint64_t)revision;
+ (id)privateRevisionsSet;
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error;
- (id)supportedIdentifiersAndReturnError:(id *)error;
@end

@implementation VNRecognizeSportBallsRequest

+ (id)descriptionForPrivateRevision:(unint64_t)revision
{
  if (revision == 3737841664)
  {
    v5 = @"VNRecognizeSportBallsRequestPrivateRevisionANSTModel";
  }

  else if (revision == 3737841665)
  {
    v5 = @"VNRecognizeSportBallsRequestPrivateRevisionANODv5";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
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

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  if (error)
  {
    v7 = [(VNRequest *)self applicableDetectorClassAndOptions:0 forRevision:revision error:0];
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = objc_opt_class();
    v10 = VNRequestRevisionString(v9, revision);
    v11 = NSStringFromClass(v7);
    v12 = [v8 initWithFormat:@"%@ is handled by %@", v10, v11];

    *error = [VNError errorForInternalErrorWithLocalizedDescription:v12];
  }

  return 0;
}

- (id)supportedIdentifiersAndReturnError:(id *)error
{
  knownSportBallIdentifiers = [(VNRequest *)self applicableDetectorClassAndOptions:0 forRevision:[(VNRequest *)self resolvedRevision] error:error];
  if (knownSportBallIdentifiers)
  {
    v6 = knownSportBallIdentifiers;
    if (objc_opt_respondsToSelector())
    {
      knownSportBallIdentifiers = [(objc_class *)v6 knownSportBallIdentifiers];
    }

    else
    {
      if (error)
      {
        specifier = [(VNRequest *)self specifier];
        *error = [VNError errorForUnsupportedRequestSpecifier:specifier];
      }

      knownSportBallIdentifiers = 0;
    }
  }

  return knownSportBallIdentifiers;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error
{
  if (revision - 3737841664u < 2 || revision == 1)
  {
    v5 = @"VNANFDMultiDetectorType";
    v6 = @"VNANFDMultiDetectorType";
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

@end