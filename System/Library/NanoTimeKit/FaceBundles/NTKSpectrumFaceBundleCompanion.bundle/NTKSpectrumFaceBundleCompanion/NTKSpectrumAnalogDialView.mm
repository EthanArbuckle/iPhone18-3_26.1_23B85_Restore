@interface NTKSpectrumAnalogDialView
+ (id)_disabledLayerActions;
- (NTKSpectrumAnalogDialView)initWithFrame:(CGRect)a3 forDevice:(id)a4;
- (double)_tickOpactiyAtIndex:(int64_t)a3 bezelTextWidthInRadius:(double)a4 invisibleTicksAlpha:(double)a5;
- (id)_instantaneousAnimationForKeyPath:(id)a3 value:(id)a4;
- (void)_toggleRasterization:(BOOL)a3;
- (void)fillDialTransitionWithFraction:(double)a3 bezelTextWidthRadians:(double)a4;
- (void)layoutSubviews;
- (void)transitInvisibleTicksAlphaWithBezelTextWidthInRadius:(double)a3 invisbleTicksAlpha:(double)a4;
- (void)transitTicksWithInitialBezelTextWidthInRadius:(double)a3 finalBezelTextWidthInRadius:(double)a4 fraction:(double)a5;
@end

@implementation NTKSpectrumAnalogDialView

- (NTKSpectrumAnalogDialView)initWithFrame:(CGRect)a3 forDevice:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v53.receiver = self;
  v53.super_class = NTKSpectrumAnalogDialView;
  v11 = [(NTKSpectrumAnalogDialView *)&v53 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_device, a4);
    [(NTKSpectrumAnalogDialView *)v12 setOpaque:0];
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    sub_25B0(v12->_device, &v49);
    v13 = [(NTKSpectrumAnalogDialView *)v12 layer];
    [v13 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = v18 * 0.5;
    v23 = v20 * 0.5;
    v24 = [objc_opt_class() _disabledLayerActions];
    v25 = objc_opt_new();
    ticksLayer = v12->_ticksLayer;
    v12->_ticksLayer = v25;

    [(CALayer *)v12->_ticksLayer setPosition:v22, v23];
    [(CALayer *)v12->_ticksLayer setBounds:v15, v17, v19, v21];
    [(CALayer *)v12->_ticksLayer setActions:v24];
    v45 = v13;
    [v13 addSublayer:v12->_ticksLayer];
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
      [v37 setActions:v24];
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

- (id)_instantaneousAnimationForKeyPath:(id)a3 value:(id)a4
{
  v4 = a4;
  v5 = [CABasicAnimation animationWithKeyPath:@"instanceDelay"];
  [v5 setFromValue:v4];
  [v5 setToValue:v4];

  [v5 setBeginTime:0.00000011920929];
  [v5 setDuration:0.00001];
  [v5 setFillMode:kCAFillModeForwards];

  return v5;
}

- (void)fillDialTransitionWithFraction:(double)a3 bezelTextWidthRadians:(double)a4
{
  v6 = ([(NSArray *)self->_allTicks count]* a3);
  allTicks = self->_allTicks;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_203C;
  v8[3] = &unk_10498;
  v8[4] = self;
  *&v8[5] = a4;
  v8[6] = v6;
  [(NSArray *)allTicks enumerateObjectsUsingBlock:v8];
}

- (void)transitTicksWithInitialBezelTextWidthInRadius:(double)a3 finalBezelTextWidthInRadius:(double)a4 fraction:(double)a5
{
  allTicks = self->_allTicks;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_2160;
  v6[3] = &unk_104C0;
  v6[4] = self;
  *&v6[5] = a3;
  *&v6[6] = a4;
  *&v6[7] = a5;
  [(NSArray *)allTicks enumerateObjectsUsingBlock:v6];
}

- (void)transitInvisibleTicksAlphaWithBezelTextWidthInRadius:(double)a3 invisbleTicksAlpha:(double)a4
{
  allTicks = self->_allTicks;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_2288;
  v5[3] = &unk_10498;
  v5[4] = self;
  *&v5[5] = a3;
  *&v5[6] = a4;
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

- (double)_tickOpactiyAtIndex:(int64_t)a3 bezelTextWidthInRadius:(double)a4 invisibleTicksAlpha:(double)a5
{
  if (a3 >= 61)
  {
    [(NSArray *)self->_allTicks count];
  }

  CLKDegreesToRadians();
  v8 = v7 < a4 * 0.5;
  result = 1.0;
  if (v8)
  {
    return a5;
  }

  return result;
}

- (void)_toggleRasterization:(BOOL)a3
{
  v3 = a3;
  v5 = [(NTKSpectrumAnalogDialView *)self layer];
  v6 = v5;
  if (v3)
  {
    [v5 setShouldRasterize:1];
    [(CLKDevice *)self->_device screenScale];
    [v6 setRasterizationScale:?];
  }

  else
  {
    [v5 setShouldRasterize:0];
  }
}

@end