@interface BKPageCurl
- (BKPageCurl)init;
- (BKPageCurlDelegate)delegate;
- (CABasicAnimation)curlAnimationAngle;
- (CABasicAnimation)curlAnimationBackColor0;
- (CABasicAnimation)curlAnimationBackColor1;
- (CABasicAnimation)curlAnimationRadius;
- (CABasicAnimation)curlAnimationShadowColor;
- (CABasicAnimation)curlAnimationTime;
- (CABasicAnimation)uncurlAnimationAngle;
- (CABasicAnimation)uncurlAnimationRadius;
- (CABasicAnimation)uncurlAnimationShadowColor;
- (CABasicAnimation)uncurlAnimationTime;
- (CGPoint)lastPoint;
- (CGPoint)manualStartPoint;
- (UIView)extraView;
- (id)_backColor0AtPosition:(double)a3;
- (id)_backColor1AtPosition:(double)a3;
- (void)_animationDidStop:(BOOL)a3;
- (void)_beginAnimation;
- (void)_finishManualCurl;
- (void)_setupViews;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)beginManualCurlAtLocation:(CGPoint)a3;
- (void)cleanup;
- (void)ensureCurlFilterOnLayer:(id)a3;
- (void)fullCleanup;
- (void)killCurl;
- (void)startAutoCurl;
- (void)updateManualCurlToLocation:(CGPoint)a3;
@end

@implementation BKPageCurl

- (BKPageCurl)init
{
  v3.receiver = self;
  v3.super_class = BKPageCurl;
  result = [(BKPageCurl *)&v3 init];
  if (result)
  {
    result->_duration = 0.3;
  }

  return result;
}

- (CABasicAnimation)curlAnimationTime
{
  curlAnimationTime = self->_curlAnimationTime;
  if (!curlAnimationTime)
  {
    v4 = objc_alloc_init(CABasicAnimation);
    v5 = self->_curlAnimationTime;
    self->_curlAnimationTime = v4;

    v6 = [CAMediaTimingFunction functionWithControlPoints:&kCurlSmoothControlPoints];
    [(CABasicAnimation *)self->_curlAnimationTime setTimingFunction:v6];

    [(CABasicAnimation *)self->_curlAnimationTime setKeyPath:@"filters.curl.inputTime"];
    [(BKPageCurl *)self duration];
    [(CABasicAnimation *)self->_curlAnimationTime setDuration:?];
    [(CABasicAnimation *)self->_curlAnimationTime setFillMode:kCAFillModeBoth];
    [(CABasicAnimation *)self->_curlAnimationTime setRemovedOnCompletion:0];
    [(CABasicAnimation *)self->_curlAnimationTime setDelegate:self];
    v7 = [NSNumber numberWithFloat:0.0];
    [(CABasicAnimation *)self->_curlAnimationTime setFromValue:v7];

    LODWORD(v8) = 1.0;
    v9 = [NSNumber numberWithFloat:v8];
    [(CABasicAnimation *)self->_curlAnimationTime setToValue:v9];

    curlAnimationTime = self->_curlAnimationTime;
  }

  return curlAnimationTime;
}

- (CABasicAnimation)uncurlAnimationTime
{
  uncurlAnimationTime = self->_uncurlAnimationTime;
  if (!uncurlAnimationTime)
  {
    v4 = [(BKPageCurl *)self curlAnimationTime];
    v5 = [v4 copy];
    v6 = self->_uncurlAnimationTime;
    self->_uncurlAnimationTime = v5;

    [(CABasicAnimation *)self->_uncurlAnimationTime ae_reverseValues];
    uncurlAnimationTime = self->_uncurlAnimationTime;
  }

  return uncurlAnimationTime;
}

- (CABasicAnimation)curlAnimationRadius
{
  curlAnimationRadius = self->_curlAnimationRadius;
  if (!curlAnimationRadius)
  {
    v4 = objc_alloc_init(CABasicAnimation);
    v5 = self->_curlAnimationRadius;
    self->_curlAnimationRadius = v4;

    v6 = [CAMediaTimingFunction functionWithControlPoints:&kCurlSmoothControlPoints];
    [(CABasicAnimation *)self->_curlAnimationRadius setTimingFunction:v6];

    [(CABasicAnimation *)self->_curlAnimationRadius setKeyPath:@"filters.curl.inputRadius"];
    [(BKPageCurl *)self duration];
    [(CABasicAnimation *)self->_curlAnimationRadius setDuration:?];
    [(CABasicAnimation *)self->_curlAnimationRadius setFillMode:kCAFillModeBoth];
    [(CABasicAnimation *)self->_curlAnimationRadius setRemovedOnCompletion:0];
    v7 = [(BKPageCurl *)self container];
    v8 = [v7 im_isCompactWidth];
    LODWORD(v9) = 1125515264;
    if (v8)
    {
      *&v9 = 40.0;
    }

    v10 = [NSNumber numberWithFloat:v9];
    [(CABasicAnimation *)self->_curlAnimationRadius setFromValue:v10];

    v11 = [(BKPageCurl *)self container];
    v12 = [v11 im_isCompactWidth];
    LODWORD(v13) = 1120403456;
    if (v12)
    {
      *&v13 = 300.0;
    }

    v14 = [NSNumber numberWithFloat:v13];
    [(CABasicAnimation *)self->_curlAnimationRadius setToValue:v14];

    curlAnimationRadius = self->_curlAnimationRadius;
  }

  return curlAnimationRadius;
}

- (CABasicAnimation)uncurlAnimationRadius
{
  uncurlAnimationRadius = self->_uncurlAnimationRadius;
  if (!uncurlAnimationRadius)
  {
    v4 = [(BKPageCurl *)self curlAnimationRadius];
    v5 = [v4 copy];
    v6 = self->_uncurlAnimationRadius;
    self->_uncurlAnimationRadius = v5;

    [(CABasicAnimation *)self->_uncurlAnimationRadius ae_reverseValues];
    uncurlAnimationRadius = self->_uncurlAnimationRadius;
  }

  return uncurlAnimationRadius;
}

- (CABasicAnimation)curlAnimationAngle
{
  if (!self->_curlAnimationAngle)
  {
    v3 = objc_alloc_init(CABasicAnimation);
    curlAnimationAngle = self->_curlAnimationAngle;
    self->_curlAnimationAngle = v3;

    v5 = [CAMediaTimingFunction functionWithControlPoints:&kCurlEaseOutControlPoints];
    [(CABasicAnimation *)self->_curlAnimationAngle setTimingFunction:v5];

    [(CABasicAnimation *)self->_curlAnimationAngle setKeyPath:@"filters.curl.inputAngle"];
    [(BKPageCurl *)self duration];
    [(CABasicAnimation *)self->_curlAnimationAngle setDuration:?];
    [(CABasicAnimation *)self->_curlAnimationAngle setFillMode:kCAFillModeBoth];
    [(CABasicAnimation *)self->_curlAnimationAngle setRemovedOnCompletion:0];
    v6 = [(BKPageCurl *)self spineLocation];
    if (v6 >= 3)
    {
      if (v6 != 3)
      {
        goto LABEL_7;
      }

      LODWORD(v7) = -1095583550;
      v10 = [NSNumber numberWithFloat:v7];
      [(CABasicAnimation *)self->_curlAnimationAngle setFromValue:v10];

      v9 = 0.0 - self->_stabilization;
    }

    else
    {
      LODWORD(v7) = 1079994099;
      v8 = [NSNumber numberWithFloat:v7];
      [(CABasicAnimation *)self->_curlAnimationAngle setFromValue:v8];

      v9 = self->_stabilization + 3.14159265;
    }

    *&v9 = v9;
    v11 = [NSNumber numberWithFloat:v9];
    [(CABasicAnimation *)self->_curlAnimationAngle setToValue:v11];
  }

LABEL_7:
  v12 = self->_curlAnimationAngle;

  return v12;
}

- (CABasicAnimation)uncurlAnimationAngle
{
  uncurlAnimationAngle = self->_uncurlAnimationAngle;
  if (!uncurlAnimationAngle)
  {
    v4 = [(BKPageCurl *)self curlAnimationAngle];
    v5 = [v4 copy];
    v6 = self->_uncurlAnimationAngle;
    self->_uncurlAnimationAngle = v5;

    v7 = [CAMediaTimingFunction functionWithControlPoints:&kCurlEaseInControlPoints];
    [(CABasicAnimation *)self->_uncurlAnimationAngle setTimingFunction:v7];

    [(CABasicAnimation *)self->_uncurlAnimationAngle ae_reverseValues];
    uncurlAnimationAngle = self->_uncurlAnimationAngle;
  }

  return uncurlAnimationAngle;
}

- (CABasicAnimation)curlAnimationShadowColor
{
  if (!self->_curlAnimationShadowColor)
  {
    v3 = objc_alloc_init(CABasicAnimation);
    curlAnimationShadowColor = self->_curlAnimationShadowColor;
    self->_curlAnimationShadowColor = v3;

    v12[0] = xmmword_193618;
    v12[1] = unk_193628;
    v5 = [CAMediaTimingFunction functionWithControlPoints:v12];
    [(CABasicAnimation *)self->_curlAnimationShadowColor setTimingFunction:v5];

    [(CABasicAnimation *)self->_curlAnimationShadowColor setKeyPath:@"filters.curl.inputShadowColor"];
    [(BKPageCurl *)self duration];
    [(CABasicAnimation *)self->_curlAnimationShadowColor setDuration:?];
    [(CABasicAnimation *)self->_curlAnimationShadowColor setFillMode:kCAFillModeBoth];
    [(CABasicAnimation *)self->_curlAnimationShadowColor setRemovedOnCompletion:0];
    v6 = [UIColor colorWithWhite:0.0 alpha:0.0];
    -[CABasicAnimation setToValue:](self->_curlAnimationShadowColor, "setToValue:", [v6 CGColor]);

    if ([(BKPageCurl *)self nightMode])
    {
      v7 = 0.7;
    }

    else
    {
      v7 = 0.25;
    }

    if (![(BKPageCurl *)self nightMode]|| (v8 = 0.5, [(BKPageCurl *)self type]) && [(BKPageCurl *)self type]!= 1)
    {
      v8 = 0.0;
    }

    v9 = [UIColor colorWithWhite:v8 alpha:v7];
    -[CABasicAnimation setFromValue:](self->_curlAnimationShadowColor, "setFromValue:", [v9 CGColor]);
  }

  v10 = self->_curlAnimationShadowColor;

  return v10;
}

- (CABasicAnimation)uncurlAnimationShadowColor
{
  uncurlAnimationShadowColor = self->_uncurlAnimationShadowColor;
  if (!uncurlAnimationShadowColor)
  {
    v4 = [(BKPageCurl *)self curlAnimationShadowColor];
    v5 = [v4 copy];
    v6 = self->_uncurlAnimationShadowColor;
    self->_uncurlAnimationShadowColor = v5;

    v9[0] = xmmword_1935F8;
    v9[1] = unk_193608;
    v7 = [CAMediaTimingFunction functionWithControlPoints:v9];
    [(CABasicAnimation *)self->_uncurlAnimationShadowColor setTimingFunction:v7];

    [(CABasicAnimation *)self->_uncurlAnimationShadowColor ae_reverseValues];
    uncurlAnimationShadowColor = self->_uncurlAnimationShadowColor;
  }

  return uncurlAnimationShadowColor;
}

- (CABasicAnimation)curlAnimationBackColor0
{
  curlAnimationBackColor0 = self->_curlAnimationBackColor0;
  if (!curlAnimationBackColor0)
  {
    v4 = objc_alloc_init(CABasicAnimation);
    v5 = self->_curlAnimationBackColor0;
    self->_curlAnimationBackColor0 = v4;

    v10[0] = xmmword_193618;
    v10[1] = unk_193628;
    v6 = [CAMediaTimingFunction functionWithControlPoints:v10];
    [(CABasicAnimation *)self->_curlAnimationBackColor0 setTimingFunction:v6];

    [(CABasicAnimation *)self->_curlAnimationBackColor0 setKeyPath:@"filters.curl.inputBackColor0"];
    [(BKPageCurl *)self duration];
    [(CABasicAnimation *)self->_curlAnimationBackColor0 setDuration:?];
    [(CABasicAnimation *)self->_curlAnimationBackColor0 setFillMode:kCAFillModeBoth];
    [(CABasicAnimation *)self->_curlAnimationBackColor0 setRemovedOnCompletion:0];
    v7 = [(BKPageCurl *)self _backColor0AtPosition:0.0];
    -[CABasicAnimation setFromValue:](self->_curlAnimationBackColor0, "setFromValue:", [v7 CGColor]);

    v8 = [(BKPageCurl *)self _backColor0AtPosition:1.0];
    -[CABasicAnimation setToValue:](self->_curlAnimationBackColor0, "setToValue:", [v8 CGColor]);

    curlAnimationBackColor0 = self->_curlAnimationBackColor0;
  }

  return curlAnimationBackColor0;
}

- (CABasicAnimation)curlAnimationBackColor1
{
  curlAnimationBackColor1 = self->_curlAnimationBackColor1;
  if (!curlAnimationBackColor1)
  {
    v4 = objc_alloc_init(CABasicAnimation);
    v5 = self->_curlAnimationBackColor1;
    self->_curlAnimationBackColor1 = v4;

    v10[0] = xmmword_193618;
    v10[1] = unk_193628;
    v6 = [CAMediaTimingFunction functionWithControlPoints:v10];
    [(CABasicAnimation *)self->_curlAnimationBackColor1 setTimingFunction:v6];

    [(CABasicAnimation *)self->_curlAnimationBackColor1 setKeyPath:@"filters.curl.inputBackColor1"];
    [(BKPageCurl *)self duration];
    [(CABasicAnimation *)self->_curlAnimationBackColor1 setDuration:?];
    [(CABasicAnimation *)self->_curlAnimationBackColor1 setFillMode:kCAFillModeBoth];
    [(CABasicAnimation *)self->_curlAnimationBackColor1 setRemovedOnCompletion:0];
    v7 = [(BKPageCurl *)self _backColor1AtPosition:0.0];
    -[CABasicAnimation setFromValue:](self->_curlAnimationBackColor1, "setFromValue:", [v7 CGColor]);

    v8 = [(BKPageCurl *)self _backColor1AtPosition:1.0];
    -[CABasicAnimation setToValue:](self->_curlAnimationBackColor1, "setToValue:", [v8 CGColor]);

    curlAnimationBackColor1 = self->_curlAnimationBackColor1;
  }

  return curlAnimationBackColor1;
}

- (void)ensureCurlFilterOnLayer:(id)a3
{
  v4 = a3;
  if (!self->_curlFilter)
  {
    v5 = [CAFilter alloc];
    v6 = [v5 initWithType:kCAFilterPageCurl];
    curlFilter = self->_curlFilter;
    self->_curlFilter = v6;

    [(CAFilter *)self->_curlFilter setName:@"curl"];
    v8 = self->_curlFilter;
    v9 = +[UIColor whiteColor];
    -[CAFilter setValue:forKeyPath:](v8, "setValue:forKeyPath:", [v9 CGColor], @"inputFrontColor");

    if ([(BKPageCurl *)self nightMode])
    {
      v10 = 0.7;
    }

    else
    {
      v10 = 0.25;
    }

    v11 = [(BKPageCurl *)self nightMode];
    v12 = 0.15;
    if (v11)
    {
      v12 = 0.0;
    }

    v13 = [UIColor colorWithWhite:v12 alpha:v10];
    v14 = [(BKPageCurl *)self _backColor0AtPosition:0.0];
    v15 = [(BKPageCurl *)self _backColor1AtPosition:0.0];
    -[CAFilter setValue:forKeyPath:](self->_curlFilter, "setValue:forKeyPath:", [v14 CGColor], @"inputBackColor0");
    -[CAFilter setValue:forKeyPath:](self->_curlFilter, "setValue:forKeyPath:", [v15 CGColor], @"inputBackColor1");
    -[CAFilter setValue:forKeyPath:](self->_curlFilter, "setValue:forKeyPath:", [v13 CGColor], @"inputShadowColor");
  }

  v16 = [v4 filters];
  v17 = [v16 count];

  if (!v17)
  {
    v18 = [(CAFilter *)self->_curlFilter copy];
    v20 = v18;
    v19 = [NSArray arrayWithObjects:&v20 count:1];
    [v4 setFilters:v19];
  }
}

- (void)_setupViews
{
  v3 = [(BKPageCurl *)self spineLocation];
  v4 = [(BKPageCurl *)self backPage];
  if (![(BKPageCurl *)self type])
  {
    v5 = [(BKPageCurl *)self existingPages];
    v6 = [v5 lastObject];
    goto LABEL_5;
  }

  if (v3 == 2)
  {
    v5 = [(BKPageCurl *)self existingPages];
    v6 = [v5 objectAtIndex:0];
LABEL_5:
    v7 = v6;

    v8 = v4;
    v4 = v7;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  v18 = v3;
  v9 = [[NSMutableArray alloc] initWithCapacity:2];
  [v9 addObject:v4];
  if (v8)
  {
    [v9 addObject:v8];
  }

  [(BKPageCurl *)self setCurlPages:v9];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [(BKPageCurl *)self existingPages];
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * v14);
        v16 = [(BKPageCurl *)self container];
        [v16 insertSubview:v15 atIndex:0];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  if ([(BKPageCurl *)self type]== 1 && v18 != 2)
  {
    v17 = [(BKPageCurl *)self container];
    [v17 addSubview:v4];
  }
}

- (id)_backColor0AtPosition:(double)a3
{
  v5 = [(BKPageCurl *)self spineLocation];
  if ([(BKPageCurl *)self nightMode])
  {
    if (v5 == 2)
    {
      v6 = 0.125;
      v7 = 0.65;
      if (a3 > 0.75)
      {
        v6 = (1.0 - a3) * 4.0 * 0.125;
      }
    }

    else
    {
      v8 = [(BKPageCurl *)self type];
      if (v8 && [(BKPageCurl *)self type]!= 1)
      {
        v6 = 0.6;
        v7 = 0.15;
      }

      else
      {
        v6 = 0.425;
        v7 = 0.4;
      }
    }
  }

  else
  {
    if (v5 != 2)
    {
      v9 = [(BKPageCurl *)self pageColor];
      v10 = [v9 colorWithAlphaComponent:0.8];

      goto LABEL_14;
    }

    v7 = 1.0;
    v6 = 0.0;
  }

  v10 = [UIColor colorWithWhite:v7 alpha:v6];
LABEL_14:

  return v10;
}

- (id)_backColor1AtPosition:(double)a3
{
  if ([(BKPageCurl *)self nightMode])
  {
    v4 = 0.7;
  }

  else
  {
    v4 = 0.55;
  }

  v5 = [(BKPageCurl *)self backColor];
  v6 = [v5 colorWithAlphaComponent:v4];

  return v6;
}

- (void)startAutoCurl
{
  [(BKPageCurl *)self _setupViews];
  [(BKPageCurl *)self delay];
  if (v3 == 0.0)
  {

    [(BKPageCurl *)self _beginAnimation];
  }

  else
  {
    [(BKPageCurl *)self delay];

    [(BKPageCurl *)self performSelector:"_beginAnimation" withObject:0 afterDelay:?];
  }
}

- (void)_beginAnimation
{
  v3 = [(BKPageCurl *)self spineLocation];
  v4 = [(BKPageCurl *)self curlPages];
  if ([v4 count])
  {
    v5 = [(BKPageCurl *)self curlPages];
    v6 = [v5 objectAtIndex:0];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(BKPageCurl *)self curlPages];
  if ([v7 count] < 2)
  {
    v9 = 0;
  }

  else
  {
    v8 = [(BKPageCurl *)self curlPages];
    v9 = [v8 objectAtIndex:1];
  }

  v10 = [[NSMutableArray alloc] initWithCapacity:2];
  if (v6)
  {
    v11 = [v6 layer];
    [v10 addObject:v11];
  }

  if (v9 && v9 != v6)
  {
    v12 = [v9 layer];
    [v10 addObject:v12];
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v88 objects:v94 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v89;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v89 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(BKPageCurl *)self ensureCurlFilterOnLayer:*(*(&v88 + 1) + 8 * i)];
      }

      v15 = [v13 countByEnumeratingWithState:&v88 objects:v94 count:16];
    }

    while (v15);
  }

  v68 = v6;

  v73 = self;
  if ([(BKPageCurl *)self type]!= 1 || v3 == 2)
  {
    v18 = [(BKPageCurl *)self curlAnimationTime];
    v19 = [(BKPageCurl *)self curlAnimationRadius];
    v20 = [(BKPageCurl *)self curlAnimationAngle];
    v21 = [(BKPageCurl *)self curlAnimationShadowColor];
    if ([(BKPageCurl *)self nightMode])
    {
      v23 = [(BKPageCurl *)self curlAnimationBackColor0];
      v22 = [(BKPageCurl *)self curlAnimationBackColor1];
    }

    else
    {
      v23 = 0;
      v22 = 0;
    }

    if (v3 == 2)
    {
      v74 = [(BKPageCurl *)v73 type];
      LODWORD(v24) = 1125515264;
      v25 = [NSNumber numberWithFloat:v24];
      [v19 setFromValue:v25];

      LODWORD(v26) = 1.0;
      v27 = [NSNumber numberWithFloat:v26];
      [v19 setToValue:v27];

      if (v74)
      {
        LODWORD(v28) = -1095583550;
        v29 = [NSNumber numberWithFloat:v28];
        [v20 setFromValue:v29];

        v30 = 0.0 - v73->_stabilization;
        *&v30 = v30;
        v31 = [NSNumber numberWithFloat:v30];
        [v20 setToValue:v31];
      }

      v32 = [(BKPageCurl *)v73 container];
      [v32 insertSubview:v68 atIndex:1];

      v33 = [(BKPageCurl *)v73 container];
      [v33 addSubview:v67];

      v34 = [v67 layer];
      CATransform3DMakeScale(&v87, -1.0, 1.0, 1.0);
      v86 = v87;
      [v34 setSublayerTransform:&v86];
      v35 = [v68 layer];
      v75 = [v35 valueForKeyPath:@"filters.curl"];

      v36 = [NSNumber numberWithBool:0];
      [v75 setValue:v36 forKey:@"inputBackEnabled"];

      v37 = [v34 valueForKeyPath:@"filters.curl"];
      v38 = [NSNumber numberWithBool:0];
      [v37 setValue:v38 forKey:@"inputFrontEnabled"];
    }
  }

  else
  {
    v18 = [(BKPageCurl *)self uncurlAnimationTime];
    v19 = [(BKPageCurl *)self uncurlAnimationRadius];
    v20 = [(BKPageCurl *)self uncurlAnimationAngle];
    v21 = [(BKPageCurl *)self uncurlAnimationShadowColor];
    v22 = 0;
    v23 = 0;
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = v13;
  v76 = [obj countByEnumeratingWithState:&v82 objects:v93 count:16];
  if (v76)
  {
    v71 = *v83;
    do
    {
      for (j = 0; j != v76; j = j + 1)
      {
        if (*v83 != v71)
        {
          objc_enumerationMutation(obj);
        }

        v40 = *(*(&v82 + 1) + 8 * j);
        v41 = [v18 fromValue];
        v42 = [v18 keyPath];
        [v40 setValue:v41 forKeyPath:v42];

        v43 = [v19 fromValue];
        v44 = [v19 keyPath];
        [v40 setValue:v43 forKeyPath:v44];

        v45 = [v20 fromValue];
        v46 = [v20 keyPath];
        [v40 setValue:v45 forKeyPath:v46];

        v47 = [v21 fromValue];
        v48 = [v21 keyPath];
        [v40 setValue:v47 forKeyPath:v48];

        if (v23)
        {
          v49 = [v23 fromValue];
          v50 = [v23 keyPath];
          [v40 setValue:v49 forKeyPath:v50];
        }

        if (v22)
        {
          v51 = [v22 fromValue];
          v52 = [v22 keyPath];
          [v40 setValue:v51 forKeyPath:v52];
        }
      }

      v76 = [obj countByEnumeratingWithState:&v82 objects:v93 count:16];
    }

    while (v76);
  }

  +[CATransaction begin];
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  obja = obj;
  v77 = [obja countByEnumeratingWithState:&v78 objects:v92 count:16];
  if (v77)
  {
    v72 = *v79;
    do
    {
      for (k = 0; k != v77; k = k + 1)
      {
        if (*v79 != v72)
        {
          objc_enumerationMutation(obja);
        }

        v54 = *(*(&v78 + 1) + 8 * k);
        ++v73->_didEndCount;
        [v54 addAnimation:v18 forKey:@"curlTime"];
        [v54 addAnimation:v19 forKey:@"curlRadius"];
        [v54 addAnimation:v20 forKey:@"curlAngle"];
        [v54 addAnimation:v21 forKey:@"curlShadowColor"];
        if (v23)
        {
          [v54 addAnimation:v23 forKey:@"curlBackColor0"];
        }

        if (v22)
        {
          [v54 addAnimation:v22 forKey:@"curlBackColor1"];
        }

        v55 = [v18 toValue];
        v56 = [v18 keyPath];
        [v54 setValue:v55 forKeyPath:v56];

        v57 = [v19 toValue];
        v58 = [v19 keyPath];
        [v54 setValue:v57 forKeyPath:v58];

        v59 = [v20 toValue];
        v60 = [v20 keyPath];
        [v54 setValue:v59 forKeyPath:v60];

        v61 = [v21 toValue];
        v62 = [v21 keyPath];
        [v54 setValue:v61 forKeyPath:v62];

        if (v23)
        {
          v63 = [v23 toValue];
          v64 = [v23 keyPath];
          [v54 setValue:v63 forKeyPath:v64];
        }

        if (v22)
        {
          v65 = [v22 toValue];
          v66 = [v22 keyPath];
          [v54 setValue:v65 forKeyPath:v66];
        }
      }

      v77 = [obja countByEnumeratingWithState:&v78 objects:v92 count:16];
    }

    while (v77);
  }

  +[CATransaction commit];
  v73->_state = 1;
}

- (void)beginManualCurlAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(BKPageCurl *)self spineLocation];
  v7 = [(BKPageCurl *)self spineLocation];
  v8 = [(BKPageCurl *)self curlPages];
  v9 = [v8 lastObject];

  v10 = [(BKPageCurl *)self backPage];
  v89 = v6;
  if (v6 == 2)
  {
    v11 = [[NSMutableArray alloc] initWithCapacity:2];
    [v11 addObject:v9];
    if (v10)
    {
      [v11 addObject:v10];
    }

    [(BKPageCurl *)self setCurlPages:v11];
  }

  v88 = v10;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v12 = [(BKPageCurl *)self existingPages];
  v13 = [v12 countByEnumeratingWithState:&v106 objects:v113 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v107;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v107 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v106 + 1) + 8 * i);
        v18 = [(BKPageCurl *)self container];
        [v18 insertSubview:v17 atIndex:0];
      }

      v14 = [v12 countByEnumeratingWithState:&v106 objects:v113 count:16];
    }

    while (v14);
  }

  if (v89 == &dword_0 + 2)
  {
    v19 = [(BKPageCurl *)self container];
    [v19 insertSubview:v9 atIndex:1];

    v20 = [(BKPageCurl *)self container];
    v21 = v88;
    [v20 addSubview:v88];
LABEL_21:

    goto LABEL_22;
  }

  v21 = v88;
  if ([(BKPageCurl *)self type]== 3)
  {
    v22 = [(BKPageCurl *)self existingPages];
    v20 = [v22 lastObject];

    v23 = [(BKPageCurl *)self container];
    [v23 insertSubview:v9 aboveSubview:v20];

    goto LABEL_21;
  }

  v24 = [(BKPageCurl *)self type];
  if (v24 == 2 && v88 && v88 != v9)
  {
    v20 = [(BKPageCurl *)self container];
    [v20 insertSubview:v88 belowSubview:v9];
    goto LABEL_21;
  }

LABEL_22:
  v25 = [[NSMutableArray alloc] initWithCapacity:2];
  v26 = [v9 layer];
  [v25 addObject:v26];
  if (v21 && v21 != v9 && v89 == &dword_0 + 2)
  {
    v27 = [v21 layer];
    [v25 addObject:v27];
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v28 = v25;
  v29 = [v28 countByEnumeratingWithState:&v102 objects:v112 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v103;
    do
    {
      for (j = 0; j != v30; j = j + 1)
      {
        if (*v103 != v31)
        {
          objc_enumerationMutation(v28);
        }

        [(BKPageCurl *)self ensureCurlFilterOnLayer:*(*(&v102 + 1) + 8 * j)];
      }

      v30 = [v28 countByEnumeratingWithState:&v102 objects:v112 count:16];
    }

    while (v30);
  }

  v33 = 1.0;
  if (v89 == &dword_0 + 2)
  {
    v34 = [v21 layer];
    CATransform3DMakeScale(&v101, -1.0, 1.0, 1.0);
    v100 = v101;
    [v34 setSublayerTransform:&v100];
    v35 = [v26 valueForKeyPath:@"filters.curl"];
    v36 = [NSNumber numberWithBool:0];
    [v35 setValue:v36 forKey:@"inputBackEnabled"];

    v37 = [v34 valueForKeyPath:@"filters.curl"];
    v38 = [NSNumber numberWithBool:0];
    [v37 setValue:v38 forKey:@"inputFrontEnabled"];

    v33 = 2.0;
  }

  [v9 bounds];
  v39 = v114.origin.x;
  v40 = v114.origin.y;
  width = v114.size.width;
  height = v114.size.height;
  v43 = CGRectGetWidth(v114);
  self->_lastPoint.x = x;
  self->_lastPoint.y = y;
  if ([(BKPageCurl *)self type]!= 3)
  {
    self->_manualStartPoint.x = x;
    self->_manualStartPoint.y = y;
    v44 = width;
    if (v7 != 3)
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  if (v7 == 3)
  {
    self->_manualStartPoint.x = 0.0;
    self->_manualStartPoint.y = y;
LABEL_39:
    v44 = -width;
    goto LABEL_41;
  }

  self->_manualStartPoint.x = v33 * v43 - x;
  self->_manualStartPoint.y = y;
  v44 = width;
LABEL_41:
  v86 = v9;
  v87 = v26;
  self->_diagonalAngle = atan2(height, v44);
  self->_diagonalLengthPixels = hypot(width, height);
  v115.origin.x = v39;
  v115.origin.y = v40;
  v115.size.width = width;
  v115.size.height = height;
  if (y < CGRectGetHeight(v115) * 0.5)
  {
    self->_diagonalAngle = -self->_diagonalAngle;
  }

  v45 = 15.0;
  if (v89 != &dword_0 + 2)
  {
    v45 = 20.0;
  }

  self->_initialCurlRadius = v45;
  self->_k = (150.0 - v45) / 20.0;
  v46 = [(BKPageCurl *)self curlAnimationTime];
  v47 = [(BKPageCurl *)self curlAnimationRadius];
  v48 = [(BKPageCurl *)self curlAnimationAngle];
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  obj = v28;
  v49 = [obj countByEnumeratingWithState:&v96 objects:v111 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v97;
    do
    {
      for (k = 0; k != v50; k = k + 1)
      {
        if (*v97 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v53 = *(*(&v96 + 1) + 8 * k);
        v54 = [v46 fromValue];
        v55 = [v46 keyPath];
        [v53 setValue:v54 forKeyPath:v55];

        v56 = [v47 fromValue];
        v57 = [v47 keyPath];
        [v53 setValue:v56 forKeyPath:v57];

        v58 = [v48 fromValue];
        v59 = [v48 keyPath];
        [v53 setValue:v58 forKeyPath:v59];
      }

      v50 = [obj countByEnumeratingWithState:&v96 objects:v111 count:16];
    }

    while (v50);
  }

  if ([(BKPageCurl *)self type]!= 3 || v89 == &dword_0 + 2)
  {
    v61 = v46;
    v63 = v47;
    v65 = v48;
  }

  else
  {
    self->_inUncurl = 1;
    [(BKPageCurl *)self updateManualCurlToLocation:x, y];
    self->_ignoreManualUpdates = 1;
    v60 = [(BKPageCurl *)self uncurlAnimationTime];
    v61 = [v60 copy];

    v62 = [(BKPageCurl *)self uncurlAnimationRadius];
    v63 = [v62 copy];

    v64 = [(BKPageCurl *)self uncurlAnimationAngle];
    v65 = [v64 copy];

    [(BKPageCurl *)self duration];
    [v61 setDuration:v66 * 0.5];
    [(BKPageCurl *)self duration];
    [v63 setDuration:v67 * 0.5];
    [(BKPageCurl *)self duration];
    [v65 setDuration:v68 * 0.5];
    v69 = [v61 keyPath];
    v70 = [v87 valueForKeyPath:v69];
    [v61 setToValue:v70];

    v71 = [v63 keyPath];
    v72 = [v87 valueForKeyPath:v71];
    [v63 setToValue:v72];

    v73 = [v65 keyPath];
    v74 = [v87 valueForKeyPath:v73];
    [v65 setToValue:v74];

    +[CATransaction begin];
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v90 = obj;
    v75 = [v90 countByEnumeratingWithState:&v92 objects:v110 count:16];
    if (v75)
    {
      v76 = v75;
      v77 = *v93;
      do
      {
        for (m = 0; m != v76; m = m + 1)
        {
          if (*v93 != v77)
          {
            objc_enumerationMutation(v90);
          }

          v79 = *(*(&v92 + 1) + 8 * m);
          ++self->_didEndCount;
          [v79 addAnimation:v61 forKey:@"curlTime"];
          [v79 addAnimation:v63 forKey:@"curlRadius"];
          [v79 addAnimation:v65 forKey:@"curlAngle"];
          v80 = [v61 fromValue];
          v81 = [v61 keyPath];
          [v79 setValue:v80 forKeyPath:v81];

          v82 = [v63 fromValue];
          v83 = [v63 keyPath];
          [v79 setValue:v82 forKeyPath:v83];

          v84 = [v65 fromValue];
          v85 = [v65 keyPath];
          [v79 setValue:v84 forKeyPath:v85];
        }

        v76 = [v90 countByEnumeratingWithState:&v92 objects:v110 count:16];
      }

      while (v76);
    }

    +[CATransaction commit];
    self->_state = 1;
  }
}

- (void)updateManualCurlToLocation:(CGPoint)a3
{
  [(UIView *)self->_container bounds];
  CGPointClipToRect();
  self->_lastPoint.x = v4;
  self->_lastPoint.y = v5;
  if (!self->_ignoreManualUpdates)
  {
    v6 = v4;
    v7 = v5;
    v8 = [(BKPageCurl *)self spineLocation];
    if (v8 == 2)
    {
      v9 = [(BKPageCurl *)self type]== 3;
      v10 = 2.0;
    }

    else
    {
      v9 = 0;
      v10 = 1.0;
    }

    v11 = [(BKPageCurl *)self spineLocation];
    v12 = [(BKPageCurl *)self curlPages];
    v13 = [v12 objectAtIndex:0];

    [v13 bounds];
    v15 = v10 * v14;
    [v13 bounds];
    v17 = v16;
    if (v9)
    {
      v6 = v15 - v6;
    }

    y = self->_manualStartPoint.y;
    __x = self->_manualStartPoint.x - v6;
    v19 = atan2(y - v7, __x) + 3.14159265;
    v20 = v11 == 3;
    v21 = v11 == 3;
    v22 = v15 - v6;
    if (v20)
    {
      v22 = v6;
    }

    v23 = v22 / v15;
    if (v20)
    {
      v24 = 0.0;
    }

    else
    {
      v24 = 180.0;
    }

    if (v21 && v19 > 3.14159265)
    {
      v25 = v19 + -6.28318531;
    }

    else
    {
      v25 = v19;
    }

    v26 = cos(y / v17 * 6.28318531) * 27.5 + 27.5 + 5.0;
    v27 = cos(v23 * 3.14159265);
    v28 = v27 * 0.5 + 0.5;
    v29 = v27 * 0.25 + 0.75;
    if (v8 == 2)
    {
      v29 = v28;
    }

    v30 = v26 * v29;
    v31 = 1.0 - v23;
    if (v8 != 2)
    {
      v31 = 1.0;
    }

    v32 = v24 + v30;
    v33 = v24 - v30;
    v34 = v24 + v31 * 5.0;
    if (v21 != y <= v17 * 0.5)
    {
      v35 = v33;
    }

    else
    {
      v34 = v32;
      v35 = v24 + v31 * -5.0;
    }

    v36 = v35 * 0.0174532925;
    if (v25 >= v35 * 0.0174532925)
    {
      v37 = v34 * 0.0174532925;
      v36 = v25;
      if (v25 > v37)
      {
        v36 = v37;
      }
    }

    v38 = [(BKPageCurl *)self configuration];
    [v38 heightAllowanceScalar];
    v40 = v39;

    v41 = 0.333333333;
    if (v8 != 2)
    {
      v41 = 0.5;
    }

    v42 = v41 * v40;
    v43 = self->_manualStartPoint.y;
    v44 = v43 - v17 * v42;
    v45 = v43 + v17 * v42;
    if (v45 >= v7)
    {
      v45 = v7;
    }

    if (v44 >= v45)
    {
      v45 = v44;
    }

    v46 = hypot(__x, v43 - v45);
    initialCurlRadius = self->_initialCurlRadius;
    k = self->_k;
    if ((v46 + initialCurlRadius * -3.14159265) / (k * 3.14159265 + 2.0) >= 0.0)
    {
      v49 = (v46 + initialCurlRadius * -3.14159265) / (k * 3.14159265 + 2.0);
    }

    else
    {
      v49 = 0.0;
    }

    v50 = v36;
    diagonalLengthPixels = self->_diagonalLengthPixels;
    __xa = v50;
    v52 = diagonalLengthPixels * cos(self->_diagonalAngle - (v50 + -3.14159265));
    if (v49 <= 20.0)
    {
      v56 = initialCurlRadius + k * v49;
      v57 = (v49 + v56 * 3.14159265) / (v56 + v52);
      self->_secondHalf = 0;
    }

    else
    {
      v53 = -149.0 / (v52 + 1.0 + -20.0);
      v54 = v53 * -20.0 + 150.0;
      if (!self->_secondHalf)
      {
        self->_secondHalf = 1;
      }

      v55 = (v46 + v54 * -3.14159265) / (v53 * 3.14159265 + 2.0);
      v56 = v54 + v53 * v55;
      v57 = (v55 + v56 * 3.14159265) / (v52 + v56);
    }

    v58 = __xa;
    if (v56 >= 1.0)
    {
      v59 = v56;
    }

    else
    {
      v59 = 1.0;
    }

    v84 = v13;
    if (v9)
    {
      if (__xa >= 3.14159265)
      {
        v58 = 6.28318531 - __xa + 3.14159265;
      }

      else
      {
        v58 = 3.14159265 - __xa;
      }
    }

    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    __xb = [(BKPageCurl *)self curlPages];
    v60 = [__xb countByEnumeratingWithState:&v88 objects:v92 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = fmin(v57, 1.0);
      v63 = *v89;
      v64 = v58;
      v65 = v62;
      do
      {
        for (i = 0; i != v61; i = i + 1)
        {
          if (*v89 != v63)
          {
            objc_enumerationMutation(__xb);
          }

          v68 = *(*(&v88 + 1) + 8 * i);
          v69 = [v68 layer];
          *&v70 = v64;
          v71 = [NSNumber numberWithFloat:v70];
          v72 = [(BKPageCurl *)self curlAnimationAngle];
          v73 = [v72 keyPath];
          [v69 setValue:v71 forKeyPath:v73];

          *&v74 = v65;
          v75 = [NSNumber numberWithFloat:v74];
          v76 = [(BKPageCurl *)self curlAnimationTime];
          v77 = [v76 keyPath];
          [v69 setValue:v75 forKeyPath:v77];

          v66 = v59;
          *&v78 = v66;
          v79 = [NSNumber numberWithFloat:v78];
          v80 = [(BKPageCurl *)self curlAnimationRadius];
          v81 = [v80 keyPath];
          [v69 setValue:v79 forKeyPath:v81];

          [v68 updateCurlPercent:v23];
        }

        v61 = [__xb countByEnumeratingWithState:&v88 objects:v92 count:16];
      }

      while (v61);
    }

    if (!self->_setupEndNotificationSent)
    {
      self->_setupEndNotificationSent = 1;
      v82 = +[AETestDriver shared];
      [v82 postEvent:kBETestDriverPageTurnSetupEnd sender:self];
    }

    if (!self->_curlStartNotificationSent && !self->_inUncurl)
    {
      self->_curlStartNotificationSent = 1;
      v83 = +[AETestDriver shared];
      [v83 postEvent:kBETestDriverPageTurnAnimationStart sender:self];
    }
  }
}

- (void)_finishManualCurl
{
  v2 = self;
  cancelledManualCurl = self->_cancelledManualCurl;
  v4 = [(BKPageCurl *)self spineLocation];
  v68 = v4;
  if ([(BKPageCurl *)v2 type]== 3)
  {
    v5 = !cancelledManualCurl;
    if (v4 != 2)
    {
      v5 = cancelledManualCurl;
    }

    if (!v5)
    {
      goto LABEL_5;
    }
  }

  else if (cancelledManualCurl)
  {
LABEL_5:
    v6 = [(BKPageCurl *)v2 uncurlAnimationTime];
    v71 = [v6 copy];

    v7 = [(BKPageCurl *)v2 uncurlAnimationRadius];
    v73 = [v7 copy];

    v8 = [(BKPageCurl *)v2 uncurlAnimationAngle];
    v72 = [v8 copy];

    v9 = [(BKPageCurl *)v2 uncurlAnimationShadowColor];
    v10 = [v9 copy];
    v70 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_8;
  }

  v13 = [(BKPageCurl *)v2 curlAnimationTime];
  v71 = [v13 copy];

  v14 = [(BKPageCurl *)v2 curlAnimationRadius];
  v73 = [v14 copy];

  v15 = [(BKPageCurl *)v2 curlAnimationAngle];
  v72 = [v15 copy];

  v16 = [(BKPageCurl *)v2 curlAnimationShadowColor];
  v10 = [v16 copy];

  v17 = [(BKPageCurl *)v2 curlAnimationBackColor0];
  v12 = [v17 copy];

  v9 = [(BKPageCurl *)v2 curlAnimationBackColor1];
  v11 = [v9 copy];
  v70 = 1;
LABEL_8:

  objc_opt_class();
  v18 = [(BKPageCurl *)v2 curlPages];
  v19 = [v18 objectAtIndex:0];
  v20 = BUDynamicCast();
  v21 = [v20 layer];

  +[CATransaction flush];
  v22 = [v21 presentationLayer];

  if (v22)
  {
    v23 = [v21 presentationLayer];
    v24 = [v71 keyPath];
    v25 = [v23 valueForKeyPath:v24];
    [v71 setFromValue:v25];

    v26 = [v21 presentationLayer];
    v27 = [v73 keyPath];
    v28 = [v26 valueForKeyPath:v27];
    [v73 setFromValue:v28];

    v29 = [v21 presentationLayer];
    v30 = [v72 keyPath];
    v31 = [v29 valueForKeyPath:v30];
    [v72 setFromValue:v31];

    if (v12)
    {
      v32 = [v21 presentationLayer];
      v33 = [v12 keyPath];
      v34 = [v32 valueForKeyPath:v33];
      [v12 setFromValue:v34];
    }

    if (v11)
    {
      v35 = [v21 presentationLayer];
      v36 = [v11 keyPath];
      v37 = [v35 valueForKeyPath:v36];
      [v11 setFromValue:v37];
    }
  }

  v66 = v21;
  [(BKPageCurl *)v2 duration];
  v39 = v38;
  [v71 setDuration:?];
  [v73 setDuration:v39];
  [v72 setDuration:v39];
  [v10 setDuration:v39];
  if (v68 == 2)
  {
    LODWORD(v40) = 1.0;
    v41 = [NSNumber numberWithFloat:v40];
    [v73 setToValue:v41];

    if ([(BKPageCurl *)v2 type]== 3)
    {
      objc_opt_class();
      v42 = [v72 fromValue];
      v43 = BUDynamicCast();
      [v43 floatValue];
      v45 = v44 <= 3.14159265;
      v46 = 6.28318531;
      if (v45)
      {
        v46 = 0.0;
      }

      *&v46 = v46;
      v47 = [NSNumber numberWithFloat:v46];
      [v72 setToValue:v47];
    }
  }

  +[CATransaction begin];
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = [(BKPageCurl *)v2 curlPages];
  v48 = [obj countByEnumeratingWithState:&v74 objects:v78 count:16];
  if (v48)
  {
    v49 = v48;
    v69 = *v75;
    do
    {
      for (i = 0; i != v49; i = i + 1)
      {
        if (*v75 != v69)
        {
          objc_enumerationMutation(obj);
        }

        v51 = *(*(&v74 + 1) + 8 * i);
        v52 = [v51 layer];
        ++v2->_didEndCount;
        [v52 addAnimation:v71 forKey:@"curlTime"];
        [v52 addAnimation:v73 forKey:@"curlRadius"];
        [v52 addAnimation:v72 forKey:@"curlAngle"];
        [v52 addAnimation:v10 forKey:@"curlShadowColor"];
        if (v12)
        {
          [v52 addAnimation:v12 forKey:@"curlBackColor0"];
        }

        v53 = v2;
        if (v11)
        {
          [v52 addAnimation:v11 forKey:@"curlBackColor1"];
        }

        v54 = [v71 toValue];
        v55 = [v71 keyPath];
        [v52 setValue:v54 forKeyPath:v55];

        v56 = [v73 toValue];
        v57 = [v73 keyPath];
        [v52 setValue:v56 forKeyPath:v57];

        v58 = [v72 toValue];
        v59 = [v72 keyPath];
        [v52 setValue:v58 forKeyPath:v59];

        v60 = [v10 toValue];
        v61 = [v10 keyPath];
        [v52 setValue:v60 forKeyPath:v61];

        if (v12)
        {
          v62 = [v12 toValue];
          v63 = [v12 keyPath];
          [v52 setValue:v62 forKey:v63];
        }

        if (v11)
        {
          v64 = [v11 toValue];
          v65 = [v11 keyPath];
          [v52 setValue:v64 forKey:v65];
        }

        if ((v70 & 1) == 0)
        {
          [v51 pageCurlWillCancelWithDuration:v39];
        }

        v2 = v53;
      }

      v49 = [obj countByEnumeratingWithState:&v74 objects:v78 count:16];
    }

    while (v49);
  }

  +[CATransaction commit];
  v2->_state = 1;
}

- (void)killCurl
{
  self->_state = 4;
  v3 = [(BKPageCurl *)self delegate];
  [v3 pageCurl:self finished:0];

  [(BKPageCurl *)self fullCleanup];
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  self->_finished = v4;
  v7 = self->_didEndCount - 1;
  self->_didEndCount = v7;
  if (self->_inUncurl)
  {
    self->_ignoreManualUpdates = 0;
    if (v4)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v8 = [(BKPageCurl *)self curlPages];
      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v15;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v15 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [*(*(&v14 + 1) + 8 * i) layer];
            [v13 removeAllAnimations];
          }

          v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v10);
      }

      [(BKPageCurl *)self updateManualCurlToLocation:self->_lastPoint.x, self->_lastPoint.y];
    }

    self->_inUncurl = 0;
    kdebug_trace();
  }

  else if (!v7 && [(BKPageCurl *)self state]!= &dword_4)
  {
    [(BKPageCurl *)self _animationDidStop:v4];
  }
}

- (void)_animationDidStop:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    if (([(BKPageCurl *)self type]== 2 || [(BKPageCurl *)self type]== 3) && self->_cancelledManualCurl)
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 4;
  }

  self->_state = v5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (!WeakRetained)
  {
    [(BKPageCurl *)self fullCleanup];
  }

  v7 = [(BKPageCurl *)self delegate];
  [v7 pageCurl:self finished:v3];
}

- (void)fullCleanup
{
  v3 = [(BKPageCurl *)self existingPages];
  [v3 makeObjectsPerformSelector:"removeFromSuperview"];

  v4 = [(BKPageCurl *)self curlPages];
  [v4 makeObjectsPerformSelector:"removeFromSuperview"];

  v5 = [(BKPageCurl *)self backPage];
  [v5 removeFromSuperview];

  [(BKPageCurl *)self cleanup];
}

- (void)cleanup
{
  [(BKPageCurl *)self setCurlPages:0];
  [(BKPageCurl *)self setExistingPages:0];
  [(BKPageCurl *)self setBackPages:0];
  [(BKPageCurl *)self setBackPage:0];
  [(BKPageCurl *)self setContainer:0];
  self->_cancelledManualCurl = 0;
  [(CABasicAnimation *)self->_curlAnimationTime setDelegate:0];
  [(CABasicAnimation *)self->_curlAnimationRadius setDelegate:0];
  [(CABasicAnimation *)self->_curlAnimationAngle setDelegate:0];
  [(CABasicAnimation *)self->_curlAnimationShadowColor setDelegate:0];
  [(CABasicAnimation *)self->_curlAnimationBackColor0 setDelegate:0];
  [(CABasicAnimation *)self->_curlAnimationBackColor1 setDelegate:0];
  [(CABasicAnimation *)self->_uncurlAnimationTime setDelegate:0];
  [(CABasicAnimation *)self->_uncurlAnimationRadius setDelegate:0];
  [(CABasicAnimation *)self->_uncurlAnimationAngle setDelegate:0];
  uncurlAnimationShadowColor = self->_uncurlAnimationShadowColor;

  [(CABasicAnimation *)uncurlAnimationShadowColor setDelegate:0];
}

- (BKPageCurlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)extraView
{
  WeakRetained = objc_loadWeakRetained(&self->_extraView);

  return WeakRetained;
}

- (CGPoint)manualStartPoint
{
  x = self->_manualStartPoint.x;
  y = self->_manualStartPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)lastPoint
{
  x = self->_lastPoint.x;
  y = self->_lastPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end