@interface NLWorkoutComplicationAnimatedWrapperView
- (CGSize)sizeThatFits:(CGSize)fits;
- (NLWorkoutComplicationAnimatedWrapperView)initWithAnimationImages:(id)images;
- (UIColor)overrideColor;
- (void)_applyAnimationForPauseState:(BOOL)state animated:(BOOL)animated;
- (void)_updateState;
- (void)_updateTint;
- (void)layoutSubviews;
- (void)setColor:(id)color;
- (void)setImageProvider:(id)provider;
@end

@implementation NLWorkoutComplicationAnimatedWrapperView

- (NLWorkoutComplicationAnimatedWrapperView)initWithAnimationImages:(id)images
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, images);
  if ([location[0] count])
  {
    v15 = objc_alloc_init(NLWorkoutImageView);
    [v15 setAnimationImages:location[0]];
    [v15 setAnimationDuration:{objc_msgSend(location[0], "count") * 1.0 / 60.0}];
    v7 = [location[0] objectAtIndex:0];
    v6 = [v7 imageWithRenderingMode:2];
    [v15 setImage:?];

    v8 = selfCopy;
    v11 = 0;
    v12 = 0;
    image = [v15 image];
    [image size];
    v13 = v3;
    v14 = v4;
    selfCopy = 0;
    v10.receiver = v8;
    v10.super_class = NLWorkoutComplicationAnimatedWrapperView;
    selfCopy = [(NLWorkoutComplicationAnimatedWrapperView *)&v10 initWithFrame:0.0, 0.0, v3, v4];
    objc_storeStrong(&selfCopy, selfCopy);

    if (selfCopy)
    {
      objc_storeStrong(selfCopy + 1, v15);
      [selfCopy addSubview:*(selfCopy + 1)];
    }

    v19 = selfCopy;
    v16 = 1;
    objc_storeStrong(&v15, 0);
  }

  else
  {
    objc_storeStrong(&selfCopy, 0);
    v19 = selfCopy;
    v16 = 1;
  }

  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v19;
}

- (void)setImageProvider:(id)provider
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, provider);
  if (location[0] != selfCopy->_imageProvider)
  {
    objc_storeStrong(&selfCopy->_imageProvider, location[0]);
    [(NLWorkoutComplicationAnimatedWrapperView *)selfCopy _updateState];
  }

  objc_storeStrong(location, 0);
}

- (void)setColor:(id)color
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, color);
  if (([location[0] isEqual:selfCopy->_color] & 1) == 0)
  {
    objc_storeStrong(&selfCopy->_color, location[0]);
    [(NLWorkoutComplicationAnimatedWrapperView *)selfCopy _updateTint];
  }

  objc_storeStrong(location, 0);
}

- (void)_updateTint
{
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [(UIImageView *)self->_imageView setTintColor:self->_color];
  +[CATransaction commit];
  cGColor = [(UIColor *)self->_color CGColor];
  layer = [(UIImageView *)self->_imageView layer];
  [layer setContentsMultiplyColor:cGColor];
}

- (void)_applyAnimationForPauseState:(BOOL)state animated:(BOOL)animated
{
  selfCopy = self;
  v11 = a2;
  stateCopy = state;
  animatedCopy = animated;
  if (state)
  {
    [(UIImageView *)selfCopy->_imageView stopAnimating];
    if (animatedCopy)
    {
      v8 = [CABasicAnimation animationWithKeyPath:@"opacity"];
      [(CABasicAnimation *)v8 setToValue:&off_10A80];
      [(CABasicAnimation *)v8 setAutoreverses:1];
      [(CABasicAnimation *)v8 setDuration:0.8];
      LODWORD(v4) = 2139095039;
      [(CABasicAnimation *)v8 setRepeatCount:v4];
      v6 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
      [(CABasicAnimation *)v8 setTimingFunction:?];

      layer = [(UIImageView *)selfCopy->_imageView layer];
      [layer addAnimation:v8 forKey:@"pulse"];

      objc_storeStrong(&v8, 0);
    }
  }

  else
  {
    layer2 = [(UIImageView *)selfCopy->_imageView layer];
    [layer2 removeAllAnimations];

    [(UIImageView *)selfCopy->_imageView startAnimating];
  }
}

- (void)_updateState
{
  selfCopy = self;
  v2[1] = a2;
  v2[0] = self->_imageProvider;
  -[NLWorkoutComplicationAnimatedWrapperView _applyAnimationForPauseState:animated:](selfCopy, "_applyAnimationForPauseState:animated:", [v2[0] isPaused], 1);
  objc_storeStrong(v2, 0);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  image = [(UIImageView *)self->_imageView image];
  [(UIImage *)image size];
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
    tintColor = [(CLKImageProvider *)self->_imageProvider tintColor];
    v5 = 1;
    v2 = tintColor;
  }

  v7 = v2;
  if (v5)
  {
  }

  return v7;
}

@end