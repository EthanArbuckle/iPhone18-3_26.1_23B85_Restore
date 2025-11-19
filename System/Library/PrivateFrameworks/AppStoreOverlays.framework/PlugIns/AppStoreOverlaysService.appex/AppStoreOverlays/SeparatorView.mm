@interface SeparatorView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC23AppStoreOverlaysService13SeparatorView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation SeparatorView

- (_TtC23AppStoreOverlaysService13SeparatorView)initWithCoder:(id)a3
{
  v4 = sub_100018298();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC23AppStoreOverlaysService13SeparatorView_lineColor;
  *(&self->super.super.super.isa + v9) = [objc_opt_self() separatorColor];
  (*(v5 + 104))(v8, enum case for Separator.Position.bottom(_:), v4);
  v12[3] = sub_1000181A8();
  v12[4] = &protocol witness table for ZeroDimension;
  sub_10000E700(v12);
  sub_100018198();
  sub_1000182A8();
  result = sub_100018588();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = sub_1000182C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC23AppStoreOverlaysService13SeparatorView_separator;
  swift_beginAccess();
  (*(v6 + 16))(v9, self + v10, v5);
  v11 = self;
  sub_100018288();
  v13 = v12;

  (*(v6 + 8))(v9, v5);
  v14 = width;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v3 = sub_1000182C8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC23AppStoreOverlaysService13SeparatorView_separator;
  swift_beginAccess();
  (*(v4 + 16))(v7, self + v8, v3);
  v9 = self;
  sub_100018288();
  v11 = v10;

  (*(v4 + 8))(v7, v3);
  v12 = UIViewNoIntrinsicMetric;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100010750();
}

@end