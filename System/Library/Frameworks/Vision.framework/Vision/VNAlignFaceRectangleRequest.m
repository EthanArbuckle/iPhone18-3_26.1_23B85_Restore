@interface VNAlignFaceRectangleRequest
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3;
- (VNAlignFaceRectangleRequest)initWithFaceObservations:(id)a3 completionHandler:(id)a4;
- (id)newDuplicateInstance;
@end

@implementation VNAlignFaceRectangleRequest

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(VNAlignFaceRectangleRequest *)self inputFaceObservations];
  v6 = [v4 inputFaceObservations];
  IsSubsetOfFaceObservationsCollection = VNFaceObservationsCollectionIsSubsetOfFaceObservationsCollection(v5, v6);

  if (IsSubsetOfFaceObservationsCollection)
  {
    v10.receiver = self;
    v10.super_class = VNAlignFaceRectangleRequest;
    v8 = [(VNRequest *)&v10 willAcceptCachedResultsFromRequestWithConfiguration:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v8 = a4;
  VNValidatedLog(1, @"Processing Align Face Rectangle request\n", v9, v10, v11, v12, v13, v14, v22);
  v15 = [(VNAlignFaceRectangleRequest *)self applicableDetectorTypeForRevision:a3 error:a5];
  if (!v15)
  {
    goto LABEL_9;
  }

  if (!self->_inputFaceObservations)
  {
    if (a5)
    {
      [VNError errorWithCode:7 message:@"Input faces not provided to face rectangle aligner"];
      *a5 = v20 = 0;
      goto LABEL_12;
    }

LABEL_9:
    v20 = 0;
    goto LABEL_12;
  }

  v16 = [v8 session];
  v17 = [v8 imageBufferAndReturnError:a5];
  if (v17)
  {
    v18 = [(VNRequest *)self newDefaultDetectorOptionsForRequestRevision:a3 session:v16];
    v19 = [(VNRequest *)self processFaceObservations:self->_inputFaceObservations revision:a3 regionOfInterest:v15 detectorType:v18 detectorOptions:&__block_literal_global_32010 shouldAlignFaceBBox:&__block_literal_global_48 shouldRunDetectorBlock:*MEMORY[0x1E695F050] context:*(MEMORY[0x1E695F050] + 8) error:*(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), v8, a5];
    v20 = v19 != 0;
    if (v19)
    {
      [(VNRequest *)self setResults:v19];
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
  v5 = [(VNRequest *)self completionHandler];
  v6 = [v3 initWithFaceObservations:inputFaceObservations completionHandler:v5];

  return v6;
}

- (VNAlignFaceRectangleRequest)initWithFaceObservations:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([VNValidationUtilities validateRequiredFaceObservations:v6 error:0])
  {
    v12.receiver = self;
    v12.super_class = VNAlignFaceRectangleRequest;
    v8 = [(VNRequest *)&v12 initWithCompletionHandler:v7];
    if (v8)
    {
      v9 = [v6 copy];
      inputFaceObservations = v8->_inputFaceObservations;
      v8->_inputFaceObservations = v9;

      self = v8;
      v8 = self;
    }

    else
    {
      self = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end