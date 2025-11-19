@interface MOSuggestionCutoutView
- (_TtC16MomentsUIService22MOSuggestionCutoutView)init;
- (_TtC16MomentsUIService22MOSuggestionCutoutView)initWithCoder:(id)a3;
- (_TtC16MomentsUIService22MOSuggestionCutoutView)initWithFrame:(CGRect)a3;
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
  v5 = [(MOSuggestionCutoutView *)v4 layer];
  [v5 addSublayer:*(&v4->super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService22MOSuggestionCutoutView_fillLayer)];

  return v4;
}

- (_TtC16MomentsUIService22MOSuggestionCutoutView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC16MomentsUIService22MOSuggestionCutoutView_fillLayer;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(CAShapeLayer) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  MOSuggestionCutoutView.layoutSubviews()();
}

- (_TtC16MomentsUIService22MOSuggestionCutoutView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end