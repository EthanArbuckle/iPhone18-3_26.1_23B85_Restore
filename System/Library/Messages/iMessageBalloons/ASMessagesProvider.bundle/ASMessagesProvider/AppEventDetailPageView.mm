@interface AppEventDetailPageView
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (_TtC18ASMessagesProvider9VideoView)accessibilityVideoView;
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
  sub_6D9E70();
}

- (void)didTapShareButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_6DB2CC(buttonCopy);
}

- (void)videoTapGestureRecognized:(id)recognized
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_76A510();
  swift_unknownObjectRelease();
  sub_6DB5FC();

  sub_BEB8(&v5);
}

- (void)notifyMeButtonTapped:(id)tapped
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_notifyMeButtonPresenter))
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
  sub_76A510();
  swift_unknownObjectRelease();
  v5 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupTapGestureActionBlock);
  if (v5)
  {

    v5(v6);
    sub_F704(v5);

    sub_BEB8(v6);
  }

  else
  {
    sub_BEB8(v6);
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v9 = sub_6DC3D4(recognizerCopy, gestureRecognizerCopy);

  return v9;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_6DC52C(recognizerCopy, touchCopy);

  return v9;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_6DCA28(change);
}

- (_TtC18ASMessagesProvider9VideoView)accessibilityVideoView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

@end