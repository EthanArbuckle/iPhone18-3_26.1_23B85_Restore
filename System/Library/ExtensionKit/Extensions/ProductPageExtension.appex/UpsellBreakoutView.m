@interface UpsellBreakoutView
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)didTapVideo;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation UpsellBreakoutView

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = sub_10047E948(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10047EBD0();
}

- (void)didTapVideo
{
  v2 = self;
  sub_10047F094();
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100480764(v7);

  return v9 & 1;
}

- (void)traitCollectionDidChange:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = sub_100761D8C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = self;
  v16.super_class = ObjectType;
  v10 = a3;
  v11 = self;
  [(UpsellBreakoutView *)&v16 traitCollectionDidChange:v10];
  v12 = *(&v11->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_buttonDetailsView);
  v13 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_buttonDetailsTextAlignment;
  swift_beginAccess();
  (*(v7 + 16))(v9, v11 + v13, v6);
  v14 = sub_100761D7C();
  (*(v7 + 8))(v9, v6);
  [v12 setTextAlignment:v14];
}

@end