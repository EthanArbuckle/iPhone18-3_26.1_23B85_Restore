@interface SegmentedControlView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC20ProductPageExtension20SegmentedControlView)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)selectedIndexChangedIn:(id)in;
@end

@implementation SegmentedControlView

- (_TtC20ProductPageExtension20SegmentedControlView)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension20SegmentedControlView_segmentDidChangeHandler);
  *v3 = 0;
  v3[1] = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  [(SegmentedControlView *)selfCopy layoutMargins];
  sub_100770ACC();
  [*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension20SegmentedControlView_segmentedControl) sizeThatFits:?];
  sub_100770AEC();
  v6 = v5;

  v7 = width;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = type metadata accessor for SegmentedControlView();
  v2 = v12.receiver;
  [(SegmentedControlView *)&v12 layoutSubviews];
  sub_10076422C();
  Width = CGRectGetWidth(v13);
  v4 = OBJC_IVAR____TtC20ProductPageExtension20SegmentedControlView_segmentedControl;
  v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension20SegmentedControlView_segmentedControl];
  sub_10076422C();
  [v5 sizeThatFits:{v6, v7, v12.receiver, v12.super_class}];
  v9 = v8;
  v10 = *&v2[v4];
  sub_10076422C();
  MinX = CGRectGetMinX(v14);
  sub_10076422C();
  [v10 setFrame:{MinX, (CGRectGetHeight(v15) - v9) * 0.5, Width, v9}];
}

- (void)selectedIndexChangedIn:(id)in
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension20SegmentedControlView_segmentDidChangeHandler);
  if (v3)
  {
    inCopy = in;
    selfCopy = self;
    sub_10001CE50(v3);
    v3(inCopy);

    sub_1000B9010(v3);
  }
}

@end