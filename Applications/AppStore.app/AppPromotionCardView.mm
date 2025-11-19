@interface AppPromotionCardView
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)dealloc;
- (void)handleTapWithGestureRecognizer:(id)a3;
- (void)layoutSubviews;
@end

@implementation AppPromotionCardView

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupTapGestureRecognizer);
  if (v4)
  {
    [v4 removeTarget:self action:0];
  }

  else
  {
    v5 = self;
  }

  v6.receiver = self;
  v6.super_class = ObjectType;
  [(AppPromotionCardView *)&v6 dealloc];
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1006621D0();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v4 = type metadata accessor for AppPromotionCardLayout(0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = self;
  sub_1006626A4(v6);
  v8 = sub_1006631E4(v7, v6);
  v10 = v9;

  sub_10010287C(v6);
  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)handleTapWithGestureRecognizer:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupViewTappedAction);
  if (v3)
  {
    v4 = self;
    v5 = sub_10000827C(v3);
    v3(v5);

    sub_10001F63C(v3);
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10066581C(v7);

  return v9;
}

@end