@interface SegmentedControlView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC8AppStore20SegmentedControlView)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)selectedIndexChangedIn:(id)in;
@end

@implementation SegmentedControlView

- (_TtC8AppStore20SegmentedControlView)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore20SegmentedControlView_segmentDidChangeHandler);
  *v3 = 0;
  v3[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  [(SegmentedControlView *)selfCopy layoutMargins];
  CGSize.subtracting(insets:)();
  [*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC8AppStore20SegmentedControlView_segmentedControl) sizeThatFits:?];
  CGSize.adding(outsets:)();
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
  LayoutMarginsAware<>.layoutFrame.getter();
  Width = CGRectGetWidth(v13);
  v4 = OBJC_IVAR____TtC8AppStore20SegmentedControlView_segmentedControl;
  v5 = *&v2[OBJC_IVAR____TtC8AppStore20SegmentedControlView_segmentedControl];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v5 sizeThatFits:{v6, v7, v12.receiver, v12.super_class}];
  v9 = v8;
  v10 = *&v2[v4];
  LayoutMarginsAware<>.layoutFrame.getter();
  MinX = CGRectGetMinX(v14);
  LayoutMarginsAware<>.layoutFrame.getter();
  [v10 setFrame:{MinX, (CGRectGetHeight(v15) - v9) * 0.5, Width, v9}];
}

- (void)selectedIndexChangedIn:(id)in
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore20SegmentedControlView_segmentDidChangeHandler);
  if (v3)
  {
    inCopy = in;
    selfCopy = self;
    sub_10000827C(v3);
    v3(inCopy);

    sub_10001F63C(v3);
  }
}

@end