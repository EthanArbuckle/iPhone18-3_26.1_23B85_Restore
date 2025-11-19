@interface PalettePresentationInteraction
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (void)didMoveToView:(id)a3;
- (void)panGestureRecognized:(id)a3;
- (void)setView:(id)a3;
- (void)tapGestureRecognized:(id)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation PalettePresentationInteraction

- (void)willMoveToView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100059054(a3);
}

- (void)didMoveToView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1000591B4(a3);
}

- (void)setView:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC5Music30PalettePresentationInteraction_view);
  *(&self->super.isa + OBJC_IVAR____TtC5Music30PalettePresentationInteraction_view) = a3;
  v3 = a3;
}

- (void)tapGestureRecognized:(id)a3
{
  v4 = a3;
  v6 = self;
  if ([(PalettePresentationInteraction *)v4 state]== 3)
  {
    if (*(&v6->super.isa + OBJC_IVAR____TtC5Music30PalettePresentationInteraction_animationController))
    {
      v5 = v6;
      v6 = v4;
      goto LABEL_6;
    }

    sub_1007EAAD8(0, 0);
  }

  v5 = v4;
LABEL_6:
}

- (void)panGestureRecognized:(id)a3
{
  v4 = a3;
  v6 = self;
  if ([(PalettePresentationInteraction *)v4 state]== 1)
  {
    if (*(&v6->super.isa + OBJC_IVAR____TtC5Music30PalettePresentationInteraction_animationController))
    {
      v5 = v6;
      v6 = v4;
      goto LABEL_6;
    }

    sub_1007EAAD8(0, 0);
  }

  v5 = v4;
LABEL_6:
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v5 = self;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC5Music30PalettePresentationInteraction_panGestureRecognizer);
  sub_100009F78(0, &unk_101183A30);
  v7 = a3;
  v8 = v5;
  v9 = v6;
  LOBYTE(v5) = static NSObject.== infix(_:_:)();

  return (v5 & 1) == 0;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1007EB5CC();

  return self & 1;
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_1007EBA10(v9);

  return v12;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1007EB7D0(v4);

  return v6;
}

@end