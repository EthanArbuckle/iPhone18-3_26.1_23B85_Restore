@interface VNDetectHumanRectanglesRequest
+ (BOOL)revision:(unint64_t)a3 mayAcceptResultsProducedByRevision:(unint64_t)a4;
+ (id)descriptionForPrivateRevision:(unint64_t)a3;
+ (id)privateRevisionsSet;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (BOOL)upperBodyOnly;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
- (id)description;
- (void)applyConfigurationOfRequest:(id)a3;
- (void)resolvedRevisionDidChangeFromRevision:(unint64_t)a3;
- (void)setUpperBodyOnly:(BOOL)upperBodyOnly;
@end

@implementation VNDetectHumanRectanglesRequest

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

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = VNDetectHumanRectanglesRequest;
  v4 = [(VNImageBasedRequest *)&v8 description];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNDetectHumanRectanglesRequest upperBodyOnly](self, "upperBodyOnly")}];
  v6 = [v3 initWithFormat:@"%@ upperBodyOnly=%@", v4, v5];

  return v6;
}

- (void)resolvedRevisionDidChangeFromRevision:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = VNDetectHumanRectanglesRequest;
  [(VNRequest *)&v5 resolvedRevisionDidChangeFromRevision:a3];
  if ([(VNRequest *)self revision]<= 1)
  {
    v4 = [(VNRequest *)self configuration];
    [v4 setUpperBodyOnly:1];
  }
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(VNDetectHumanRectanglesRequest *)self upperBodyOnly];
  if (v5 == [v4 upperBodyOnly])
  {
    v8.receiver = self;
    v8.super_class = VNDetectHumanRectanglesRequest;
    v6 = [(VNImageBasedRequest *)&v8 willAcceptCachedResultsFromRequestWithConfiguration:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)applyConfigurationOfRequest:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    v5.receiver = self;
    v5.super_class = VNDetectHumanRectanglesRequest;
    [(VNImageBasedRequest *)&v5 applyConfigurationOfRequest:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(VNDetectHumanRectanglesRequest *)self setUpperBodyOnly:[(VNDetectHumanRectanglesRequest *)v4 upperBodyOnly]];
    }
  }
}

- (void)setUpperBodyOnly:(BOOL)upperBodyOnly
{
  v3 = upperBodyOnly;
  if ([VNDetectHumanRectanglesRequest revisionSupportsFullBodyDetection:[(VNRequest *)self resolvedRevision]])
  {
    v5 = [(VNRequest *)self configuration];
    [v5 setUpperBodyOnly:v3];
  }
}

- (BOOL)upperBodyOnly
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 upperBodyOnly];

  return v3;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4
{
  if (a3 - 3737841664u >= 3 && a3 - 1 > 1)
  {
    if (a4)
    {
      [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequest:" ofRequest:?];
      *a4 = v4 = 0;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = @"VNANFDMultiDetectorType";
    v5 = @"VNANFDMultiDetectorType";
  }

  return v4;
}

+ (BOOL)revision:(unint64_t)a3 mayAcceptResultsProducedByRevision:(unint64_t)a4
{
  if ([a1 supportsAnyRevision:a4])
  {
    return 1;
  }

  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___VNDetectHumanRectanglesRequest;
  return objc_msgSendSuper2(&v8, sel_revision_mayAcceptResultsProducedByRevision_, a3, a4);
}

+ (id)descriptionForPrivateRevision:(unint64_t)a3
{
  if (a3 - 3737841664u >= 3)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___VNDetectHumanRectanglesRequest;
    v5 = objc_msgSendSuper2(&v7, sel_descriptionForPrivateRevision_);
  }

  else
  {
    v5 = off_1E77B4308[a3 - 3737841664u];
  }

  return v5;
}

+ (id)privateRevisionsSet
{
  if (+[VNDetectHumanRectanglesRequest(Revisioning) privateRevisionsSet]::onceToken != -1)
  {
    dispatch_once(&+[VNDetectHumanRectanglesRequest(Revisioning) privateRevisionsSet]::onceToken, &__block_literal_global_19441);
  }

  v3 = +[VNDetectHumanRectanglesRequest(Revisioning) privateRevisionsSet]::ourPrivateRevisions;

  return v3;
}

void __66__VNDetectHumanRectanglesRequest_Revisioning__privateRevisionsSet__block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  [v2 addIndex:3737841664];
  if (+[VNANFDMultiDetectorANSTv1 supportsExecution])
  {
    [v2 addIndex:3737841665];
  }

  [v2 addIndex:3737841666];
  v0 = [v2 copy];
  v1 = +[VNDetectHumanRectanglesRequest(Revisioning) privateRevisionsSet]::ourPrivateRevisions;
  +[VNDetectHumanRectanglesRequest(Revisioning) privateRevisionsSet]::ourPrivateRevisions = v0;
}

@end