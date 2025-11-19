@interface DebugLocationAnnotationView
- (DebugLocationAnnotationView)initWithAnnotation:(id)a3 debugLocationAnnotation:(id)a4 reuseIdentifier:(id)a5;
- (void)_setMapPitchRadians:(double)a3;
- (void)_setMapRotationRadians:(double)a3;
- (void)_updateAccuracy;
- (void)_updateCourse;
- (void)_updateFillColor;
- (void)setDebugLocationAnnotation:(id)a3;
@end

@implementation DebugLocationAnnotationView

- (void)_setMapRotationRadians:(double)a3
{
  v4.receiver = self;
  v4.super_class = DebugLocationAnnotationView;
  [(DebugLocationAnnotationView *)&v4 _setMapRotationRadians:a3];
  [(DebugLocationAnnotationView *)self _updateCourse];
}

- (void)_setMapPitchRadians:(double)a3
{
  v10.receiver = self;
  v10.super_class = DebugLocationAnnotationView;
  [(DebugLocationAnnotationView *)&v10 _setMapPitchRadians:?];
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  CATransform3DMakeRotation(&v9, a3, 1.0, 0.0, 0.0);
  v5 = [(UIView *)self->_circleView layer];
  v8 = v9;
  [v5 setTransform:&v8];

  CATransform3DMakeRotation(&v7, a3, 1.0, 0.0, 0.0);
  v6 = [(UIView *)self->_outerCircleView layer];
  v8 = v7;
  [v6 setTransform:&v8];

  +[CATransaction commit];
}

- (void)setDebugLocationAnnotation:(id)a3
{
  objc_storeStrong(&self->_debugLocationAnnotation, a3);
  [(DebugLocationAnnotationView *)self _updateFillColor];
  [(DebugLocationAnnotationView *)self _updateCourse];

  [(DebugLocationAnnotationView *)self _updateAccuracy];
}

- (DebugLocationAnnotationView)initWithAnnotation:(id)a3 debugLocationAnnotation:(id)a4 reuseIdentifier:(id)a5
{
  v9 = a4;
  v43.receiver = self;
  v43.super_class = DebugLocationAnnotationView;
  v10 = [(DebugLocationAnnotationView *)&v43 initWithAnnotation:a3 reuseIdentifier:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_debugLocationAnnotation, a4);
    v12 = [v9 navType];
    v13 = [UIView alloc];
    if (v12)
    {
      v14 = 50.0;
    }

    else
    {
      v14 = 18.0;
    }

    v15 = [v13 initWithFrame:{0.0, 0.0, v14, v14}];
    circleView = v11->_circleView;
    v11->_circleView = v15;

    [(DebugLocationAnnotationView *)v11 bounds];
    MidX = CGRectGetMidX(v44);
    [(DebugLocationAnnotationView *)v11 bounds];
    MidY = CGRectGetMidY(v45);
    v19 = [(UIView *)v11->_circleView layer];
    [v19 setPosition:{MidX, MidY}];

    [(UIView *)v11->_circleView bounds];
    v21 = v20 * 0.5;
    v22 = [(UIView *)v11->_circleView layer];
    [v22 setCornerRadius:v21];

    [(DebugLocationAnnotationView *)v11 addSubview:v11->_circleView];
    [(DebugLocationAnnotationView *)v11 _updateFillColor];
    if ([v9 navType] == 1 || objc_msgSend(v9, "navType") == 2)
    {
      v23 = [UIImageView alloc];
      v24 = [UIImage imageNamed:@"MN-CourseArrow.png"];
      v25 = [v23 initWithImage:v24];
      courseImageView = v11->_courseImageView;
      v11->_courseImageView = v25;

      [(UIImageView *)v11->_courseImageView sizeToFit];
      [(UIView *)v11->_circleView bounds];
      v27 = CGRectGetMidX(v46);
      [(UIImageView *)v11->_courseImageView bounds];
      v29 = v27 - v28 * 0.5;
      [(UIView *)v11->_circleView bounds];
      v30 = CGRectGetMidY(v47);
      [(UIImageView *)v11->_courseImageView bounds];
      v32 = v30 - v31 * 0.5;
      [(UIImageView *)v11->_courseImageView bounds];
      v34 = v33;
      [(UIImageView *)v11->_courseImageView bounds];
      [(UIImageView *)v11->_courseImageView setFrame:v29, v32, v34];
      [(UIView *)v11->_circleView addSubview:v11->_courseImageView];
    }

    v35 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    outerCircleView = v11->_outerCircleView;
    v11->_outerCircleView = v35;

    v37 = [(UIView *)v11->_outerCircleView layer];
    [v37 setBorderWidth:3.0];

    v38 = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:0.200000003];
    v39 = [v38 CGColor];
    v40 = [(UIView *)v11->_outerCircleView layer];
    [v40 setBorderColor:v39];

    [(DebugLocationAnnotationView *)v11 _updateAccuracy];
    v41 = v11;
  }

  return v11;
}

- (void)_updateAccuracy
{
  if ([(DebugLocationAnnotation *)self->_debugLocationAnnotation locationType])
  {
    outerCircleView = self->_outerCircleView;

    [(UIView *)outerCircleView removeFromSuperview];
  }

  else
  {
    v4 = [(DebugLocationAnnotation *)self->_debugLocationAnnotation location];
    [v4 horizontalAccuracy];
    [(DebugLocationAnnotationView *)self _pointsForDistance:?];
    v6 = v5;

    [(DebugLocationAnnotationView *)self bounds];
    MidX = CGRectGetMidX(v17);
    [(DebugLocationAnnotationView *)self bounds];
    MidY = CGRectGetMidY(v18);
    v9 = [(UIView *)self->_outerCircleView layer];
    [v9 setPosition:{MidX, MidY}];

    [(UIView *)self->_outerCircleView setBounds:0.0, 0.0, v6 + v6, v6 + v6];
    [(UIView *)self->_outerCircleView bounds];
    v11 = v10 * 0.5;
    v12 = [(UIView *)self->_outerCircleView layer];
    [v12 setCornerRadius:v11];

    v13 = [(UIView *)self->_outerCircleView superview];

    if (!v13)
    {
      v14 = self->_outerCircleView;
      circleView = self->_circleView;

      [(DebugLocationAnnotationView *)self insertSubview:v14 belowSubview:circleView];
    }
  }
}

- (void)_updateCourse
{
  [(DebugLocationAnnotation *)self->_debugLocationAnnotation course];
  v4 = v3;
  [(DebugLocationAnnotationView *)self _mapRotationRadians];
  CATransform3DMakeRotation(&v8, -(v5 + v4 * -0.0174532925), 0.0, 0.0, 1.0);
  v6 = [(UIImageView *)self->_courseImageView layer];
  v7 = v8;
  [v6 setTransform:&v7];
}

- (void)_updateFillColor
{
  v3 = [(DebugLocationAnnotation *)self->_debugLocationAnnotation locationType];
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      if (v3 != 3)
      {
        return;
      }

      v4 = 0.200000003;
      v5 = 0.0;
      goto LABEL_8;
    }

    v4 = 0.400000006;
    v5 = 0.0;
LABEL_12:
    v6 = 0.0;
    goto LABEL_13;
  }

  if (!v3)
  {
    v4 = 0.200000003;
    v5 = 1.0;
    goto LABEL_12;
  }

  if (v3 != 1)
  {
    return;
  }

  v4 = 0.200000003;
  v5 = 1.0;
LABEL_8:
  v6 = 1.0;
LABEL_13:
  v7 = [UIColor colorWithRed:v5 green:0.0 blue:v6 alpha:v4];
  [(UIView *)self->_circleView setBackgroundColor:v7];
}

@end