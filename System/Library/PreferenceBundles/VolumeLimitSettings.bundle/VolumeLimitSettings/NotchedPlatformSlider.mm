@interface NotchedPlatformSlider
- (CGRect)thumbRectForBounds:(CGRect)bounds trackRect:(CGRect)rect value:(float)value;
- (CGRect)trackRectForBounds:(CGRect)bounds;
- (_TtC19VolumeLimitSettings21NotchedPlatformSlider)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
- (void)handleSliderTap:(id)tap;
- (void)layoutSubviews;
- (void)setValue:(float)value animated:(BOOL)animated;
@end

@implementation NotchedPlatformSlider

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(NotchedPlatformSlider *)&v3 layoutSubviews];
  [v2 setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
  selfCopy = self;
  sub_3F04();
}

- (CGRect)trackRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v11.receiver = self;
  v11.super_class = swift_getObjectType();
  [(NotchedPlatformSlider *)&v11 trackRectForBounds:x, y, width, height];
  v10 = 4.0;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (void)setValue:(float)value animated:(BOOL)animated
{
  selfCopy = self;
  sub_2D08(animated, value);
}

- (void)handleSliderTap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  sub_2F4C(tapCopy);
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
  selfCopy = self;
  v13 = sub_3130(v11, v10, v9, v8, x, y, width, height, value);
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (_TtC19VolumeLimitSettings21NotchedPlatformSlider)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end