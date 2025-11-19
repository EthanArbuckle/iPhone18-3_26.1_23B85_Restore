@interface SegmentedControlView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC22SubscribePageExtension20SegmentedControlView)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)selectedIndexChangedIn:(id)a3;
@end

@implementation SegmentedControlView

- (_TtC22SubscribePageExtension20SegmentedControlView)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension20SegmentedControlView_segmentDidChangeHandler);
  *v3 = 0;
  v3[1] = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  [(SegmentedControlView *)v4 layoutMargins];
  sub_100753BA4();
  [*(&v4->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension20SegmentedControlView_segmentedControl) sizeThatFits:?];
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

- (void)selectedIndexChangedIn:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension20SegmentedControlView_segmentDidChangeHandler);
  if (v3)
  {
    v5 = a3;
    v6 = self;
    sub_10001B5AC(v3);
    v3(v5);

    sub_100046F70(v3);
  }
}

@end