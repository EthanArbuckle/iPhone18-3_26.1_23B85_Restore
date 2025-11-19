@interface VN6kBnCOr2mZlSV6yV1dLwB
+ (BOOL)warmUpSession:(id)a3 error:(id *)a4;
+ (const)dependentRequestCompatibility;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3;
- (VN6Ac6Cyl5O5oK19HboyMBR)inputSignatureprint;
- (VN6kBnCOr2mZlSV6yV1dLwB)initWithImageSignatureprintType:(unint64_t)a3 imageSignatureHashType:(unint64_t)a4 completionHandler:(id)a5;
- (id)description;
- (id)imageSignaturnprintByRunningNeuralHashprintRequest:(id)a3 error:(id *)a4;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4;
- (unint64_t)imageSignatureHashType;
- (unint64_t)imageSignatureprintType;
- (void)applyConfigurationOfRequest:(id)a3;
- (void)setImageSignatureHashType:(unint64_t)a3;
- (void)setImageSignatureprintType:(unint64_t)a3;
- (void)setInputSignatureprint:(id)a3;
@end

@implementation VN6kBnCOr2mZlSV6yV1dLwB

- (id)imageSignaturnprintByRunningNeuralHashprintRequest:(id)a3 error:(id *)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(VNCreateNeuralHashprintRequest);
  [(VNRequest *)v7 setRevision:1];
  v8 = [v6 requestPerformerAndReturnError:a4];
  if (!v8 || (v19[0] = v7, [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "performDependentRequests:onBehalfOfRequest:inContext:error:", v9, self, v6, a4), v9, (v10 & 1) == 0))
  {
LABEL_8:
    v16 = 0;
    goto LABEL_9;
  }

  v11 = [(VNRequest *)v7 results];
  v12 = [v11 count] == 1;

  if (!v12)
  {
    if (a4)
    {
      [VNError errorForInvalidArgumentWithLocalizedDescription:@"Internal error creating sceneprint"];
      *a4 = v16 = 0;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v13 = [(VNRequest *)v7 results];
  v14 = [v13 firstObject];

  v15 = [v14 imageNeuralHashprint];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else if (a4)
  {
    *a4 = [VNError errorForInvalidArgumentWithLocalizedDescription:@"Internal error while creating image signature print"];
  }

LABEL_9:

  return v16;
}

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v21[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [v8 imageBufferAndReturnError:a5];
  if (v9 && [(VNRequest *)self validateImageBuffer:v9 ofNonZeroWidth:0 andHeight:0 error:a5])
  {
    v10 = [v8 session];
    v20 = 0;
    v11 = [(VNRequest *)self applicableDetectorAndOptions:&v20 forRevision:a3 loadedInSession:v10 error:a5];
    v12 = v20;
    if (!v11)
    {
      v15 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v13 = [(VN6kBnCOr2mZlSV6yV1dLwB *)self inputSignatureprint];
    if (!v13)
    {
      if ([(VN6kBnCOr2mZlSV6yV1dLwB *)self imageSignatureprintType]!= 3)
      {
        v13 = 0;
        goto LABEL_14;
      }

      v13 = [(VN6kBnCOr2mZlSV6yV1dLwB *)self imageSignaturnprintByRunningNeuralHashprintRequest:v8 error:a5];
      if (!v13)
      {
        goto LABEL_12;
      }
    }

    v14 = [v13 imageSignatureprintType];
    if (v14 != [(VN6kBnCOr2mZlSV6yV1dLwB *)self imageSignatureprintType])
    {
      if (a5)
      {
        [VNError errorForInvalidArgumentWithLocalizedDescription:@"Mismatch in signature print type"];
        *a5 = v15 = 0;
LABEL_17:

        goto LABEL_18;
      }

LABEL_12:
      v15 = 0;
      goto LABEL_17;
    }

LABEL_14:
    v21[0] = v9;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    [v12 setObject:v16 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

    [v12 setObject:v13 forKeyedSubscript:@"VNImageSignatureDetectorProcessOption_ImageSignatureprintInput"];
    v17 = [v8 qosClass];
    [(VNImageBasedRequest *)self regionOfInterest];
    v18 = [v11 processUsingQualityOfServiceClass:v17 options:v12 regionOfInterest:self warningRecorder:a5 error:0 progressHandler:?];
    v15 = v18 != 0;
    if (v18)
    {
      [(VNRequest *)self setResults:v18];
    }

    goto LABEL_17;
  }

  v15 = 0;
LABEL_19:

  return v15;
}

- (void)setImageSignatureHashType:(unint64_t)a3
{
  v4 = [(VNRequest *)self configuration];
  [v4 setImageSignatureHashType:a3];
}

- (unint64_t)imageSignatureHashType
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 imageSignatureHashType];

  return v3;
}

- (void)setImageSignatureprintType:(unint64_t)a3
{
  v4 = [(VNRequest *)self configuration];
  [v4 setImageSignatureprintType:a3];
}

- (unint64_t)imageSignatureprintType
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 imageSignatureprintType];

  return v3;
}

- (void)setInputSignatureprint:(id)a3
{
  v5 = a3;
  v4 = [(VNRequest *)self configuration];
  [v4 setInputSignatureprint:v5];
  if (v5)
  {
    -[VN6kBnCOr2mZlSV6yV1dLwB setImageSignatureprintType:](self, "setImageSignatureprintType:", [v5 imageSignatureprintType]);
  }
}

- (VN6Ac6Cyl5O5oK19HboyMBR)inputSignatureprint
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 inputSignatureprint];

  return v3;
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 imageSignatureprintType];
  if (v5 == -[VN6kBnCOr2mZlSV6yV1dLwB imageSignatureprintType](self, "imageSignatureprintType") && (v6 = [v4 imageSignatureHashType], v6 == -[VN6kBnCOr2mZlSV6yV1dLwB imageSignatureHashType](self, "imageSignatureHashType")) && (-[VN6kBnCOr2mZlSV6yV1dLwB inputSignatureprint](self, "inputSignatureprint"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "inputSignatureprint"), v8 = objc_claimAutoreleasedReturnValue(), v9 = VisionCoreEqualOrNilObjects(), v8, v7, (v9 & 1) != 0))
  {
    v12.receiver = self;
    v12.super_class = VN6kBnCOr2mZlSV6yV1dLwB;
    v10 = [(VNImageBasedRequest *)&v12 willAcceptCachedResultsFromRequestWithConfiguration:v4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (VN6kBnCOr2mZlSV6yV1dLwB)initWithImageSignatureprintType:(unint64_t)a3 imageSignatureHashType:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = 0;
  if (a3 == 3 && a4 == 1)
  {
    v12.receiver = self;
    v12.super_class = VN6kBnCOr2mZlSV6yV1dLwB;
    v10 = [(VNRequest *)&v12 initWithCompletionHandler:v8];
    self = v10;
    if (v10)
    {
      [(VN6kBnCOr2mZlSV6yV1dLwB *)v10 setImageSignatureprintType:3];
      [(VN6kBnCOr2mZlSV6yV1dLwB *)self setImageSignatureHashType:1];
      self = self;
      v9 = self;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4
{
  v10.receiver = self;
  v10.super_class = VN6kBnCOr2mZlSV6yV1dLwB;
  v6 = [(VNRequest *)&v10 newDefaultDetectorOptionsForRequestRevision:a3 session:a4];
  if (a3 == 1)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VN6kBnCOr2mZlSV6yV1dLwB imageSignatureprintType](self, "imageSignatureprintType")}];
    [v6 setObject:v7 forKeyedSubscript:@"VNImageSignatureDetectorInitOption_ImageSignatureprintType"];

    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VN6kBnCOr2mZlSV6yV1dLwB imageSignatureHashType](self, "imageSignatureHashType")}];
    [v6 setObject:v8 forKeyedSubscript:@"VNImageSignatureDetectorInitOption_ImageSignatureHashType"];
  }

  return v6;
}

- (void)applyConfigurationOfRequest:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    v6.receiver = self;
    v6.super_class = VN6kBnCOr2mZlSV6yV1dLwB;
    [(VNImageBasedRequest *)&v6 applyConfigurationOfRequest:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [(VN6kBnCOr2mZlSV6yV1dLwB *)self setImageSignatureprintType:[(VN6kBnCOr2mZlSV6yV1dLwB *)v5 imageSignatureprintType]];
      [(VN6kBnCOr2mZlSV6yV1dLwB *)self setImageSignatureHashType:[(VN6kBnCOr2mZlSV6yV1dLwB *)v5 imageSignatureHashType]];
    }
  }
}

+ (BOOL)warmUpSession:(id)a3 error:(id *)a4
{
  v6 = a3;
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___VN6kBnCOr2mZlSV6yV1dLwB;
  if (objc_msgSendSuper2(&v10, sel_warmUpSession_error_, v6, a4))
  {
    v7 = [[VN6kBnCOr2mZlSV6yV1dLwB alloc] initWithImageSignatureprintType:3 imageSignatureHashType:1];
    v8 = [(VNRequest *)v7 warmUpSession:v6 error:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (const)dependentRequestCompatibility
{
  {
    +[VN6kBnCOr2mZlSV6yV1dLwB dependentRequestCompatibility]::ourDependentRequestCompatibilityTable = 1;
    qword_1EB285A30 = objc_opt_class();
    unk_1EB285A38 = xmmword_1A6038B30;
    qword_1EB285A48 = objc_opt_class();
    unk_1EB285A50 = 1;
    qword_1EB285A60 = 0;
    unk_1EB285A68 = 0;
    qword_1EB285A58 = 0;
  }

  return &+[VN6kBnCOr2mZlSV6yV1dLwB dependentRequestCompatibility]::ourDependentRequestCompatibilityTable;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7.receiver = self;
  v7.super_class = VN6kBnCOr2mZlSV6yV1dLwB;
  v4 = [(VNImageBasedRequest *)&v7 description];
  v5 = [v3 initWithFormat:@"%@ %lu %lu", v4, -[VN6kBnCOr2mZlSV6yV1dLwB imageSignatureprintType](self, "imageSignatureprintType"), -[VN6kBnCOr2mZlSV6yV1dLwB imageSignatureHashType](self, "imageSignatureHashType")];

  return v5;
}

@end