@interface AppEventCardView
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)handleTapWithGestureRecognizer:(id)recognizer;
- (void)layoutSubviews;
- (void)notifyMeButtonTapped:(id)tapped;
@end

@implementation AppEventCardView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10018DA3C();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v4 = type metadata accessor for AppEventCardLayout(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_10018DF10(v6);
  sub_1006D38E4(selfCopy, v6);
  v9 = v8;
  v11 = v10;

  sub_10001BB14(v6);
  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)handleTapWithGestureRecognizer:(id)recognizer
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupViewTappedAction);
  if (v3)
  {
    selfCopy = self;
    v5 = sub_10001B5AC(v3);
    v3(v5);

    sub_1000164A8(v3);
  }
}

- (void)notifyMeButtonTapped:(id)tapped
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_notifyMeButtonPresenter))
  {
    tappedCopy = tapped;
    selfCopy = self;

    NotifyMeButtonPresenter.didTapButton(sender:)(tappedCopy);
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_100190760(touchCopy);

  return v9;
}

@end