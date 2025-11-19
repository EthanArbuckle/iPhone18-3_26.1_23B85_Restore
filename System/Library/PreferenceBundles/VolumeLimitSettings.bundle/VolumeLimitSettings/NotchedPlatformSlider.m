@interface NotchedPlatformSlider
- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5;
- (CGRect)trackRectForBounds:(CGRect)a3;
- (_TtC19VolumeLimitSettings21NotchedPlatformSlider)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
- (void)handleSliderTap:(id)a3;
- (void)layoutSubviews;
- (void)setValue:(float)a3 animated:(BOOL)a4;
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

- (void)drawRect:(CGRect)a3
{
  v3 = self;
  sub_3F04();
}

- (CGRect)trackRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)setValue:(float)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_2D08(a4, a3);
}

- (void)handleSliderTap:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2F4C(v4);
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
  v12 = self;
  v13 = sub_3130(v11, v10, v9, v8, x, y, width, height, a5);
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

- (_TtC19VolumeLimitSettings21NotchedPlatformSlider)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end