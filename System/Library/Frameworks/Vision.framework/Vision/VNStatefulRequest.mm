@interface VNStatefulRequest
- (CMTime)frameAnalysisSpacing;
- (NSUUID)requestUUID;
- (VNStatefulRequest)initWithFrameAnalysisSpacing:(CMTime *)frameAnalysisSpacing completionHandler:(VNRequestCompletionHandler)completionHandler;
- (id)description;
- (id)newDuplicateInstance;
@end

@implementation VNStatefulRequest

- (NSUUID)requestUUID
{
  configuration = [(VNRequest *)self configuration];
  requestUUID = [configuration requestUUID];

  return requestUUID;
}

- (CMTime)frameAnalysisSpacing
{
  configuration = [(VNRequest *)self configuration];
  if (configuration)
  {
    v6 = configuration;
    [configuration frameAnalysisSpacing];
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

- (VNStatefulRequest)initWithFrameAnalysisSpacing:(CMTime *)frameAnalysisSpacing completionHandler:(VNRequestCompletionHandler)completionHandler
{
  v11.receiver = self;
  v11.super_class = VNStatefulRequest;
  v5 = [(VNRequest *)&v11 initWithCompletionHandler:completionHandler];
  v6 = v5;
  if (v5)
  {
    configuration = [(VNRequest *)v5 configuration];
    v9 = *&frameAnalysisSpacing->value;
    epoch = frameAnalysisSpacing->epoch;
    [configuration setFrameAnalysisSpacing:&v9];
  }

  return v6;
}

- (id)description
{
  v3 = *MEMORY[0x1E695E480];
  [(VNStatefulRequest *)self frameAnalysisSpacing];
  v4 = CMTimeCopyDescription(v3, &time);
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  v9.receiver = self;
  v9.super_class = VNStatefulRequest;
  v6 = [(VNImageBasedRequest *)&v9 description];
  v7 = [v5 initWithFormat:@"%@ FAS=%@", v6, v4];

  return v7;
}

- (id)newDuplicateInstance
{
  v3 = objc_alloc(objc_opt_class());
  [(VNStatefulRequest *)self frameAnalysisSpacing];
  completionHandler = [(VNRequest *)self completionHandler];
  v5 = [v3 initWithFrameAnalysisSpacing:v7 completionHandler:completionHandler];

  return v5;
}

@end