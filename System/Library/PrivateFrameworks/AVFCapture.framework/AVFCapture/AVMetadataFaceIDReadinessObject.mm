@interface AVMetadataFaceIDReadinessObject
+ (id)faceIDReadinessObjectWithReady:(BOOL)ready coachingStatus:(int64_t)status userEngagementStatus:(int64_t)engagementStatus input:(id)input time:(id *)time;
- (AVMetadataFaceIDReadinessObject)initWithReady:(BOOL)ready coachingStatus:(int64_t)status userEngagementStatus:(int64_t)engagementStatus time:(id *)time sourceCaptureInput:(id)input;
- (id)initDerivedMetadataObjectFromMetadataObject:(id)object withTransform:(CGAffineTransform *)transform isVideoMirrored:(BOOL)mirrored rollAdjustment:(double)adjustment;
@end

@implementation AVMetadataFaceIDReadinessObject

+ (id)faceIDReadinessObjectWithReady:(BOOL)ready coachingStatus:(int64_t)status userEngagementStatus:(int64_t)engagementStatus input:(id)input time:(id *)time
{
  readyCopy = ready;
  v12 = objc_alloc(objc_opt_class());
  v14 = *time;
  return [v12 initWithReady:readyCopy coachingStatus:status userEngagementStatus:engagementStatus time:&v14 sourceCaptureInput:input];
}

- (AVMetadataFaceIDReadinessObject)initWithReady:(BOOL)ready coachingStatus:(int64_t)status userEngagementStatus:(int64_t)engagementStatus time:(id *)time sourceCaptureInput:(id)input
{
  v15 = *MEMORY[0x1E6960C70];
  v16 = *(MEMORY[0x1E6960C70] + 16);
  v10 = *MEMORY[0x1E695F058];
  v11 = *(MEMORY[0x1E695F058] + 8);
  v12 = *(MEMORY[0x1E695F058] + 16);
  v13 = *(MEMORY[0x1E695F058] + 24);
  v18.receiver = self;
  v18.super_class = AVMetadataFaceIDReadinessObject;
  v17 = *time;
  result = [(AVMetadataObject *)&v18 initWithType:@"FaceIDReadiness" time:&v17 duration:&v15 bounds:0 optionalInfoDict:0 originalMetadataObject:input sourceCaptureInput:v10, v11, v12, v13];
  if (result)
  {
    result->_ready = ready;
    result->_coachingStatus = status;
    result->_userEngagementStatus = engagementStatus;
  }

  return result;
}

- (id)initDerivedMetadataObjectFromMetadataObject:(id)object withTransform:(CGAffineTransform *)transform isVideoMirrored:(BOOL)mirrored rollAdjustment:(double)adjustment
{
  isReady = [object isReady];
  coachingStatus = [object coachingStatus];
  userEngagementStatus = [object userEngagementStatus];
  if (object)
  {
    [object time];
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  return -[AVMetadataFaceIDReadinessObject initWithReady:coachingStatus:userEngagementStatus:time:sourceCaptureInput:](self, "initWithReady:coachingStatus:userEngagementStatus:time:sourceCaptureInput:", isReady, coachingStatus, userEngagementStatus, v12, [object input]);
}

@end