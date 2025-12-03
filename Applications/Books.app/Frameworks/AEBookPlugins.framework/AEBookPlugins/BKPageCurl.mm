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
- (id)_backColor0AtPosition:(double)position;
- (id)_backColor1AtPosition:(double)position;
- (void)_animationDidStop:(BOOL)stop;
- (void)_beginAnimation;
- (void)_finishManualCurl;
- (void)_setupViews;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)beginManualCurlAtLocation:(CGPoint)location;
- (void)cleanup;
- (void)ensureCurlFilterOnLayer:(id)layer;
- (void)fullCleanup;
- (void)killCurl;
- (void)startAutoCurl;
- (void)updateManualCurlToLocation:(CGPoint)location;
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
    curlAnimationTime = [(BKPageCurl *)self curlAnimationTime];
    v5 = [curlAnimationTime copy];
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
    container = [(BKPageCurl *)self container];
    im_isCompactWidth = [container im_isCompactWidth];
    LODWORD(v9) = 1125515264;
    if (im_isCompactWidth)
    {
      *&v9 = 40.0;
    }

    v10 = [NSNumber numberWithFloat:v9];
    [(CABasicAnimation *)self->_curlAnimationRadius setFromValue:v10];

    container2 = [(BKPageCurl *)self container];
    im_isCompactWidth2 = [container2 im_isCompactWidth];
    LODWORD(v13) = 1120403456;
    if (im_isCompactWidth2)
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
    curlAnimationRadius = [(BKPageCurl *)self curlAnimationRadius];
    v5 = [curlAnimationRadius copy];
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
    spineLocation = [(BKPageCurl *)self spineLocation];
    if (spineLocation >= 3)
    {
      if (spineLocation != 3)
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
    curlAnimationAngle = [(BKPageCurl *)self curlAnimationAngle];
    v5 = [curlAnimationAngle copy];
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
    curlAnimationShadowColor = [(BKPageCurl *)self curlAnimationShadowColor];
    v5 = [curlAnimationShadowColor copy];
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

- (void)ensureCurlFilterOnLayer:(id)layer
{
  layerCopy = layer;
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

    nightMode = [(BKPageCurl *)self nightMode];
    v12 = 0.15;
    if (nightMode)
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

  filters = [layerCopy filters];
  v17 = [filters count];

  if (!v17)
  {
    v18 = [(CAFilter *)self->_curlFilter copy];
    v20 = v18;
    v19 = [NSArray arrayWithObjects:&v20 count:1];
    [layerCopy setFilters:v19];
  }
}

- (void)_setupViews
{
  spineLocation = [(BKPageCurl *)self spineLocation];
  backPage = [(BKPageCurl *)self backPage];
  if (![(BKPageCurl *)self type])
  {
    existingPages = [(BKPageCurl *)self existingPages];
    lastObject = [existingPages lastObject];
    goto LABEL_5;
  }

  if (spineLocation == 2)
  {
    existingPages = [(BKPageCurl *)self existingPages];
    lastObject = [existingPages objectAtIndex:0];
LABEL_5:
    v7 = lastObject;

    v8 = backPage;
    backPage = v7;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  v18 = spineLocation;
  v9 = [[NSMutableArray alloc] initWithCapacity:2];
  [v9 addObject:backPage];
  if (v8)
  {
    [v9 addObject:v8];
  }

  [(BKPageCurl *)self setCurlPages:v9];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  existingPages2 = [(BKPageCurl *)self existingPages];
  v11 = [existingPages2 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(existingPages2);
        }

        v15 = *(*(&v19 + 1) + 8 * v14);
        container = [(BKPageCurl *)self container];
        [container insertSubview:v15 atIndex:0];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [existingPages2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  if ([(BKPageCurl *)self type]== 1 && v18 != 2)
  {
    container2 = [(BKPageCurl *)self container];
    [container2 addSubview:backPage];
  }
}

- (id)_backColor0AtPosition:(double)position
{
  spineLocation = [(BKPageCurl *)self spineLocation];
  if ([(BKPageCurl *)self nightMode])
  {
    if (spineLocation == 2)
    {
      v6 = 0.125;
      v7 = 0.65;
      if (position > 0.75)
      {
        v6 = (1.0 - position) * 4.0 * 0.125;
      }
    }

    else
    {
      type = [(BKPageCurl *)self type];
      if (type && [(BKPageCurl *)self type]!= 1)
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
    if (spineLocation != 2)
    {
      pageColor = [(BKPageCurl *)self pageColor];
      v10 = [pageColor colorWithAlphaComponent:0.8];

      goto LABEL_14;
    }

    v7 = 1.0;
    v6 = 0.0;
  }

  v10 = [UIColor colorWithWhite:v7 alpha:v6];
LABEL_14:

  return v10;
}

- (id)_backColor1AtPosition:(double)position
{
  if ([(BKPageCurl *)self nightMode])
  {
    v4 = 0.7;
  }

  else
  {
    v4 = 0.55;
  }

  backColor = [(BKPageCurl *)self backColor];
  v6 = [backColor colorWithAlphaComponent:v4];

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
  spineLocation = [(BKPageCurl *)self spineLocation];
  curlPages = [(BKPageCurl *)self curlPages];
  if ([curlPages count])
  {
    curlPages2 = [(BKPageCurl *)self curlPages];
    v6 = [curlPages2 objectAtIndex:0];
  }

  else
  {
    v6 = 0;
  }

  curlPages3 = [(BKPageCurl *)self curlPages];
  if ([curlPages3 count] < 2)
  {
    v9 = 0;
  }

  else
  {
    curlPages4 = [(BKPageCurl *)self curlPages];
    v9 = [curlPages4 objectAtIndex:1];
  }

  v10 = [[NSMutableArray alloc] initWithCapacity:2];
  if (v6)
  {
    layer = [v6 layer];
    [v10 addObject:layer];
  }

  if (v9 && v9 != v6)
  {
    layer2 = [v9 layer];
    [v10 addObject:layer2];
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

  selfCopy = self;
  if ([(BKPageCurl *)self type]!= 1 || spineLocation == 2)
  {
    curlAnimationTime = [(BKPageCurl *)self curlAnimationTime];
    curlAnimationRadius = [(BKPageCurl *)self curlAnimationRadius];
    curlAnimationAngle = [(BKPageCurl *)self curlAnimationAngle];
    curlAnimationShadowColor = [(BKPageCurl *)self curlAnimationShadowColor];
    if ([(BKPageCurl *)self nightMode])
    {
      curlAnimationBackColor0 = [(BKPageCurl *)self curlAnimationBackColor0];
      curlAnimationBackColor1 = [(BKPageCurl *)self curlAnimationBackColor1];
    }

    else
    {
      curlAnimationBackColor0 = 0;
      curlAnimationBackColor1 = 0;
    }

    if (spineLocation == 2)
    {
      type = [(BKPageCurl *)selfCopy type];
      LODWORD(v24) = 1125515264;
      v25 = [NSNumber numberWithFloat:v24];
      [curlAnimationRadius setFromValue:v25];

      LODWORD(v26) = 1.0;
      v27 = [NSNumber numberWithFloat:v26];
      [curlAnimationRadius setToValue:v27];

      if (type)
      {
        LODWORD(v28) = -1095583550;
        v29 = [NSNumber numberWithFloat:v28];
        [curlAnimationAngle setFromValue:v29];

        v30 = 0.0 - selfCopy->_stabilization;
        *&v30 = v30;
        v31 = [NSNumber numberWithFloat:v30];
        [curlAnimationAngle setToValue:v31];
      }

      container = [(BKPageCurl *)selfCopy container];
      [container insertSubview:v68 atIndex:1];

      container2 = [(BKPageCurl *)selfCopy container];
      [container2 addSubview:v67];

      layer3 = [v67 layer];
      CATransform3DMakeScale(&v87, -1.0, 1.0, 1.0);
      v86 = v87;
      [layer3 setSublayerTransform:&v86];
      layer4 = [v68 layer];
      v75 = [layer4 valueForKeyPath:@"filters.curl"];

      v36 = [NSNumber numberWithBool:0];
      [v75 setValue:v36 forKey:@"inputBackEnabled"];

      v37 = [layer3 valueForKeyPath:@"filters.curl"];
      v38 = [NSNumber numberWithBool:0];
      [v37 setValue:v38 forKey:@"inputFrontEnabled"];
    }
  }

  else
  {
    curlAnimationTime = [(BKPageCurl *)self uncurlAnimationTime];
    curlAnimationRadius = [(BKPageCurl *)self uncurlAnimationRadius];
    curlAnimationAngle = [(BKPageCurl *)self uncurlAnimationAngle];
    curlAnimationShadowColor = [(BKPageCurl *)self uncurlAnimationShadowColor];
    curlAnimationBackColor1 = 0;
    curlAnimationBackColor0 = 0;
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
        fromValue = [curlAnimationTime fromValue];
        keyPath = [curlAnimationTime keyPath];
        [v40 setValue:fromValue forKeyPath:keyPath];

        fromValue2 = [curlAnimationRadius fromValue];
        keyPath2 = [curlAnimationRadius keyPath];
        [v40 setValue:fromValue2 forKeyPath:keyPath2];

        fromValue3 = [curlAnimationAngle fromValue];
        keyPath3 = [curlAnimationAngle keyPath];
        [v40 setValue:fromValue3 forKeyPath:keyPath3];

        fromValue4 = [curlAnimationShadowColor fromValue];
        keyPath4 = [curlAnimationShadowColor keyPath];
        [v40 setValue:fromValue4 forKeyPath:keyPath4];

        if (curlAnimationBackColor0)
        {
          fromValue5 = [curlAnimationBackColor0 fromValue];
          keyPath5 = [curlAnimationBackColor0 keyPath];
          [v40 setValue:fromValue5 forKeyPath:keyPath5];
        }

        if (curlAnimationBackColor1)
        {
          fromValue6 = [curlAnimationBackColor1 fromValue];
          keyPath6 = [curlAnimationBackColor1 keyPath];
          [v40 setValue:fromValue6 forKeyPath:keyPath6];
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
        ++selfCopy->_didEndCount;
        [v54 addAnimation:curlAnimationTime forKey:@"curlTime"];
        [v54 addAnimation:curlAnimationRadius forKey:@"curlRadius"];
        [v54 addAnimation:curlAnimationAngle forKey:@"curlAngle"];
        [v54 addAnimation:curlAnimationShadowColor forKey:@"curlShadowColor"];
        if (curlAnimationBackColor0)
        {
          [v54 addAnimation:curlAnimationBackColor0 forKey:@"curlBackColor0"];
        }

        if (curlAnimationBackColor1)
        {
          [v54 addAnimation:curlAnimationBackColor1 forKey:@"curlBackColor1"];
        }

        toValue = [curlAnimationTime toValue];
        keyPath7 = [curlAnimationTime keyPath];
        [v54 setValue:toValue forKeyPath:keyPath7];

        toValue2 = [curlAnimationRadius toValue];
        keyPath8 = [curlAnimationRadius keyPath];
        [v54 setValue:toValue2 forKeyPath:keyPath8];

        toValue3 = [curlAnimationAngle toValue];
        keyPath9 = [curlAnimationAngle keyPath];
        [v54 setValue:toValue3 forKeyPath:keyPath9];

        toValue4 = [curlAnimationShadowColor toValue];
        keyPath10 = [curlAnimationShadowColor keyPath];
        [v54 setValue:toValue4 forKeyPath:keyPath10];

        if (curlAnimationBackColor0)
        {
          toValue5 = [curlAnimationBackColor0 toValue];
          keyPath11 = [curlAnimationBackColor0 keyPath];
          [v54 setValue:toValue5 forKeyPath:keyPath11];
        }

        if (curlAnimationBackColor1)
        {
          toValue6 = [curlAnimationBackColor1 toValue];
          keyPath12 = [curlAnimationBackColor1 keyPath];
          [v54 setValue:toValue6 forKeyPath:keyPath12];
        }
      }

      v77 = [obja countByEnumeratingWithState:&v78 objects:v92 count:16];
    }

    while (v77);
  }

  +[CATransaction commit];
  selfCopy->_state = 1;
}

- (void)beginManualCurlAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  spineLocation = [(BKPageCurl *)self spineLocation];
  spineLocation2 = [(BKPageCurl *)self spineLocation];
  curlPages = [(BKPageCurl *)self curlPages];
  lastObject = [curlPages lastObject];

  backPage = [(BKPageCurl *)self backPage];
  v89 = spineLocation;
  if (spineLocation == 2)
  {
    v11 = [[NSMutableArray alloc] initWithCapacity:2];
    [v11 addObject:lastObject];
    if (backPage)
    {
      [v11 addObject:backPage];
    }

    [(BKPageCurl *)self setCurlPages:v11];
  }

  v88 = backPage;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  existingPages = [(BKPageCurl *)self existingPages];
  v13 = [existingPages countByEnumeratingWithState:&v106 objects:v113 count:16];
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
          objc_enumerationMutation(existingPages);
        }

        v17 = *(*(&v106 + 1) + 8 * i);
        container = [(BKPageCurl *)self container];
        [container insertSubview:v17 atIndex:0];
      }

      v14 = [existingPages countByEnumeratingWithState:&v106 objects:v113 count:16];
    }

    while (v14);
  }

  if (v89 == &dword_0 + 2)
  {
    container2 = [(BKPageCurl *)self container];
    [container2 insertSubview:lastObject atIndex:1];

    container3 = [(BKPageCurl *)self container];
    v21 = v88;
    [container3 addSubview:v88];
LABEL_21:

    goto LABEL_22;
  }

  v21 = v88;
  if ([(BKPageCurl *)self type]== 3)
  {
    existingPages2 = [(BKPageCurl *)self existingPages];
    container3 = [existingPages2 lastObject];

    container4 = [(BKPageCurl *)self container];
    [container4 insertSubview:lastObject aboveSubview:container3];

    goto LABEL_21;
  }

  type = [(BKPageCurl *)self type];
  if (type == 2 && v88 && v88 != lastObject)
  {
    container3 = [(BKPageCurl *)self container];
    [container3 insertSubview:v88 belowSubview:lastObject];
    goto LABEL_21;
  }

LABEL_22:
  v25 = [[NSMutableArray alloc] initWithCapacity:2];
  layer = [lastObject layer];
  [v25 addObject:layer];
  if (v21 && v21 != lastObject && v89 == &dword_0 + 2)
  {
    layer2 = [v21 layer];
    [v25 addObject:layer2];
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
    layer3 = [v21 layer];
    CATransform3DMakeScale(&v101, -1.0, 1.0, 1.0);
    v100 = v101;
    [layer3 setSublayerTransform:&v100];
    v35 = [layer valueForKeyPath:@"filters.curl"];
    v36 = [NSNumber numberWithBool:0];
    [v35 setValue:v36 forKey:@"inputBackEnabled"];

    v37 = [layer3 valueForKeyPath:@"filters.curl"];
    v38 = [NSNumber numberWithBool:0];
    [v37 setValue:v38 forKey:@"inputFrontEnabled"];

    v33 = 2.0;
  }

  [lastObject bounds];
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
    if (spineLocation2 != 3)
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  if (spineLocation2 == 3)
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
  v86 = lastObject;
  v87 = layer;
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
  curlAnimationTime = [(BKPageCurl *)self curlAnimationTime];
  curlAnimationRadius = [(BKPageCurl *)self curlAnimationRadius];
  curlAnimationAngle = [(BKPageCurl *)self curlAnimationAngle];
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
        fromValue = [curlAnimationTime fromValue];
        keyPath = [curlAnimationTime keyPath];
        [v53 setValue:fromValue forKeyPath:keyPath];

        fromValue2 = [curlAnimationRadius fromValue];
        keyPath2 = [curlAnimationRadius keyPath];
        [v53 setValue:fromValue2 forKeyPath:keyPath2];

        fromValue3 = [curlAnimationAngle fromValue];
        keyPath3 = [curlAnimationAngle keyPath];
        [v53 setValue:fromValue3 forKeyPath:keyPath3];
      }

      v50 = [obj countByEnumeratingWithState:&v96 objects:v111 count:16];
    }

    while (v50);
  }

  if ([(BKPageCurl *)self type]!= 3 || v89 == &dword_0 + 2)
  {
    v61 = curlAnimationTime;
    v63 = curlAnimationRadius;
    v65 = curlAnimationAngle;
  }

  else
  {
    self->_inUncurl = 1;
    [(BKPageCurl *)self updateManualCurlToLocation:x, y];
    self->_ignoreManualUpdates = 1;
    uncurlAnimationTime = [(BKPageCurl *)self uncurlAnimationTime];
    v61 = [uncurlAnimationTime copy];

    uncurlAnimationRadius = [(BKPageCurl *)self uncurlAnimationRadius];
    v63 = [uncurlAnimationRadius copy];

    uncurlAnimationAngle = [(BKPageCurl *)self uncurlAnimationAngle];
    v65 = [uncurlAnimationAngle copy];

    [(BKPageCurl *)self duration];
    [v61 setDuration:v66 * 0.5];
    [(BKPageCurl *)self duration];
    [v63 setDuration:v67 * 0.5];
    [(BKPageCurl *)self duration];
    [v65 setDuration:v68 * 0.5];
    keyPath4 = [v61 keyPath];
    v70 = [v87 valueForKeyPath:keyPath4];
    [v61 setToValue:v70];

    keyPath5 = [v63 keyPath];
    v72 = [v87 valueForKeyPath:keyPath5];
    [v63 setToValue:v72];

    keyPath6 = [v65 keyPath];
    v74 = [v87 valueForKeyPath:keyPath6];
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
          fromValue4 = [v61 fromValue];
          keyPath7 = [v61 keyPath];
          [v79 setValue:fromValue4 forKeyPath:keyPath7];

          fromValue5 = [v63 fromValue];
          keyPath8 = [v63 keyPath];
          [v79 setValue:fromValue5 forKeyPath:keyPath8];

          fromValue6 = [v65 fromValue];
          keyPath9 = [v65 keyPath];
          [v79 setValue:fromValue6 forKeyPath:keyPath9];
        }

        v76 = [v90 countByEnumeratingWithState:&v92 objects:v110 count:16];
      }

      while (v76);
    }

    +[CATransaction commit];
    self->_state = 1;
  }
}

- (void)updateManualCurlToLocation:(CGPoint)location
{
  [(UIView *)self->_container bounds];
  CGPointClipToRect();
  self->_lastPoint.x = v4;
  self->_lastPoint.y = v5;
  if (!self->_ignoreManualUpdates)
  {
    v6 = v4;
    v7 = v5;
    spineLocation = [(BKPageCurl *)self spineLocation];
    if (spineLocation == 2)
    {
      v9 = [(BKPageCurl *)self type]== 3;
      v10 = 2.0;
    }

    else
    {
      v9 = 0;
      v10 = 1.0;
    }

    spineLocation2 = [(BKPageCurl *)self spineLocation];
    curlPages = [(BKPageCurl *)self curlPages];
    v13 = [curlPages objectAtIndex:0];

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
    v20 = spineLocation2 == 3;
    v21 = spineLocation2 == 3;
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
    if (spineLocation == 2)
    {
      v29 = v28;
    }

    v30 = v26 * v29;
    v31 = 1.0 - v23;
    if (spineLocation != 2)
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

    configuration = [(BKPageCurl *)self configuration];
    [configuration heightAllowanceScalar];
    v40 = v39;

    v41 = 0.333333333;
    if (spineLocation != 2)
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
          layer = [v68 layer];
          *&v70 = v64;
          v71 = [NSNumber numberWithFloat:v70];
          curlAnimationAngle = [(BKPageCurl *)self curlAnimationAngle];
          keyPath = [curlAnimationAngle keyPath];
          [layer setValue:v71 forKeyPath:keyPath];

          *&v74 = v65;
          v75 = [NSNumber numberWithFloat:v74];
          curlAnimationTime = [(BKPageCurl *)self curlAnimationTime];
          keyPath2 = [curlAnimationTime keyPath];
          [layer setValue:v75 forKeyPath:keyPath2];

          v66 = v59;
          *&v78 = v66;
          v79 = [NSNumber numberWithFloat:v78];
          curlAnimationRadius = [(BKPageCurl *)self curlAnimationRadius];
          keyPath3 = [curlAnimationRadius keyPath];
          [layer setValue:v79 forKeyPath:keyPath3];

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
  selfCopy = self;
  cancelledManualCurl = self->_cancelledManualCurl;
  spineLocation = [(BKPageCurl *)self spineLocation];
  v68 = spineLocation;
  if ([(BKPageCurl *)selfCopy type]== 3)
  {
    v5 = !cancelledManualCurl;
    if (spineLocation != 2)
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
    uncurlAnimationTime = [(BKPageCurl *)selfCopy uncurlAnimationTime];
    v71 = [uncurlAnimationTime copy];

    uncurlAnimationRadius = [(BKPageCurl *)selfCopy uncurlAnimationRadius];
    v73 = [uncurlAnimationRadius copy];

    uncurlAnimationAngle = [(BKPageCurl *)selfCopy uncurlAnimationAngle];
    v72 = [uncurlAnimationAngle copy];

    uncurlAnimationShadowColor = [(BKPageCurl *)selfCopy uncurlAnimationShadowColor];
    v10 = [uncurlAnimationShadowColor copy];
    v70 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_8;
  }

  curlAnimationTime = [(BKPageCurl *)selfCopy curlAnimationTime];
  v71 = [curlAnimationTime copy];

  curlAnimationRadius = [(BKPageCurl *)selfCopy curlAnimationRadius];
  v73 = [curlAnimationRadius copy];

  curlAnimationAngle = [(BKPageCurl *)selfCopy curlAnimationAngle];
  v72 = [curlAnimationAngle copy];

  curlAnimationShadowColor = [(BKPageCurl *)selfCopy curlAnimationShadowColor];
  v10 = [curlAnimationShadowColor copy];

  curlAnimationBackColor0 = [(BKPageCurl *)selfCopy curlAnimationBackColor0];
  v12 = [curlAnimationBackColor0 copy];

  uncurlAnimationShadowColor = [(BKPageCurl *)selfCopy curlAnimationBackColor1];
  v11 = [uncurlAnimationShadowColor copy];
  v70 = 1;
LABEL_8:

  objc_opt_class();
  curlPages = [(BKPageCurl *)selfCopy curlPages];
  v19 = [curlPages objectAtIndex:0];
  v20 = BUDynamicCast();
  layer = [v20 layer];

  +[CATransaction flush];
  presentationLayer = [layer presentationLayer];

  if (presentationLayer)
  {
    presentationLayer2 = [layer presentationLayer];
    keyPath = [v71 keyPath];
    v25 = [presentationLayer2 valueForKeyPath:keyPath];
    [v71 setFromValue:v25];

    presentationLayer3 = [layer presentationLayer];
    keyPath2 = [v73 keyPath];
    v28 = [presentationLayer3 valueForKeyPath:keyPath2];
    [v73 setFromValue:v28];

    presentationLayer4 = [layer presentationLayer];
    keyPath3 = [v72 keyPath];
    v31 = [presentationLayer4 valueForKeyPath:keyPath3];
    [v72 setFromValue:v31];

    if (v12)
    {
      presentationLayer5 = [layer presentationLayer];
      keyPath4 = [v12 keyPath];
      v34 = [presentationLayer5 valueForKeyPath:keyPath4];
      [v12 setFromValue:v34];
    }

    if (v11)
    {
      presentationLayer6 = [layer presentationLayer];
      keyPath5 = [v11 keyPath];
      v37 = [presentationLayer6 valueForKeyPath:keyPath5];
      [v11 setFromValue:v37];
    }
  }

  v66 = layer;
  [(BKPageCurl *)selfCopy duration];
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

    if ([(BKPageCurl *)selfCopy type]== 3)
    {
      objc_opt_class();
      fromValue = [v72 fromValue];
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
  obj = [(BKPageCurl *)selfCopy curlPages];
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
        layer2 = [v51 layer];
        ++selfCopy->_didEndCount;
        [layer2 addAnimation:v71 forKey:@"curlTime"];
        [layer2 addAnimation:v73 forKey:@"curlRadius"];
        [layer2 addAnimation:v72 forKey:@"curlAngle"];
        [layer2 addAnimation:v10 forKey:@"curlShadowColor"];
        if (v12)
        {
          [layer2 addAnimation:v12 forKey:@"curlBackColor0"];
        }

        v53 = selfCopy;
        if (v11)
        {
          [layer2 addAnimation:v11 forKey:@"curlBackColor1"];
        }

        toValue = [v71 toValue];
        keyPath6 = [v71 keyPath];
        [layer2 setValue:toValue forKeyPath:keyPath6];

        toValue2 = [v73 toValue];
        keyPath7 = [v73 keyPath];
        [layer2 setValue:toValue2 forKeyPath:keyPath7];

        toValue3 = [v72 toValue];
        keyPath8 = [v72 keyPath];
        [layer2 setValue:toValue3 forKeyPath:keyPath8];

        toValue4 = [v10 toValue];
        keyPath9 = [v10 keyPath];
        [layer2 setValue:toValue4 forKeyPath:keyPath9];

        if (v12)
        {
          toValue5 = [v12 toValue];
          keyPath10 = [v12 keyPath];
          [layer2 setValue:toValue5 forKey:keyPath10];
        }

        if (v11)
        {
          toValue6 = [v11 toValue];
          keyPath11 = [v11 keyPath];
          [layer2 setValue:toValue6 forKey:keyPath11];
        }

        if ((v70 & 1) == 0)
        {
          [v51 pageCurlWillCancelWithDuration:v39];
        }

        selfCopy = v53;
      }

      v49 = [obj countByEnumeratingWithState:&v74 objects:v78 count:16];
    }

    while (v49);
  }

  +[CATransaction commit];
  selfCopy->_state = 1;
}

- (void)killCurl
{
  self->_state = 4;
  delegate = [(BKPageCurl *)self delegate];
  [delegate pageCurl:self finished:0];

  [(BKPageCurl *)self fullCleanup];
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  finishedCopy = finished;
  stopCopy = stop;
  self->_finished = finishedCopy;
  v7 = self->_didEndCount - 1;
  self->_didEndCount = v7;
  if (self->_inUncurl)
  {
    self->_ignoreManualUpdates = 0;
    if (finishedCopy)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      curlPages = [(BKPageCurl *)self curlPages];
      v9 = [curlPages countByEnumeratingWithState:&v14 objects:v18 count:16];
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
              objc_enumerationMutation(curlPages);
            }

            layer = [*(*(&v14 + 1) + 8 * i) layer];
            [layer removeAllAnimations];
          }

          v10 = [curlPages countByEnumeratingWithState:&v14 objects:v18 count:16];
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
    [(BKPageCurl *)self _animationDidStop:finishedCopy];
  }
}

- (void)_animationDidStop:(BOOL)stop
{
  stopCopy = stop;
  if (stop)
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

  delegate = [(BKPageCurl *)self delegate];
  [delegate pageCurl:self finished:stopCopy];
}

- (void)fullCleanup
{
  existingPages = [(BKPageCurl *)self existingPages];
  [existingPages makeObjectsPerformSelector:"removeFromSuperview"];

  curlPages = [(BKPageCurl *)self curlPages];
  [curlPages makeObjectsPerformSelector:"removeFromSuperview"];

  backPage = [(BKPageCurl *)self backPage];
  [backPage removeFromSuperview];

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