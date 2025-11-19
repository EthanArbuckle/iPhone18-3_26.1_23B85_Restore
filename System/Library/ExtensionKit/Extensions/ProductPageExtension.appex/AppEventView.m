@interface AppEventView
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC20ProductPageExtension12AppEventView)initWithCoder:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)stateChangedFor:(id)a3;
@end

@implementation AppEventView

- (_TtC20ProductPageExtension12AppEventView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension12AppEventView_clickAction;
  v5 = sub_10000A5D4(&qword_100955BD0);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = self + OBJC_IVAR____TtC20ProductPageExtension12AppEventView_initialLongPressLocation;
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
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension12AppEventView_longPressGestureRecognizer);
  v5 = self;
  [v4 removeTarget:v5 action:0];
  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(AppEventView *)&v6 dealloc];
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100240CE8();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v4 = type metadata accessor for AppEventCardLayout(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_100940640;
  v8 = self;
  if (v7 != -1)
  {
    swift_once();
  }

  sub_1002423E4(&unk_10099FD58, v8);
  v10 = v9;
  v11 = *(&v8->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView);
  sub_100159754(v6);
  sub_100242754(v11, v6);
  v13 = v12;
  v15 = v14;
  sub_10001D3B8(v6);

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
  sub_100241090(v4);
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100241AE8(v6, v7);

  return v9 & 1;
}

@end