@interface AXTouchAccommodationsViewController
- (CGPath)_drawFullCircleWithRadius:(double)a3;
- (id)_createLayerAtPoint:(CGPoint)a3;
- (id)_createProgressLayerWithColor:(id)a3 withFilterName:(id)a4 forHoldDuration:(BOOL)a5;
- (id)_createTransformLayerForHoldDuration:(BOOL)a3;
- (void)removeAllHandTouchMarkers;
- (void)resetProgressTrackOfHandTouchMarkerAtPoints:(id)a3;
- (void)systemApertureLayoutDidChange:(id)a3;
- (void)updateLocationOfHandTouchMarkerAtPoints:(id)a3;
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

  v6 = [(AXTouchAccommodationsViewController *)self view];
  [v6 setUserInteractionEnabled:0];

  v7 = objc_alloc_init(SBSSystemApertureLayoutMonitor);
  layoutMonitor = self->_layoutMonitor;
  self->_layoutMonitor = v7;

  [(SBSSystemApertureLayoutMonitor *)self->_layoutMonitor addObserver:self];
  self->_foreheadRect.origin = 0u;
  self->_foreheadRect.size = 0u;
}

- (void)resetProgressTrackOfHandTouchMarkerAtPoints:(id)a3
{
  v24 = a3;
  [(AXTouchAccommodationsViewController *)self updateLocationOfHandTouchMarkerAtPoints:?];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [(CATransformLayer *)self->_transformLayer sublayers];
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = [v10 name];
        v12 = [v11 isEqualToString:@"tapAssistanceProgressTrack"];

        if (v12)
        {
          v13 = v10;

          v7 = v13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  [v7 removeFromSuperlayer];
  v14 = +[AXSettings sharedInstance];
  v15 = [v14 touchAccommodationsTapActivationMethod];

  if (v15 == &dword_0 + 2)
  {
    v16 = +[AXSettings sharedInstance];
    [v16 touchAccommodationsTapActivationTimeout];
    v18 = v17;

    if (v18 <= 0.289999992)
    {
      v19 = +[UIColor clearColor];
      v21 = self;
      v22 = v19;
      v20 = 0;
    }

    else
    {
      v19 = +[UIColor whiteColor];
      v20 = kCAFilterNormalBlendMode;
      v21 = self;
      v22 = v19;
    }

    v23 = [(AXTouchAccommodationsViewController *)v21 _createProgressLayerWithColor:v22 withFilterName:v20 forHoldDuration:0];

    [v23 setName:@"tapAssistanceProgressTrack"];
    [(CATransformLayer *)self->_transformLayer addSublayer:v23];
  }
}

- (void)updateLocationOfHandTouchMarkerAtPoints:(id)a3
{
  v47 = a3;
  v4 = [(AXTouchAccommodationsViewController *)self view];
  v5 = [v4 layer];
  v6 = [v5 sublayers];
  v7 = [v6 count];
  v8 = [v47 count];

  v9 = [v47 count];
  v10 = [(AXTouchAccommodationsViewController *)self view];
  v11 = [v10 layer];
  v12 = [v11 sublayers];
  v13 = [v12 count];

  if (v9 < v13)
  {
    v14 = v7 - v8;
    if (v7 - v8 >= 1)
    {
      do
      {
        v15 = [(AXTouchAccommodationsViewController *)self view];
        v16 = [v15 layer];
        v17 = [v16 sublayers];
        v18 = [v17 lastObject];
        [v18 removeFromSuperlayer];

        --v14;
      }

      while (v14);
    }
  }

  if ([v47 count])
  {
    v19 = 0;
    do
    {
      v20 = [(AXTouchAccommodationsViewController *)self view];
      v21 = [v20 layer];
      v22 = [v21 sublayers];
      v23 = [v22 count];

      if (v23 <= v19)
      {
        v36 = [(AXTouchAccommodationsViewController *)self view];
        v37 = [v36 layer];
        v38 = [v47 objectAtIndex:v19];
        [v38 CGPointValue];
        v39 = [(AXTouchAccommodationsViewController *)self _createLayerAtPoint:?];
        [v37 addSublayer:v39];
      }

      else
      {
        [CATransaction setDisableActions:1];
        +[CATransaction begin];
        if (AXDeviceHasJindo())
        {
          v24 = [v47 objectAtIndex:v19];
          [v24 CGPointValue];
          v26 = v25;
          v28 = v27;

          v29 = +[AXUIDisplayManager sharedDisplayManager];
          v30 = [v29 activeInterfaceOrientation];

          if (v30 == (&dword_0 + 3))
          {
            v45 = self->_foreheadRect.origin.y + self->_foreheadRect.size.height;
            if (v45 > v26 + -50.0)
            {
              v26 = v45 + 50.0 + 5.0;
            }
          }

          else if (v30 == &dword_4)
          {
            v31 = [(AXTouchAccommodationsViewController *)self view];
            [v31 frame];
            v33 = v32 - (self->_foreheadRect.origin.y + self->_foreheadRect.size.height);

            if (v26 + 50.0 > v33)
            {
              v34 = [(AXTouchAccommodationsViewController *)self view];
              [v34 frame];
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

          v40 = [(AXTouchAccommodationsViewController *)self view];
          v41 = [v40 layer];
          v42 = [v41 sublayers];
          v43 = [v42 objectAtIndex:v19];
          [v43 setPosition:{v26, v28}];
        }

        else
        {
          v40 = [(AXTouchAccommodationsViewController *)self view];
          v41 = [v40 layer];
          v42 = [v41 sublayers];
          v43 = [v42 objectAtIndex:v19];
          v44 = [v47 objectAtIndex:v19];
          [v44 CGPointValue];
          [v43 setPosition:?];
        }

        +[CATransaction commit];
        [CATransaction setDisableActions:0];
      }

      ++v19;
    }

    while ([v47 count] > v19);
  }
}

- (id)_createLayerAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = +[AXSettings sharedInstance];
  v7 = [v6 touchAccommodationsHoldDurationEnabled];

  if ((v7 & 1) != 0 || (+[AXSettings sharedInstance](AXSettings, "sharedInstance"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 touchAccommodationsTapActivationMethod], v8, v9))
  {
    v10 = [(AXTouchAccommodationsViewController *)self _createTransformLayerForHoldDuration:v7];
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
  v16 = [v15 touchAccommodationsHoldDurationEnabled];

  v17 = +[AXSettings sharedInstance];
  v18 = v17;
  if (v16)
  {
    [v17 touchAccommodationsHoldDuration];
    v20 = v19;

    if (v20 <= 0.289999992)
    {
      v21 = +[UIColor clearColor];
      v23 = self;
      v24 = v21;
      v22 = 0;
    }

    else
    {
      v21 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.5];
      v22 = kCAFilterMaximum;
      v23 = self;
      v24 = v21;
    }

    v33 = [(AXTouchAccommodationsViewController *)v23 _createProgressLayerWithColor:v24 withFilterName:v22 forHoldDuration:1];

    v34 = @"holdDurationProgressTrack";
LABEL_19:
    [v33 setName:v34];
    [(CATransformLayer *)self->_transformLayer addSublayer:v33];

    goto LABEL_20;
  }

  v25 = [v17 touchAccommodationsTapActivationMethod];

  if (v25)
  {
    v26 = +[AXSettings sharedInstance];
    [v26 touchAccommodationsTapActivationTimeout];
    v28 = v27;

    if (v28 <= 0.289999992)
    {
      v29 = +[UIColor clearColor];
      v31 = self;
      v32 = v29;
      v30 = 0;
    }

    else
    {
      v29 = +[UIColor whiteColor];
      v30 = kCAFilterNormalBlendMode;
      v31 = self;
      v32 = v29;
    }

    v33 = [(AXTouchAccommodationsViewController *)v31 _createProgressLayerWithColor:v32 withFilterName:v30 forHoldDuration:0];

    v34 = @"tapAssistanceProgressTrack";
    goto LABEL_19;
  }

LABEL_20:
  v35 = self->_transformLayer;

  return v35;
}

- (id)_createTransformLayerForHoldDuration:(BOOL)a3
{
  v3 = a3;
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
  if (v3)
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

- (id)_createProgressLayerWithColor:(id)a3 withFilterName:(id)a4 forHoldDuration:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(CAShapeLayer);
  [v10 setPosition:{CGPointZero.x, CGPointZero.y}];
  [v10 setPath:{-[AXTouchAccommodationsViewController _drawFullCircleWithRadius:](self, "_drawFullCircleWithRadius:", 45.0)}];
  +[CATransaction begin];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_3E00;
  v24[3] = &unk_10558;
  v25 = v5;
  v24[4] = self;
  [CATransaction setCompletionBlock:v24];
  v11 = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
  v12 = +[AXSettings sharedInstance];
  v13 = v12;
  if (v5)
  {
    [v12 touchAccommodationsHoldDuration];
    v15 = v14 + -0.100000001;
  }

  else
  {
    v16 = [v12 touchAccommodationsHoldDurationEnabled];

    v13 = +[AXSettings sharedInstance];
    [v13 touchAccommodationsTapActivationTimeout];
    if (!v16)
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
  v19 = [v9 CGColor];

  [v10 setStrokeColor:v19];
  v20 = +[UIColor clearColor];
  [v10 setFillColor:{objc_msgSend(v20, "CGColor")}];

  if (v8)
  {
    v21 = [CAFilter filterWithType:v8];
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

- (CGPath)_drawFullCircleWithRadius:(double)a3
{
  v3 = [UIBezierPath bezierPathWithArcCenter:1 radius:CGPointZero.x startAngle:CGPointZero.y endAngle:a3 clockwise:-1.57079633, 4.71238898];
  v4 = [v3 CGPath];

  return v4;
}

- (void)removeAllHandTouchMarkers
{
  v4 = [(AXTouchAccommodationsViewController *)self view];
  v2 = [v4 layer];
  v3 = [v2 sublayers];
  [v3 makeObjectsPerformSelector:"removeFromSuperlayer"];
}

- (void)systemApertureLayoutDidChange:(id)a3
{
  v24 = a3;
  if ([v24 count] == &dword_0 + 1)
  {
    p_foreheadRect = &self->_foreheadRect;
    v5 = [v24 objectAtIndexedSubscript:0];
    [v5 CGRectValue];
    p_foreheadRect->origin.x = v6;
    p_foreheadRect->origin.y = v7;
    p_foreheadRect->size.width = v8;
    p_foreheadRect->size.height = v9;
  }

  else
  {
    if ([v24 count] != &dword_0 + 2)
    {
      goto LABEL_6;
    }

    v10 = &self->_foreheadRect;
    v5 = [v24 objectAtIndexedSubscript:0];
    [v5 CGRectValue];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [v24 objectAtIndexedSubscript:1];
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