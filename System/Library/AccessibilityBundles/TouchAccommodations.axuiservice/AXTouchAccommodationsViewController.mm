@interface AXTouchAccommodationsViewController
- (CGPath)_drawFullCircleWithRadius:(double)radius;
- (id)_createLayerAtPoint:(CGPoint)point;
- (id)_createProgressLayerWithColor:(id)color withFilterName:(id)name forHoldDuration:(BOOL)duration;
- (id)_createTransformLayerForHoldDuration:(BOOL)duration;
- (void)removeAllHandTouchMarkers;
- (void)resetProgressTrackOfHandTouchMarkerAtPoints:(id)points;
- (void)systemApertureLayoutDidChange:(id)change;
- (void)updateLocationOfHandTouchMarkerAtPoints:(id)points;
- (void)viewDidLoad;
@end

@implementation AXTouchAccommodationsViewController

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = AXTouchAccommodationsViewController;
  [(AXTouchAccommodationsViewController *)&v9 viewDidLoad];
  v3 = [UIView alloc];
  v4 = +[UIScreen mainScreen];
  [v4 bounds];
  v5 = [v3 initWithFrame:?];
  [(AXTouchAccommodationsViewController *)self setView:v5];

  view = [(AXTouchAccommodationsViewController *)self view];
  [view setUserInteractionEnabled:0];

  v7 = objc_alloc_init(SBSSystemApertureLayoutMonitor);
  layoutMonitor = self->_layoutMonitor;
  self->_layoutMonitor = v7;

  [(SBSSystemApertureLayoutMonitor *)self->_layoutMonitor addObserver:self];
  self->_foreheadRect.origin = 0u;
  self->_foreheadRect.size = 0u;
}

- (void)resetProgressTrackOfHandTouchMarkerAtPoints:(id)points
{
  pointsCopy = points;
  [(AXTouchAccommodationsViewController *)self updateLocationOfHandTouchMarkerAtPoints:?];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  sublayers = [(CATransformLayer *)self->_transformLayer sublayers];
  v5 = [sublayers countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v26;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(sublayers);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        name = [v10 name];
        v12 = [name isEqualToString:@"tapAssistanceProgressTrack"];

        if (v12)
        {
          v13 = v10;

          v7 = v13;
        }
      }

      v6 = [sublayers countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  [v7 removeFromSuperlayer];
  v14 = +[AXSettings sharedInstance];
  touchAccommodationsTapActivationMethod = [v14 touchAccommodationsTapActivationMethod];

  if (touchAccommodationsTapActivationMethod == &dword_0 + 2)
  {
    v16 = +[AXSettings sharedInstance];
    [v16 touchAccommodationsTapActivationTimeout];
    v18 = v17;

    if (v18 <= 0.289999992)
    {
      v19 = +[UIColor clearColor];
      selfCopy2 = self;
      v22 = v19;
      v20 = 0;
    }

    else
    {
      v19 = +[UIColor whiteColor];
      v20 = kCAFilterNormalBlendMode;
      selfCopy2 = self;
      v22 = v19;
    }

    v23 = [(AXTouchAccommodationsViewController *)selfCopy2 _createProgressLayerWithColor:v22 withFilterName:v20 forHoldDuration:0];

    [v23 setName:@"tapAssistanceProgressTrack"];
    [(CATransformLayer *)self->_transformLayer addSublayer:v23];
  }
}

- (void)updateLocationOfHandTouchMarkerAtPoints:(id)points
{
  pointsCopy = points;
  view = [(AXTouchAccommodationsViewController *)self view];
  layer = [view layer];
  sublayers = [layer sublayers];
  v7 = [sublayers count];
  v8 = [pointsCopy count];

  v9 = [pointsCopy count];
  view2 = [(AXTouchAccommodationsViewController *)self view];
  layer2 = [view2 layer];
  sublayers2 = [layer2 sublayers];
  v13 = [sublayers2 count];

  if (v9 < v13)
  {
    v14 = v7 - v8;
    if (v7 - v8 >= 1)
    {
      do
      {
        view3 = [(AXTouchAccommodationsViewController *)self view];
        layer3 = [view3 layer];
        sublayers3 = [layer3 sublayers];
        lastObject = [sublayers3 lastObject];
        [lastObject removeFromSuperlayer];

        --v14;
      }

      while (v14);
    }
  }

  if ([pointsCopy count])
  {
    v19 = 0;
    do
    {
      view4 = [(AXTouchAccommodationsViewController *)self view];
      layer4 = [view4 layer];
      sublayers4 = [layer4 sublayers];
      v23 = [sublayers4 count];

      if (v23 <= v19)
      {
        view5 = [(AXTouchAccommodationsViewController *)self view];
        layer5 = [view5 layer];
        v38 = [pointsCopy objectAtIndex:v19];
        [v38 CGPointValue];
        v39 = [(AXTouchAccommodationsViewController *)self _createLayerAtPoint:?];
        [layer5 addSublayer:v39];
      }

      else
      {
        [CATransaction setDisableActions:1];
        +[CATransaction begin];
        if (AXDeviceHasJindo())
        {
          v24 = [pointsCopy objectAtIndex:v19];
          [v24 CGPointValue];
          v26 = v25;
          v28 = v27;

          v29 = +[AXUIDisplayManager sharedDisplayManager];
          activeInterfaceOrientation = [v29 activeInterfaceOrientation];

          if (activeInterfaceOrientation == (&dword_0 + 3))
          {
            v45 = self->_foreheadRect.origin.y + self->_foreheadRect.size.height;
            if (v45 > v26 + -50.0)
            {
              v26 = v45 + 50.0 + 5.0;
            }
          }

          else if (activeInterfaceOrientation == &dword_4)
          {
            view6 = [(AXTouchAccommodationsViewController *)self view];
            [view6 frame];
            v33 = v32 - (self->_foreheadRect.origin.y + self->_foreheadRect.size.height);

            if (v26 + 50.0 > v33)
            {
              view7 = [(AXTouchAccommodationsViewController *)self view];
              [view7 frame];
              v26 = v35 - (self->_foreheadRect.origin.y + self->_foreheadRect.size.height + 50.0 + 5.0);
            }
          }

          else
          {
            v46 = self->_foreheadRect.origin.y + self->_foreheadRect.size.height;
            if (v46 > v28 + -50.0)
            {
              v28 = v46 + 50.0 + 5.0;
            }
          }

          view8 = [(AXTouchAccommodationsViewController *)self view];
          layer6 = [view8 layer];
          sublayers5 = [layer6 sublayers];
          v43 = [sublayers5 objectAtIndex:v19];
          [v43 setPosition:{v26, v28}];
        }

        else
        {
          view8 = [(AXTouchAccommodationsViewController *)self view];
          layer6 = [view8 layer];
          sublayers5 = [layer6 sublayers];
          v43 = [sublayers5 objectAtIndex:v19];
          v44 = [pointsCopy objectAtIndex:v19];
          [v44 CGPointValue];
          [v43 setPosition:?];
        }

        +[CATransaction commit];
        [CATransaction setDisableActions:0];
      }

      ++v19;
    }

    while ([pointsCopy count] > v19);
  }
}

- (id)_createLayerAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = +[AXSettings sharedInstance];
  touchAccommodationsHoldDurationEnabled = [v6 touchAccommodationsHoldDurationEnabled];

  if ((touchAccommodationsHoldDurationEnabled & 1) != 0 || (+[AXSettings sharedInstance](AXSettings, "sharedInstance"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 touchAccommodationsTapActivationMethod], v8, v9))
  {
    v10 = [(AXTouchAccommodationsViewController *)self _createTransformLayerForHoldDuration:touchAccommodationsHoldDurationEnabled];
    transformLayer = self->_transformLayer;
    self->_transformLayer = v10;
  }

  if (self->_foreheadRect.origin.y + self->_foreheadRect.size.height > y + -50.0 && AXDeviceHasJindo())
  {
    v12 = self->_transformLayer;
    v13 = self->_foreheadRect.origin.y + self->_foreheadRect.size.height + 50.0 + 5.0;
    v14 = x;
  }

  else
  {
    v12 = self->_transformLayer;
    v14 = x;
    v13 = y;
  }

  [(CATransformLayer *)v12 setPosition:v14, v13];
  v15 = +[AXSettings sharedInstance];
  touchAccommodationsHoldDurationEnabled2 = [v15 touchAccommodationsHoldDurationEnabled];

  v17 = +[AXSettings sharedInstance];
  v18 = v17;
  if (touchAccommodationsHoldDurationEnabled2)
  {
    [v17 touchAccommodationsHoldDuration];
    v20 = v19;

    if (v20 <= 0.289999992)
    {
      v21 = +[UIColor clearColor];
      selfCopy2 = self;
      v24 = v21;
      v22 = 0;
    }

    else
    {
      v21 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.5];
      v22 = kCAFilterMaximum;
      selfCopy2 = self;
      v24 = v21;
    }

    v33 = [(AXTouchAccommodationsViewController *)selfCopy2 _createProgressLayerWithColor:v24 withFilterName:v22 forHoldDuration:1];

    v34 = @"holdDurationProgressTrack";
LABEL_19:
    [v33 setName:v34];
    [(CATransformLayer *)self->_transformLayer addSublayer:v33];

    goto LABEL_20;
  }

  touchAccommodationsTapActivationMethod = [v17 touchAccommodationsTapActivationMethod];

  if (touchAccommodationsTapActivationMethod)
  {
    v26 = +[AXSettings sharedInstance];
    [v26 touchAccommodationsTapActivationTimeout];
    v28 = v27;

    if (v28 <= 0.289999992)
    {
      v29 = +[UIColor clearColor];
      selfCopy4 = self;
      v32 = v29;
      v30 = 0;
    }

    else
    {
      v29 = +[UIColor whiteColor];
      v30 = kCAFilterNormalBlendMode;
      selfCopy4 = self;
      v32 = v29;
    }

    v33 = [(AXTouchAccommodationsViewController *)selfCopy4 _createProgressLayerWithColor:v32 withFilterName:v30 forHoldDuration:0];

    v34 = @"tapAssistanceProgressTrack";
    goto LABEL_19;
  }

LABEL_20:
  v35 = self->_transformLayer;

  return v35;
}

- (id)_createTransformLayerForHoldDuration:(BOOL)duration
{
  durationCopy = duration;
  v5 = +[CATransformLayer layer];
  v6 = objc_alloc_init(CAShapeLayer);
  [v6 setPath:{-[AXTouchAccommodationsViewController _drawFullCircleWithRadius:](self, "_drawFullCircleWithRadius:", 50.0)}];
  [v6 setName:@"shapeLayerDisc"];
  v7 = objc_alloc_init(CAShapeLayer);
  [v7 setPath:{-[AXTouchAccommodationsViewController _drawFullCircleWithRadius:](self, "_drawFullCircleWithRadius:", 5.0)}];
  [v7 setName:@"shapeLayerDot"];
  v8 = objc_alloc_init(CAShapeLayer);
  [v8 setPath:{-[AXTouchAccommodationsViewController _drawFullCircleWithRadius:](self, "_drawFullCircleWithRadius:", 45.0)}];
  v9 = +[UIColor clearColor];
  [v8 setFillColor:{objc_msgSend(v9, "CGColor")}];

  [v8 setLineWidth:2.5];
  [v8 setName:@"shapeLayerEmptyTrack"];
  v10 = +[AXSettings sharedInstance];
  v11 = v10;
  if (durationCopy)
  {
    [v10 touchAccommodationsHoldDuration];
    v13 = v12;

    if (v13 <= 0.289999992)
    {
      v14 = 0;
      v15 = 0.0;
      v16 = 0.0;
    }

    else
    {
      v14 = [CAFilter filterWithType:kCAFilterPlusD];
      v15 = 0.25;
      v16 = 0.300000012;
    }

    v21 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:v15];
    v19 = v14;
    v20 = v16;
  }

  else
  {
    [v10 touchAccommodationsTapActivationTimeout];
    v18 = v17;

    if (v18 <= 0.289999992)
    {
      v21 = +[UIColor clearColor];
      v14 = 0;
      v19 = 0;
      v16 = 0.0;
      v20 = 0.0;
    }

    else
    {
      v19 = [CAFilter filterWithType:kCAFilterPlusD];
      v20 = 0.5;
      v21 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.5];
      v14 = 0;
      v16 = 0.300000012;
    }
  }

  [v8 setStrokeColor:{objc_msgSend(v21, "CGColor")}];

  v22 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:v20];
  [v6 setFillColor:{objc_msgSend(v22, "CGColor")}];

  [v6 setCompositingFilter:v19];
  v23 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:v16];
  [v7 setFillColor:{objc_msgSend(v23, "CGColor")}];

  [v7 setCompositingFilter:v19];
  [v8 setCompositingFilter:v14];
  [v5 addSublayer:v6];
  [v5 addSublayer:v7];
  [v5 addSublayer:v8];

  return v5;
}

- (id)_createProgressLayerWithColor:(id)color withFilterName:(id)name forHoldDuration:(BOOL)duration
{
  durationCopy = duration;
  nameCopy = name;
  colorCopy = color;
  v10 = objc_alloc_init(CAShapeLayer);
  [v10 setPosition:{CGPointZero.x, CGPointZero.y}];
  [v10 setPath:{-[AXTouchAccommodationsViewController _drawFullCircleWithRadius:](self, "_drawFullCircleWithRadius:", 45.0)}];
  +[CATransaction begin];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_3E00;
  v24[3] = &unk_10558;
  v25 = durationCopy;
  v24[4] = self;
  [CATransaction setCompletionBlock:v24];
  v11 = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
  v12 = +[AXSettings sharedInstance];
  v13 = v12;
  if (durationCopy)
  {
    [v12 touchAccommodationsHoldDuration];
    v15 = v14 + -0.100000001;
  }

  else
  {
    touchAccommodationsHoldDurationEnabled = [v12 touchAccommodationsHoldDurationEnabled];

    v13 = +[AXSettings sharedInstance];
    [v13 touchAccommodationsTapActivationTimeout];
    if (!touchAccommodationsHoldDurationEnabled)
    {
      v15 = v15 + -0.100000001;
    }
  }

  [v11 setDuration:v15];

  v17 = [NSNumber numberWithInt:0];
  [v11 setFromValue:v17];

  v18 = [NSNumber numberWithInt:1];
  [v11 setToValue:v18];

  [v10 addAnimation:v11 forKey:@"drawCircleAnimation"];
  +[CATransaction commit];
  cGColor = [colorCopy CGColor];

  [v10 setStrokeColor:cGColor];
  v20 = +[UIColor clearColor];
  [v10 setFillColor:{objc_msgSend(v20, "CGColor")}];

  if (nameCopy)
  {
    v21 = [CAFilter filterWithType:nameCopy];
    [v10 setCompositingFilter:v21];
  }

  else
  {
    [v10 setCompositingFilter:0];
  }

  [v10 setLineWidth:2.5];
  v22 = +[UIScreen mainScreen];
  [v22 scale];
  [v10 setContentsScale:?];

  return v10;
}

- (CGPath)_drawFullCircleWithRadius:(double)radius
{
  v3 = [UIBezierPath bezierPathWithArcCenter:1 radius:CGPointZero.x startAngle:CGPointZero.y endAngle:radius clockwise:-1.57079633, 4.71238898];
  cGPath = [v3 CGPath];

  return cGPath;
}

- (void)removeAllHandTouchMarkers
{
  view = [(AXTouchAccommodationsViewController *)self view];
  layer = [view layer];
  sublayers = [layer sublayers];
  [sublayers makeObjectsPerformSelector:"removeFromSuperlayer"];
}

- (void)systemApertureLayoutDidChange:(id)change
{
  changeCopy = change;
  if ([changeCopy count] == &dword_0 + 1)
  {
    p_foreheadRect = &self->_foreheadRect;
    v5 = [changeCopy objectAtIndexedSubscript:0];
    [v5 CGRectValue];
    p_foreheadRect->origin.x = v6;
    p_foreheadRect->origin.y = v7;
    p_foreheadRect->size.width = v8;
    p_foreheadRect->size.height = v9;
  }

  else
  {
    if ([changeCopy count] != &dword_0 + 2)
    {
      goto LABEL_6;
    }

    v10 = &self->_foreheadRect;
    v5 = [changeCopy objectAtIndexedSubscript:0];
    [v5 CGRectValue];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [changeCopy objectAtIndexedSubscript:1];
    [v19 CGRectValue];
    v27.origin.x = v20;
    v27.origin.y = v21;
    v27.size.width = v22;
    v27.size.height = v23;
    v26.origin.x = v12;
    v26.origin.y = v14;
    v26.size.width = v16;
    v26.size.height = v18;
    *v10 = CGRectUnion(v26, v27);
  }

LABEL_6:
}

@end