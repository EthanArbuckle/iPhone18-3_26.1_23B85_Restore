@interface RCRecordingCardPresentationHelper
- (UISheetPresentationController)sheetPresentationController;
- (_TtC10VoiceMemos33RCRecordingCardPresentationHelper)init;
- (_TtC10VoiceMemos33RCRecordingCardPresentationHelper)initWithSplitViewController:(id)a3 browseFoldersViewController:(id)a4 playbackViewController:(id)a5;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (void)dismissCardWithCompletion:(id)a3;
- (void)presentCardFrom:(id)a3 isEditMode:(BOOL)a4 completion:(id)a5;
- (void)recordingView:(id)a3 didUpdateViewHeight:(double)a4;
- (void)restyleRecordingCardSheetPresentationController;
- (void)selectLargeDetent;
- (void)setPresentedCardViewController:(id)a3;
- (void)setPresentedViewController:(id)a3;
- (void)updateSelectedDetent;
@end

@implementation RCRecordingCardPresentationHelper

- (void)setPresentedCardViewController:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_presentedCardViewController);
  *(&self->super.isa + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_presentedCardViewController) = a3;
  v3 = a3;
}

- (void)setPresentedViewController:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_presentedViewController);
  *(&self->super.isa + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_presentedViewController) = a3;
  v3 = a3;
}

- (UISheetPresentationController)sheetPresentationController
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_presentedViewController);
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = self;
  v4 = [v2 presentationController];
  if (!v4 || (v5 = v4, objc_opt_self(), v6 = swift_dynamicCastObjCClass(), v3, v7 = v6, v3 = v5, !v6))
  {

LABEL_5:
    v7 = 0;
  }

  return v7;
}

- (_TtC10VoiceMemos33RCRecordingCardPresentationHelper)initWithSplitViewController:(id)a3 browseFoldersViewController:(id)a4 playbackViewController:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  return sub_100157D4C(v7, v8, a5);
}

- (void)presentCardFrom:(id)a3 isEditMode:(BOOL)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_1000FF3B4;
  }

  else
  {
    v9 = 0;
  }

  v10 = a3;
  v11 = self;
  sub_100157E78(v10, a4, v8, v9);
  sub_1000338B4(v8);
}

- (void)dismissCardWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1000FE07C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = self;
  sub_100158554(v7, v6);
  sub_1000338B4(v7);
}

- (void)restyleRecordingCardSheetPresentationController
{
  v2 = self;
  sub_100158864();
}

- (void)updateSelectedDetent
{
  v2 = self;
  sub_100158994();
}

- (void)selectLargeDetent
{
  v2 = self;
  sub_100158ACC();
}

- (void)recordingView:(id)a3 didUpdateViewHeight:(double)a4
{
  v5 = a3;
  v6 = self;
  sub_10015AEB0(v5);
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = sub_10015A554(v9, a3);

  return v11;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10015A554(v4, 0);

  return v6;
}

- (_TtC10VoiceMemos33RCRecordingCardPresentationHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end