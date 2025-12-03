@interface VNDetectTrajectoriesRequest
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration;
- (CMTime)targetFrameTime;
- (NSInteger)trajectoryLength;
- (VNDetectTrajectoriesRequest)initWithFrameAnalysisSpacing:(CMTime *)frameAnalysisSpacing trajectoryLength:(NSInteger)trajectoryLength completionHandler:(VNRequestCompletionHandler)completionHandler;
- (float)objectMaximumNormalizedRadius;
- (float)objectMinimumNormalizedRadius;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session;
- (id)newDuplicateInstance;
- (id)supportedComputeStageDevicesAndReturnError:(id *)error;
- (void)applyConfigurationOfRequest:(id)request;
- (void)setObjectMaximumNormalizedRadius:(float)objectMaximumNormalizedRadius;
- (void)setObjectMinimumNormalizedRadius:(float)objectMinimumNormalizedRadius;
- (void)setTargetFrameTime:(CMTime *)targetFrameTime;
@end

@implementation VNDetectTrajectoriesRequest

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  contextCopy = context;
  v9 = [contextCopy imageBufferAndReturnError:error];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_5;
  }

  [v9 timingInfo];
  if ((v28 & 1) == 0)
  {
    if (error)
    {
      [VNError errorWithCode:18 message:@"No valid presentationTimeStamp was available for this image"];
      *error = v11 = 0;
      goto LABEL_12;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_12;
  }

  session = [contextCopy session];
  v13 = [(VNDetectTrajectoriesRequest *)self newDefaultDetectorOptionsForRequestRevision:revision session:session];

  trajectoryProcessor = self->_trajectoryProcessor;
  [(VNImageBasedRequest *)self regionOfInterest];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  requestUUID = [(VNStatefulRequest *)self requestUUID];
  v24 = [(VNTrajectoryProcessor *)trajectoryProcessor processVNImageBuffer:v10 regionOfInterest:v13 withOptions:self warningRecorder:requestUUID requestUUID:error error:v16, v18, v20, v22];

  v11 = v24 != 0;
  if (v24)
  {
    if (revision == 1 && [(VisionCoreRuntimeUtilities *)VNRuntimeUtilities linkTimeOrRunTimeBeforeVersion:393216])
    {
      v25 = &__block_literal_global_125;
      v26 = [v24 sortedArrayWithOptions:16 usingComparator:&__block_literal_global_125];

      v24 = v26;
    }

    [(VNRequest *)self setResults:v24];
  }

LABEL_12:
  return v11;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session
{
  v13.receiver = self;
  v13.super_class = VNDetectTrajectoriesRequest;
  v5 = [(VNRequest *)&v13 newDefaultDetectorOptionsForRequestRevision:revision session:session];
  [v5 setObject:self->_state forKeyedSubscript:@"VNTrajectoryProcessorOption_RequestState"];
  v6 = MEMORY[0x1E696AD98];
  [(VNDetectTrajectoriesRequest *)self objectMinimumNormalizedRadius];
  v7 = [v6 numberWithFloat:?];
  [v5 setObject:v7 forKeyedSubscript:@"VNTrajectoryProcessorOption_ObjectMinimumNormalizedRadius"];

  v8 = MEMORY[0x1E696AD98];
  [(VNDetectTrajectoriesRequest *)self objectMaximumNormalizedRadius];
  v9 = [v8 numberWithFloat:?];
  [v5 setObject:v9 forKeyedSubscript:@"VNTrajectoryProcessorOption_ObjectMaximumNormalizedRadius"];

  memset(v12, 0, sizeof(v12));
  [(VNDetectTrajectoriesRequest *)self targetFrameTime];
  v10 = [objc_alloc(MEMORY[0x1E696B098]) initWithBytes:v12 objCType:"{?=qiIq}"];
  [v5 setObject:v10 forKeyedSubscript:@"VNTrajectoryProcessorOption_ProcessingTargetFrameTime"];

  return v5;
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [(VNDetectTrajectoriesRequest *)self objectMinimumNormalizedRadius];
  v6 = v5;
  [configurationCopy objectMinimumNormalizedRadius];
  if (v6 >= v7 && (-[VNDetectTrajectoriesRequest objectMaximumNormalizedRadius](self, "objectMaximumNormalizedRadius"), v9 = v8, [configurationCopy objectMaximumNormalizedRadius], v9 <= v10))
  {
    v13.receiver = self;
    v13.super_class = VNDetectTrajectoriesRequest;
    v11 = [(VNImageBasedRequest *)&v13 willAcceptCachedResultsFromRequestWithConfiguration:configurationCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)applyConfigurationOfRequest:(id)request
{
  requestCopy = request;
  if (self != requestCopy)
  {
    v5.receiver = self;
    v5.super_class = VNDetectTrajectoriesRequest;
    [(VNImageBasedRequest *)&v5 applyConfigurationOfRequest:requestCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(VNDetectTrajectoriesRequest *)requestCopy objectMinimumNormalizedRadius];
      [(VNDetectTrajectoriesRequest *)self setObjectMinimumNormalizedRadius:?];
      [(VNDetectTrajectoriesRequest *)requestCopy objectMaximumNormalizedRadius];
      [(VNDetectTrajectoriesRequest *)self setObjectMaximumNormalizedRadius:?];
    }
  }
}

- (id)newDuplicateInstance
{
  v3 = objc_alloc(objc_opt_class());
  [(VNStatefulRequest *)self frameAnalysisSpacing];
  trajectoryLength = [(VNDetectTrajectoriesRequest *)self trajectoryLength];
  completionHandler = [(VNRequest *)self completionHandler];
  v6 = [v3 initWithFrameAnalysisSpacing:v8 trajectoryLength:trajectoryLength completionHandler:completionHandler];

  return v6;
}

- (id)supportedComputeStageDevicesAndReturnError:(id *)error
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"VNComputeStageMain";
  v3 = +[VNComputeDeviceUtilities allCPUComputeDevices];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

- (void)setTargetFrameTime:(CMTime *)targetFrameTime
{
  configuration = [(VNRequest *)self configuration];
  v5 = *targetFrameTime;
  [configuration setTargetFrameTime:&v5];
}

- (CMTime)targetFrameTime
{
  configuration = [(VNRequest *)self configuration];
  if (configuration)
  {
    v6 = configuration;
    [configuration targetFrameTime];
    configuration = v6;
  }

  else
  {
    retstr->value = 0;
    *&retstr->timescale = 0;
    retstr->epoch = 0;
  }

  return result;
}

- (void)setObjectMaximumNormalizedRadius:(float)objectMaximumNormalizedRadius
{
  configuration = [(VNRequest *)self configuration];
  *&v4 = objectMaximumNormalizedRadius;
  [configuration setObjectMaximumNormalizedRadius:v4];
}

- (float)objectMaximumNormalizedRadius
{
  configuration = [(VNRequest *)self configuration];
  [configuration objectMaximumNormalizedRadius];
  v4 = v3;

  return v4;
}

- (void)setObjectMinimumNormalizedRadius:(float)objectMinimumNormalizedRadius
{
  configuration = [(VNRequest *)self configuration];
  *&v4 = objectMinimumNormalizedRadius;
  [configuration setObjectMinimumNormalizedRadius:v4];
}

- (float)objectMinimumNormalizedRadius
{
  configuration = [(VNRequest *)self configuration];
  [configuration objectMinimumNormalizedRadius];
  v4 = v3;

  return v4;
}

- (NSInteger)trajectoryLength
{
  configuration = [(VNRequest *)self configuration];
  trajectoryLength = [configuration trajectoryLength];

  return trajectoryLength;
}

- (VNDetectTrajectoriesRequest)initWithFrameAnalysisSpacing:(CMTime *)frameAnalysisSpacing trajectoryLength:(NSInteger)trajectoryLength completionHandler:(VNRequestCompletionHandler)completionHandler
{
  v14 = completionHandler;
  if (trajectoryLength >= 5)
  {
    if (trajectoryLength < 0x80000000)
    {
      goto LABEL_6;
    }

    trajectoryLength = 0x7FFFFFFFLL;
  }

  else
  {
    trajectoryLength = 5;
  }

  VNValidatedLog(4, @"trajectory length must be in range [%llu..%llu]", v8, v9, v10, v11, v12, v13, 5);
LABEL_6:
  v26.receiver = self;
  v26.super_class = VNDetectTrajectoriesRequest;
  v24 = *&frameAnalysisSpacing->value;
  epoch = frameAnalysisSpacing->epoch;
  v15 = [(VNStatefulRequest *)&v26 initWithFrameAnalysisSpacing:&v24 completionHandler:v14];
  v16 = v15;
  if (v15)
  {
    configuration = [(VNRequest *)v15 configuration];
    [configuration setTrajectoryLength:trajectoryLength];
    v18 = [VNTrajectoryProcessor alloc];
    v24 = *&frameAnalysisSpacing->value;
    epoch = frameAnalysisSpacing->epoch;
    v19 = [(VNTrajectoryProcessor *)v18 initWithFrameAnalysisSpacing:&v24 trajectoryLength:trajectoryLength];
    trajectoryProcessor = v16->_trajectoryProcessor;
    v16->_trajectoryProcessor = v19;

    v21 = objc_alloc_init(VNTrajectoryRequestState);
    state = v16->_state;
    v16->_state = v21;
  }

  return v16;
}

@end