@interface ZoomSliderBarButtonItem.Slider
- (CGRect)maximumValueImageRectForBounds:(CGRect)a3;
- (CGRect)minimumValueImageRectForBounds:(CGRect)a3;
- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5;
- (CGRect)trackRectForBounds:(CGRect)a3;
- (CGSize)intrinsicContentSize;
- (_TtCC7Journal23ZoomSliderBarButtonItem6Slider)initWithCoder:(id)a3;
- (_TtCC7Journal23ZoomSliderBarButtonItem6Slider)initWithFrame:(CGRect)a3;
@end

@implementation ZoomSliderBarButtonItem.Slider

- (CGSize)intrinsicContentSize
{
  v2 = 168.0;
  v3 = 16.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)minimumValueImageRectForBounds:(CGRect)a3
{
  v3 = sub_100831910(self, a3.origin.x, a2, &selRef_minimumValueImageRectForBounds_);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)maximumValueImageRectForBounds:(CGRect)a3
{
  v3 = sub_100831910(self, a3.origin.x, a2, &selRef_maximumValueImageRectForBounds_);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)trackRectForBounds:(CGRect)a3
{
  v3 = sub_100831910(self, a3.origin.x, a2, &selRef_trackRectForBounds_);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = self;
  v10 = sub_100831C70(x, y, width, height, a5);
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (_TtCC7Journal23ZoomSliderBarButtonItem6Slider)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = (self + OBJC_IVAR____TtCC7Journal23ZoomSliderBarButtonItem6Slider_contentInsets);
  *v7 = xmmword_10096D590;
  v7[1] = xmmword_10096D590;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCC7Journal23ZoomSliderBarButtonItem6Slider_thumbSize) = xmmword_10096D5A0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for ZoomSliderBarButtonItem.Slider();
  return [(ZoomSliderBarButtonItem.Slider *)&v9 initWithFrame:x, y, width, height];
}

- (_TtCC7Journal23ZoomSliderBarButtonItem6Slider)initWithCoder:(id)a3
{
  v4 = (self + OBJC_IVAR____TtCC7Journal23ZoomSliderBarButtonItem6Slider_contentInsets);
  *v4 = xmmword_10096D590;
  v4[1] = xmmword_10096D590;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCC7Journal23ZoomSliderBarButtonItem6Slider_thumbSize) = xmmword_10096D5A0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ZoomSliderBarButtonItem.Slider();
  v5 = a3;
  v6 = [(ZoomSliderBarButtonItem.Slider *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end