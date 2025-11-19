@interface _MusicDownloadProgressRingView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (_MusicDownloadProgressRingView)initWithFrame:(CGRect)a3;
- (void)_updateShapePath;
- (void)layoutSubviews;
- (void)setProgress:(double)a3;
- (void)tintColorDidChange;
@end

@implementation _MusicDownloadProgressRingView

- (_MusicDownloadProgressRingView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = _MusicDownloadProgressRingView;
  v3 = [(_MusicDownloadProgressRingView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_MusicDownloadProgressRingView *)v3 setClipsToBounds:1];
    v5 = [(_MusicDownloadProgressRingView *)v4 layer];
    v6 = +[UIColor clearColor];
    [v5 setFillColor:{objc_msgSend(v6, "CGColor")}];

    [v5 setStrokeStart:0.0];
    v7 = [(_MusicDownloadProgressRingView *)v4 tintColor];
    [v5 setStrokeColor:{objc_msgSend(v7, "CGColor")}];

    [v5 setLineCap:@"round"];
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
  v3 = [(_MusicDownloadProgressRingView *)self tintColor];
  v4 = [(_MusicDownloadProgressRingView *)self layer];
  [v4 setStrokeColor:{objc_msgSend(v3, "CGColor")}];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _MusicDownloadProgressRingView;
  if ([(_MusicDownloadProgressRingView *)&v7 _shouldAnimatePropertyWithKey:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:@"strokeEnd"];
  }

  return v5;
}

- (void)setProgress:(double)a3
{
  self->_progress = a3;
  v4 = [(_MusicDownloadProgressRingView *)self layer];
  [v4 setStrokeEnd:self->_progress];
}

- (void)_updateShapePath
{
  [(_MusicDownloadProgressRingView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(_MusicDownloadProgressRingView *)self traitCollection];
  [v11 displayScale];
  MTMPUFloatGetSafeScaleForValue();
  v13 = v12;

  v26 = [(_MusicDownloadProgressRingView *)self layer];
  [v26 lineWidth];
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
  [v26 setPath:{objc_msgSend(v20, "CGPath")}];
  [v26 setLineWidth:1.0 / v13 + 2.0];
}

@end