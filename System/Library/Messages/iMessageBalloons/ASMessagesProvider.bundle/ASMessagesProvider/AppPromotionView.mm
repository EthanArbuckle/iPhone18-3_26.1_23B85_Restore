@interface AppPromotionView
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC18ASMessagesProvider16AppPromotionView)initWithCoder:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)stateChangedFor:(id)a3;
@end

@implementation AppPromotionView

- (_TtC18ASMessagesProvider16AppPromotionView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_clickAction;
  v5 = sub_BD88(&unk_950960);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = self + OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_initialLongPressLocation;
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_longPressGestureRecognizer);
  v5 = self;
  [v4 removeTarget:v5 action:0];
  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(AppPromotionView *)&v6 dealloc];
}

- (void)layoutSubviews
{
  v2 = self;
  sub_633524();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v4 = type metadata accessor for AppPromotionCardLayout(0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = qword_93C808;
  v8 = self;
  if (v7 != -1)
  {
    swift_once();
  }

  sub_634BBC(&unk_99BE98, v8);
  v10 = v9;
  v11 = *(&v8->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_appPromotionCardView);
  sub_214AA8(v6);
  v12 = sub_634F2C(v11, v6);
  v14 = v13;
  sub_216E5C(v6);

  v15 = v10 + v14;
  v16 = v12;
  result.height = v15;
  result.width = v16;
  return result;
}

- (void)stateChangedFor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_6338CC(v4);
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_634324(v6, v7);

  return v9 & 1;
}

@end