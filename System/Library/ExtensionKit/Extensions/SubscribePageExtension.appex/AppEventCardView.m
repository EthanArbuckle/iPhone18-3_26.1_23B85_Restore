@interface AppEventCardView
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)handleTapWithGestureRecognizer:(id)a3;
- (void)layoutSubviews;
- (void)notifyMeButtonTapped:(id)a3;
@end

@implementation AppEventCardView

- (void)layoutSubviews
{
  v2 = self;
  sub_10018DA3C();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v4 = type metadata accessor for AppEventCardLayout(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self;
  sub_10018DF10(v6);
  sub_1006D38E4(v7, v6);
  v9 = v8;
  v11 = v10;

  sub_10001BB14(v6);
  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)handleTapWithGestureRecognizer:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupViewTappedAction);
  if (v3)
  {
    v4 = self;
    v5 = sub_10001B5AC(v3);
    v3(v5);

    sub_1000164A8(v3);
  }
}

- (void)notifyMeButtonTapped:(id)a3
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_notifyMeButtonPresenter))
  {
    v4 = a3;
    v5 = self;

    NotifyMeButtonPresenter.didTapButton(sender:)(v4);
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100190760(v7);

  return v9;
}

@end