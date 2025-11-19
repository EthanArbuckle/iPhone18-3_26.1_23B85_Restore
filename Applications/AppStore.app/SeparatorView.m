@interface SeparatorView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation SeparatorView

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = type metadata accessor for Separator();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
  swift_beginAccess();
  (*(v6 + 16))(v8, self + v9, v5);
  v10 = self;
  Separator.height(in:)();
  v12 = v11;

  (*(v6 + 8))(v8, v5);
  v13 = width;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v3 = type metadata accessor for Separator();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
  swift_beginAccess();
  (*(v4 + 16))(v6, self + v7, v3);
  v8 = self;
  Separator.height(in:)();
  v10 = v9;

  (*(v4 + 8))(v6, v3);
  v11 = UIViewNoIntrinsicMetric;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1002DD370();
}

@end