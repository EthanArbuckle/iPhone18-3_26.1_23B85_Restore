@interface ShapeOpacitySliderView
- (CGRect)thumbRectForBounds:(CGRect)bounds trackRect:(CGRect)rect value:(float)value;
- (_TtC8PaperKit22ShapeOpacitySliderView)initWithCoder:(id)coder;
- (_TtC8PaperKit22ShapeOpacitySliderView)initWithFrame:(CGRect)frame;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
@end

@implementation ShapeOpacitySliderView

- (_TtC8PaperKit22ShapeOpacitySliderView)initWithCoder:(id)coder
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
  selfCopy = self;
  ShapeOpacitySliderView.didMoveToSuperview()();
}

- (void)layoutSubviews
{
  selfCopy = self;
  ShapeOpacitySliderView.layoutSubviews()();
}

- (CGRect)thumbRectForBounds:(CGRect)bounds trackRect:(CGRect)rect value:(float)value
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = bounds.size.height;
  v9 = bounds.size.width;
  v10 = bounds.origin.y;
  v11 = bounds.origin.x;
  v19.receiver = self;
  v19.super_class = swift_getObjectType();
  [(ShapeOpacitySliderView *)&v19 thumbRectForBounds:v11 trackRect:v10 value:v9, v8, x, y, width, height, LODWORD(value)];
  v16 = value * -6.0 + 3.0 + v15;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v16;
  return result;
}

- (_TtC8PaperKit22ShapeOpacitySliderView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end