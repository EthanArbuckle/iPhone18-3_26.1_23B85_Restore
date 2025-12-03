@interface NTKSpectrumAnalogDialView
+ (id)_disabledLayerActions;
- (NTKSpectrumAnalogDialView)initWithFrame:(CGRect)frame forDevice:(id)device;
- (double)_tickOpactiyAtIndex:(int64_t)index bezelTextWidthInRadius:(double)radius invisibleTicksAlpha:(double)alpha;
- (id)_instantaneousAnimationForKeyPath:(id)path value:(id)value;
- (void)_toggleRasterization:(BOOL)rasterization;
- (void)fillDialTransitionWithFraction:(double)fraction bezelTextWidthRadians:(double)radians;
- (void)layoutSubviews;
- (void)transitInvisibleTicksAlphaWithBezelTextWidthInRadius:(double)radius invisbleTicksAlpha:(double)alpha;
- (void)transitTicksWithInitialBezelTextWidthInRadius:(double)radius finalBezelTextWidthInRadius:(double)inRadius fraction:(double)fraction;
@end

@implementation NTKSpectrumAnalogDialView

- (NTKSpectrumAnalogDialView)initWithFrame:(CGRect)frame forDevice:(id)device
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  deviceCopy = device;
  v53.receiver = self;
  v53.super_class = NTKSpectrumAnalogDialView;
  height = [(NTKSpectrumAnalogDialView *)&v53 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_device, device);
    [(NTKSpectrumAnalogDialView *)v12 setOpaque:0];
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    sub_25B0(v12->_device, &v49);
    layer = [(NTKSpectrumAnalogDialView *)v12 layer];
    [layer bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = v18 * 0.5;
    v23 = v20 * 0.5;
    _disabledLayerActions = [objc_opt_class() _disabledLayerActions];
    v25 = objc_opt_new();
    ticksLayer = v12->_ticksLayer;
    v12->_ticksLayer = v25;

    [(CALayer *)v12->_ticksLayer setPosition:v22, v23];
    [(CALayer *)v12->_ticksLayer setBounds:v15, v17, v19, v21];
    [(CALayer *)v12->_ticksLayer setActions:_disabledLayerActions];
    v45 = layer;
    [layer addSublayer:v12->_ticksLayer];
    v27 = +[NSMutableArray array];
    v28 = +[UIColor grayColor];
    v29 = +[UIColor whiteColor];
    v30 = 0;
    v31 = v51;
    v47 = *&v51 * 0.5;
    v48 = *(&v51 + 1);
    v32 = v49;
    v46 = *&v49;
    v33 = v50;
    v34 = *(&v49 + 1) * 0.5;
    do
    {
      v35 = v30 % 0xAu;
      v36 = objc_opt_new();
      v37 = v36;
      if (v35)
      {
        v38 = *(&v33 + 1);
      }

      else
      {
        v38 = v46;
      }

      if (v35)
      {
        v39 = *&v31;
      }

      else
      {
        v39 = *(&v32 + 1);
      }

      if (v35)
      {
        v40 = v48;
      }

      else
      {
        v40 = *&v33;
      }

      if (v35)
      {
        v41 = v47;
      }

      else
      {
        v41 = v34;
      }

      if (v35)
      {
        v42 = v28;
      }

      else
      {
        v42 = v29;
      }

      [v36 setBounds:{0.0, 0.0, v38, v39}];
      [v37 setCornerRadius:v40];
      [v37 setPosition:{v22, v41}];
      [v37 setActions:_disabledLayerActions];
      [v37 setBackgroundColor:{objc_msgSend(v42, "CGColor")}];
      [(CALayer *)v12->_ticksLayer addSublayer:v37];
      [(NSArray *)v27 addObject:v37];

      ++v30;
    }

    while (v30 != 120);
    allTicks = v12->_allTicks;
    v12->_allTicks = v27;

    *&v12->_tickPadding = v52;
    [(NTKSpectrumAnalogDialView *)v12 _toggleRasterization:1];
  }

  return v12;
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = NTKSpectrumAnalogDialView;
  [(NTKSpectrumAnalogDialView *)&v22 layoutSubviews];
  [(NTKSpectrumAnalogDialView *)self bounds];
  v4 = v3;
  v20 = 0u;
  v21 = 0u;
  memset(v19, 0, sizeof(v19));
  sub_25B0(self->_device, v19);
  v5 = 0;
  v6 = (*(v19 + 1) - *&v20) * 0.5;
  v14 = *&CGAffineTransformIdentity.c;
  v15 = *&CGAffineTransformIdentity.a;
  v13 = *&CGAffineTransformIdentity.tx;
  do
  {
    v7 = [(NSArray *)self->_allTicks objectAtIndexedSubscript:v5, v13, v14, v15];
    *&v18.a = v15;
    *&v18.c = v14;
    *&v18.tx = v13;
    tickPadding = self->_tickPadding;
    *&v17.a = v15;
    *&v17.c = v14;
    *&v17.tx = v13;
    CGAffineTransformTranslate(&v18, &v17, 0.0, tickPadding);
    [v7 size];
    v10 = v4 * 0.5 + v9 * -0.5 - self->_tickPadding;
    v16 = v18;
    CGAffineTransformTranslate(&v17, &v16, 0.0, v10);
    v18 = v17;
    CLKDegreesToRadians();
    v16 = v18;
    CGAffineTransformRotate(&v17, &v16, v11);
    v18 = v17;
    v16 = v17;
    CGAffineTransformTranslate(&v17, &v16, 0.0, -v10);
    v18 = v17;
    HIDWORD(v12) = -858993459 * v5;
    LODWORD(v12) = HIDWORD(v12);
    if ((v12 >> 1) >= 0x1999999A)
    {
      v16 = v18;
      CGAffineTransformTranslate(&v17, &v16, 0.0, v6);
      v18 = v17;
    }

    v17 = v18;
    [v7 setAffineTransform:&v17];

    ++v5;
  }

  while (v5 != 120);
}

- (id)_instantaneousAnimationForKeyPath:(id)path value:(id)value
{
  valueCopy = value;
  v5 = [CABasicAnimation animationWithKeyPath:@"instanceDelay"];
  [v5 setFromValue:valueCopy];
  [v5 setToValue:valueCopy];

  [v5 setBeginTime:0.00000011920929];
  [v5 setDuration:0.00001];
  [v5 setFillMode:kCAFillModeForwards];

  return v5;
}

- (void)fillDialTransitionWithFraction:(double)fraction bezelTextWidthRadians:(double)radians
{
  v6 = ([(NSArray *)self->_allTicks count]* fraction);
  allTicks = self->_allTicks;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_203C;
  v8[3] = &unk_10498;
  v8[4] = self;
  *&v8[5] = radians;
  v8[6] = v6;
  [(NSArray *)allTicks enumerateObjectsUsingBlock:v8];
}

- (void)transitTicksWithInitialBezelTextWidthInRadius:(double)radius finalBezelTextWidthInRadius:(double)inRadius fraction:(double)fraction
{
  allTicks = self->_allTicks;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_2160;
  v6[3] = &unk_104C0;
  v6[4] = self;
  *&v6[5] = radius;
  *&v6[6] = inRadius;
  *&v6[7] = fraction;
  [(NSArray *)allTicks enumerateObjectsUsingBlock:v6];
}

- (void)transitInvisibleTicksAlphaWithBezelTextWidthInRadius:(double)radius invisbleTicksAlpha:(double)alpha
{
  allTicks = self->_allTicks;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_2288;
  v5[3] = &unk_10498;
  v5[4] = self;
  *&v5[5] = radius;
  *&v5[6] = alpha;
  [(NSArray *)allTicks enumerateObjectsUsingBlock:v5];
}

+ (id)_disabledLayerActions
{
  if (qword_165F8 != -1)
  {
    sub_7BD4();
  }

  v3 = qword_165F0;

  return v3;
}

- (double)_tickOpactiyAtIndex:(int64_t)index bezelTextWidthInRadius:(double)radius invisibleTicksAlpha:(double)alpha
{
  if (index >= 61)
  {
    [(NSArray *)self->_allTicks count];
  }

  CLKDegreesToRadians();
  v8 = v7 < radius * 0.5;
  result = 1.0;
  if (v8)
  {
    return alpha;
  }

  return result;
}

- (void)_toggleRasterization:(BOOL)rasterization
{
  rasterizationCopy = rasterization;
  layer = [(NTKSpectrumAnalogDialView *)self layer];
  v6 = layer;
  if (rasterizationCopy)
  {
    [layer setShouldRasterize:1];
    [(CLKDevice *)self->_device screenScale];
    [v6 setRasterizationScale:?];
  }

  else
  {
    [layer setShouldRasterize:0];
  }
}

@end