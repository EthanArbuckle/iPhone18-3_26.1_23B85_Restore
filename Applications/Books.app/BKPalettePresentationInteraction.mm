@interface BKPalettePresentationInteraction
- (BKPalettePresentationInteractionDelegate)delegate;
- (BKPalettePresentationTransitioning)transitioningDelegate;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (UIView)view;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (void)didMoveToView:(id)view;
- (void)panGestureRecognized:(id)recognized;
- (void)setView:(id)view;
- (void)tapGestureRecognized:(id)recognized;
- (void)willMoveToView:(id)view;
@end

@implementation BKPalettePresentationInteraction

- (BKPalettePresentationInteractionDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (BKPalettePresentationTransitioning)transitioningDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIView)view
{
  v3 = OBJC_IVAR___BKPalettePresentationInteraction_view;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setView:(id)view
{
  v5 = OBJC_IVAR___BKPalettePresentationInteraction_view;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = view;
  viewCopy = view;
}

- (void)tapGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  selfCopy = self;
  if ([(BKPalettePresentationInteraction *)recognizedCopy state]== 3)
  {
    if (*(selfCopy + OBJC_IVAR___BKPalettePresentationInteraction_animationController))
    {
      v5 = selfCopy;
      selfCopy = recognizedCopy;
      goto LABEL_6;
    }

    sub_1003446C0(0, 0);
  }

  v5 = recognizedCopy;
LABEL_6:
}

- (void)panGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  selfCopy = self;
  if ([(BKPalettePresentationInteraction *)recognizedCopy state]== 1)
  {
    if (*(selfCopy + OBJC_IVAR___BKPalettePresentationInteraction_animationController))
    {
      v5 = selfCopy;
      selfCopy = recognizedCopy;
      goto LABEL_6;
    }

    sub_1003446C0(0, 0);
  }

  v5 = recognizedCopy;
LABEL_6:
}

- (void)willMoveToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.super.isa = view;
  PalettePresentationInteraction.willMove(to:)(v9);
}

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.super.isa = view;
  PalettePresentationInteraction.didMove(to:)(v9);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v9 = _s5Books30PalettePresentationInteractionC17gestureRecognizer_33shouldRecognizeSimultaneouslyWithSbSo09UIGestureF0C_AGtF_0();

  return v9 & 1;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = PalettePresentationInteraction.gestureRecognizerShouldBegin(_:)(beginCopy);

  return self & 1;
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = type metadata accessor for AssetSheetPresentationController();
    v10.receiver = objc_allocWithZone(v8);
    v10.super_class = v8;
    v6 = [(BKPalettePresentationInteraction *)&v10 initWithPresentedViewController:v7 presentingViewController:viewController];
  }

  return v6;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  controllerCopy = controller;
  presentingControllerCopy = presentingController;
  sourceControllerCopy = sourceController;
  selfCopy = self;
  v12 = sub_10034565C(presentingControllerCopy);

  return v12;
}

- (id)animationControllerForDismissedController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = PalettePresentationInteraction.animationController(forDismissed:)(controllerCopy);

  return v6;
}

@end