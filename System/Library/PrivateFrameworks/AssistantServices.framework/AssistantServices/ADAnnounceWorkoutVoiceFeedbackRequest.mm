@interface ADAnnounceWorkoutVoiceFeedbackRequest
- (ADAnnounceWorkoutVoiceFeedbackRequest)initWithRemoteAnnouncement:(id)a3 completion:(id)a4;
- (ADAnnounceWorkoutVoiceFeedbackRequest)initWithWorkoutVoiceFeedback:(id)a3 completion:(id)a4;
- (BOOL)supportsSpeakerFallback;
- (void)_commonInit;
@end

@implementation ADAnnounceWorkoutVoiceFeedbackRequest

- (BOOL)supportsSpeakerFallback
{
  v3 = [(ADAnnounceWorkoutVoiceFeedbackRequest *)self workoutVoiceFeedback];
  v4 = [v3 feedbackText];
  if (v4)
  {
    v5 = [(ADAnnounceWorkoutVoiceFeedbackRequest *)self workoutVoiceFeedback];
    v6 = [v5 voiceName];
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (ADAnnounceWorkoutVoiceFeedbackRequest)initWithRemoteAnnouncement:(id)a3 completion:(id)a4
{
  v7.receiver = self;
  v7.super_class = ADAnnounceWorkoutVoiceFeedbackRequest;
  v4 = [(ADAnnouncementRequest *)&v7 initWithRemoteAnnouncement:a3 completion:a4];
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

- (ADAnnounceWorkoutVoiceFeedbackRequest)initWithWorkoutVoiceFeedback:(id)a3 completion:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = ADAnnounceWorkoutVoiceFeedbackRequest;
  v7 = [(ADAnnouncementRequest *)&v11 initWithAnnouncementRequestType:1 platform:4 completion:a4];
  if (v7)
  {
    v8 = [v6 copy];
    workoutVoiceFeedback = v7->_workoutVoiceFeedback;
    v7->_workoutVoiceFeedback = v8;

    [(ADAnnounceWorkoutVoiceFeedbackRequest *)v7 _commonInit];
  }

  return v7;
}

@end