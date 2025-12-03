@interface MapsPieProgressView
- (MapsPieProgressView)initWithFrame:(CGRect)frame;
- (UIColor)progressColor;
- (double)progress;
- (double)progressLineWidth;
- (double)progressPresentationValue;
- (void)animateProgressCompletedWithCompletion:(id)completion;
- (void)layoutSubviews;
- (void)setProgress:(double)progress;
- (void)setProgress:(double)progress animated:(BOOL)animated forced:(BOOL)forced completion:(id)completion;
- (void)setProgressColor:(id)color;
- (void)setProgressLineWidth:(double)width;
@end

@implementation MapsPieProgressView

- (MapsPieProgressView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = MapsPieProgressView;
  v3 = [(MapsPieProgressView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(MapsPieProgressView *)v3 setBackgroundColor:v4];

    layer = [(MapsPieProgressView *)v3 layer];
    v6 = +[UIScreen mainScreen];
    [v6 scale];
    [layer setContentsScale:?];
  }

  return v3;
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = MapsPieProgressView;
  [(MapsPieProgressView *)&v2 layoutSubviews];
}

- (void)setProgressColor:(id)color
{
  colorCopy = color;
  layer = [(MapsPieProgressView *)self layer];
  [layer setProgressColor:colorCopy];
}

- (UIColor)progressColor
{
  layer = [(MapsPieProgressView *)self layer];
  progressColor = [layer progressColor];

  return progressColor;
}

- (void)setProgressLineWidth:(double)width
{
  layer = [(MapsPieProgressView *)self layer];
  [layer setBorderLineWidth:width];
}

- (double)progressLineWidth
{
  layer = [(MapsPieProgressView *)self layer];
  [layer borderLineWidth];
  v4 = v3;

  return v4;
}

- (double)progress
{
  layer = [(MapsPieProgressView *)self layer];
  [layer progress];
  v4 = v3;

  return v4;
}

- (void)setProgress:(double)progress
{
  layer = [(MapsPieProgressView *)self layer];
  [layer setProgress:progress];
}

- (void)setProgress:(double)progress animated:(BOOL)animated forced:(BOOL)forced completion:(id)completion
{
  forcedCopy = forced;
  animatedCopy = animated;
  completionCopy = completion;
  if (completionCopy)
  {
    v11 = completionCopy;
  }

  else
  {
    v11 = &stru_7FEA0;
  }

  layer = [(MapsPieProgressView *)self layer];
  [layer progress];
  v14 = v13;

  if (v14 == progress && !forcedCopy)
  {
    goto LABEL_13;
  }

  if (!animatedCopy)
  {
    layer2 = [(MapsPieProgressView *)self layer];
    [layer2 removeAnimationForKey:@"MapsPieProgressViewAnimationKey"];

    [(MapsPieProgressView *)self setProgress:progress];
LABEL_13:
    v11->invoke(v11);
    goto LABEL_21;
  }

  [(MapsPieProgressView *)self progressPresentationValue];
  v17 = v16;
  v18 = vabdd_f64(progress, v16);
  v19 = 1.0;
  if (v18 <= 0.9)
  {
    if (v18 <= 0.5)
    {
      v19 = 0.25;
      if (v18 > 0.2)
      {
        v19 = 0.4;
      }
    }

    else
    {
      v19 = 0.7;
    }
  }

  layer3 = [(MapsPieProgressView *)self layer];
  animationKeys = [layer3 animationKeys];
  v23 = [animationKeys containsObject:@"MapsPieProgressViewAnimationKey"];

  v24 = &kCAMediaTimingFunctionEaseOut;
  if (!v23)
  {
    v24 = &kCAMediaTimingFunctionEaseInEaseOut;
  }

  v25 = *v24;
  if (v17 < progress)
  {
    v26 = [CABasicAnimation animationWithKeyPath:@"progress"];
    v27 = [CAMediaTimingFunction functionWithName:v25];
    [v26 setTimingFunction:v27];

    [v26 setDuration:v19];
    [v26 setFillMode:kCAFillModeBackwards];
    v28 = [NSNumber numberWithDouble:v17];
    [v26 setFromValue:v28];

    v29 = [NSNumber numberWithDouble:progress];
    [v26 setToValue:v29];

    +[CATransaction begin];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1D118;
    v31[3] = &unk_7FEC8;
    v32 = v11;
    [CATransaction setCompletionBlock:v31];
    layer4 = [(MapsPieProgressView *)self layer];
    [layer4 addAnimation:v26 forKey:@"MapsPieProgressViewAnimationKey"];

    +[CATransaction commit];
  }

  [(MapsPieProgressView *)self setProgress:progress];

LABEL_21:
}

- (void)animateProgressCompletedWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    completionCopy = &stru_7FEE8;
  }

  v6 = completionCopy;
  [(MapsPieProgressView *)self progressPresentationValue];
  if (v5 == 1.0)
  {
    v6[2]();
  }

  else
  {
    [(MapsPieProgressView *)self setProgress:1 animated:1 forced:v6 completion:1.0];
  }
}

- (double)progressPresentationValue
{
  layer = [(MapsPieProgressView *)self layer];
  presentationLayer = [layer presentationLayer];
  [presentationLayer progress];
  v5 = v4;

  return v5;
}

@end