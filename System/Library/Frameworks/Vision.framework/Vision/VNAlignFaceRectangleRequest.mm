@interface VNAlignFaceRectangleRequest
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration;
- (VNAlignFaceRectangleRequest)initWithFaceObservations:(id)observations completionHandler:(id)handler;
- (id)newDuplicateInstance;
@end

@implementation VNAlignFaceRectangleRequest

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  inputFaceObservations = [(VNAlignFaceRectangleRequest *)self inputFaceObservations];
  inputFaceObservations2 = [configurationCopy inputFaceObservations];
  IsSubsetOfFaceObservationsCollection = VNFaceObservationsCollectionIsSubsetOfFaceObservationsCollection(inputFaceObservations, inputFaceObservations2);

  if (IsSubsetOfFaceObservationsCollection)
  {
    v10.receiver = self;
    v10.super_class = VNAlignFaceRectangleRequest;
    v8 = [(VNRequest *)&v10 willAcceptCachedResultsFromRequestWithConfiguration:configurationCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  contextCopy = context;
  VNValidatedLog(1, @"Processing Align Face Rectangle request\n", v9, v10, v11, v12, v13, v14, v22);
  v15 = [(VNAlignFaceRectangleRequest *)self applicableDetectorTypeForRevision:revision error:error];
  if (!v15)
  {
    goto LABEL_9;
  }

  if (!self->_inputFaceObservations)
  {
    if (error)
    {
      [VNError errorWithCode:7 message:@"Input faces not provided to face rectangle aligner"];
      *error = v20 = 0;
      goto LABEL_12;
    }

LABEL_9:
    v20 = 0;
    goto LABEL_12;
  }

  session = [contextCopy session];
  v17 = [contextCopy imageBufferAndReturnError:error];
  if (v17)
  {
    v18 = [(VNRequest *)self newDefaultDetectorOptionsForRequestRevision:revision session:session];
    error = [(VNRequest *)self processFaceObservations:self->_inputFaceObservations revision:revision regionOfInterest:v15 detectorType:v18 detectorOptions:&__block_literal_global_32010 shouldAlignFaceBBox:&__block_literal_global_48 shouldRunDetectorBlock:*MEMORY[0x1E695F050] context:*(MEMORY[0x1E695F050] + 8) error:*(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), contextCopy, error];
    v20 = error != 0;
    if (error)
    {
      [(VNRequest *)self setResults:error];
    }
  }

  else
  {
    v20 = 0;
  }

LABEL_12:
  return v20;
}

- (id)newDuplicateInstance
{
  v3 = objc_alloc(objc_opt_class());
  inputFaceObservations = self->_inputFaceObservations;
  completionHandler = [(VNRequest *)self completionHandler];
  v6 = [v3 initWithFaceObservations:inputFaceObservations completionHandler:completionHandler];

  return v6;
}

- (VNAlignFaceRectangleRequest)initWithFaceObservations:(id)observations completionHandler:(id)handler
{
  observationsCopy = observations;
  handlerCopy = handler;
  if ([VNValidationUtilities validateRequiredFaceObservations:observationsCopy error:0])
  {
    v12.receiver = self;
    v12.super_class = VNAlignFaceRectangleRequest;
    selfCopy = [(VNRequest *)&v12 initWithCompletionHandler:handlerCopy];
    if (selfCopy)
    {
      v9 = [observationsCopy copy];
      inputFaceObservations = selfCopy->_inputFaceObservations;
      selfCopy->_inputFaceObservations = v9;

      self = selfCopy;
      selfCopy = self;
    }

    else
    {
      self = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end