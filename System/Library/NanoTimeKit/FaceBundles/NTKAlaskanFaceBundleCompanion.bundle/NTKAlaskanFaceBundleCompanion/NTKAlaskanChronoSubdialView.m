@interface NTKAlaskanChronoSubdialView
+ (id)layerDisabledActions;
- (NTKAlaskanChronoSubdialView)initWithFrame:(CGRect)a3 options:(id)a4 palette:(id)a5;
- (NTKAlaskanChronoSubdialView)initWithFrame:(CGRect)a3 ticksView:(id)a4 markersView:(id)a5;
- (void)layoutSubviews;
- (void)updateCircularMask;
- (void)updateWithColorPalette:(id)a3;
@end

@implementation NTKAlaskanChronoSubdialView

- (NTKAlaskanChronoSubdialView)initWithFrame:(CGRect)a3 options:(id)a4 palette:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v12 = a5;
  v13 = +[NTKFaceViewRenderingContext sharedRenderingContext];
  v14 = [v13 device];

  objc_initWeak(location, self);
  v15 = [NTKAlaskanDialView alloc];
  v16 = [v11 ticksCount];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_20C10;
  v32[3] = &unk_39118;
  objc_copyWeak(&v35, location);
  v17 = v11;
  v33 = v17;
  v18 = v14;
  v34 = v18;
  v19 = [(NTKAlaskanDialView *)v15 initWithNumberOfMarkers:v16 markersFactory:v32];
  [v17 ticksContentInset];
  [(NTKAlaskanDialView *)v19 setContentInset:?];
  [(NTKAlaskanDialView *)v19 setShouldRotateMarkers:1];
  [(NTKAlaskanDialView *)v19 setShouldPixelAlignCenterPoints:0];
  v20 = [NTKAlaskanDialView alloc];
  v21 = [v17 markersCount];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_20DB8;
  v29[3] = &unk_39140;
  objc_copyWeak(&v31, location);
  v22 = v17;
  v30 = v22;
  v23 = [(NTKAlaskanDialView *)v20 initWithNumberOfMarkers:v21 markersFactory:v29];
  [v22 markersDiameter];
  [(NTKAlaskanDialView *)v23 setContentDiameter:?];
  v24 = [(NTKAlaskanChronoSubdialView *)self initWithFrame:v19 ticksView:v23 markersView:x, y, width, height];
  v25 = [v12 subdialClock];
  [(NTKAlaskanChronoSubdialView *)v24 setBackgroundColor:v25];

  v26 = [v12 subdialClockHand];
  v27 = [(NTKAlaskanChronoSubdialView *)v24 analogHand];
  [v27 setTintColor:v26];

  [(NTKAlaskanChronoSubdialView *)v24 setOptions:v22];
  [(NTKAlaskanChronoSubdialView *)v24 setPalette:v12];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&v35);
  objc_destroyWeak(location);

  return v24;
}

+ (id)layerDisabledActions
{
  v2 = +[NSNull null];
  v5[0] = @"contents";
  v5[1] = @"backgroundColor";
  v6[0] = v2;
  v6[1] = v2;
  v5[2] = @"transform";
  v5[3] = @"bounds";
  v6[2] = v2;
  v6[3] = v2;
  v5[4] = @"position";
  v5[5] = @"opacity";
  v6[4] = v2;
  v6[5] = v2;
  v5[6] = @"mask";
  v6[6] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:7];

  return v3;
}

- (NTKAlaskanChronoSubdialView)initWithFrame:(CGRect)a3 ticksView:(id)a4 markersView:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a4;
  v13 = a5;
  v22.receiver = self;
  v22.super_class = NTKAlaskanChronoSubdialView;
  v14 = [(NTKAlaskanChronoSubdialView *)&v22 initWithFrame:x, y, width, height];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_tickView, a4);
    objc_storeStrong(&v15->_markersView, a5);
    v16 = [UIImageView alloc];
    [(NTKAlaskanChronoSubdialView *)v15 frame];
    v17 = [v16 initWithFrame:?];
    analogHand = v15->_analogHand;
    v15->_analogHand = v17;

    v19 = +[UIColor whiteColor];
    [(UIImageView *)v15->_analogHand setTintColor:v19];

    if (v15->_tickView)
    {
      [(NTKAlaskanChronoSubdialView *)v15 addSubview:?];
    }

    if (v15->_markersView)
    {
      [(NTKAlaskanChronoSubdialView *)v15 addSubview:?];
    }

    [(NTKAlaskanChronoSubdialView *)v15 addSubview:v15->_analogHand];
    v20 = +[UIColor blackColor];
    [(NTKAlaskanChronoSubdialView *)v15 setBackgroundColor:v20];
  }

  return v15;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = NTKAlaskanChronoSubdialView;
  [(NTKAlaskanChronoSubdialView *)&v9 layoutSubviews];
  v3 = [(NTKAlaskanChronoSubdialView *)self tickView];
  [(NTKAlaskanChronoSubdialView *)self bounds];
  [v3 ntk_setBoundsAndPositionFromFrame:?];

  v4 = [(NTKAlaskanChronoSubdialView *)self markersView];
  [(NTKAlaskanChronoSubdialView *)self bounds];
  [v4 ntk_setBoundsAndPositionFromFrame:?];

  [(NTKAlaskanChronoSubdialView *)self bounds];
  v6 = v5;
  [(NTKAlaskanChronoSubdialView *)self bounds];
  if (v6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (self->_diameter != v8)
  {
    self->_diameter = v8;
    [(NTKAlaskanChronoSubdialView *)self updateCircularMask];
  }
}

- (void)updateCircularMask
{
  [(NTKAlaskanChronoSubdialView *)self bounds];
  v4 = v3 * 0.5;
  v5 = [(NTKAlaskanChronoSubdialView *)self layer];
  [v5 setCornerRadius:v4];

  v6 = +[NTKFaceViewRenderingContext sharedRenderingContext];
  v17 = [v6 device];

  v7 = [CLKUIAnalogHandConfiguration defaultSubdialConfigurationForDevice:v17];
  [(NTKAlaskanChronoSubdialView *)self bounds];
  [v7 setHandLength:v8 * 0.5 + -1.0];
  v9 = [CLKUIAnalogHandFactory getAssets:2 forConfiguration:v7];
  v10 = [v9 objectForKeyedSubscript:&off_3AA88];
  v11 = [v10 imageWithRenderingMode:2];

  [(UIImageView *)self->_analogHand setImage:v11];
  [v7 bounds];
  [(UIImageView *)self->_analogHand setBounds:?];
  [v7 anchorPoint];
  v13 = v12;
  v15 = v14;
  v16 = [(UIImageView *)self->_analogHand layer];
  [v16 setAnchorPoint:{v13, v15}];

  [(NTKAlaskanChronoSubdialView *)self bounds];
  CLKRectGetCenter();
  [(UIImageView *)self->_analogHand setCenter:?];
}

- (void)updateWithColorPalette:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_palette, a3);
  tickView = self->_tickView;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_21548;
  v19[3] = &unk_39168;
  v19[4] = self;
  v7 = v5;
  v20 = v7;
  [(NTKAlaskanDialView *)tickView enumerateMarkers:v19];
  markersView = self->_markersView;
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_21618;
  v16 = &unk_39190;
  v17 = self;
  v18 = v7;
  v9 = v7;
  [(NTKAlaskanDialView *)markersView enumerateMarkers:&v13];
  v10 = [v9 subdialClock];
  [(NTKAlaskanChronoSubdialView *)self setBackgroundColor:v10];

  v11 = [v9 subdialClockHand];
  v12 = [(NTKAlaskanChronoSubdialView *)self analogHand];
  [v12 setTintColor:v11];
}

@end