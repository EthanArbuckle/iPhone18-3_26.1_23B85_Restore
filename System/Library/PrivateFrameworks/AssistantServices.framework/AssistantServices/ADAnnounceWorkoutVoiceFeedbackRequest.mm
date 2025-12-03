@interface ADAnnounceWorkoutVoiceFeedbackRequest
- (ADAnnounceWorkoutVoiceFeedbackRequest)initWithRemoteAnnouncement:(id)announcement completion:(id)completion;
- (ADAnnounceWorkoutVoiceFeedbackRequest)initWithWorkoutVoiceFeedback:(id)feedback completion:(id)completion;
- (BOOL)supportsSpeakerFallback;
- (void)_commonInit;
@end

@implementation ADAnnounceWorkoutVoiceFeedbackRequest

- (BOOL)supportsSpeakerFallback
{
  workoutVoiceFeedback = [(ADAnnounceWorkoutVoiceFeedbackRequest *)self workoutVoiceFeedback];
  feedbackText = [workoutVoiceFeedback feedbackText];
  if (feedbackText)
  {
    workoutVoiceFeedback2 = [(ADAnnounceWorkoutVoiceFeedbackRequest *)self workoutVoiceFeedback];
    voiceName = [workoutVoiceFeedback2 voiceName];
    v7 = voiceName == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (ADAnnounceWorkoutVoiceFeedbackRequest)initWithRemoteAnnouncement:(id)announcement completion:(id)completion
{
  v7.receiver = self;
  v7.super_class = ADAnnounceWorkoutVoiceFeedbackRequest;
  v4 = [(ADAnnouncementRequest *)&v7 initWithRemoteAnnouncement:announcement completion:completion];
  v5 = v4;
  if (v4)
  {
    [(ADAnnounceWorkoutVoiceFeedbackRequest *)v4 _commonInit];
  }

  return v5;
}

- (void)_commonInit
{
  [(ADAnnounceNotificationRequest *)self setAnnouncementType:9];
  [(ADAnnouncementRequest *)self setShouldSkipTriggerlessReply:1];

  [(ADAnnouncementRequest *)self setRequiresOpportuneTime:0];
}

- (ADAnnounceWorkoutVoiceFeedbackRequest)initWithWorkoutVoiceFeedback:(id)feedback completion:(id)completion
{
  feedbackCopy = feedback;
  v11.receiver = self;
  v11.super_class = ADAnnounceWorkoutVoiceFeedbackRequest;
  v7 = [(ADAnnouncementRequest *)&v11 initWithAnnouncementRequestType:1 platform:4 completion:completion];
  if (v7)
  {
    v8 = [feedbackCopy copy];
    workoutVoiceFeedback = v7->_workoutVoiceFeedback;
    v7->_workoutVoiceFeedback = v8;

    [(ADAnnounceWorkoutVoiceFeedbackRequest *)v7 _commonInit];
  }

  return v7;
}

@end