@interface VNDetectHumanRectanglesRequest
+ (BOOL)revision:(unint64_t)revision mayAcceptResultsProducedByRevision:(unint64_t)byRevision;
+ (id)descriptionForPrivateRevision:(unint64_t)revision;
+ (id)privateRevisionsSet;
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (BOOL)upperBodyOnly;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration;
- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error;
- (id)description;
- (void)applyConfigurationOfRequest:(id)request;
- (void)resolvedRevisionDidChangeFromRevision:(unint64_t)revision;
- (void)setUpperBodyOnly:(BOOL)upperBodyOnly;
@end

@implementation VNDetectHumanRectanglesRequest

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

- (void)resolvedRevisionDidChangeFromRevision:(unint64_t)revision
{
  v5.receiver = self;
  v5.super_class = VNDetectHumanRectanglesRequest;
  [(VNRequest *)&v5 resolvedRevisionDidChangeFromRevision:revision];
  if ([(VNRequest *)self revision]<= 1)
  {
    configuration = [(VNRequest *)self configuration];
    [configuration setUpperBodyOnly:1];
  }
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  upperBodyOnly = [(VNDetectHumanRectanglesRequest *)self upperBodyOnly];
  if (upperBodyOnly == [configurationCopy upperBodyOnly])
  {
    v8.receiver = self;
    v8.super_class = VNDetectHumanRectanglesRequest;
    v6 = [(VNImageBasedRequest *)&v8 willAcceptCachedResultsFromRequestWithConfiguration:configurationCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)applyConfigurationOfRequest:(id)request
{
  requestCopy = request;
  if (self != requestCopy)
  {
    v5.receiver = self;
    v5.super_class = VNDetectHumanRectanglesRequest;
    [(VNImageBasedRequest *)&v5 applyConfigurationOfRequest:requestCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(VNDetectHumanRectanglesRequest *)self setUpperBodyOnly:[(VNDetectHumanRectanglesRequest *)requestCopy upperBodyOnly]];
    }
  }
}

- (void)setUpperBodyOnly:(BOOL)upperBodyOnly
{
  v3 = upperBodyOnly;
  if ([VNDetectHumanRectanglesRequest revisionSupportsFullBodyDetection:[(VNRequest *)self resolvedRevision]])
  {
    configuration = [(VNRequest *)self configuration];
    [configuration setUpperBodyOnly:v3];
  }
}

- (BOOL)upperBodyOnly
{
  configuration = [(VNRequest *)self configuration];
  upperBodyOnly = [configuration upperBodyOnly];

  return upperBodyOnly;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error
{
  if (revision - 3737841664u >= 3 && revision - 1 > 1)
  {
    if (error)
    {
      [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequest:" ofRequest:?];
      *error = v4 = 0;
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

+ (BOOL)revision:(unint64_t)revision mayAcceptResultsProducedByRevision:(unint64_t)byRevision
{
  if ([self supportsAnyRevision:byRevision])
  {
    return 1;
  }

  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___VNDetectHumanRectanglesRequest;
  return objc_msgSendSuper2(&v8, sel_revision_mayAcceptResultsProducedByRevision_, revision, byRevision);
}

+ (id)descriptionForPrivateRevision:(unint64_t)revision
{
  if (revision - 3737841664u >= 3)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___VNDetectHumanRectanglesRequest;
    v5 = objc_msgSendSuper2(&v7, sel_descriptionForPrivateRevision_);
  }

  else
  {
    v5 = off_1E77B4308[revision - 3737841664u];
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