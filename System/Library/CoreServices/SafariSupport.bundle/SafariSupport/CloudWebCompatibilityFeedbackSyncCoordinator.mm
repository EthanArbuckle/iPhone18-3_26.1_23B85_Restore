@interface CloudWebCompatibilityFeedbackSyncCoordinator
- (CloudWebCompatibilityFeedbackSyncCoordinator)init;
- (void)saveFeedback:(id)feedback completionHandler:(id)handler;
@end

@implementation CloudWebCompatibilityFeedbackSyncCoordinator

- (CloudWebCompatibilityFeedbackSyncCoordinator)init
{
  v7.receiver = self;
  v7.super_class = CloudWebCompatibilityFeedbackSyncCoordinator;
  v2 = [(CloudWebCompatibilityFeedbackSyncCoordinator *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.Safari.CloudBookmarks.CloudWebCompatibilityFeedbackSyncCoordinator.feedbackSavingQueue", 0);
    savingQueue = v2->_savingQueue;
    v2->_savingQueue = v3;

    v5 = v2;
  }

  return v2;
}

- (void)saveFeedback:(id)feedback completionHandler:(id)handler
{
  feedbackCopy = feedback;
  handlerCopy = handler;
  savingQueue = self->_savingQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003E9F4;
  v11[3] = &unk_100131990;
  v12 = feedbackCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = feedbackCopy;
  dispatch_async(savingQueue, v11);
}

@end