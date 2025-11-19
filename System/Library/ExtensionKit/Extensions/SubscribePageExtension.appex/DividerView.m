@interface DividerView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC22SubscribePageExtension11DividerView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation DividerView

- (_TtC22SubscribePageExtension11DividerView)initWithCoder:(id)a3
{
  v4 = (self + OBJC_IVAR____TtC22SubscribePageExtension11DividerView_separatorInset);
  v5 = *&UIEdgeInsetsZero.bottom;
  *v4 = *&UIEdgeInsetsZero.top;
  v4[1] = v5;
  v6 = OBJC_IVAR____TtC22SubscribePageExtension11DividerView_style;
  if (qword_100920D70 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for DividerView.Style(0);
  v8 = sub_10000D0FC(v7, qword_100980628);
  sub_1001154F8(v8, self + v6);
  result = sub_100754644();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = sub_100754724();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DividerView.Style(0);
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC22SubscribePageExtension11DividerView_style;
  swift_beginAccess();
  sub_1001154F8(self + v12, v11);
  v13 = qword_100920D68;
  v14 = self;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = floor(*&qword_100980620);
  sub_1007502D4();
  sub_100750B04();
  sub_100750564();
  v17 = v16;
  (*(v6 + 8))(v8, v5);

  sub_1002FE2B0(v11);
  v18 = width;
  v19 = v15 + v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1004CAC3C();
}

@end