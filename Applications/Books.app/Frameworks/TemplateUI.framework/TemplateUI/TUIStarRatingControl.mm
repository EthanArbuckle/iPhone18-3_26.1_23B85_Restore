@interface TUIStarRatingControl
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)_foregroundImageClipBounds;
- (CGRect)_foregroundImageContainerClipBounds;
- (CGRect)hitRect;
- (TUIStarRatingControl)initWithRating:(double)rating backgroundImageName:(id)name foregroundImageName:(id)imageName direction:(unint64_t)direction color:(id)color startColor:(id)startColor backgroundColor:(id)backgroundColor starWidth:(double)self0 starPadding:(double)self1;
- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
- (void)_updateBackgroundImage;
- (void)_updateForegroundImage;
- (void)_updateImagesIfNeededWithForegroundImageName:(id)name backgroundImageName:(id)imageName starWidth:(double)width starPadding:(double)padding;
- (void)_updateValueForPoint:(CGPoint)point;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setForegroundColor:(id)color;
- (void)setStarPadding:(double)padding;
- (void)setStarWidth:(double)width;
- (void)setStartColor:(id)color;
- (void)sizeToFit;
@end

@implementation TUIStarRatingControl

- (TUIStarRatingControl)initWithRating:(double)rating backgroundImageName:(id)name foregroundImageName:(id)imageName direction:(unint64_t)direction color:(id)color startColor:(id)startColor backgroundColor:(id)backgroundColor starWidth:(double)self0 starPadding:(double)self1
{
  nameCopy = name;
  imageNameCopy = imageName;
  colorCopy = color;
  startColorCopy = startColor;
  backgroundColorCopy = backgroundColor;
  v47.receiver = self;
  v47.super_class = TUIStarRatingControl;
  v24 = [(TUIStarRatingControl *)&v47 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_backgroundImageName, name);
    objc_storeStrong(&v25->_foregroundImageName, imageName);
    v25->_direction = direction;
    objc_storeStrong(&v25->_foregroundColor, color);
    objc_storeStrong(&v25->_backgroundColor, backgroundColor);
    objc_storeStrong(&v25->_startColor, startColor);
    ratingCopy = rating;
    v25->_value = ratingCopy;
    v25->_starWidth = width;
    v25->_starPadding = padding;
    v27 = +[TUIStarRatingImageCache sharedInstance];
    traitCollection = [(TUIStarRatingControl *)v25 traitCollection];
    v29 = [v27 ratingStarsImageWithName:nameCopy starSize:5 starCount:traitCollection starPadding:width traitCollection:padding];

    v30 = +[TUIStarRatingImageCache sharedInstance];
    traitCollection2 = [(TUIStarRatingControl *)v25 traitCollection];
    v32 = [v30 ratingStarsImageWithName:imageNameCopy starSize:5 starCount:traitCollection2 starPadding:width traitCollection:padding];

    v33 = [[UIImageView alloc] initWithImage:v29];
    placeholderImageView = v25->_placeholderImageView;
    v25->_placeholderImageView = v33;

    [(UIImageView *)v25->_placeholderImageView setTintColor:startColorCopy];
    [(UIImageView *)v25->_placeholderImageView setUserInteractionEnabled:0];
    [(UIImageView *)v25->_placeholderImageView sizeToFit];
    [(TUIStarRatingControl *)v25 addSubview:v25->_placeholderImageView];
    v35 = [[UIImageView alloc] initWithImage:v29];
    backgroundImageView = v25->_backgroundImageView;
    v25->_backgroundImageView = v35;

    [(UIImageView *)v25->_backgroundImageView setTintColor:backgroundColorCopy];
    [(UIImageView *)v25->_backgroundImageView setUserInteractionEnabled:0];
    [(UIImageView *)v25->_backgroundImageView sizeToFit];
    [(TUIStarRatingControl *)v25 addSubview:v25->_backgroundImageView];
    v37 = [UIView alloc];
    [(TUIStarRatingControl *)v25 bounds];
    v38 = [v37 initWithFrame:?];
    foregroundContainerView = v25->_foregroundContainerView;
    v25->_foregroundContainerView = v38;

    [(UIView *)v25->_foregroundContainerView setClipsToBounds:1];
    [(UIView *)v25->_foregroundContainerView setUserInteractionEnabled:0];
    [(UIView *)v25->_foregroundContainerView setContentMode:7];
    [(UIView *)v25->_foregroundContainerView sizeToFit];
    v40 = [[UIImageView alloc] initWithImage:v32];
    foregroundImageView = v25->_foregroundImageView;
    v25->_foregroundImageView = v40;

    [(UIImageView *)v25->_foregroundImageView setTintColor:colorCopy];
    [(UIImageView *)v25->_foregroundImageView setUserInteractionEnabled:0];
    [(UIImageView *)v25->_foregroundImageView sizeToFit];
    [(UIView *)v25->_foregroundContainerView addSubview:v25->_foregroundImageView];
    [(TUIStarRatingControl *)v25 addSubview:v25->_foregroundContainerView];
    v42 = +[UITraitCollection tui_allAPITraits];
    v43 = [(TUIStarRatingControl *)v25 registerForTraitChanges:v42 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v25;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = TUIStarRatingControl;
  [(TUIStarRatingControl *)&v14 layoutSubviews];
  [(TUIStarRatingControl *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  *&v3 = self->_value;
  v11 = *&v3 != 0.0;
  [(UIImageView *)self->_backgroundImageView setHidden:*&v3 == 0.0];
  [(UIImageView *)self->_placeholderImageView setHidden:v11];
  [(UIImageView *)self->_placeholderImageView setFrame:v4, v6, v8, v10];
  [(UIImageView *)self->_backgroundImageView setFrame:v4, v6, v8, v10];
  foregroundImageView = self->_foregroundImageView;
  [(TUIStarRatingControl *)self _foregroundImageClipBounds];
  [(UIImageView *)foregroundImageView setFrame:?];
  foregroundContainerView = self->_foregroundContainerView;
  [(TUIStarRatingControl *)self _foregroundImageContainerClipBounds];
  [(UIView *)foregroundContainerView setFrame:?];
}

- (void)sizeToFit
{
  [(TUIStarRatingControl *)self frame];
  v4 = v3;
  v6 = v5;
  [(UIImageView *)self->_backgroundImageView bounds];

  [(TUIStarRatingControl *)self setFrame:v4, v6];
}

- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  [(TUIStarRatingControl *)self _updateForegroundImage:change];

  [(TUIStarRatingControl *)self _updateBackgroundImage];
}

- (void)setStarWidth:(double)width
{
  if (self->_starWidth != width)
  {
    self->_starWidth = width;
    [(TUIStarRatingControl *)self _updateForegroundImage];

    [(TUIStarRatingControl *)self _updateBackgroundImage];
  }
}

- (void)setStarPadding:(double)padding
{
  if (self->_starPadding != padding)
  {
    self->_starPadding = padding;
    [(TUIStarRatingControl *)self _updateForegroundImage];

    [(TUIStarRatingControl *)self _updateBackgroundImage];
  }
}

- (void)setForegroundColor:(id)color
{
  colorCopy = color;
  v6 = colorCopy;
  if (self->_foregroundColor != colorCopy)
  {
    v8 = colorCopy;
    v7 = [(UIColor *)colorCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_foregroundColor, color);
      [(UIImageView *)self->_foregroundImageView setTintColor:v8];
      v6 = v8;
    }
  }
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  v6 = colorCopy;
  if (self->_backgroundColor != colorCopy)
  {
    v8 = colorCopy;
    v7 = [(UIColor *)colorCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_backgroundColor, color);
      [(UIImageView *)self->_backgroundImageView setTintColor:v8];
      v6 = v8;
    }
  }
}

- (void)setStartColor:(id)color
{
  colorCopy = color;
  v6 = colorCopy;
  if (self->_startColor != colorCopy)
  {
    v8 = colorCopy;
    v7 = [(UIColor *)colorCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_startColor, color);
      [(UIImageView *)self->_placeholderImageView setTintColor:v8];
      v6 = v8;
    }
  }
}

- (void)_updateImagesIfNeededWithForegroundImageName:(id)name backgroundImageName:(id)imageName starWidth:(double)width starPadding:(double)padding
{
  nameCopy = name;
  imageNameCopy = imageName;
  if (self->_starWidth != width || self->_starPadding != padding)
  {
    self->_starWidth = width;
    self->_starPadding = padding;
    objc_storeStrong(&self->_foregroundImageName, name);
    [(TUIStarRatingControl *)self _updateForegroundImage];
LABEL_4:
    objc_storeStrong(&self->_backgroundImageName, imageName);
    [(TUIStarRatingControl *)self _updateBackgroundImage];
    goto LABEL_5;
  }

  if (([nameCopy isEqualToString:self->_foregroundImageName] & 1) == 0)
  {
    objc_storeStrong(&self->_foregroundImageName, name);
    [(TUIStarRatingControl *)self _updateForegroundImage];
  }

  if (([imageNameCopy isEqualToString:self->_backgroundImageName] & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)_updateForegroundImage
{
  v3 = +[TUIStarRatingImageCache sharedInstance];
  foregroundImageName = self->_foregroundImageName;
  starWidth = self->_starWidth;
  starPadding = self->_starPadding;
  traitCollection = [(TUIStarRatingControl *)self traitCollection];
  v8 = [v3 ratingStarsImageWithName:foregroundImageName starSize:5 starCount:traitCollection starPadding:starWidth traitCollection:starPadding];

  [(UIImageView *)self->_foregroundImageView setImage:v8];
}

- (void)_updateBackgroundImage
{
  v3 = +[TUIStarRatingImageCache sharedInstance];
  backgroundImageName = self->_backgroundImageName;
  starWidth = self->_starWidth;
  starPadding = self->_starPadding;
  traitCollection = [(TUIStarRatingControl *)self traitCollection];
  v8 = [v3 ratingStarsImageWithName:backgroundImageName starSize:5 starCount:traitCollection starPadding:starWidth traitCollection:starPadding];

  [(UIImageView *)self->_placeholderImageView setImage:v8];
  [(UIImageView *)self->_backgroundImageView setImage:v8];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  v4 = 1;
  if ([beginCopy numberOfTouches] == &dword_0 + 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  p_trackingStartPoint = &self->_trackingStartPoint;
  [touch locationInView:{self, event}];
  p_trackingStartPoint->x = v5;
  p_trackingStartPoint->y = v6;
  return 1;
}

- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event
{
  [touch locationInView:{self, event}];
  v6 = v5 - self->_trackingStartPoint.y;
  self->_trackingLastPoint.x = v7;
  self->_trackingLastPoint.y = v5;
  if (v6 >= 0.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = -v6;
  }

  if (v8 > 40.0)
  {
    v9 = 64;
  }

  else
  {
    [(TUIStarRatingControl *)self _updateValueForPoint:?];
    v9 = 4096;
  }

  [(TUIStarRatingControl *)self sendActionsForControlEvents:v9, 40.0];
  return v8 <= 40.0;
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  p_trackingLastPoint = &self->_trackingLastPoint;
  [touch locationInView:{self, event}];
  p_trackingLastPoint->x = v6;
  p_trackingLastPoint->y = v7;
  [(TUIStarRatingControl *)self _updateValueForPoint:?];

  [(TUIStarRatingControl *)self sendActionsForControlEvents:4096];
}

- (CGRect)hitRect
{
  [(TUIStarRatingControl *)self bounds];
  v7 = -self->_hitPadding.width;
  v8 = -self->_hitPadding.height;

  return CGRectInset(*&v3, v7, v8);
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(TUIStarRatingControl *)self hitRect];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (CGRect)_foregroundImageClipBounds
{
  [(TUIStarRatingControl *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(TUIStarRatingControl *)self _isRTL])
  {
    [(TUIStarRatingControl *)self _foregroundImageContainerClipBounds];
    v4 = -v11;
  }

  v12 = v4;
  v13 = v6;
  v14 = v8;
  v15 = v10;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)_foregroundImageContainerClipBounds
{
  [(TUIStarRatingControl *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = self->_value / (1.0 / 5uLL);
  [(TUIStarRatingControl *)self starWidth];
  v13 = v12;
  [(TUIStarRatingControl *)self starPadding];
  v15 = v14 * 4uLL + v13 * 5uLL;
  [(TUIStarRatingControl *)self starWidth];
  v17 = v8 * (v16 / v15);
  [(TUIStarRatingControl *)self starPadding];
  v19 = v8 * (v18 / v15);
  v20 = v11;
  v21 = ceilf(v20 + -1.0);
  if (v21 < 0.0)
  {
    v21 = 0.0;
  }

  v22 = v19 * v21 + v17 * v11;
  if ([(TUIStarRatingControl *)self _isRTL])
  {
    v28.origin.x = v4;
    v28.origin.y = v6;
    v28.size.width = v8;
    v28.size.height = v10;
    MaxX = CGRectGetMaxX(v28);
    v29.origin.x = v4;
    v29.origin.y = v6;
    v29.size.width = v22;
    v29.size.height = v10;
    v4 = MaxX - CGRectGetWidth(v29);
  }

  v24 = v4;
  v25 = v6;
  v26 = v22;
  v27 = v10;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (void)_updateValueForPoint:(CGPoint)point
{
  x = point.x;
  [(TUIStarRatingControl *)self starWidth:point.x];
  v7 = v6;
  [(TUIStarRatingControl *)self bounds];
  v9 = ceil((v8 - v7 * 5uLL) / 4uLL);
  v10 = (v7 + v9) * 5uLL;
  v11 = -(v9 - v10);
  if (x <= v10)
  {
    v11 = x;
  }

  if (v11 < 0.0)
  {
    v11 = 0.0;
  }

  LODWORD(v3) = vcvtpd_u64_f64(v11 / (v7 + v9));
  if ([(TUIStarRatingControl *)self _isRTL])
  {
    v13 = 6 - v3;
  }

  else
  {
    v13 = v3;
  }

  if (v13 <= 1)
  {
    v13 = 1;
  }

  *&v12 = v13 / 5uLL;
  [(TUIStarRatingControl *)self setValue:v12];
}

@end