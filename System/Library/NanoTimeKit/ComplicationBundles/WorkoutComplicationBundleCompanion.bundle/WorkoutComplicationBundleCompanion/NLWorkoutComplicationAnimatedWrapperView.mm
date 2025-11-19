@interface NLWorkoutComplicationAnimatedWrapperView
- (CGSize)sizeThatFits:(CGSize)a3;
- (NLWorkoutComplicationAnimatedWrapperView)initWithAnimationImages:(id)a3;
- (UIColor)overrideColor;
- (void)_applyAnimationForPauseState:(BOOL)a3 animated:(BOOL)a4;
- (void)_updateState;
- (void)_updateTint;
- (void)layoutSubviews;
- (void)setColor:(id)a3;
- (void)setImageProvider:(id)a3;
@end

@implementation NLWorkoutComplicationAnimatedWrapperView

- (NLWorkoutComplicationAnimatedWrapperView)initWithAnimationImages:(id)a3
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] count])
  {
    v15 = objc_alloc_init(NLWorkoutImageView);
    [v15 setAnimationImages:location[0]];
    [v15 setAnimationDuration:{objc_msgSend(location[0], "count") * 1.0 / 60.0}];
    v7 = [location[0] objectAtIndex:0];
    v6 = [v7 imageWithRenderingMode:2];
    [v15 setImage:?];

    v8 = v18;
    v11 = 0;
    v12 = 0;
    v9 = [v15 image];
    [v9 size];
    v13 = v3;
    v14 = v4;
    v18 = 0;
    v10.receiver = v8;
    v10.super_class = NLWorkoutComplicationAnimatedWrapperView;
    v18 = [(NLWorkoutComplicationAnimatedWrapperView *)&v10 initWithFrame:0.0, 0.0, v3, v4];
    objc_storeStrong(&v18, v18);

    if (v18)
    {
      objc_storeStrong(v18 + 1, v15);
      [v18 addSubview:*(v18 + 1)];
    }

    v19 = v18;
    v16 = 1;
    objc_storeStrong(&v15, 0);
  }

  else
  {
    objc_storeStrong(&v18, 0);
    v19 = v18;
    v16 = 1;
  }

  objc_storeStrong(location, 0);
  objc_storeStrong(&v18, 0);
  return v19;
}

- (void)setImageProvider:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0] != v4->_imageProvider)
  {
    objc_storeStrong(&v4->_imageProvider, location[0]);
    [(NLWorkoutComplicationAnimatedWrapperView *)v4 _updateState];
  }

  objc_storeStrong(location, 0);
}

- (void)setColor:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (([location[0] isEqual:v4->_color] & 1) == 0)
  {
    objc_storeStrong(&v4->_color, location[0]);
    [(NLWorkoutComplicationAnimatedWrapperView *)v4 _updateTint];
  }

  objc_storeStrong(location, 0);
}

- (void)_updateTint
{
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [(UIImageView *)self->_imageView setTintColor:self->_color];
  +[CATransaction commit];
  v2 = [(UIColor *)self->_color CGColor];
  v3 = [(UIImageView *)self->_imageView layer];
  [v3 setContentsMultiplyColor:v2];
}

- (void)_applyAnimationForPauseState:(BOOL)a3 animated:(BOOL)a4
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  if (a3)
  {
    [(UIImageView *)v12->_imageView stopAnimating];
    if (v9)
    {
      v8 = [CABasicAnimation animationWithKeyPath:@"opacity"];
      [(CABasicAnimation *)v8 setToValue:&off_10A80];
      [(CABasicAnimation *)v8 setAutoreverses:1];
      [(CABasicAnimation *)v8 setDuration:0.8];
      LODWORD(v4) = 2139095039;
      [(CABasicAnimation *)v8 setRepeatCount:v4];
      v6 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
      [(CABasicAnimation *)v8 setTimingFunction:?];

      v7 = [(UIImageView *)v12->_imageView layer];
      [v7 addAnimation:v8 forKey:@"pulse"];

      objc_storeStrong(&v8, 0);
    }
  }

  else
  {
    v5 = [(UIImageView *)v12->_imageView layer];
    [v5 removeAllAnimations];

    [(UIImageView *)v12->_imageView startAnimating];
  }
}

- (void)_updateState
{
  v3 = self;
  v2[1] = a2;
  v2[0] = self->_imageProvider;
  -[NLWorkoutComplicationAnimatedWrapperView _applyAnimationForPauseState:animated:](v3, "_applyAnimationForPauseState:animated:", [v2[0] isPaused], 1);
  objc_storeStrong(v2, 0);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v7 = [(UIImageView *)self->_imageView image];
  [(UIImage *)v7 size];
  v8 = v3;
  v9 = v4;

  v5 = v8;
  v6 = v9;
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)layoutSubviews
{
  [(NLWorkoutComplicationAnimatedWrapperView *)self bounds];
  [(UIImageView *)self->_imageView setFrame:v2, v3, v4, v5];
  [(NLWorkoutComplicationAnimatedWrapperView *)self _updateTint];
}

- (UIColor)overrideColor
{
  overrideColor = self->_overrideColor;
  v5 = 0;
  if (overrideColor)
  {
    v2 = overrideColor;
  }

  else
  {
    v6 = [(CLKImageProvider *)self->_imageProvider tintColor];
    v5 = 1;
    v2 = v6;
  }

  v7 = v2;
  if (v5)
  {
  }

  return v7;
}

@end