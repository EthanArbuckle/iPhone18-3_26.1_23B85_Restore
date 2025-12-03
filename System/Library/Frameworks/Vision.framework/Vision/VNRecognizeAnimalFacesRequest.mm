@interface VNRecognizeAnimalFacesRequest
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error;
- (id)supportedIdentifiersAndReturnError:(id *)error;
@end

@implementation VNRecognizeAnimalFacesRequest

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
  knownAnimalFaceIdentifiers = [(VNRequest *)self applicableDetectorClassAndOptions:0 forRevision:[(VNRequest *)self resolvedRevision] error:error];
  if (knownAnimalFaceIdentifiers)
  {
    v6 = knownAnimalFaceIdentifiers;
    if (objc_opt_respondsToSelector())
    {
      knownAnimalFaceIdentifiers = [(objc_class *)v6 knownAnimalFaceIdentifiers];
    }

    else
    {
      if (error)
      {
        specifier = [(VNRequest *)self specifier];
        *error = [VNError errorForUnsupportedRequestSpecifier:specifier];
      }

      knownAnimalFaceIdentifiers = 0;
    }
  }

  return knownAnimalFaceIdentifiers;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error
{
  if (revision == 1)
  {
    v4 = @"VNANFDMultiDetectorType";
    v5 = @"VNANFDMultiDetectorType";
  }

  else if (error)
  {
    [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequest:" ofRequest:?];
    *error = v4 = 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end