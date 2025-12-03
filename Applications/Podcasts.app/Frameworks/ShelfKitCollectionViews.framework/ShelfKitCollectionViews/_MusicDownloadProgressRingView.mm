@interface _MusicDownloadProgressRingView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (_MusicDownloadProgressRingView)initWithFrame:(CGRect)frame;
- (void)_updateShapePath;
- (void)layoutSubviews;
- (void)setProgress:(double)progress;
- (void)tintColorDidChange;
@end

@implementation _MusicDownloadProgressRingView

- (_MusicDownloadProgressRingView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = _MusicDownloadProgressRingView;
  v3 = [(_MusicDownloadProgressRingView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_MusicDownloadProgressRingView *)v3 setClipsToBounds:1];
    layer = [(_MusicDownloadProgressRingView *)v4 layer];
    v6 = +[UIColor clearColor];
    [layer setFillColor:{objc_msgSend(v6, "CGColor")}];

    [layer setStrokeStart:0.0];
    tintColor = [(_MusicDownloadProgressRingView *)v4 tintColor];
    [layer setStrokeColor:{objc_msgSend(tintColor, "CGColor")}];

    [layer setLineCap:@"round"];
    [(_MusicDownloadProgressRingView *)v4 _updateShapePath];
  }

  return v4;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _MusicDownloadProgressRingView;
  [(_MusicDownloadProgressRingView *)&v3 layoutSubviews];
  [(_MusicDownloadProgressRingView *)self _updateShapePath];
}

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = _MusicDownloadProgressRingView;
  [(_MusicDownloadProgressRingView *)&v5 tintColorDidChange];
  tintColor = [(_MusicDownloadProgressRingView *)self tintColor];
  layer = [(_MusicDownloadProgressRingView *)self layer];
  [layer setStrokeColor:{objc_msgSend(tintColor, "CGColor")}];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  v7.receiver = self;
  v7.super_class = _MusicDownloadProgressRingView;
  if ([(_MusicDownloadProgressRingView *)&v7 _shouldAnimatePropertyWithKey:keyCopy])
  {
    v5 = 1;
  }

  else
  {
    v5 = [keyCopy isEqualToString:@"strokeEnd"];
  }

  return v5;
}

- (void)setProgress:(double)progress
{
  self->_progress = progress;
  layer = [(_MusicDownloadProgressRingView *)self layer];
  [layer setStrokeEnd:self->_progress];
}

- (void)_updateShapePath
{
  [(_MusicDownloadProgressRingView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  traitCollection = [(_MusicDownloadProgressRingView *)self traitCollection];
  [traitCollection displayScale];
  MTMPUFloatGetSafeScaleForValue();
  v13 = v12;

  layer = [(_MusicDownloadProgressRingView *)self layer];
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
  v20 = +[UIBezierPath bezierPath];
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  MidX = CGRectGetMidX(v30);
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  [v20 moveToPoint:{MidX, CGRectGetMinY(v31)}];
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
  [v20 addArcWithCenter:1 radius:v25 startAngle:CGRectGetMidY(v35) endAngle:v24 clockwise:{-1.57079633, 4.71238898}];
  [layer setPath:{objc_msgSend(v20, "CGPath")}];
  [layer setLineWidth:1.0 / v13 + 2.0];
}

@end