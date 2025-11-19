@interface PalettePresentationInteraction
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (_TtC12NowPlayingUI30PalettePresentationInteraction)init;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (void)didMoveToView:(id)a3;
- (void)panGestureRecognized:(id)a3;
- (void)setView:(id)a3;
- (void)tapGestureRecognized:(id)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation PalettePresentationInteraction

- (void)setView:(id)a3
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_view);
  *(&self->super.isa + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_view) = a3;
  v4 = a3;
  v5 = self;
  sub_11093C(v6);
}

- (void)tapGestureRecognized:(id)a3
{
  v4 = a3;
  v6 = self;
  if ([(PalettePresentationInteraction *)v4 state]== &dword_0 + 3)
  {
    if (*(&v6->super.isa + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_animationController))
    {
      v5 = v6;
      v6 = v4;
      goto LABEL_6;
    }

    sub_110F28(0, 0);
  }

  v5 = v4;
LABEL_6:
}

- (void)panGestureRecognized:(id)a3
{
  v4 = a3;
  v6 = self;
  if ([(PalettePresentationInteraction *)v4 state]== &dword_0 + 1)
  {
    if (*(&v6->super.isa + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_animationController))
    {
      v5 = v6;
      v6 = v4;
      goto LABEL_6;
    }

    sub_110F28(0, 0);
  }

  v5 = v4;
LABEL_6:
}

- (_TtC12NowPlayingUI30PalettePresentationInteraction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)willMoveToView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_111320(a3);
}

- (void)didMoveToView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_111480(a3);
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v5 = self;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_panGestureRecognizer);
  sub_2B860(0, &unk_1C95B8);
  v7 = a3;
  v8 = v5;
  v9 = v6;
  LOBYTE(v5) = sub_144FFC();

  return (v5 & 1) == 0;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_111730();

  return self & 1;
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_111DF4(v8, v9);

  return v12;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_111B1C(v4);

  return v6;
}

@end