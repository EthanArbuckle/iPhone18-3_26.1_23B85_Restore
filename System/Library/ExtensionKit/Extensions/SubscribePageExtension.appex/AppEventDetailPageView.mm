@interface AppEventDetailPageView
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (_TtC22SubscribePageExtension9VideoView)accessibilityVideoView;
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
  sub_1004EF754();
}

- (void)didTapShareButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_1004F0BB0(buttonCopy);
}

- (void)videoTapGestureRecognized:(id)recognized
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100754314();
  swift_unknownObjectRelease();
  sub_1004F0EE0();

  sub_10000C620(&v5);
}

- (void)notifyMeButtonTapped:(id)tapped
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_notifyMeButtonPresenter))
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
  sub_100754314();
  swift_unknownObjectRelease();
  v5 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_lockupTapGestureActionBlock);
  if (v5)
  {

    v5(v6);
    sub_1000164A8(v5);

    sub_10000C620(v6);
  }

  else
  {
    sub_10000C620(v6);
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v9 = sub_1004F1CB8(recognizerCopy, gestureRecognizerCopy);

  return v9;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_1004F1E10(recognizerCopy, touchCopy);

  return v9;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1004F230C(change);
}

- (_TtC22SubscribePageExtension9VideoView)accessibilityVideoView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

@end