@interface AppPromotionView
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC20ProductPageExtension16AppPromotionView)initWithCoder:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)stateChangedFor:(id)a3;
@end

@implementation AppPromotionView

- (_TtC20ProductPageExtension16AppPromotionView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_clickAction;
  v5 = sub_10000A5D4(&qword_100955BD0);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = self + OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_initialLongPressLocation;
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_longPressGestureRecognizer);
  v5 = self;
  [v4 removeTarget:v5 action:0];
  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(AppPromotionView *)&v6 dealloc];
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1001D8154();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = type metadata accessor for AppPromotionCardLayout(0);
  __chkstk_darwin(v6 - 8);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = qword_100940640;
  v10 = self;
  if (v9 != -1)
  {
    swift_once();
  }

  sub_100244030(&unk_10099FD58, v10, width, height);
  v12 = v11;
  v13 = *(&v10->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_appPromotionCardView);
  sub_1000BC5FC(v8);
  v14 = sub_1001D984C(v13, v8);
  v16 = v15;
  sub_1000BE98C(v8);

  v17 = v12 + v16;
  v18 = v14;
  result.height = v17;
  result.width = v18;
  return result;
}

- (void)stateChangedFor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001D84FC(v4);
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1001D8F54(v6, v7);

  return v9 & 1;
}

@end