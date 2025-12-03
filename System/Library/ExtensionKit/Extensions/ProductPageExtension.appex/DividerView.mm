@interface DividerView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC20ProductPageExtension11DividerView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation DividerView

- (_TtC20ProductPageExtension11DividerView)initWithCoder:(id)coder
{
  v4 = (self + OBJC_IVAR____TtC20ProductPageExtension11DividerView_separatorInset);
  v5 = *&UIEdgeInsetsZero.bottom;
  *v4 = *&UIEdgeInsetsZero.top;
  v4[1] = v5;
  v6 = OBJC_IVAR____TtC20ProductPageExtension11DividerView_style;
  if (qword_100940948 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for DividerView.Style(0);
  v8 = sub_10000A61C(v7, qword_1009A0A08);
  sub_100206DD0(v8, self + v6);
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = sub_10077164C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DividerView.Style(0);
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC20ProductPageExtension11DividerView_style;
  swift_beginAccess();
  sub_100206DD0(self + v12, v11);
  v13 = qword_100940940;
  selfCopy = self;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = floor(*&qword_1009A0A00);
  sub_10076D17C();
  sub_10076D9AC();
  sub_10076D40C();
  v17 = v16;
  (*(v6 + 8))(v8, v5);

  sub_100206E98(v11);
  v18 = width;
  v19 = v15 + v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1005AA4B0();
}

@end