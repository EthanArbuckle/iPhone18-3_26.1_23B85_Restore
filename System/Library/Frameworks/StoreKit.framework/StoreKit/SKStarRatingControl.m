@interface SKStarRatingControl
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)_foregroundImageClipBounds;
- (CGRect)hitRect;
- (SKStarRatingControl)initWithBackgroundImage:(id)a3 foregroundImage:(id)a4;
- (id)_newExplanationLabel;
- (void)_updateValueForPoint:(CGPoint)a3;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)setExplanationText:(id)a3;
- (void)sizeToFit;
@end

@implementation SKStarRatingControl

- (SKStarRatingControl)initWithBackgroundImage:(id)a3 foregroundImage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = SKStarRatingControl;
  v8 = [(SKStarRatingControl *)&v15 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v6];
    backgroundImageView = v8->_backgroundImageView;
    v8->_backgroundImageView = v9;

    v11 = v8->_backgroundImageView;
    [(SKStarRatingControl *)v8 bounds];
    [(UIImageView *)v11 setFrame:?];
    [(UIImageView *)v8->_backgroundImageView setUserInteractionEnabled:0];
    [(UIImageView *)v8->_backgroundImageView sizeToFit];
    [(SKStarRatingControl *)v8 addSubview:v8->_backgroundImageView];
    v12 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v7];
    foregroundImageView = v8->_foregroundImageView;
    v8->_foregroundImageView = v12;

    [(UIImageView *)v8->_foregroundImageView setClipsToBounds:1];
    [(UIImageView *)v8->_foregroundImageView setUserInteractionEnabled:0];
    [(UIImageView *)v8->_foregroundImageView sizeToFit];
    [(SKStarRatingControl *)v8 addSubview:v8->_foregroundImageView];
  }

  return v8;
}

- (void)layoutSubviews
{
  [(SKStarRatingControl *)self bounds];
  v4 = v3;
  [(UIImageView *)self->_backgroundImageView setFrame:?];
  if ([(SKStarRatingControl *)self effectiveUserInterfaceLayoutDirection]== 1)
  {
    v5 = 8;
  }

  else
  {
    v5 = 7;
  }

  [(UIImageView *)self->_foregroundImageView setContentMode:v5];
  foregroundImageView = self->_foregroundImageView;
  [(SKStarRatingControl *)self _foregroundImageClipBounds];
  [(UIImageView *)foregroundImageView setFrame:?];
  explanationLabel = self->_explanationLabel;
  if (explanationLabel)
  {
    [(UILabel *)explanationLabel frame];
    v9 = self->_explanationLabel;
    v10 = floor((v4 - v8) * 0.5);

    [(UILabel *)v9 setFrame:v10, 24.0];
  }
}

- (void)sizeToFit
{
  [(SKStarRatingControl *)self frame];
  v4 = v3;
  v6 = v5;
  [(UIImageView *)self->_backgroundImageView bounds];

  [(SKStarRatingControl *)self setFrame:v4, v6];
}

- (void)setExplanationText:(id)a3
{
  v11 = a3;
  v4 = [(UILabel *)self->_explanationLabel text];
  v5 = [v4 isEqualToString:v11];

  v6 = v11;
  if ((v5 & 1) == 0)
  {
    explanationLabel = self->_explanationLabel;
    if (v11)
    {
      if (!explanationLabel)
      {
        v8 = [(SKStarRatingControl *)self _newExplanationLabel];
        v9 = self->_explanationLabel;
        self->_explanationLabel = v8;

        [(SKStarRatingControl *)self addSubview:self->_explanationLabel];
        v6 = v11;
        explanationLabel = self->_explanationLabel;
      }

      [(UILabel *)explanationLabel setText:v6];
      [(UILabel *)self->_explanationLabel sizeToFit];
    }

    else
    {
      [(UILabel *)explanationLabel removeFromSuperview];
      v10 = self->_explanationLabel;
      self->_explanationLabel = 0;
    }

    [(SKStarRatingControl *)self setNeedsLayout];
  }

  MEMORY[0x1EEE66BE0]();
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
  if (v6 <= 40.0)
  {
    [(SKStarRatingControl *)self _updateValueForPoint:?];
    [(SKStarRatingControl *)self sendActionsForControlEvents:4096];
  }

  return v6 <= 40.0;
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  p_trackingLastPoint = &self->_trackingLastPoint;
  [a3 locationInView:{self, a4}];
  p_trackingLastPoint->x = v6;
  p_trackingLastPoint->y = v7;
  [(SKStarRatingControl *)self _updateValueForPoint:?];
  [(SKStarRatingControl *)self sendActionsForControlEvents:4096];

  [(SKStarRatingControl *)self sendActionsForControlEvents:64];
}

- (CGRect)hitRect
{
  [(SKStarRatingControl *)self bounds];
  v7 = -self->_hitPadding.width;
  v8 = -self->_hitPadding.height;

  return CGRectInset(*&v3, v7, v8);
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(SKStarRatingControl *)self hitRect];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (CGRect)_foregroundImageClipBounds
{
  [(SKStarRatingControl *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v7 * self->_value;
  if ([(SKStarRatingControl *)self effectiveUserInterfaceLayoutDirection]== 1)
  {
    v16.origin.x = v4;
    v16.origin.y = v6;
    v16.size.width = v8;
    v16.size.height = v10;
    v4 = CGRectGetMaxX(v16) - v11;
  }

  v12 = v4;
  v13 = v6;
  v14 = v11;
  v15 = v10;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (id)_newExplanationLabel
{
  v2 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v3 = [MEMORY[0x1E69DC888] clearColor];
  [v2 setBackgroundColor:v3];

  v4 = [MEMORY[0x1E69DB878] systemFontOfSize:11.0];
  [v2 setFont:v4];

  v5 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v2 setTextColor:v5];

  return v2;
}

- (void)_updateValueForPoint:(CGPoint)a3
{
  x = a3.x;
  [(SKStarRatingControl *)self starWidth:a3.x];
  v6 = v5;
  [(SKStarRatingControl *)self bounds];
  v8 = ceil((v7 - v6 * 5.0) * 0.25);
  v9 = v6 + v8;
  v10 = -(v8 - v9 * 5.0);
  if (x <= v9 * 5.0)
  {
    v10 = x;
  }

  if (v10 >= 0.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0.0;
  }

  if ([(SKStarRatingControl *)self effectiveUserInterfaceLayoutDirection]== 1)
  {
    [(SKStarRatingControl *)self bounds];
    v11 = CGRectGetMaxX(v14) - v11;
  }

  v12 = v11 / v9;
  *&v12 = vcvtpd_u64_f64(v11 / v9) / 5.0;

  [(SKStarRatingControl *)self setValue:v12];
}

@end