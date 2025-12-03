@interface ARQLSegmentedControlView
- (_TtC11AssetViewer24ARQLSegmentedControlView)initWithCoder:(id)coder;
- (_TtC11AssetViewer24ARQLSegmentedControlView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation ARQLSegmentedControlView

- (_TtC11AssetViewer24ARQLSegmentedControlView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC11AssetViewer24ARQLSegmentedControlView_visualEffectView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(ASVBlurredBackgroundView) initWithFrame:0 backgroundStyle:0 controlStyle:{0.0, 0.0, 0.0, 0.0}];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11AssetViewer24ARQLSegmentedControlView_controlStyle) = 0;
  result = sub_2413547DC();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ARQLSegmentedControlView();
  v2 = v3.receiver;
  [(ARQLSegmentedControlView *)&v3 layoutSubviews];
  sub_241322C70();
}

- (_TtC11AssetViewer24ARQLSegmentedControlView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end