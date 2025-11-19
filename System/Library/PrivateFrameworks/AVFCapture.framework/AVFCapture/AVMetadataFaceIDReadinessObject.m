@interface AVMetadataFaceIDReadinessObject
+ (id)faceIDReadinessObjectWithReady:(BOOL)a3 coachingStatus:(int64_t)a4 userEngagementStatus:(int64_t)a5 input:(id)a6 time:(id *)a7;
- (AVMetadataFaceIDReadinessObject)initWithReady:(BOOL)a3 coachingStatus:(int64_t)a4 userEngagementStatus:(int64_t)a5 time:(id *)a6 sourceCaptureInput:(id)a7;
- (id)initDerivedMetadataObjectFromMetadataObject:(id)a3 withTransform:(CGAffineTransform *)a4 isVideoMirrored:(BOOL)a5 rollAdjustment:(double)a6;
@end

@implementation AVMetadataFaceIDReadinessObject

+ (id)faceIDReadinessObjectWithReady:(BOOL)a3 coachingStatus:(int64_t)a4 userEngagementStatus:(int64_t)a5 input:(id)a6 time:(id *)a7
{
  v11 = a3;
  v12 = objc_alloc(objc_opt_class());
  v14 = *a7;
  return [v12 initWithReady:v11 coachingStatus:a4 userEngagementStatus:a5 time:&v14 sourceCaptureInput:a6];
}

- (AVMetadataFaceIDReadinessObject)initWithReady:(BOOL)a3 coachingStatus:(int64_t)a4 userEngagementStatus:(int64_t)a5 time:(id *)a6 sourceCaptureInput:(id)a7
{
  v15 = *MEMORY[0x1E6960C70];
  v16 = *(MEMORY[0x1E6960C70] + 16);
  v10 = *MEMORY[0x1E695F058];
  v11 = *(MEMORY[0x1E695F058] + 8);
  v12 = *(MEMORY[0x1E695F058] + 16);
  v13 = *(MEMORY[0x1E695F058] + 24);
  v18.receiver = self;
  v18.super_class = AVMetadataFaceIDReadinessObject;
  v17 = *a6;
  result = [(AVMetadataObject *)&v18 initWithType:@"FaceIDReadiness" time:&v17 duration:&v15 bounds:0 optionalInfoDict:0 originalMetadataObject:a7 sourceCaptureInput:v10, v11, v12, v13];
  if (result)
  {
    result->_ready = a3;
    result->_coachingStatus = a4;
    result->_userEngagementStatus = a5;
  }

  return result;
}

- (id)initDerivedMetadataObjectFromMetadataObject:(id)a3 withTransform:(CGAffineTransform *)a4 isVideoMirrored:(BOOL)a5 rollAdjustment:(double)a6
{
  v8 = [a3 isReady];
  v9 = [a3 coachingStatus];
  v10 = [a3 userEngagementStatus];
  if (a3)
  {
    [a3 time];
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  return -[AVMetadataFaceIDReadinessObject initWithReady:coachingStatus:userEngagementStatus:time:sourceCaptureInput:](self, "initWithReady:coachingStatus:userEngagementStatus:time:sourceCaptureInput:", v8, v9, v10, v12, [a3 input]);
}

@end