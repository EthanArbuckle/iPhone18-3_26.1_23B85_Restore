@interface NTKColorAnalogBackgroundView
- (NTKColorAnalogBackgroundView)initWithFrame:(CGRect)a3 device:(id)a4;
- (void)applyColor:(id)a3;
- (void)applyStyle:(unint64_t)a3;
- (void)applyTransitionFraction:(double)a3 fromColor:(id)a4 toColor:(id)a5 withPrimaryColor:(id)a6 boostedColor:(id)a7;
- (void)applyTransitionFraction:(double)a3 fromStyle:(unint64_t)a4 toStyle:(unint64_t)a5;
- (void)updateLayerVisibilityForStyles:(id)a3;
@end

@implementation NTKColorAnalogBackgroundView

- (NTKColorAnalogBackgroundView)initWithFrame:(CGRect)a3 device:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v60.receiver = self;
  v60.super_class = NTKColorAnalogBackgroundView;
  v11 = [(NTKColorAnalogBackgroundView *)&v60 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    v55 = width;
    v56 = height;
    objc_storeStrong(&v11->_device, a4);
    v14 = sub_1ED4(v13, v10);
    v58 = v15;
    v16 = +[NSNull null];
    v61[0] = @"opacity";
    v61[1] = @"affineTransform";
    v62[0] = v16;
    v62[1] = v16;
    v61[2] = @"transform";
    v61[3] = @"position";
    v62[2] = v16;
    v62[3] = v16;
    v61[4] = @"bounds";
    v61[5] = @"backgroundColor";
    v62[4] = v16;
    v62[5] = v16;
    v61[6] = @"contentsMultiplyColor";
    v61[7] = @"borderColor";
    v62[6] = v16;
    v62[7] = v16;
    v61[8] = @"borderWidth";
    v57 = v16;
    v62[8] = v16;
    v17 = [NSDictionary dictionaryWithObjects:v62 forKeys:v61 count:9];
    v18 = [(NTKColorAnalogBackgroundView *)v12 layer];
    [(NTKColorAnalogBackgroundView *)v12 bounds];
    MidX = CGRectGetMidX(v63);
    [(NTKColorAnalogBackgroundView *)v12 bounds];
    MidY = CGRectGetMidY(v64);
    v21 = CGPointZero.y;
    [NTKAnalogUtilities dialSizeForDevice:v10];
    v23 = v22;
    v25 = v24;
    v26 = +[CALayer layer];
    tickContainerLayer = v12->_tickContainerLayer;
    v12->_tickContainerLayer = v26;

    [(CALayer *)v12->_tickContainerLayer setBounds:CGPointZero.x, v21, v23, v25];
    [(CALayer *)v12->_tickContainerLayer setPosition:MidX, MidY];
    [(CALayer *)v12->_tickContainerLayer setActions:v17];
    v54 = v18;
    [v18 addSublayer:v12->_tickContainerLayer];
    v28 = +[NSMutableArray array];
    for (i = 0; i != 60; ++i)
    {
      v30 = +[CALayer layer];
      [v30 setAnchorPoint:{0.5, 0.5}];
      [v30 setActions:v17];
      v31 = +[UIColor whiteColor];
      [v30 setBackgroundColor:{objc_msgSend(v31, "CGColor")}];

      v32 = v58;
      if (i != 5 * ((858993460 * i) >> 32))
      {
        v32 = v14;
      }

      v33 = v32 * 0.5;
      [v30 setBounds:{CGPointZero.x, v21}];
      [v30 setCornerRadius:v33];
      [v30 setCornerCurve:kCACornerCurveCircular];
      [v30 bounds];
      [(CALayer *)v12->_tickContainerLayer bounds];
      __sincos_stret(i * 0.104719755 + -1.57079633);
      CLKRoundForDevice();
      v35 = v34;
      [(CALayer *)v12->_tickContainerLayer bounds];
      CLKRoundForDevice();
      [v30 setPosition:{v35, v36}];
      CGAffineTransformMakeRotation(&v59, i * 0.104719755 + 3.14159265);
      [v30 setAffineTransform:&v59];
      [v28 addObject:v30];
      [(CALayer *)v12->_tickContainerLayer addSublayer:v30];
    }

    v37 = [v28 copy];
    tickLayers = v12->_tickLayers;
    v12->_tickLayers = v37;

    v39 = +[CALayer layer];
    circleLayer = v12->_circleLayer;
    v12->_circleLayer = v39;

    v41 = v12->_circleLayer;
    [NTKAnalogUtilities dialSizeForDevice:v10];
    [(CALayer *)v41 setBounds:CGPointZero.x, v21, v42, v43];
    v44 = v12->_circleLayer;
    v45 = +[UIColor whiteColor];
    -[CALayer setBackgroundColor:](v44, "setBackgroundColor:", [v45 CGColor]);

    v46 = v12->_circleLayer;
    [(CALayer *)v46 bounds];
    [(CALayer *)v46 setCornerRadius:v47 * 0.5];
    [(CALayer *)v12->_circleLayer setPosition:MidX, MidY];
    [(CALayer *)v12->_circleLayer setActions:v17];
    [v54 addSublayer:v12->_circleLayer];
    v48 = +[CALayer layer];
    fullscreenLayer = v12->_fullscreenLayer;
    v12->_fullscreenLayer = v48;

    [(CALayer *)v12->_fullscreenLayer setBounds:CGPointZero.x, v21, v55, v56];
    v50 = v12->_fullscreenLayer;
    v51 = +[UIColor whiteColor];
    -[CALayer setBackgroundColor:](v50, "setBackgroundColor:", [v51 CGColor]);

    v52 = v12->_fullscreenLayer;
    [v10 screenCornerRadius];
    [(CALayer *)v52 setCornerRadius:?];
    [(CALayer *)v12->_fullscreenLayer setCornerCurve:kCACornerCurveContinuous];
    [(CALayer *)v12->_fullscreenLayer setPosition:MidX, MidY];
    [(CALayer *)v12->_fullscreenLayer setActions:v17];
    [v54 addSublayer:v12->_fullscreenLayer];
    [(NTKColorAnalogBackgroundView *)v12 setUserInteractionEnabled:0];
  }

  return v12;
}

- (void)applyColor:(id)a3
{
  objc_storeStrong(&self->_color, a3);
  v5 = a3;
  v6 = [v5 CGColor];
  [(CALayer *)self->_circleLayer setBackgroundColor:v6];
  [(CALayer *)self->_fullscreenLayer setBackgroundColor:v6];
  tickLayers = self->_tickLayers;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1598;
  v8[3] = &unk_10410;
  v8[4] = v6;
  [(NSArray *)tickLayers enumerateObjectsUsingBlock:v8];
}

- (void)applyTransitionFraction:(double)a3 fromColor:(id)a4 toColor:(id)a5 withPrimaryColor:(id)a6 boostedColor:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = a6;
  v16 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  *&v17 = fabs(a3 + -0.5) * -2.0 + 1.0;
  [v16 _solveForInput:v17];
  v19 = v18 * 0.025 + 1.0;

  v20 = NTKInterpolateBetweenColors();

  v21 = [v20 CGColor];
  circleLayer = self->_circleLayer;
  CGAffineTransformMakeScale(&v31, v19, v19);
  [(CALayer *)circleLayer setAffineTransform:&v31];
  [(CALayer *)self->_circleLayer setBackgroundColor:v21];
  [(CALayer *)self->_fullscreenLayer setBackgroundColor:v21];
  v23 = [(NSArray *)self->_tickLayers count];
  tickLayers = self->_tickLayers;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_17A4;
  v27[3] = &unk_10438;
  v30 = llround((v23 + 1) * a3);
  v28 = v12;
  v29 = v13;
  v25 = v13;
  v26 = v12;
  [(NSArray *)tickLayers enumerateObjectsUsingBlock:v27];
}

- (void)applyStyle:(unint64_t)a3
{
  self->_style = a3;
  fullscreenLayer = self->_fullscreenLayer;
  if (a3 == 2)
  {
    *&v3 = 1.0;
  }

  else
  {
    *&v3 = 0.0;
  }

  [(CALayer *)fullscreenLayer setOpacity:v3];
  if (a3 == 1)
  {
    *&v7 = 1.0;
  }

  else
  {
    *&v7 = 0.0;
  }

  [(CALayer *)self->_circleLayer setOpacity:v7];
  if (a3)
  {
    *&v8 = 0.0;
  }

  else
  {
    *&v8 = 1.0;
  }

  [(CALayer *)self->_tickContainerLayer setOpacity:v8];
  v9 = [NSNumber numberWithUnsignedInteger:a3];
  v11 = v9;
  v10 = [NSArray arrayWithObjects:&v11 count:1];
  [(NTKColorAnalogBackgroundView *)self updateLayerVisibilityForStyles:v10];
}

- (void)applyTransitionFraction:(double)a3 fromStyle:(unint64_t)a4 toStyle:(unint64_t)a5
{
  fullscreenLayer = self->_fullscreenLayer;
  CLKInterpolateBetweenFloatsClipped();
  *&v9 = v9;
  [(CALayer *)fullscreenLayer setOpacity:v9];
  circleLayer = self->_circleLayer;
  CLKInterpolateBetweenFloatsClipped();
  *&v11 = v11;
  [(CALayer *)circleLayer setOpacity:v11];
  tickContainerLayer = self->_tickContainerLayer;
  CLKInterpolateBetweenFloatsClipped();
  *&v13 = v13;
  [(CALayer *)tickContainerLayer setOpacity:v13];
  v14 = [NSNumber numberWithUnsignedInteger:a4];
  v17[0] = v14;
  v15 = [NSNumber numberWithUnsignedInteger:a5];
  v17[1] = v15;
  v16 = [NSArray arrayWithObjects:v17 count:2];
  [(NTKColorAnalogBackgroundView *)self updateLayerVisibilityForStyles:v16];
}

- (void)updateLayerVisibilityForStyles:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    v8 = 1;
    v9 = 1;
    v10 = 1;
    while (1)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v12 = [*(*(&v13 + 1) + 8 * i) integerValue];
        if (v12 != &dword_0 + 2)
        {
          if (v12 != &dword_0 + 1)
          {
            if (v12)
            {
              continue;
            }

            v10 = 0;
          }

          v9 = 0;
        }

        v8 = 0;
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (!v6)
      {
        goto LABEL_16;
      }
    }
  }

  v8 = 1;
  v9 = 1;
  v10 = 1;
LABEL_16:
  [(CALayer *)self->_tickContainerLayer setHidden:v10 & 1];
  [(CALayer *)self->_circleLayer setHidden:v9 & 1];
  [(CALayer *)self->_fullscreenLayer setHidden:v8 & 1];
}

@end