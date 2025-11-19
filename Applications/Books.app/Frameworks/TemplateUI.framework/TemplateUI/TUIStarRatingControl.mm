@interface TUIStarRatingControl
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)_foregroundImageClipBounds;
- (CGRect)_foregroundImageContainerClipBounds;
- (CGRect)hitRect;
- (TUIStarRatingControl)initWithRating:(double)a3 backgroundImageName:(id)a4 foregroundImageName:(id)a5 direction:(unint64_t)a6 color:(id)a7 startColor:(id)a8 backgroundColor:(id)a9 starWidth:(double)a10 starPadding:(double)a11;
- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)_updateBackgroundImage;
- (void)_updateForegroundImage;
- (void)_updateImagesIfNeededWithForegroundImageName:(id)a3 backgroundImageName:(id)a4 starWidth:(double)a5 starPadding:(double)a6;
- (void)_updateValueForPoint:(CGPoint)a3;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setForegroundColor:(id)a3;
- (void)setStarPadding:(double)a3;
- (void)setStarWidth:(double)a3;
- (void)setStartColor:(id)a3;
- (void)sizeToFit;
@end

@implementation TUIStarRatingControl

- (TUIStarRatingControl)initWithRating:(double)a3 backgroundImageName:(id)a4 foregroundImageName:(id)a5 direction:(unint64_t)a6 color:(id)a7 startColor:(id)a8 backgroundColor:(id)a9 starWidth:(double)a10 starPadding:(double)a11
{
  v46 = a4;
  v45 = a5;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v47.receiver = self;
  v47.super_class = TUIStarRatingControl;
  v24 = [(TUIStarRatingControl *)&v47 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_backgroundImageName, a4);
    objc_storeStrong(&v25->_foregroundImageName, a5);
    v25->_direction = a6;
    objc_storeStrong(&v25->_foregroundColor, a7);
    objc_storeStrong(&v25->_backgroundColor, a9);
    objc_storeStrong(&v25->_startColor, a8);
    v26 = a3;
    v25->_value = v26;
    v25->_starWidth = a10;
    v25->_starPadding = a11;
    v27 = +[TUIStarRatingImageCache sharedInstance];
    v28 = [(TUIStarRatingControl *)v25 traitCollection];
    v29 = [v27 ratingStarsImageWithName:v46 starSize:5 starCount:v28 starPadding:a10 traitCollection:a11];

    v30 = +[TUIStarRatingImageCache sharedInstance];
    v31 = [(TUIStarRatingControl *)v25 traitCollection];
    v32 = [v30 ratingStarsImageWithName:v45 starSize:5 starCount:v31 starPadding:a10 traitCollection:a11];

    v33 = [[UIImageView alloc] initWithImage:v29];
    placeholderImageView = v25->_placeholderImageView;
    v25->_placeholderImageView = v33;

    [(UIImageView *)v25->_placeholderImageView setTintColor:v22];
    [(UIImageView *)v25->_placeholderImageView setUserInteractionEnabled:0];
    [(UIImageView *)v25->_placeholderImageView sizeToFit];
    [(TUIStarRatingControl *)v25 addSubview:v25->_placeholderImageView];
    v35 = [[UIImageView alloc] initWithImage:v29];
    backgroundImageView = v25->_backgroundImageView;
    v25->_backgroundImageView = v35;

    [(UIImageView *)v25->_backgroundImageView setTintColor:v23];
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

    [(UIImageView *)v25->_foregroundImageView setTintColor:v21];
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

- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  [(TUIStarRatingControl *)self _updateForegroundImage:a3];

  [(TUIStarRatingControl *)self _updateBackgroundImage];
}

- (void)setStarWidth:(double)a3
{
  if (self->_starWidth != a3)
  {
    self->_starWidth = a3;
    [(TUIStarRatingControl *)self _updateForegroundImage];

    [(TUIStarRatingControl *)self _updateBackgroundImage];
  }
}

- (void)setStarPadding:(double)a3
{
  if (self->_starPadding != a3)
  {
    self->_starPadding = a3;
    [(TUIStarRatingControl *)self _updateForegroundImage];

    [(TUIStarRatingControl *)self _updateBackgroundImage];
  }
}

- (void)setForegroundColor:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_foregroundColor != v5)
  {
    v8 = v5;
    v7 = [(UIColor *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_foregroundColor, a3);
      [(UIImageView *)self->_foregroundImageView setTintColor:v8];
      v6 = v8;
    }
  }
}

- (void)setBackgroundColor:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_backgroundColor != v5)
  {
    v8 = v5;
    v7 = [(UIColor *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_backgroundColor, a3);
      [(UIImageView *)self->_backgroundImageView setTintColor:v8];
      v6 = v8;
    }
  }
}

- (void)setStartColor:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_startColor != v5)
  {
    v8 = v5;
    v7 = [(UIColor *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_startColor, a3);
      [(UIImageView *)self->_placeholderImageView setTintColor:v8];
      v6 = v8;
    }
  }
}

- (void)_updateImagesIfNeededWithForegroundImageName:(id)a3 backgroundImageName:(id)a4 starWidth:(double)a5 starPadding:(double)a6
{
  v12 = a3;
  v11 = a4;
  if (self->_starWidth != a5 || self->_starPadding != a6)
  {
    self->_starWidth = a5;
    self->_starPadding = a6;
    objc_storeStrong(&self->_foregroundImageName, a3);
    [(TUIStarRatingControl *)self _updateForegroundImage];
LABEL_4:
    objc_storeStrong(&self->_backgroundImageName, a4);
    [(TUIStarRatingControl *)self _updateBackgroundImage];
    goto LABEL_5;
  }

  if (([v12 isEqualToString:self->_foregroundImageName] & 1) == 0)
  {
    objc_storeStrong(&self->_foregroundImageName, a3);
    [(TUIStarRatingControl *)self _updateForegroundImage];
  }

  if (([v11 isEqualToString:self->_backgroundImageName] & 1) == 0)
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
  v7 = [(TUIStarRatingControl *)self traitCollection];
  v8 = [v3 ratingStarsImageWithName:foregroundImageName starSize:5 starCount:v7 starPadding:starWidth traitCollection:starPadding];

  [(UIImageView *)self->_foregroundImageView setImage:v8];
}

- (void)_updateBackgroundImage
{
  v3 = +[TUIStarRatingImageCache sharedInstance];
  backgroundImageName = self->_backgroundImageName;
  starWidth = self->_starWidth;
  starPadding = self->_starPadding;
  v7 = [(TUIStarRatingControl *)self traitCollection];
  v8 = [v3 ratingStarsImageWithName:backgroundImageName starSize:5 starCount:v7 starPadding:starWidth traitCollection:starPadding];

  [(UIImageView *)self->_placeholderImageView setImage:v8];
  [(UIImageView *)self->_backgroundImageView setImage:v8];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v3 = a3;
  v4 = 1;
  if ([v3 numberOfTouches] == &dword_0 + 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  p_trackingStartPoint = &self->_trackingStartPoint;
  [a3 locationInView:{self, a4}];
  p_trackingStartPoint->x = v5;
  p_trackingStartPoint->y = v6;
  return 1;
}

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  [a3 locationInView:{self, a4}];
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

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  p_trackingLastPoint = &self->_trackingLastPoint;
  [a3 locationInView:{self, a4}];
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

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
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

- (void)_updateValueForPoint:(CGPoint)a3
{
  x = a3.x;
  [(TUIStarRatingControl *)self starWidth:a3.x];
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