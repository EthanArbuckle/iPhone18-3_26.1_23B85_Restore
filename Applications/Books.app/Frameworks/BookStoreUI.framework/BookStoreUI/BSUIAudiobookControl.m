@interface BSUIAudiobookControl
- (BSUIAudiobookControl)initWithFrame:(CGRect)a3;
- (BSUIAudiobookControlDelegate)delegate;
- (CGSize)currentSize;
- (id)circleWithRect:(CGRect)a3 color:(id)a4;
- (void)_animateProgressWipe;
- (void)_updatePlaying;
- (void)_updateProgress;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)scaleDown:(id)a3;
- (void)scaleUpAndTogglePlayPause:(id)a3;
- (void)setPlaying:(BOOL)a3;
- (void)setProgress:(double)a3;
@end

@implementation BSUIAudiobookControl

- (BSUIAudiobookControl)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = BSUIAudiobookControl;

  return 0;
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = BSUIAudiobookControl;
  [(BSUIAudiobookControl *)&v20 layoutSubviews];
  [(BSUIAudiobookControl *)self bounds];
  if (v4 != self->_currentSize.width || v3 != self->_currentSize.height)
  {
    [(BSUIAudiobookControl *)self bounds];
    self->_currentSize.width = v6;
    self->_currentSize.height = v7;
    [(BSUIAudiobookControl *)self bounds];
    v8 = CGRectGetWidth(v21) * 0.5;
    v9 = [(UIView *)self->_blurView layer];
    [v9 setCornerRadius:v8];

    [(BSUIAudiobookControl *)self bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = +[UIColor blackColor];
    v19 = [(BSUIAudiobookControl *)self circleWithRect:v18 color:v11, v13, v15, v17];

    [(TUIUIKitButton *)self->_backgroundButton setImage:v19 forState:0];
    [(BSUIAudiobookControl *)self _updateProgress];
  }
}

- (void)scaleDown:(id)a3
{
  v9 = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
  [v9 setFromValue:&off_39B510];
  [v9 setToValue:&off_39B520];
  [v9 setDuration:0.13];
  LODWORD(v4) = 1045220557;
  LODWORD(v5) = 1041865114;
  LODWORD(v6) = 1.0;
  v7 = [CAMediaTimingFunction functionWithControlPoints:v4];
  [v9 setTimingFunction:v7];

  v8 = [(BSUIAudiobookControl *)self layer];
  [v8 addAnimation:v9 forKey:@"layerScaleDownAnimation"];
}

- (void)scaleUpAndTogglePlayPause:(id)a3
{
  v6 = [CASpringAnimation animationWithKeyPath:@"transform.scale"];
  [v6 setMass:1.0];
  [v6 setStiffness:400.0];
  [v6 setDamping:23.0];
  [v6 setInitialVelocity:0.0];
  [v6 setFromValue:&off_39B520];
  [v6 setToValue:&off_39B510];
  [v6 settlingDuration];
  [v6 setDuration:?];
  v4 = [(BSUIAudiobookControl *)self layer];
  [v4 addAnimation:v6 forKey:@"layerScaleUpAnimation"];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained togglePlayPause:self];
}

- (id)circleWithRect:(CGRect)a3 color:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = a4;
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  v9 = CGRectGetWidth(v33);
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  v10 = CGRectGetHeight(v34);
  if (v9 < v10)
  {
    v10 = v9;
  }

  v11 = v10 * 0.5;
  v12 = v10 + 1.0;
  v13 = +[UIScreen mainScreen];
  [v13 scale];
  CGFloatRoundForScale();
  v15 = v14;

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_11A4C;
  v25[3] = &unk_387388;
  v27 = v12;
  v28 = v12;
  v26 = v8;
  v29 = v15;
  v30 = v15;
  v31 = v11;
  v16 = v8;
  v17 = objc_retainBlock(v25);
  v18 = +[UIGraphicsImageRendererFormat defaultFormat];
  v19 = [[UIGraphicsImageRenderer alloc] initWithSize:v18 format:{v12, v12}];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_11B0C;
  v23[3] = &unk_3873B0;
  v24 = v17;
  v20 = v17;
  v21 = [v19 imageWithActions:v23];

  return v21;
}

- (void)didMoveToWindow
{
  v3 = [(BSUIAudiobookControl *)self window];

  if (v3)
  {
    v4 = [(BSUIAudiobookControl *)self window];
    v5 = [v4 screen];
    [v5 scale];
    v7 = v6;

    progressLayer = self->_progressLayer;

    [(CAShapeLayer *)progressLayer setRasterizationScale:v7];
  }
}

- (void)setPlaying:(BOOL)a3
{
  if (self->_playing != a3)
  {
    self->_playing = a3;
    [(BSUIAudiobookControl *)self _updatePlaying];

    [(BSUIAudiobookControl *)self _updateProgress];
  }
}

- (void)_updatePlaying
{
  if (self->_playing)
  {
    v3 = @"audiobook_pause_glyph";
  }

  else
  {
    v3 = @"audiobook_play_glyph";
  }

  v4 = v3;
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [UIImage tui_imageNamed:v4 inBundle:v9];

  v6 = +[UIColor whiteColor];
  v7 = [v5 tui_imageMaskWithColor:v6];

  v8 = [(BSUIAudiobookControl *)self playPauseButton];
  [v8 setImage:v7 forState:0];
}

- (void)setProgress:(double)a3
{
  progress = self->_progress;
  if (progress != a3)
  {
    self->_progress = a3;
    if (a3 >= 0.01 || progress <= 0.98)
    {
      [(BSUIAudiobookControl *)self _updateProgress];
    }

    else
    {
      [(BSUIAudiobookControl *)self _animateProgressWipe];
    }
  }
}

- (void)_animateProgressWipe
{
  [(CAShapeLayer *)self->_progressLayer setStrokeStart:1.0];
  v7 = [CABasicAnimation animationWithKeyPath:@"strokeStart"];
  [v7 setDuration:0.4];
  v3 = [NSNumber numberWithFloat:0.0];
  [v7 setFromValue:v3];

  LODWORD(v4) = 1.0;
  v5 = [NSNumber numberWithFloat:v4];
  [v7 setToValue:v5];

  v6 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  [v7 setTimingFunction:v6];

  [v7 setDelegate:self];
  [(CAShapeLayer *)self->_progressLayer addAnimation:v7 forKey:@"strokeStartAnimation"];
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  [(CAShapeLayer *)self->_progressLayer setPath:0, a4];
  [(CAShapeLayer *)self->_progressLayer setStrokeStart:0.0];

  [(BSUIAudiobookControl *)self setWipeAnimationInProgress:0];
}

- (void)_updateProgress
{
  progress = self->_progress;
  v4 = 0.0;
  if (progress < 0.0 || (v4 = 1.0, progress > 1.0))
  {
    self->_progress = v4;
  }

  if (![(BSUIAudiobookControl *)self wipeAnimationInProgress])
  {
    Mutable = CGPathCreateMutable();
    [(BSUIAudiobookControl *)self bounds];
    Width = CGRectGetWidth(v10);
    CGPathAddArc(Mutable, 0, Width * 0.5, Width * 0.5, Width * 0.5 + -1.0 + -1.0, -1.57079633, (self->_progress + self->_progress) * 3.14159265 + -1.57079633, 0);
    [(CAShapeLayer *)self->_progressLayer setPath:Mutable];
    CGPathRelease(Mutable);
  }

  LODWORD(v5) = 0.5;
  if (self->_playing)
  {
    *&v5 = 1.0;
  }

  progressLayer = self->_progressLayer;

  [(CAShapeLayer *)progressLayer setOpacity:v5];
}

- (BSUIAudiobookControlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)currentSize
{
  width = self->_currentSize.width;
  height = self->_currentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end