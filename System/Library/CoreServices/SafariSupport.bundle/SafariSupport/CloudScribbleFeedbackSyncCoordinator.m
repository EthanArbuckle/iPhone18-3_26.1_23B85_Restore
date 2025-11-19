@interface CloudScribbleFeedbackSyncCoordinator
- (CloudScribbleFeedbackSyncCoordinator)init;
- (void)saveFeedback:(id)a3 completionHandler:(id)a4;
@end

@implementation CloudScribbleFeedbackSyncCoordinator

- (CloudScribbleFeedbackSyncCoordinator)init
{
  v7.receiver = self;
  v7.super_class = CloudScribbleFeedbackSyncCoordinator;
  v2 = [(CloudScribbleFeedbackSyncCoordinator *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.Safari.CloudBookmarks.CloudScribbleFeedbackSyncCoordinator.feedbackSavingQueue", 0);
    savingQueue = v2->_savingQueue;
    v2->_savingQueue = v3;

    v5 = v2;
  }

  return v2;
}

- (void)saveFeedback:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  savingQueue = self->_savingQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100098CE8;
  v11[3] = &unk_100131990;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(savingQueue, v11);
}

@end