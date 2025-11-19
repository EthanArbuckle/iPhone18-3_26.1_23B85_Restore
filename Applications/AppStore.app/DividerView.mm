@interface DividerView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC8AppStore11DividerView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation DividerView

- (_TtC8AppStore11DividerView)initWithCoder:(id)a3
{
  v4 = (self + OBJC_IVAR____TtC8AppStore11DividerView_separatorInset);
  v5 = *&UIEdgeInsetsZero.bottom;
  *v4 = *&UIEdgeInsetsZero.top;
  v4[1] = v5;
  v6 = OBJC_IVAR____TtC8AppStore11DividerView_style;
  if (qword_10096EE40 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for DividerView.Style(0);
  v8 = sub_1000056A8(v7, qword_1009D36C0);
  sub_1002BB2D0(v8, self + v6);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = type metadata accessor for FloatingPointRoundingRule();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DividerView.Style(0);
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC8AppStore11DividerView_style;
  swift_beginAccess();
  sub_1002BB2D0(self + v12, v11);
  v13 = qword_10096EE38;
  v14 = self;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = floor(*&qword_1009D36B8);
  static Dimensions.defaultRoundingRule.getter();
  type metadata accessor for StaticDimension();
  AnyDimension.value(in:rounded:)();
  v17 = v16;
  (*(v6 + 8))(v8, v5);

  sub_1002BB398(v11);
  v18 = width;
  v19 = v15 + v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1006D9EEC();
}

@end