@interface SOSFeedbackViewController
- (void)feedbackDraftViewController:(id)a3 didCompleteWithFeedbackID:(id)a4;
- (void)feedbackDraftViewController:(id)a3 didFailToAttachURL:(id)a4 error:(int64_t)a5;
- (void)feedbackDraftViewController:(id)a3 didFailToStartWithError:(int64_t)a4;
- (void)feedbackDraftViewController:(id)a3 didFailToSubmitFeedback:(id)a4;
- (void)feedbackDraftViewControllerDidCancel:(id)a3;
@end

@implementation SOSFeedbackViewController

- (void)feedbackDraftViewController:(id)a3 didCompleteWithFeedbackID:(id)a4
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

- (void)feedbackDraftViewController:(id)a3 didFailToStartWithError:(int64_t)a4
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

- (void)feedbackDraftViewControllerDidCancel:(id)a3
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

- (void)feedbackDraftViewController:(id)a3 didFailToAttachURL:(id)a4 error:(int64_t)a5
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

- (void)feedbackDraftViewController:(id)a3 didFailToSubmitFeedback:(id)a4
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *&self->delegate[8];
    ObjectType = swift_getObjectType();
    v9 = a3;
    v10 = a4;

    v11 = [v10 description];
    v12 = sub_146D4();
    v14 = v13;

    (*(v7 + 40))(v12, v14, ObjectType, v7);

    swift_unknownObjectRelease();
  }
}

@end