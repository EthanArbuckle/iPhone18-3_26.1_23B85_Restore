@interface MOSuggestionCutoutView
- (_TtC16MomentsUIService22MOSuggestionCutoutView)init;
- (_TtC16MomentsUIService22MOSuggestionCutoutView)initWithCoder:(id)coder;
- (_TtC16MomentsUIService22MOSuggestionCutoutView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation MOSuggestionCutoutView

- (_TtC16MomentsUIService22MOSuggestionCutoutView)init
{
  v3 = OBJC_IVAR____TtC16MomentsUIService22MOSuggestionCutoutView_fillLayer;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(CAShapeLayer) init];
  v7.receiver = self;
  v7.super_class = type metadata accessor for MOSuggestionCutoutView();
  v4 = [(MOSuggestionCutoutView *)&v7 initWithFrame:0.0, 0.0, 0.0, 0.0];
  layer = [(MOSuggestionCutoutView *)v4 layer];
  [layer addSublayer:*(&v4->super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService22MOSuggestionCutoutView_fillLayer)];

  return v4;
}

- (_TtC16MomentsUIService22MOSuggestionCutoutView)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC16MomentsUIService22MOSuggestionCutoutView_fillLayer;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(CAShapeLayer) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  MOSuggestionCutoutView.layoutSubviews()();
}

- (_TtC16MomentsUIService22MOSuggestionCutoutView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end