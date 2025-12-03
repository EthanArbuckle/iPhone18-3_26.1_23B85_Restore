@interface PalettePresentationInteraction
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (void)didMoveToView:(id)view;
- (void)panGestureRecognized:(id)recognized;
- (void)setView:(id)view;
- (void)tapGestureRecognized:(id)recognized;
- (void)willMoveToView:(id)view;
@end

@implementation PalettePresentationInteraction

- (void)willMoveToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_100059054(view);
}

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_1000591B4(view);
}

- (void)setView:(id)view
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC5Music30PalettePresentationInteraction_view);
  *(&self->super.isa + OBJC_IVAR____TtC5Music30PalettePresentationInteraction_view) = view;
  viewCopy = view;
}

- (void)tapGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  selfCopy = self;
  if ([(PalettePresentationInteraction *)recognizedCopy state]== 3)
  {
    if (*(&selfCopy->super.isa + OBJC_IVAR____TtC5Music30PalettePresentationInteraction_animationController))
    {
      v5 = selfCopy;
      selfCopy = recognizedCopy;
      goto LABEL_6;
    }

    sub_1007EAAD8(0, 0);
  }

  v5 = recognizedCopy;
LABEL_6:
}

- (void)panGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  selfCopy = self;
  if ([(PalettePresentationInteraction *)recognizedCopy state]== 1)
  {
    if (*(&selfCopy->super.isa + OBJC_IVAR____TtC5Music30PalettePresentationInteraction_animationController))
    {
      v5 = selfCopy;
      selfCopy = recognizedCopy;
      goto LABEL_6;
    }

    sub_1007EAAD8(0, 0);
  }

  v5 = recognizedCopy;
LABEL_6:
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  selfCopy = self;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC5Music30PalettePresentationInteraction_panGestureRecognizer);
  sub_100009F78(0, &unk_101183A30);
  recognizerCopy = recognizer;
  v8 = selfCopy;
  v9 = v6;
  LOBYTE(selfCopy) = static NSObject.== infix(_:_:)();

  return (selfCopy & 1) == 0;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = sub_1007EB5CC();

  return self & 1;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  controllerCopy = controller;
  presentingControllerCopy = presentingController;
  sourceControllerCopy = sourceController;
  selfCopy = self;
  v12 = sub_1007EBA10(presentingControllerCopy);

  return v12;
}

- (id)animationControllerForDismissedController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = sub_1007EB7D0(controllerCopy);

  return v6;
}

@end