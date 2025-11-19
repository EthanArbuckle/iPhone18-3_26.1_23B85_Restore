@interface MadridDiscreteSlider
- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5;
- (CGRect)trackRectForBounds:(CGRect)a3;
- (MadridDiscreteSlider)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
- (void)setTrackMarkersColor:(id)a3;
- (void)sliderTapped:(id)a3;
@end

@implementation MadridDiscreteSlider

- (MadridDiscreteSlider)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MadridDiscreteSlider;
  v3 = [(MadridDiscreteSlider *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [[MadridNonMovableTapGestureRecognizer alloc] initWithTarget:v3 action:"sliderTapped:"];
    [(MadridDiscreteSlider *)v3 addGestureRecognizer:v4];
  }

  return v3;
}

- (void)sliderTapped:(id)a3
{
  [a3 locationInView:self];
  v5 = v4;
  [(MadridDiscreteSlider *)self bounds];
  [(MadridDiscreteSlider *)self trackRectForBounds:?];
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;
  v10 = v5 - CGRectGetMinX(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  if (v10 / CGRectGetWidth(v25) > 1.0)
  {
    goto LABEL_10;
  }

  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v11 = v5 - CGRectGetMinX(v26);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v12 = v11 / CGRectGetWidth(v27);
  v13 = 0.0;
  if (v12 >= 0.0)
  {
LABEL_10:
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    v14 = v5 - CGRectGetMinX(v28);
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    v15 = v14 / CGRectGetWidth(v29);
    v13 = 1.0;
    if (v15 <= 1.0)
    {
      v30.origin.x = x;
      v30.origin.y = y;
      v30.size.width = width;
      v30.size.height = height;
      v16 = v5 - CGRectGetMinX(v30);
      v31.origin.x = x;
      v31.origin.y = y;
      v31.size.width = width;
      v31.size.height = height;
      v13 = v16 / CGRectGetWidth(v31);
    }
  }

  [(MadridDiscreteSlider *)self maximumValue];
  v18 = v17;
  [(MadridDiscreteSlider *)self minimumValue];
  v20 = (v18 - v19);
  [(MadridDiscreteSlider *)self minimumValue];
  v22 = v21 + v13 * v20;
  *&v22 = v22;
  [(MadridDiscreteSlider *)self setValue:1 animated:v22];

  [(MadridDiscreteSlider *)self sendActionsForControlEvents:4096];
}

- (void)setTrackMarkersColor:(id)a3
{
  v5 = a3;
  if (self->_trackMarkersColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_trackMarkersColor, a3);
    [(MadridDiscreteSlider *)self setNeedsDisplay];
    v5 = v6;
  }
}

- (void)drawRect:(CGRect)a3
{
  [(MadridDiscreteSlider *)self bounds:a3.origin.x];
  [(MadridDiscreteSlider *)self trackRectForBounds:?];
  v5 = v4;
  v22 = v6;
  v8 = v7;
  v10 = v9;
  [(MadridDiscreteSlider *)self bounds];
  v23 = objc_alloc_init(UIBezierPath);
  [(UIColor *)self->_trackMarkersColor set];
  [v23 setLineWidth:1.0];
  [(MadridDiscreteSlider *)self minimumValue];
  v12 = v11;
  v13 = v11;
  [(MadridDiscreteSlider *)self maximumValue];
  if (v14 >= v13)
  {
    v15 = v12 + 1;
    do
    {
      [(MadridDiscreteSlider *)self minimumValue];
      [(MadridDiscreteSlider *)self maximumValue];
      [(MadridDiscreteSlider *)self minimumValue];
      PSRoundToPixel();
      v17 = v16 + 0.5;
      PSRoundToPixel();
      [v23 moveToPoint:{v17, v18}];
      PSRoundToPixel();
      [v23 addLineToPoint:{v17, v19}];
      *&v17 = v15;
      [(MadridDiscreteSlider *)self maximumValue];
      ++v15;
    }

    while (v20 >= *&v17);
  }

  [v23 stroke];
  v21 = [UIBezierPath bezierPathWithRect:v5, v22, v8, v10];
  [v21 fill];
}

- (CGRect)trackRectForBounds:(CGRect)a3
{
  width = a3.size.width;
  x = a3.origin.x;
  PSRoundToPixel();
  v6 = v5;
  v7 = x + 10.0;
  v8 = width + -20.0;
  v9 = 1.0;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v6;
  result.origin.x = v7;
  return result;
}

- (CGRect)thumbRectForBounds:(CGRect)a3 trackRect:(CGRect)a4 value:(float)a5
{
  v17.receiver = self;
  v17.super_class = MadridDiscreteSlider;
  [(MadridDiscreteSlider *)&v17 thumbRectForBounds:a3.origin.x trackRect:a3.origin.y value:a3.size.width, a3.size.height, LODWORD(a5)];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(MadridDiscreteSlider *)self minimumValue];
  [(MadridDiscreteSlider *)self maximumValue];
  [(MadridDiscreteSlider *)self minimumValue];
  PSRoundToPixel();
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

@end