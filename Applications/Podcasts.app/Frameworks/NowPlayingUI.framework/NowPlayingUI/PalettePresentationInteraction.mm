@interface PalettePresentationInteraction
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (_TtC12NowPlayingUI30PalettePresentationInteraction)init;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (void)didMoveToView:(id)view;
- (void)panGestureRecognized:(id)recognized;
- (void)setView:(id)view;
- (void)tapGestureRecognized:(id)recognized;
- (void)willMoveToView:(id)view;
@end

@implementation PalettePresentationInteraction

- (void)setView:(id)view
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_view);
  *(&self->super.isa + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_view) = view;
  viewCopy = view;
  selfCopy = self;
  sub_11093C(v6);
}

- (void)tapGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  selfCopy = self;
  if ([(PalettePresentationInteraction *)recognizedCopy state]== &dword_0 + 3)
  {
    if (*(&selfCopy->super.isa + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_animationController))
    {
      v5 = selfCopy;
      selfCopy = recognizedCopy;
      goto LABEL_6;
    }

    sub_110F28(0, 0);
  }

  v5 = recognizedCopy;
LABEL_6:
}

- (void)panGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  selfCopy = self;
  if ([(PalettePresentationInteraction *)recognizedCopy state]== &dword_0 + 1)
  {
    if (*(&selfCopy->super.isa + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_animationController))
    {
      v5 = selfCopy;
      selfCopy = recognizedCopy;
      goto LABEL_6;
    }

    sub_110F28(0, 0);
  }

  v5 = recognizedCopy;
LABEL_6:
}

- (_TtC12NowPlayingUI30PalettePresentationInteraction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)willMoveToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_111320(view);
}

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_111480(view);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  selfCopy = self;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_panGestureRecognizer);
  sub_2B860(0, &unk_1C95B8);
  recognizerCopy = recognizer;
  v8 = selfCopy;
  v9 = v6;
  LOBYTE(selfCopy) = sub_144FFC();

  return (selfCopy & 1) == 0;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = sub_111730();

  return self & 1;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  controllerCopy = controller;
  presentingControllerCopy = presentingController;
  sourceControllerCopy = sourceController;
  selfCopy = self;
  v12 = sub_111DF4(controllerCopy, presentingControllerCopy);

  return v12;
}

- (id)animationControllerForDismissedController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = sub_111B1C(controllerCopy);

  return v6;
}

@end