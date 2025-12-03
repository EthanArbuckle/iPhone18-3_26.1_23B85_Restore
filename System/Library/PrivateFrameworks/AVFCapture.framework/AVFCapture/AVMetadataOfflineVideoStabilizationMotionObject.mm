@interface AVMetadataOfflineVideoStabilizationMotionObject
+ (id)offlineVideoStabilizationMotionObjectWithTime:(id *)time motionDictionary:(id)dictionary input:(id)input;
- (AVMetadataOfflineVideoStabilizationMotionObject)initWithTime:(id *)time motionDictionary:(id)dictionary input:(id)input;
- (NSDictionary)payload;
- (id)description;
- (void)dealloc;
@end

@implementation AVMetadataOfflineVideoStabilizationMotionObject

- (AVMetadataOfflineVideoStabilizationMotionObject)initWithTime:(id *)time motionDictionary:(id)dictionary input:(id)input
{
  v13 = *MEMORY[0x1E6960C70];
  v14 = *(MEMORY[0x1E6960C70] + 16);
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v16.receiver = self;
  v16.super_class = AVMetadataOfflineVideoStabilizationMotionObject;
  v15 = *time;
  v10 = [(AVMetadataObject *)&v16 initWithType:@"offlineVideoStabilizationMotion" time:&v15 duration:&v13 bounds:0 optionalInfoDict:0 originalMetadataObject:input sourceCaptureInput:v6, v7, v8, v9];
  if (v10)
  {
    v11 = objc_alloc_init(AVMetadataOfflineVideoStabilizationMotionObjectInternal);
    v10->_offlineVISMotionObjectInternal = v11;
    if (v11)
    {
      [(AVMetadataOfflineVideoStabilizationMotionObjectInternal *)v11 setPayload:dictionary];
    }

    else
    {
      [AVMetadataOfflineVideoStabilizationMotionObject initWithTime:v10 motionDictionary:? input:?];
      return 0;
    }
  }

  return v10;
}

+ (id)offlineVideoStabilizationMotionObjectWithTime:(id *)time motionDictionary:(id)dictionary input:(id)input
{
  v8 = objc_alloc(objc_opt_class());
  v10 = *time;
  return [v8 initWithTime:&v10 motionDictionary:dictionary input:input];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMetadataOfflineVideoStabilizationMotionObject;
  [(AVMetadataObject *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  payload = [(AVMetadataOfflineVideoStabilizationMotionObject *)self payload];
  if (self)
  {
    [(AVMetadataObject *)self time];
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  return [v3 stringWithFormat:@"<%@: %p %@, time=%lld>", v5, self, payload, v7];
}

- (NSDictionary)payload
{
  payload = [(AVMetadataOfflineVideoStabilizationMotionObjectInternal *)self->_offlineVISMotionObjectInternal payload];

  return payload;
}

- (void)initWithTime:(void *)a1 motionDictionary:input:.cold.1(void *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
}

@end