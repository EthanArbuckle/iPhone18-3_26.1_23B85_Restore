@interface ShapeOpacitySliderView
- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5;
- (_TtC8PaperKit22ShapeOpacitySliderView)initWithCoder:(id)a3;
- (_TtC8PaperKit22ShapeOpacitySliderView)initWithFrame:(CGRect)a3;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
@end

@implementation ShapeOpacitySliderView

- (_TtC8PaperKit22ShapeOpacitySliderView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC8PaperKit22ShapeOpacitySliderView_gradient;
  *(&self->super.super.super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8PaperKit22ShapeOpacitySliderView_trackImage) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)didMoveToSuperview
{
  v2 = self;
  ShapeOpacitySliderView.didMoveToSuperview()();
}

- (void)layoutSubviews
{
  v2 = self;
  ShapeOpacitySliderView.layoutSubviews()();
}

- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  v19.receiver = self;
  v19.super_class = swift_getObjectType();
  [(ShapeOpacitySliderView *)&v19 thumbRectForBounds:v11 trackRect:v10 value:v9, v8, x, y, width, height, LODWORD(a5)];
  v16 = a5 * -6.0 + 3.0 + v15;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v16;
  return result;
}

- (_TtC8PaperKit22ShapeOpacitySliderView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end