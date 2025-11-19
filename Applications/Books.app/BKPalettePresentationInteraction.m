@interface BKPalettePresentationInteraction
- (BKPalettePresentationInteractionDelegate)delegate;
- (BKPalettePresentationTransitioning)transitioningDelegate;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (UIView)view;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (void)didMoveToView:(id)a3;
- (void)panGestureRecognized:(id)a3;
- (void)setView:(id)a3;
- (void)tapGestureRecognized:(id)a3;
- (void)willMoveToView:(id)a3;
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

- (void)setView:(id)a3
{
  v5 = OBJC_IVAR___BKPalettePresentationInteraction_view;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (void)tapGestureRecognized:(id)a3
{
  v4 = a3;
  v6 = self;
  if ([(BKPalettePresentationInteraction *)v4 state]== 3)
  {
    if (*(v6 + OBJC_IVAR___BKPalettePresentationInteraction_animationController))
    {
      v5 = v6;
      v6 = v4;
      goto LABEL_6;
    }

    sub_1003446C0(0, 0);
  }

  v5 = v4;
LABEL_6:
}

- (void)panGestureRecognized:(id)a3
{
  v4 = a3;
  v6 = self;
  if ([(BKPalettePresentationInteraction *)v4 state]== 1)
  {
    if (*(v6 + OBJC_IVAR___BKPalettePresentationInteraction_animationController))
    {
      v5 = v6;
      v6 = v4;
      goto LABEL_6;
    }

    sub_1003446C0(0, 0);
  }

  v5 = v4;
LABEL_6:
}

- (void)willMoveToView:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.super.isa = a3;
  PalettePresentationInteraction.willMove(to:)(v9);
}

- (void)didMoveToView:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.super.isa = a3;
  PalettePresentationInteraction.didMove(to:)(v9);
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = _s5Books30PalettePresentationInteractionC17gestureRecognizer_33shouldRecognizeSimultaneouslyWithSbSo09UIGestureF0C_AGtF_0();

  return v9 & 1;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = PalettePresentationInteraction.gestureRecognizerShouldBegin(_:)(v4);

  return self & 1;
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = type metadata accessor for AssetSheetPresentationController();
    v10.receiver = objc_allocWithZone(v8);
    v10.super_class = v8;
    v6 = [(BKPalettePresentationInteraction *)&v10 initWithPresentedViewController:v7 presentingViewController:a4];
  }

  return v6;
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_10034565C(v9);

  return v12;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = PalettePresentationInteraction.animationController(forDismissed:)(v4);

  return v6;
}

@end