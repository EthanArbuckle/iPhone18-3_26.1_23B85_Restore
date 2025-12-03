@interface NTKAlaskanChronoDialView
+ (id)layerDisabledActions;
- (NTKAlaskanChronoDialView)initWithFrame:(CGRect)frame options:(id)options palette:(id)palette;
- (void)updateWithColorPalette:(id)palette;
@end

@implementation NTKAlaskanChronoDialView

- (NTKAlaskanChronoDialView)initWithFrame:(CGRect)frame options:(id)options palette:(id)palette
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  optionsCopy = options;
  paletteCopy = palette;
  v47.receiver = self;
  v47.super_class = NTKAlaskanChronoDialView;
  height = [(NTKAlaskanChronoDialView *)&v47 initWithFrame:x, y, width, height];
  if (height)
  {
    v15 = +[NTKFaceViewRenderingContext sharedRenderingContext];
    device = [v15 device];

    objc_storeStrong(&height->_palette, palette);
    objc_storeStrong(&height->_options, options);
    objc_initWeak(&location, height);
    ticksCount = [optionsCopy ticksCount];
    v18 = [NTKAlaskanDialView alloc];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_11598;
    v42[3] = &unk_39118;
    objc_copyWeak(&v45, &location);
    v43 = optionsCopy;
    v31 = device;
    v44 = v31;
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_11830;
    v40[3] = &unk_38D48;
    v19 = v43;
    v41 = v19;
    v20 = [(NTKAlaskanDialView *)v18 initWithNumberOfMarkers:ticksCount markersFactory:v42 angleProvider:v40];
    [(NTKAlaskanDialView *)v20 setShouldRotateMarkers:1];
    [v19 ticksContentInset];
    [(NTKAlaskanDialView *)v20 setContentInset:?];
    v21 = +[UIColor clearColor];
    [(NTKAlaskanDialView *)v20 setBackgroundColor:v21];

    [(NTKAlaskanDialView *)v20 setShouldPixelAlignCenterPoints:0];
    [(NTKAlaskanDialView *)v20 setAutoresizingMask:18];
    objc_storeStrong(&height->_ticksView, v20);
    [(NTKAlaskanChronoDialView *)height addSubview:height->_ticksView];
    v22 = [NTKAlaskanDialView alloc];
    markersCount = [v19 markersCount];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_118BC;
    v37[3] = &unk_39140;
    objc_copyWeak(&v39, &location);
    v38 = v19;
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_119F0;
    v35[3] = &unk_38D48;
    v24 = v38;
    v36 = v24;
    v25 = [(NTKAlaskanDialView *)v22 initWithNumberOfMarkers:markersCount markersFactory:v37 angleProvider:v35];
    [v24 markersDiameter];
    [(NTKAlaskanDialView *)v25 setContentDiameter:?];
    [(NTKAlaskanDialView *)v25 setAutoresizingMask:18];
    objc_storeStrong(&height->_markersView, v25);
    [(NTKAlaskanChronoDialView *)height addSubview:height->_markersView];
    if ([v24 hasSecondaryMarkers])
    {
      v26 = [NTKAlaskanDialView alloc];
      secondaryMarkersCount = [v24 secondaryMarkersCount];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_11A7C;
      v32[3] = &unk_39140;
      objc_copyWeak(&v34, &location);
      v28 = v24;
      v33 = v28;
      v29 = [(NTKAlaskanDialView *)v26 initWithNumberOfMarkers:secondaryMarkersCount markersFactory:v32];
      [v28 secondaryMarkersDiameter];
      [(NTKAlaskanDialView *)v29 setContentDiameter:?];
      [(NTKAlaskanDialView *)v29 setAutoresizingMask:18];
      objc_storeStrong(&height->_secondaryMarkersView, v29);
      [(NTKAlaskanChronoDialView *)height addSubview:height->_secondaryMarkersView];

      objc_destroyWeak(&v34);
    }

    objc_destroyWeak(&v39);
    objc_destroyWeak(&v45);
    objc_destroyWeak(&location);
  }

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

- (void)updateWithColorPalette:(id)palette
{
  paletteCopy = palette;
  objc_storeStrong(&self->_palette, palette);
  ticksView = self->_ticksView;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_11E40;
  v16[3] = &unk_39168;
  v16[4] = self;
  v7 = paletteCopy;
  v17 = v7;
  [(NTKAlaskanDialView *)ticksView enumerateMarkers:v16];
  markersView = self->_markersView;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_11F10;
  v14[3] = &unk_39190;
  v14[4] = self;
  v9 = v7;
  v15 = v9;
  [(NTKAlaskanDialView *)markersView enumerateMarkers:v14];
  secondaryMarkersView = self->_secondaryMarkersView;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_11FBC;
  v12[3] = &unk_39190;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [(NTKAlaskanDialView *)secondaryMarkersView enumerateMarkers:v12];
}

@end