@interface VNRecognizeAnimalsRequest
+ (NSArray)knownAnimalIdentifiersForRevision:(NSUInteger)requestRevision error:(NSError *)error;
+ (id)descriptionForPrivateRevision:(unint64_t)revision;
+ (id)privateRevisionsSet;
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (NSArray)supportedIdentifiersAndReturnError:(NSError *)error;
- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error;
@end

@implementation VNRecognizeAnimalsRequest

+ (NSArray)knownAnimalIdentifiersForRevision:(NSUInteger)requestRevision error:(NSError *)error
{
  v6 = objc_alloc_init(self);
  if ([v6 setRevision:requestRevision error:error])
  {
    v7 = [v6 supportedIdentifiersAndReturnError:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
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

- (NSArray)supportedIdentifiersAndReturnError:(NSError *)error
{
  knownAnimalIdentifiers = [(VNRequest *)self applicableDetectorClassAndOptions:0 forRevision:[(VNRequest *)self resolvedRevision] error:error];
  if (knownAnimalIdentifiers)
  {
    v6 = knownAnimalIdentifiers;
    if (objc_opt_respondsToSelector())
    {
      knownAnimalIdentifiers = [(objc_class *)v6 knownAnimalIdentifiers];
    }

    else
    {
      if (error)
      {
        specifier = [(VNRequest *)self specifier];
        *error = [VNError errorForUnsupportedRequestSpecifier:specifier];
      }

      knownAnimalIdentifiers = 0;
    }
  }

  return knownAnimalIdentifiers;
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

+ (id)descriptionForPrivateRevision:(unint64_t)revision
{
  if (revision - 3737841664u >= 3)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___VNRecognizeAnimalsRequest;
    v5 = objc_msgSendSuper2(&v7, sel_descriptionForPrivateRevision_);
  }

  else
  {
    v5 = *(&off_1E77B40F0 + revision - 3737841664u);
  }

  return v5;
}

+ (id)privateRevisionsSet
{
  if (+[VNRecognizeAnimalsRequest(Revisioning) privateRevisionsSet]::onceToken != -1)
  {
    dispatch_once(&+[VNRecognizeAnimalsRequest(Revisioning) privateRevisionsSet]::onceToken, &__block_literal_global_17909);
  }

  v3 = +[VNRecognizeAnimalsRequest(Revisioning) privateRevisionsSet]::ourPrivateRevisions;

  return v3;
}

void __61__VNRecognizeAnimalsRequest_Revisioning__privateRevisionsSet__block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  [v2 addIndex:3737841664];
  if (+[VNANFDMultiDetectorANSTv1 supportsExecution])
  {
    [v2 addIndex:3737841665];
  }

  [v2 addIndex:3737841666];
  v0 = [v2 copy];
  v1 = +[VNRecognizeAnimalsRequest(Revisioning) privateRevisionsSet]::ourPrivateRevisions;
  +[VNRecognizeAnimalsRequest(Revisioning) privateRevisionsSet]::ourPrivateRevisions = v0;
}

@end