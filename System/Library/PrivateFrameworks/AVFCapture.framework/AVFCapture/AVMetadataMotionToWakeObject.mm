@interface AVMetadataMotionToWakeObject
+ (id)motionToWakeObjectWithDetectedMotion:(unint64_t)motion input:(id)input time:(id *)time;
- (AVMetadataMotionToWakeObject)initWithDetectedMotion:(unint64_t)motion time:(id *)time sourceCaptureInput:(id)input;
- (id)initDerivedMetadataObjectFromMetadataObject:(id)object withTransform:(CGAffineTransform *)transform isVideoMirrored:(BOOL)mirrored rollAdjustment:(double)adjustment;
@end

@implementation AVMetadataMotionToWakeObject

+ (id)motionToWakeObjectWithDetectedMotion:(unint64_t)motion input:(id)input time:(id *)time
{
  v8 = objc_alloc(objc_opt_class());
  v10 = *time;
  return [v8 initWithDetectedMotion:motion time:&v10 sourceCaptureInput:input];
}

- (AVMetadataMotionToWakeObject)initWithDetectedMotion:(unint64_t)motion time:(id *)time sourceCaptureInput:(id)input
{
  v11 = *MEMORY[0x1E6960C70];
  v12 = *(MEMORY[0x1E6960C70] + 16);
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v14.receiver = self;
  v14.super_class = AVMetadataMotionToWakeObject;
  v13 = *time;
  result = [(AVMetadataObject *)&v14 initWithType:@"MotionToWake" time:&v13 duration:&v11 bounds:0 optionalInfoDict:0 originalMetadataObject:input sourceCaptureInput:v6, v7, v8, v9];
  if (result)
  {
    result->_detectedMotion = motion;
  }

  return result;
}

- (id)initDerivedMetadataObjectFromMetadataObject:(id)object withTransform:(CGAffineTransform *)transform isVideoMirrored:(BOOL)mirrored rollAdjustment:(double)adjustment
{
  detectedMotion = [object detectedMotion];
  if (object)
  {
    [object time];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  return -[AVMetadataMotionToWakeObject initWithDetectedMotion:time:sourceCaptureInput:](self, "initWithDetectedMotion:time:sourceCaptureInput:", detectedMotion, v10, [object input]);
}

@end