@interface FeedbackController
- (void)feedbackDraftViewController:(id)controller didCompleteWithFeedbackID:(id)d;
- (void)feedbackDraftViewController:(id)controller didFailToAttachURL:(id)l error:(int64_t)error;
- (void)feedbackDraftViewController:(id)controller didFailToStartWithError:(int64_t)error;
- (void)feedbackDraftViewController:(id)controller didFailToSubmitFeedback:(id)feedback;
- (void)feedbackDraftViewControllerDidCancel:(id)cancel;
@end

@implementation FeedbackController

- (void)feedbackDraftViewController:(id)controller didCompleteWithFeedbackID:(id)d
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  controllerCopy = controller;

  sub_100002290(v5, v7);
}

- (void)feedbackDraftViewController:(id)controller didFailToStartWithError:(int64_t)error
{
  controllerCopy = controller;

  sub_100002458();
}

- (void)feedbackDraftViewController:(id)controller didFailToAttachURL:(id)l error:(int64_t)error
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;

  sub_1000026A0(v10);

  (*(v7 + 8))(v10, v6);
}

- (void)feedbackDraftViewControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;

  sub_100002A2C();
}

- (void)feedbackDraftViewController:(id)controller didFailToSubmitFeedback:(id)feedback
{
  controllerCopy = controller;
  feedbackCopy = feedback;

  sub_100002B84(feedbackCopy);
}

@end