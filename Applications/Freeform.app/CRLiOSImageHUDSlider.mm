@interface CRLiOSImageHUDSlider
- (BOOL)accessibilityPerformEscape;
- (CRLiOSImageHUDSlider)initWithCoder:(id)coder;
- (CRLiOSImageHUDSlider)initWithFrame:(CGRect)frame;
- (CRLiOSImageHUDViewController)parentHUDViewController;
- (double)p_positionForValue:(double)value;
- (float)value;
- (id)accessibilityLabel;
@end

@implementation CRLiOSImageHUDSlider

- (CRLiOSImageHUDSlider)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CRLiOSImageHUDSlider;
  v3 = [(CRLiOSImageHUDSlider *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    detents = v3->_detents;
    v3->_detents = &__NSArray0__struct;
  }

  return v4;
}

- (CRLiOSImageHUDSlider)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CRLiOSImageHUDSlider;
  v3 = [(CRLiOSImageHUDSlider *)&v7 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    detents = v3->_detents;
    v3->_detents = &__NSArray0__struct;
  }

  return v4;
}

- (float)value
{
  v27.receiver = self;
  v27.super_class = CRLiOSImageHUDSlider;
  [(CRLiOSImageHUDSlider *)&v27 value];
  v4 = v3;
  [(CRLiOSImageHUDSlider *)self minimumValue];
  v6 = v5;
  [(CRLiOSImageHUDSlider *)self maximumValue];
  if (v4 != v6)
  {
    v8 = vabdd_f64(v4, v6) < 0.00999999978 || v4 == v7;
    if (!v8 && vabdd_f64(v4, v7) >= 0.00999999978)
    {
      [(CRLiOSImageHUDSlider *)self p_positionForValue:?];
      v10 = v9;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      detents = [(CRLiOSImageHUDSlider *)self detents];
      v12 = [detents countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v24;
        while (2)
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(detents);
            }

            [*(*(&v23 + 1) + 8 * i) floatValue];
            v17 = v16;
            [(CRLiOSImageHUDSlider *)self p_positionForValue:v16];
            v19 = v18 + -4.0;
            v20 = v18 + 4.0;
            if (v10 >= v19 && v10 < v20)
            {
              v4 = v17;
              goto LABEL_20;
            }
          }

          v13 = [detents countByEnumeratingWithState:&v23 objects:v28 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

LABEL_20:
    }
  }

  return v4;
}

- (double)p_positionForValue:(double)value
{
  [(CRLiOSImageHUDSlider *)self minimumValue];
  v6 = v5;
  [(CRLiOSImageHUDSlider *)self maximumValue];
  *&value = (value - v6) / (v7 - v6);
  [(CRLiOSImageHUDSlider *)self bounds];
  [(CRLiOSImageHUDSlider *)self trackRectForBounds:?];
  return v8 + *&value * v9;
}

- (id)accessibilityLabel
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Image mask slider" value:0 table:0];

  return v3;
}

- (BOOL)accessibilityPerformEscape
{
  parentHUDViewController = [(CRLiOSImageHUDSlider *)self parentHUDViewController];
  accessibilityPerformEscape = [parentHUDViewController accessibilityPerformEscape];

  return accessibilityPerformEscape;
}

- (CRLiOSImageHUDViewController)parentHUDViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentHUDViewController);

  return WeakRetained;
}

@end