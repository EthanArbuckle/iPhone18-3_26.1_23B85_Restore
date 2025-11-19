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
  sub_17B7C8();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v4 = type metadata accessor for AppEventCardLayout(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self;
  sub_17BC9C(v6);
  sub_5CB710(v7, v6);
  v9 = v8;
  v11 = v10;

  sub_2467C(v6);
  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)handleTapWithGestureRecognizer:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupViewTappedAction);
  if (v3)
  {
    v4 = self;
    v5 = sub_F714(v3);
    v3(v5);

    sub_F704(v3);
  }
}

- (void)notifyMeButtonTapped:(id)a3
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_notifyMeButtonPresenter))
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
  v9 = sub_17E5B4(v7);

  return v9;
}

@end