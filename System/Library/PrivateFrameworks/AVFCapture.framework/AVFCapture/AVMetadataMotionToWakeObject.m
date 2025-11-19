@interface AVMetadataMotionToWakeObject
+ (id)motionToWakeObjectWithDetectedMotion:(unint64_t)a3 input:(id)a4 time:(id *)a5;
- (AVMetadataMotionToWakeObject)initWithDetectedMotion:(unint64_t)a3 time:(id *)a4 sourceCaptureInput:(id)a5;
- (id)initDerivedMetadataObjectFromMetadataObject:(id)a3 withTransform:(CGAffineTransform *)a4 isVideoMirrored:(BOOL)a5 rollAdjustment:(double)a6;
@end

@implementation AVMetadataMotionToWakeObject

+ (id)motionToWakeObjectWithDetectedMotion:(unint64_t)a3 input:(id)a4 time:(id *)a5
{
  v8 = objc_alloc(objc_opt_class());
  v10 = *a5;
  return [v8 initWithDetectedMotion:a3 time:&v10 sourceCaptureInput:a4];
}

- (AVMetadataMotionToWakeObject)initWithDetectedMotion:(unint64_t)a3 time:(id *)a4 sourceCaptureInput:(id)a5
{
  v11 = *MEMORY[0x1E6960C70];
  v12 = *(MEMORY[0x1E6960C70] + 16);
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v14.receiver = self;
  v14.super_class = AVMetadataMotionToWakeObject;
  v13 = *a4;
  result = [(AVMetadataObject *)&v14 initWithType:@"MotionToWake" time:&v13 duration:&v11 bounds:0 optionalInfoDict:0 originalMetadataObject:a5 sourceCaptureInput:v6, v7, v8, v9];
  if (result)
  {
    result->_detectedMotion = a3;
  }

  return result;
}

- (id)initDerivedMetadataObjectFromMetadataObject:(id)a3 withTransform:(CGAffineTransform *)a4 isVideoMirrored:(BOOL)a5 rollAdjustment:(double)a6
{
  v8 = [a3 detectedMotion];
  if (a3)
  {
    [a3 time];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  return -[AVMetadataMotionToWakeObject initWithDetectedMotion:time:sourceCaptureInput:](self, "initWithDetectedMotion:time:sourceCaptureInput:", v8, v10, [a3 input]);
}

@end