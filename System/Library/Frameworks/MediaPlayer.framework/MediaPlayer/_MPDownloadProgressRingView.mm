@interface _MPDownloadProgressRingView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (_MPDownloadProgressRingView)initWithFrame:(CGRect)frame;
- (void)_updateShapePath;
- (void)layoutSubviews;
- (void)setProgress:(double)progress;
- (void)tintColorDidChange;
@end

@implementation _MPDownloadProgressRingView

- (void)_updateShapePath
{
  [(_MPDownloadProgressRingView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  traitCollection = [(_MPDownloadProgressRingView *)self traitCollection];
  [traitCollection displayScale];
  SafeScaleForValue = MPFloatGetSafeScaleForValue(v12);

  layer = [(_MPDownloadProgressRingView *)self layer];
  [layer lineWidth];
  v15 = v14 * 0.5;
  v28.origin.x = v4;
  v28.origin.y = v6;
  v28.size.width = v8;
  v28.size.height = v10;
  v29 = CGRectInset(v28, v15, v15);
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  bezierPath = [MEMORY[0x1E69DC728] bezierPath];
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  MidX = CGRectGetMidX(v30);
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  [bezierPath moveToPoint:{MidX, CGRectGetMinY(v31)}];
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  v22 = CGRectGetWidth(v32);
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  v23 = CGRectGetHeight(v33);
  if (v22 < v23)
  {
    v23 = v22;
  }

  v24 = v23 * 0.5;
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  v25 = CGRectGetMidX(v34);
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  [bezierPath addArcWithCenter:1 radius:v25 startAngle:CGRectGetMidY(v35) endAngle:v24 clockwise:{-1.57079633, 4.71238898}];
  [layer setPath:{objc_msgSend(bezierPath, "CGPath")}];
  [layer setLineWidth:1.0 / SafeScaleForValue + 2.0];
}

- (void)setProgress:(double)progress
{
  self->_progress = progress;
  layer = [(_MPDownloadProgressRingView *)self layer];
  [layer setStrokeEnd:self->_progress];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  v7.receiver = self;
  v7.super_class = _MPDownloadProgressRingView;
  if ([(_MPDownloadProgressRingView *)&v7 _shouldAnimatePropertyWithKey:keyCopy])
  {
    v5 = 1;
  }

  else
  {
    v5 = [keyCopy isEqualToString:@"strokeEnd"];
  }

  return v5;
}

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = _MPDownloadProgressRingView;
  [(_MPDownloadProgressRingView *)&v5 tintColorDidChange];
  tintColor = [(_MPDownloadProgressRingView *)self tintColor];
  layer = [(_MPDownloadProgressRingView *)self layer];
  [layer setStrokeColor:{objc_msgSend(tintColor, "CGColor")}];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _MPDownloadProgressRingView;
  [(_MPDownloadProgressRingView *)&v3 layoutSubviews];
  [(_MPDownloadProgressRingView *)self _updateShapePath];
}

- (_MPDownloadProgressRingView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = _MPDownloadProgressRingView;
  v3 = [(_MPDownloadProgressRingView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_MPDownloadProgressRingView *)v3 setClipsToBounds:1];
    layer = [(_MPDownloadProgressRingView *)v4 layer];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [layer setFillColor:{objc_msgSend(clearColor, "CGColor")}];

    [layer setStrokeStart:0.0];
    tintColor = [(_MPDownloadProgressRingView *)v4 tintColor];
    [layer setStrokeColor:{objc_msgSend(tintColor, "CGColor")}];

    [layer setLineCap:@"round"];
    [(_MPDownloadProgressRingView *)v4 _updateShapePath];
  }

  return v4;
}

@end