@interface SegmentedControlView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC22SubscribePageExtension20SegmentedControlView)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)selectedIndexChangedIn:(id)in;
@end

@implementation SegmentedControlView

- (_TtC22SubscribePageExtension20SegmentedControlView)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension20SegmentedControlView_segmentDidChangeHandler);
  *v3 = 0;
  v3[1] = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  [(SegmentedControlView *)selfCopy layoutMargins];
  sub_100753BA4();
  [*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension20SegmentedControlView_segmentedControl) sizeThatFits:?];
  sub_100753BC4();
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
  sub_1007477B4();
  Width = CGRectGetWidth(v13);
  v4 = OBJC_IVAR____TtC22SubscribePageExtension20SegmentedControlView_segmentedControl;
  v5 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension20SegmentedControlView_segmentedControl];
  sub_1007477B4();
  [v5 sizeThatFits:{v6, v7, v12.receiver, v12.super_class}];
  v9 = v8;
  v10 = *&v2[v4];
  sub_1007477B4();
  MinX = CGRectGetMinX(v14);
  sub_1007477B4();
  [v10 setFrame:{MinX, (CGRectGetHeight(v15) - v9) * 0.5, Width, v9}];
}

- (void)selectedIndexChangedIn:(id)in
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension20SegmentedControlView_segmentDidChangeHandler);
  if (v3)
  {
    inCopy = in;
    selfCopy = self;
    sub_10001B5AC(v3);
    v3(inCopy);

    sub_100046F70(v3);
  }
}

@end