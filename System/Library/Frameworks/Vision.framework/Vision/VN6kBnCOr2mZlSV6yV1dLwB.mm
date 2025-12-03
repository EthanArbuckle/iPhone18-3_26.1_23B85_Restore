@interface VN6kBnCOr2mZlSV6yV1dLwB
+ (BOOL)warmUpSession:(id)session error:(id *)error;
+ (const)dependentRequestCompatibility;
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration;
- (VN6Ac6Cyl5O5oK19HboyMBR)inputSignatureprint;
- (VN6kBnCOr2mZlSV6yV1dLwB)initWithImageSignatureprintType:(unint64_t)type imageSignatureHashType:(unint64_t)hashType completionHandler:(id)handler;
- (id)description;
- (id)imageSignaturnprintByRunningNeuralHashprintRequest:(id)request error:(id *)error;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session;
- (unint64_t)imageSignatureHashType;
- (unint64_t)imageSignatureprintType;
- (void)applyConfigurationOfRequest:(id)request;
- (void)setImageSignatureHashType:(unint64_t)type;
- (void)setImageSignatureprintType:(unint64_t)type;
- (void)setInputSignatureprint:(id)signatureprint;
@end

@implementation VN6kBnCOr2mZlSV6yV1dLwB

- (id)imageSignaturnprintByRunningNeuralHashprintRequest:(id)request error:(id *)error
{
  v19[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v7 = objc_alloc_init(VNCreateNeuralHashprintRequest);
  [(VNRequest *)v7 setRevision:1];
  v8 = [requestCopy requestPerformerAndReturnError:error];
  if (!v8 || (v19[0] = v7, [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "performDependentRequests:onBehalfOfRequest:inContext:error:", v9, self, requestCopy, error), v9, (v10 & 1) == 0))
  {
LABEL_8:
    v16 = 0;
    goto LABEL_9;
  }

  results = [(VNRequest *)v7 results];
  v12 = [results count] == 1;

  if (!v12)
  {
    if (error)
    {
      [VNError errorForInvalidArgumentWithLocalizedDescription:@"Internal error creating sceneprint"];
      *error = v16 = 0;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  results2 = [(VNRequest *)v7 results];
  firstObject = [results2 firstObject];

  imageNeuralHashprint = [firstObject imageNeuralHashprint];
  v16 = imageNeuralHashprint;
  if (imageNeuralHashprint)
  {
    v17 = imageNeuralHashprint;
  }

  else if (error)
  {
    *error = [VNError errorForInvalidArgumentWithLocalizedDescription:@"Internal error while creating image signature print"];
  }

LABEL_9:

  return v16;
}

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  v21[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v9 = [contextCopy imageBufferAndReturnError:error];
  if (v9 && [(VNRequest *)self validateImageBuffer:v9 ofNonZeroWidth:0 andHeight:0 error:error])
  {
    session = [contextCopy session];
    v20 = 0;
    v11 = [(VNRequest *)self applicableDetectorAndOptions:&v20 forRevision:revision loadedInSession:session error:error];
    v12 = v20;
    if (!v11)
    {
      v15 = 0;
LABEL_18:

      goto LABEL_19;
    }

    inputSignatureprint = [(VN6kBnCOr2mZlSV6yV1dLwB *)self inputSignatureprint];
    if (!inputSignatureprint)
    {
      if ([(VN6kBnCOr2mZlSV6yV1dLwB *)self imageSignatureprintType]!= 3)
      {
        inputSignatureprint = 0;
        goto LABEL_14;
      }

      inputSignatureprint = [(VN6kBnCOr2mZlSV6yV1dLwB *)self imageSignaturnprintByRunningNeuralHashprintRequest:contextCopy error:error];
      if (!inputSignatureprint)
      {
        goto LABEL_12;
      }
    }

    imageSignatureprintType = [inputSignatureprint imageSignatureprintType];
    if (imageSignatureprintType != [(VN6kBnCOr2mZlSV6yV1dLwB *)self imageSignatureprintType])
    {
      if (error)
      {
        [VNError errorForInvalidArgumentWithLocalizedDescription:@"Mismatch in signature print type"];
        *error = v15 = 0;
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

    [v12 setObject:inputSignatureprint forKeyedSubscript:@"VNImageSignatureDetectorProcessOption_ImageSignatureprintInput"];
    qosClass = [contextCopy qosClass];
    [(VNImageBasedRequest *)self regionOfInterest];
    v18 = [v11 processUsingQualityOfServiceClass:qosClass options:v12 regionOfInterest:self warningRecorder:error error:0 progressHandler:?];
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

- (void)setImageSignatureHashType:(unint64_t)type
{
  configuration = [(VNRequest *)self configuration];
  [configuration setImageSignatureHashType:type];
}

- (unint64_t)imageSignatureHashType
{
  configuration = [(VNRequest *)self configuration];
  imageSignatureHashType = [configuration imageSignatureHashType];

  return imageSignatureHashType;
}

- (void)setImageSignatureprintType:(unint64_t)type
{
  configuration = [(VNRequest *)self configuration];
  [configuration setImageSignatureprintType:type];
}

- (unint64_t)imageSignatureprintType
{
  configuration = [(VNRequest *)self configuration];
  imageSignatureprintType = [configuration imageSignatureprintType];

  return imageSignatureprintType;
}

- (void)setInputSignatureprint:(id)signatureprint
{
  signatureprintCopy = signatureprint;
  configuration = [(VNRequest *)self configuration];
  [configuration setInputSignatureprint:signatureprintCopy];
  if (signatureprintCopy)
  {
    -[VN6kBnCOr2mZlSV6yV1dLwB setImageSignatureprintType:](self, "setImageSignatureprintType:", [signatureprintCopy imageSignatureprintType]);
  }
}

- (VN6Ac6Cyl5O5oK19HboyMBR)inputSignatureprint
{
  configuration = [(VNRequest *)self configuration];
  inputSignatureprint = [configuration inputSignatureprint];

  return inputSignatureprint;
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  imageSignatureprintType = [configurationCopy imageSignatureprintType];
  if (imageSignatureprintType == -[VN6kBnCOr2mZlSV6yV1dLwB imageSignatureprintType](self, "imageSignatureprintType") && (v6 = [configurationCopy imageSignatureHashType], v6 == -[VN6kBnCOr2mZlSV6yV1dLwB imageSignatureHashType](self, "imageSignatureHashType")) && (-[VN6kBnCOr2mZlSV6yV1dLwB inputSignatureprint](self, "inputSignatureprint"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(configurationCopy, "inputSignatureprint"), v8 = objc_claimAutoreleasedReturnValue(), v9 = VisionCoreEqualOrNilObjects(), v8, v7, (v9 & 1) != 0))
  {
    v12.receiver = self;
    v12.super_class = VN6kBnCOr2mZlSV6yV1dLwB;
    v10 = [(VNImageBasedRequest *)&v12 willAcceptCachedResultsFromRequestWithConfiguration:configurationCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (VN6kBnCOr2mZlSV6yV1dLwB)initWithImageSignatureprintType:(unint64_t)type imageSignatureHashType:(unint64_t)hashType completionHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = 0;
  if (type == 3 && hashType == 1)
  {
    v12.receiver = self;
    v12.super_class = VN6kBnCOr2mZlSV6yV1dLwB;
    v10 = [(VNRequest *)&v12 initWithCompletionHandler:handlerCopy];
    self = v10;
    if (v10)
    {
      [(VN6kBnCOr2mZlSV6yV1dLwB *)v10 setImageSignatureprintType:3];
      [(VN6kBnCOr2mZlSV6yV1dLwB *)self setImageSignatureHashType:1];
      self = self;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session
{
  v10.receiver = self;
  v10.super_class = VN6kBnCOr2mZlSV6yV1dLwB;
  v6 = [(VNRequest *)&v10 newDefaultDetectorOptionsForRequestRevision:revision session:session];
  if (revision == 1)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VN6kBnCOr2mZlSV6yV1dLwB imageSignatureprintType](self, "imageSignatureprintType")}];
    [v6 setObject:v7 forKeyedSubscript:@"VNImageSignatureDetectorInitOption_ImageSignatureprintType"];

    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VN6kBnCOr2mZlSV6yV1dLwB imageSignatureHashType](self, "imageSignatureHashType")}];
    [v6 setObject:v8 forKeyedSubscript:@"VNImageSignatureDetectorInitOption_ImageSignatureHashType"];
  }

  return v6;
}

- (void)applyConfigurationOfRequest:(id)request
{
  requestCopy = request;
  if (self != requestCopy)
  {
    v6.receiver = self;
    v6.super_class = VN6kBnCOr2mZlSV6yV1dLwB;
    [(VNImageBasedRequest *)&v6 applyConfigurationOfRequest:requestCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = requestCopy;
      [(VN6kBnCOr2mZlSV6yV1dLwB *)self setImageSignatureprintType:[(VN6kBnCOr2mZlSV6yV1dLwB *)v5 imageSignatureprintType]];
      [(VN6kBnCOr2mZlSV6yV1dLwB *)self setImageSignatureHashType:[(VN6kBnCOr2mZlSV6yV1dLwB *)v5 imageSignatureHashType]];
    }
  }
}

+ (BOOL)warmUpSession:(id)session error:(id *)error
{
  sessionCopy = session;
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___VN6kBnCOr2mZlSV6yV1dLwB;
  if (objc_msgSendSuper2(&v10, sel_warmUpSession_error_, sessionCopy, error))
  {
    v7 = [[VN6kBnCOr2mZlSV6yV1dLwB alloc] initWithImageSignatureprintType:3 imageSignatureHashType:1];
    v8 = [(VNRequest *)v7 warmUpSession:sessionCopy error:error];
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