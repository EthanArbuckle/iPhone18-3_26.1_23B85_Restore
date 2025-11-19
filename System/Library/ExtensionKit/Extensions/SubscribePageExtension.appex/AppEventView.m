@interface AppEventView
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC22SubscribePageExtension12AppEventView)initWithCoder:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)stateChangedFor:(id)a3;
@end

@implementation AppEventView

- (_TtC22SubscribePageExtension12AppEventView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_clickAction;
  v5 = sub_10000C518(&unk_100933080);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = self + OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_initialLongPressLocation;
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_longPressGestureRecognizer);
  v5 = self;
  [v4 removeTarget:v5 action:0];
  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(AppEventView *)&v6 dealloc];
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1006D1E78();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v4 = type metadata accessor for AppEventCardLayout(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_100920180;
  v8 = self;
  if (v7 != -1)
  {
    swift_once();
  }

  sub_1006D3574(&unk_10097D3C0, v8);
  v10 = v9;
  v11 = *(&v8->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_appEventCardView);
  sub_10018DF10(v6);
  sub_1006D38E4(v11, v6);
  v13 = v12;
  v15 = v14;
  sub_10001BB14(v6);

  v16 = v10 + v15;
  v17 = v13;
  result.height = v16;
  result.width = v17;
  return result;
}

- (void)stateChangedFor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1006D2220(v4);
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1006D2C78(v6, v7);

  return v9 & 1;
}

@end