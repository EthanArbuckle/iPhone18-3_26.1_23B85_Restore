@interface SOSFeedbackViewController
- (void)feedbackDraftViewController:(id)controller didCompleteWithFeedbackID:(id)d;
- (void)feedbackDraftViewController:(id)controller didFailToAttachURL:(id)l error:(int64_t)error;
- (void)feedbackDraftViewController:(id)controller didFailToStartWithError:(int64_t)error;
- (void)feedbackDraftViewController:(id)controller didFailToSubmitFeedback:(id)feedback;
- (void)feedbackDraftViewControllerDidCancel:(id)cancel;
@end

@implementation SOSFeedbackViewController

- (void)feedbackDraftViewController:(id)controller didCompleteWithFeedbackID:(id)d
{
  v5 = sub_146D4();
  v7 = v6;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *&self->delegate[8];
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 8);

    v10(v5, v7, ObjectType, v8);
    swift_unknownObjectRelease();
  }
}

- (void)feedbackDraftViewController:(id)controller didFailToStartWithError:(int64_t)error
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *&self->delegate[8];
    swift_getObjectType();

    v6 = sub_14594();
    (*(v5 + 16))(v6);

    swift_unknownObjectRelease();
  }
}

- (void)feedbackDraftViewControllerDidCancel:(id)cancel
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *&self->delegate[8];
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 24);

    v6(ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

- (void)feedbackDraftViewController:(id)controller didFailToAttachURL:(id)l error:(int64_t)error
{
  v6 = sub_14114();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_14104();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *&self->delegate[8];
    ObjectType = swift_getObjectType();

    v13 = sub_14634();
    (*(v11 + 32))(v10, v13, v14, ObjectType, v11);

    swift_unknownObjectRelease();
  }

  (*(v7 + 8))(v10, v6);
}

- (void)feedbackDraftViewController:(id)controller didFailToSubmitFeedback:(id)feedback
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *&self->delegate[8];
    ObjectType = swift_getObjectType();
    controllerCopy = controller;
    feedbackCopy = feedback;

    v11 = [feedbackCopy description];
    v12 = sub_146D4();
    v14 = v13;

    (*(v7 + 40))(v12, v14, ObjectType, v7);

    swift_unknownObjectRelease();
  }
}

@end