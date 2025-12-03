@interface AppEventDetailPageView
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (_TtC20ProductPageExtension9VideoView)accessibilityVideoView;
- (void)didTapShareButton:(id)button;
- (void)layoutSubviews;
- (void)lockupTapGestureRecognized:(id)recognized;
- (void)notifyMeButtonTapped:(id)tapped;
- (void)traitCollectionDidChange:(id)change;
- (void)videoTapGestureRecognized:(id)recognized;
@end

@implementation AppEventDetailPageView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100328B4C();
}

- (void)didTapShareButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_100329FA8(buttonCopy);
}

- (void)videoTapGestureRecognized:(id)recognized
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10077123C();
  swift_unknownObjectRelease();
  sub_10032A2D8();

  sub_10000CD74(&v5);
}

- (void)notifyMeButtonTapped:(id)tapped
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_notifyMeButtonPresenter))
  {
    tappedCopy = tapped;
    selfCopy = self;

    NotifyMeButtonPresenter.didTapButton(sender:)(tappedCopy);
  }
}

- (void)lockupTapGestureRecognized:(id)recognized
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10077123C();
  swift_unknownObjectRelease();
  v5 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupTapGestureActionBlock);
  if (v5)
  {

    v5(v6);
    sub_1000167E0(v5);

    sub_10000CD74(v6);
  }

  else
  {
    sub_10000CD74(v6);
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v9 = sub_10032B210(recognizerCopy, gestureRecognizerCopy);

  return v9;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_10032B368(recognizerCopy, touchCopy);

  return v9;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10032B864(change);
}

- (_TtC20ProductPageExtension9VideoView)accessibilityVideoView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

@end