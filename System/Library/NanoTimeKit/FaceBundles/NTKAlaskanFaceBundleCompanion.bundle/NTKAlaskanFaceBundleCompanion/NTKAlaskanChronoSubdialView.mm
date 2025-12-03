@interface NTKAlaskanChronoSubdialView
+ (id)layerDisabledActions;
- (NTKAlaskanChronoSubdialView)initWithFrame:(CGRect)frame options:(id)options palette:(id)palette;
- (NTKAlaskanChronoSubdialView)initWithFrame:(CGRect)frame ticksView:(id)view markersView:(id)markersView;
- (void)layoutSubviews;
- (void)updateCircularMask;
- (void)updateWithColorPalette:(id)palette;
@end

@implementation NTKAlaskanChronoSubdialView

- (NTKAlaskanChronoSubdialView)initWithFrame:(CGRect)frame options:(id)options palette:(id)palette
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  optionsCopy = options;
  paletteCopy = palette;
  v13 = +[NTKFaceViewRenderingContext sharedRenderingContext];
  device = [v13 device];

  objc_initWeak(location, self);
  v15 = [NTKAlaskanDialView alloc];
  ticksCount = [optionsCopy ticksCount];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_20C10;
  v32[3] = &unk_39118;
  objc_copyWeak(&v35, location);
  v17 = optionsCopy;
  v33 = v17;
  v18 = device;
  v34 = v18;
  v19 = [(NTKAlaskanDialView *)v15 initWithNumberOfMarkers:ticksCount markersFactory:v32];
  [v17 ticksContentInset];
  [(NTKAlaskanDialView *)v19 setContentInset:?];
  [(NTKAlaskanDialView *)v19 setShouldRotateMarkers:1];
  [(NTKAlaskanDialView *)v19 setShouldPixelAlignCenterPoints:0];
  v20 = [NTKAlaskanDialView alloc];
  markersCount = [v17 markersCount];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_20DB8;
  v29[3] = &unk_39140;
  objc_copyWeak(&v31, location);
  v22 = v17;
  v30 = v22;
  v23 = [(NTKAlaskanDialView *)v20 initWithNumberOfMarkers:markersCount markersFactory:v29];
  [v22 markersDiameter];
  [(NTKAlaskanDialView *)v23 setContentDiameter:?];
  height = [(NTKAlaskanChronoSubdialView *)self initWithFrame:v19 ticksView:v23 markersView:x, y, width, height];
  subdialClock = [paletteCopy subdialClock];
  [(NTKAlaskanChronoSubdialView *)height setBackgroundColor:subdialClock];

  subdialClockHand = [paletteCopy subdialClockHand];
  analogHand = [(NTKAlaskanChronoSubdialView *)height analogHand];
  [analogHand setTintColor:subdialClockHand];

  [(NTKAlaskanChronoSubdialView *)height setOptions:v22];
  [(NTKAlaskanChronoSubdialView *)height setPalette:paletteCopy];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&v35);
  objc_destroyWeak(location);

  return height;
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

- (NTKAlaskanChronoSubdialView)initWithFrame:(CGRect)frame ticksView:(id)view markersView:(id)markersView
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  markersViewCopy = markersView;
  v22.receiver = self;
  v22.super_class = NTKAlaskanChronoSubdialView;
  height = [(NTKAlaskanChronoSubdialView *)&v22 initWithFrame:x, y, width, height];
  v15 = height;
  if (height)
  {
    objc_storeStrong(&height->_tickView, view);
    objc_storeStrong(&v15->_markersView, markersView);
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
  tickView = [(NTKAlaskanChronoSubdialView *)self tickView];
  [(NTKAlaskanChronoSubdialView *)self bounds];
  [tickView ntk_setBoundsAndPositionFromFrame:?];

  markersView = [(NTKAlaskanChronoSubdialView *)self markersView];
  [(NTKAlaskanChronoSubdialView *)self bounds];
  [markersView ntk_setBoundsAndPositionFromFrame:?];

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
  layer = [(NTKAlaskanChronoSubdialView *)self layer];
  [layer setCornerRadius:v4];

  v6 = +[NTKFaceViewRenderingContext sharedRenderingContext];
  device = [v6 device];

  v7 = [CLKUIAnalogHandConfiguration defaultSubdialConfigurationForDevice:device];
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
  layer2 = [(UIImageView *)self->_analogHand layer];
  [layer2 setAnchorPoint:{v13, v15}];

  [(NTKAlaskanChronoSubdialView *)self bounds];
  CLKRectGetCenter();
  [(UIImageView *)self->_analogHand setCenter:?];
}

- (void)updateWithColorPalette:(id)palette
{
  paletteCopy = palette;
  objc_storeStrong(&self->_palette, palette);
  tickView = self->_tickView;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_21548;
  v19[3] = &unk_39168;
  v19[4] = self;
  v7 = paletteCopy;
  v20 = v7;
  [(NTKAlaskanDialView *)tickView enumerateMarkers:v19];
  markersView = self->_markersView;
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_21618;
  v16 = &unk_39190;
  selfCopy = self;
  v18 = v7;
  v9 = v7;
  [(NTKAlaskanDialView *)markersView enumerateMarkers:&v13];
  subdialClock = [v9 subdialClock];
  [(NTKAlaskanChronoSubdialView *)self setBackgroundColor:subdialClock];

  subdialClockHand = [v9 subdialClockHand];
  analogHand = [(NTKAlaskanChronoSubdialView *)self analogHand];
  [analogHand setTintColor:subdialClockHand];
}

@end