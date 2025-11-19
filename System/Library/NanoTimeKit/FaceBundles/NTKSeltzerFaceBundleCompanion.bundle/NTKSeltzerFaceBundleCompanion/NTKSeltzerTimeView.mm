@interface NTKSeltzerTimeView
- (CGAffineTransform)_moonViewTransformForStyle:(SEL)a3;
- (CGSize)_cardinalSecondTickSize;
- (CGSize)_hourTickSize;
- (CGSize)_minuteTickSize;
- (CGSize)_secondTickSize;
- (NTKSeltzerTimeView)initWithFrame:(CGRect)a3 style:(unint64_t)a4 andDevice:(id)a5;
- (double)_cardinalSecondTickInset;
- (double)_hourTickInset;
- (double)_minuteTickInset;
- (double)_secondTickInset;
- (id)_customDialBackgroundView;
- (id)_digitalLabelFont;
- (void)_setupAnalogHandsView;
- (void)applyDataMode:(int64_t)a3;
- (void)applyInteractiveModeProgress:(double)a3;
- (void)applyTransitionFraction:(double)a3 fromStyle:(unint64_t)a4 toStyle:(unint64_t)a5;
- (void)layoutSubviews;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
- (void)setPalette:(id)a3;
- (void)setStyle:(unint64_t)a3;
@end

@implementation NTKSeltzerTimeView

- (NTKSeltzerTimeView)initWithFrame:(CGRect)a3 style:(unint64_t)a4 andDevice:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a5;
  v34.receiver = self;
  v34.super_class = NTKSeltzerTimeView;
  v12 = [(NTKSeltzerTimeView *)&v34 initWithFrame:a4 style:v11 andDevice:x, y, width, height];
  if (v12)
  {
    sub_2078(v11, &v32);
    v13 = v33;
    v14 = [NUNIAstronomyVistaConfiguration defaultConfigurationWithDevice:v11];
    v15 = [[NUNIAstronomyVistaView alloc] initWithFrame:v14 configuration:{0.0, 0.0, v13, v13}];
    astronomyVistaView = v12->_astronomyVistaView;
    v12->_astronomyVistaView = v15;

    [(NUNIAstronomyVistaView *)v12->_astronomyVistaView setOpaque:0];
    objc_initWeak(&location, v12);
    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = sub_1260;
    v29 = &unk_10448;
    objc_copyWeak(&v30, &location);
    v17 = objc_retainBlock(&v26);
    v18 = [NUNIScene alloc];
    v19 = [v18 initWithSphereoids:24 currentDateBlock:{v17, v26, v27, v28, v29}];
    [(NUNIAstronomyVistaView *)v12->_astronomyVistaView setScene:v19];
    [(NUNIAstronomyVistaView *)v12->_astronomyVistaView applyVista:1 transitionStyle:0];
    [(NUNIAstronomyVistaView *)v12->_astronomyVistaView setFrameInterval:3];
    [(NUNIAstronomyVistaView *)v12->_astronomyVistaView updateSunLocationAnimated:0];
    v20 = [(NTKSeltzerTimeView *)v12 dialBackgroundView];
    [v20 addSubview:v12->_astronomyVistaView];

    v21 = [(NTKSeltzerTimeView *)v12 dialBackgroundView];
    [v21 sendSubviewToBack:v12->_astronomyVistaView];

    v22 = +[UIColor blackColor];
    v23 = [(NTKSeltzerTimeView *)v12 analogHandsView];
    v24 = [v23 secondHandView];
    [v24 setHandDotColor:v22];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return v12;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = NTKSeltzerTimeView;
  [(NTKSeltzerTimeView *)&v4 layoutSubviews];
  v3 = [(NTKSeltzerTimeView *)self dialBackgroundView];
  [v3 bounds];
  CLKRectGetCenter();
  [(NUNIAstronomyVistaView *)self->_astronomyVistaView setCenter:?];
}

- (void)applyDataMode:(int64_t)a3
{
  if (a3 == 4 || a3 == 2)
  {
    [(NUNIAstronomyVistaView *)self->_astronomyVistaView stopAnimation];
  }

  else if (a3 == 1)
  {
    [(NUNIAstronomyVistaView *)self->_astronomyVistaView startAnimation];
  }
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v7 = a3;
  v8.receiver = self;
  v8.super_class = NTKSeltzerTimeView;
  [(NTKSeltzerTimeView *)&v8 setOverrideDate:v7 duration:a4];
  if (self->_overrideDate != v7 && ![(NSDate *)v7 isEqualToDate:?])
  {
    objc_storeStrong(&self->_overrideDate, a3);
    [(NUNIAstronomyVistaView *)self->_astronomyVistaView updateSunLocationAnimated:a4 > 0.0];
  }
}

- (void)setPalette:(id)a3
{
  objc_storeStrong(&self->_palette, a3);
  [(NTKSeltzerTimeView *)self _applyColorToAnalogHands];

  [(NTKSeltzerTimeView *)self _applyColorToDigitalLabelAndTicks];
}

- (void)setStyle:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = NTKSeltzerTimeView;
  [(NTKSeltzerTimeView *)&v7 setStyle:?];
  [(NTKSeltzerTimeView *)self _moonViewTransformForStyle:a3];
  astronomyVistaView = self->_astronomyVistaView;
  v6[0] = v6[3];
  v6[1] = v6[4];
  v6[2] = v6[5];
  [(NUNIAstronomyVistaView *)astronomyVistaView setTransform:v6];
}

- (id)_customDialBackgroundView
{
  v2 = objc_alloc_init(UIView);

  return v2;
}

- (CGAffineTransform)_moonViewTransformForStyle:(SEL)a3
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [(NTKSeltzerTimeView *)self device:0];
  sub_2078(v6, &v10);

  v7 = &v10 + 1;
  if (!a4)
  {
    v7 = &v10;
  }

  v8 = *v7 / *&v11;

  return CGAffineTransformMakeScale(retstr, v8, v8);
}

- (void)applyInteractiveModeProgress:(double)a3
{
  [(NTKSeltzerTimeView *)self _moonViewTransformForStyle:[(NTKSeltzerTimeView *)self style]];
  v15 = *&CGAffineTransformIdentity.a;
  v16 = *&CGAffineTransformIdentity.c;
  v17 = *&CGAffineTransformIdentity.tx;
  CLKInterpolateBetweenTransform();
  astronomyVistaView = self->_astronomyVistaView;
  v18[0] = v18[3];
  v18[1] = v18[4];
  v18[2] = v18[5];
  [(NUNIAstronomyVistaView *)astronomyVistaView setTransform:v18, v15, v16, v17];
  CLKInterpolateBetweenFloatsClipped();
  v7 = v6;
  if ([(NTKSeltzerTimeView *)self style])
  {
    v8 = [(NTKSeltzerTimeView *)self digitalTicksContainerView];
    [v8 setAlpha:v7];

    CLKInterpolateBetweenFloatsClipped();
    v10 = v9;
    [(NTKSeltzerTimeView *)self digitalTimeLabel];
  }

  else
  {
    v11 = [(NTKSeltzerTimeView *)self analogContainerView];
    [v11 setAlpha:v7];

    CLKInterpolateBetweenFloatsClipped();
    v10 = v12;
    [(NTKSeltzerTimeView *)self analogHandsView];
  }
  v13 = ;
  [v13 setAlpha:v10];

  if (a3 <= 0.0)
  {
    v14 = 3;
  }

  else
  {
    if (a3 < 1.0)
    {
      return;
    }

    v14 = 0;
  }

  [(NUNIAstronomyVistaView *)self->_astronomyVistaView setFrameInterval:v14];
}

- (void)_setupAnalogHandsView
{
  v3 = [NTKSeltzerAnalogHandsView alloc];
  v4 = [(NTKSeltzerTimeView *)self device];
  v5 = [(NTKSeltzerAnalogHandsView *)v3 initForDevice:v4];
  [(NTKSeltzerTimeView *)self setAnalogHandsView:v5];

  v6 = [(NTKSeltzerTimeView *)self analogHandsView];
  [(NTKSeltzerTimeView *)self addSubview:v6];
}

- (double)_minuteTickInset
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v3 = [(NTKSeltzerTimeView *)self device:0];
  sub_2078(v3, &v6);

  [(NTKSeltzerTimeView *)self _hourTickInset];
  return v4 + *&v8 * 2.0 - *&v7 * 2.0;
}

- (double)_hourTickInset
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  v3 = [(NTKSeltzerTimeView *)self device];
  sub_2078(v3, &v6);

  [(NTKSeltzerTimeView *)self bounds];
  MidY = CGRectGetMidY(v13);
  return MidY + *&v6 * -0.5 - *(&v7 + 1) - *&v10 + MidY + *&v6 * -0.5 - *(&v7 + 1) - *&v10;
}

- (CGSize)_minuteTickSize
{
  v2 = [(NTKSeltzerTimeView *)self device];
  sub_2078(v2, &v7);
  v3 = v8;
  v4 = v9;

  v5 = v3;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)_hourTickSize
{
  v2 = [(NTKSeltzerTimeView *)self device];
  sub_2078(v2, v7);
  v3 = v8;
  v4 = v9;

  v5 = v3;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

- (double)_secondTickInset
{
  v7 = 0u;
  v3 = [(NTKSeltzerTimeView *)self device:0];
  sub_2078(v3, &v6);

  [(NTKSeltzerTimeView *)self _cardinalSecondTickInset];
  return v4 + *&v7;
}

- (double)_cardinalSecondTickInset
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  v3 = [(NTKSeltzerTimeView *)self device];
  sub_2078(v3, v6);

  [(NTKSeltzerTimeView *)self bounds];
  MidY = CGRectGetMidY(v12);
  return MidY + *(v6 + 1) * -0.5 - *&v7 - *&v11 + MidY + *(v6 + 1) * -0.5 - *&v7 - *&v11;
}

- (CGSize)_secondTickSize
{
  v2 = [(NTKSeltzerTimeView *)self device];
  sub_2078(v2, v7);
  v3 = v8;
  v4 = v9;

  v5 = v3;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)_cardinalSecondTickSize
{
  v2 = [(NTKSeltzerTimeView *)self device];
  sub_2078(v2, v7);
  v3 = v8;
  v4 = v9;

  v5 = v3;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

- (id)_digitalLabelFont
{
  v2 = [(NTKSeltzerTimeView *)self device];
  sub_2078(v2, v5);
  v3 = [CLKFont compactSoftFontOfSize:v6 weight:UIFontWeightThin];

  return v3;
}

- (void)applyTransitionFraction:(double)a3 fromStyle:(unint64_t)a4 toStyle:(unint64_t)a5
{
  if (a4 != a5)
  {
    v47 = v14;
    v48 = v13;
    v49 = v12;
    v50 = v11;
    v51 = v10;
    v52 = v9;
    v53 = v8;
    v54 = v7;
    v55 = v5;
    v56 = v6;
    v16 = a4;
    CLKMapFractionIntoRange();
    v20 = v19;
    CLKMapFractionIntoRange();
    v22 = v21;
    CLKMapFractionIntoRange();
    v24 = v23;
    CLKMapFractionIntoRange();
    v26 = v25;
    memset(&v46, 0, sizeof(v46));
    CGAffineTransformMakeScale(&v46, v24, v24);
    memset(&v45, 0, sizeof(v45));
    CGAffineTransformMakeScale(&v45, v26, v26);
    v27 = [(NTKSeltzerTimeView *)self analogContainerView];
    [v27 setAlpha:v20];

    v28 = [(NTKSeltzerTimeView *)self analogHandsView];
    [v28 setAlpha:v20];

    v29 = [(NTKSeltzerTimeView *)self digitalContainerView];
    [v29 setAlpha:v22];

    v44 = v46;
    v30 = [(NTKSeltzerTimeView *)self analogContainerView];
    v43 = v44;
    [v30 setTransform:&v43];

    v42 = v46;
    v31 = [(NTKSeltzerTimeView *)self analogHandsView];
    v43 = v42;
    [v31 setTransform:&v43];

    v41 = v45;
    v32 = [(NTKSeltzerTimeView *)self digitalContainerView];
    v43 = v41;
    [v32 setTransform:&v43];

    CLKMapFractionIntoRange();
    if (a3 >= 0.5)
    {
      v34 = v33;
      v16 = a5;
    }

    else
    {
      v34 = v33;
    }

    CLKMapFractionIntoRange();
    memset(&v43, 0, sizeof(v43));
    CGAffineTransformMakeScale(&v43, v35, v35);
    [(NTKSeltzerTimeView *)self _moonViewTransformForStyle:v16];
    astronomyVistaView = self->_astronomyVistaView;
    v40[0] = v40[1];
    [(NUNIAstronomyVistaView *)astronomyVistaView setTransform:v40];
    v37 = [(NTKSeltzerTimeView *)self dialBackgroundView];
    [v37 setAlpha:v34];

    v39 = v43;
    v38 = [(NTKSeltzerTimeView *)self dialBackgroundView];
    v40[0] = v39;
    [v38 setTransform:v40];
  }
}

@end