@interface NTKStopwatchButton
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (NTKStopwatchButton)initWithFrame:(CGRect)frame forDevice:(id)device;
- (UIEdgeInsets)touchEdgeInsets;
- (void)layoutSubviews;
- (void)setGlyphBackgroundColor:(id)color;
- (void)setGlyphColor:(id)color;
@end

@implementation NTKStopwatchButton

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = NTKStopwatchButton;
  v5 = [(NTKStopwatchButton *)&v9 beginTrackingWithTouch:touch withEvent:event];
  if (v5)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_8E04;
    v8[3] = &unk_1C7A0;
    v8[4] = self;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_8E58;
    v7[3] = &unk_1C898;
    v7[4] = self;
    [UIView animateWithDuration:0x10000 delay:v8 options:v7 animations:0.2 completion:0.0];
  }

  return v5;
}

- (NTKStopwatchButton)initWithFrame:(CGRect)frame forDevice:(id)device
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  deviceCopy = device;
  v23.receiver = self;
  v23.super_class = NTKStopwatchButton;
  height = [(NTKStopwatchButton *)&v23 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_device, device);
    v13 = objc_alloc_init(UIView);
    innerView = v12->_innerView;
    v12->_innerView = v13;

    [(UIView *)v12->_innerView setUserInteractionEnabled:0];
    v15 = v12->_innerView;
    v16 = [UIColor colorWithWhite:0.149019608 alpha:1.0];
    [(UIView *)v15 setBackgroundColor:v16];

    [(NTKStopwatchButton *)v12 addSubview:v12->_innerView];
    v17 = [UIImage systemImageNamed:@"stopwatch.fill"];
    _imageThatSuppressesAccessibilityHairlineThickening = [v17 _imageThatSuppressesAccessibilityHairlineThickening];
    v19 = [[CLKUIColoringImageView alloc] initWithImage:_imageThatSuppressesAccessibilityHairlineThickening];
    glyphView = v12->_glyphView;
    v12->_glyphView = v19;

    v21 = [UIColor colorWithWhite:0.541176471 alpha:1.0];
    [(CLKUIColoringImageView *)v12->_glyphView setColor:v21];

    [(UIView *)v12->_innerView addSubview:v12->_glyphView];
  }

  return v12;
}

- (void)setGlyphColor:(id)color
{
  colorCopy = color;
  if (([colorCopy isEqual:self->_glyphColor] & 1) == 0)
  {
    objc_storeStrong(&self->_glyphColor, color);
    [(CLKUIColoringImageView *)self->_glyphView setColor:self->_glyphColor];
  }
}

- (void)setGlyphBackgroundColor:(id)color
{
  colorCopy = color;
  if (([colorCopy isEqual:self->_glyphBackgroundColor] & 1) == 0)
  {
    objc_storeStrong(&self->_glyphBackgroundColor, color);
    [(UIView *)self->_innerView setBackgroundColor:colorCopy];
  }
}

- (void)layoutSubviews
{
  [(NTKStopwatchButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  CLKRectGetCenter();
  v12 = v11;
  v14 = v13;
  [(CLKDevice *)self->_device screenScale];
  [(UIView *)self->_innerView setCenter:v12, v14];
  [(UIView *)self->_innerView setBounds:v4, v6, v8, v10];
  layer = [(UIView *)self->_innerView layer];
  [layer setCornerRadius:v10 * 0.5];

  [(CLKUIColoringImageView *)self->_glyphView sizeToFit];
  [(CLKUIColoringImageView *)self->_glyphView frame];
  CLKRectCenteredIntegralRectForDevice();
  glyphView = self->_glyphView;

  [(CLKUIColoringImageView *)glyphView setFrame:?];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(NTKStopwatchButton *)self bounds];
  top = self->_touchEdgeInsets.top;
  left = self->_touchEdgeInsets.left;
  v10 = v9 + left;
  v12 = v11 + top;
  v14 = v13 - (left + self->_touchEdgeInsets.right);
  v16 = v15 - (top + self->_touchEdgeInsets.bottom);
  v17 = x;
  v18 = y;

  return CGRectContainsPoint(*&v10, *&v17);
}

- (UIEdgeInsets)touchEdgeInsets
{
  top = self->_touchEdgeInsets.top;
  left = self->_touchEdgeInsets.left;
  bottom = self->_touchEdgeInsets.bottom;
  right = self->_touchEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end