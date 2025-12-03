@interface RCRecordingCardPresentationHelper
- (UISheetPresentationController)sheetPresentationController;
- (_TtC10VoiceMemos33RCRecordingCardPresentationHelper)init;
- (_TtC10VoiceMemos33RCRecordingCardPresentationHelper)initWithSplitViewController:(id)controller browseFoldersViewController:(id)viewController playbackViewController:(id)playbackViewController;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (void)dismissCardWithCompletion:(id)completion;
- (void)presentCardFrom:(id)from isEditMode:(BOOL)mode completion:(id)completion;
- (void)recordingView:(id)view didUpdateViewHeight:(double)height;
- (void)restyleRecordingCardSheetPresentationController;
- (void)selectLargeDetent;
- (void)setPresentedCardViewController:(id)controller;
- (void)setPresentedViewController:(id)controller;
- (void)updateSelectedDetent;
@end

@implementation RCRecordingCardPresentationHelper

- (void)setPresentedCardViewController:(id)controller
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_presentedCardViewController);
  *(&self->super.isa + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_presentedCardViewController) = controller;
  controllerCopy = controller;
}

- (void)setPresentedViewController:(id)controller
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_presentedViewController);
  *(&self->super.isa + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_presentedViewController) = controller;
  controllerCopy = controller;
}

- (UISheetPresentationController)sheetPresentationController
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_presentedViewController);
  if (!v2)
  {
    goto LABEL_5;
  }

  selfCopy = self;
  presentationController = [v2 presentationController];
  if (!presentationController || (v5 = presentationController, objc_opt_self(), v6 = swift_dynamicCastObjCClass(), selfCopy, v7 = v6, selfCopy = v5, !v6))
  {

LABEL_5:
    v7 = 0;
  }

  return v7;
}

- (_TtC10VoiceMemos33RCRecordingCardPresentationHelper)initWithSplitViewController:(id)controller browseFoldersViewController:(id)viewController playbackViewController:(id)playbackViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  playbackViewControllerCopy = playbackViewController;
  return sub_100157D4C(controllerCopy, viewControllerCopy, playbackViewController);
}

- (void)presentCardFrom:(id)from isEditMode:(BOOL)mode completion:(id)completion
{
  v8 = _Block_copy(completion);
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

  fromCopy = from;
  selfCopy = self;
  sub_100157E78(fromCopy, mode, v8, v9);
  sub_1000338B4(v8);
}

- (void)dismissCardWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
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

  selfCopy = self;
  sub_100158554(v7, v6);
  sub_1000338B4(v7);
}

- (void)restyleRecordingCardSheetPresentationController
{
  selfCopy = self;
  sub_100158864();
}

- (void)updateSelectedDetent
{
  selfCopy = self;
  sub_100158994();
}

- (void)selectLargeDetent
{
  selfCopy = self;
  sub_100158ACC();
}

- (void)recordingView:(id)view didUpdateViewHeight:(double)height
{
  viewCopy = view;
  selfCopy = self;
  sub_10015AEB0(viewCopy);
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  controllerCopy = controller;
  presentingControllerCopy = presentingController;
  selfCopy = self;
  v11 = sub_10015A554(presentingControllerCopy, controller);

  return v11;
}

- (id)animationControllerForDismissedController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = sub_10015A554(controllerCopy, 0);

  return v6;
}

- (_TtC10VoiceMemos33RCRecordingCardPresentationHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end