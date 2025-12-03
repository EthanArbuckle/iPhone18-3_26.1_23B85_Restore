@interface NTKAlaskanSubdialViewFactory
- (id)_12HoursSubdialView;
- (id)_15MinutesSubdialView;
- (id)_2MinutesSubdialView;
- (id)_30MinutesSubdialView;
- (id)_3MinutesSubdialView;
- (id)_60MinutesSubdialView;
- (id)_60secondsSubdialView;
- (id)_subdialViewWithOptions:(id)options palette:(id)palette tag:(int64_t)tag;
- (id)createDefaultOptions;
- (id)markersFont;
@end

@implementation NTKAlaskanSubdialViewFactory

- (id)_subdialViewWithOptions:(id)options palette:(id)palette tag:(int64_t)tag
{
  paletteCopy = palette;
  optionsCopy = options;
  v9 = +[NTKFaceViewRenderingContext sharedRenderingContext];
  device = [v9 device];

  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  memset(v14, 0, sizeof(v14));
  sub_297C(device, v14);
  v11 = [NTKAlaskanChronoSubdialView alloc];
  v12 = [(NTKAlaskanChronoSubdialView *)v11 initWithFrame:optionsCopy options:paletteCopy palette:0.0, 0.0, v15];

  [(NTKAlaskanChronoSubdialView *)v12 setTag:tag];

  return v12;
}

- (id)_12HoursSubdialView
{
  createDefaultOptions = [(NTKAlaskanSubdialViewFactory *)self createDefaultOptions];
  [createDefaultOptions setTicksCount:60];
  [createDefaultOptions setLargerTicksTestBlock:&stru_38768];
  [createDefaultOptions setMarkersCount:12];
  [createDefaultOptions setVisibleMarkersTestBlock:&stru_38788];
  [createDefaultOptions setMarkerTextBlock:&stru_387C8];
  v4 = [(NTKAlaskanSubdialViewFactory *)self _subdialViewWithOptions:createDefaultOptions palette:self->_palette tag:12];

  return v4;
}

- (id)_60MinutesSubdialView
{
  createDefaultOptions = [(NTKAlaskanSubdialViewFactory *)self createDefaultOptions];
  [createDefaultOptions setTicksCount:60];
  [createDefaultOptions setLargerTicksTestBlock:&stru_387E8];
  [createDefaultOptions setMarkersCount:12];
  [createDefaultOptions setVisibleMarkersTestBlock:&stru_38808];
  [createDefaultOptions setMarkerTextBlock:&stru_38828];
  v4 = +[NTKFaceViewRenderingContext sharedRenderingContext];
  device = [v4 device];

  v10 = 0;
  v9 = 0u;
  memset(v8, 0, sizeof(v8));
  sub_297C(device, v8);
  [createDefaultOptions setMarkersDiameter:*&v9];
  v6 = [(NTKAlaskanSubdialViewFactory *)self _subdialViewWithOptions:createDefaultOptions palette:self->_palette tag:60];

  return v6;
}

- (id)_30MinutesSubdialView
{
  createDefaultOptions = [(NTKAlaskanSubdialViewFactory *)self createDefaultOptions];
  [createDefaultOptions setTicksCount:30];
  [createDefaultOptions setLargerTicksTestBlock:&stru_38848];
  [createDefaultOptions setMarkersCount:18];
  v4 = +[NSMutableDictionary dictionary];
  [v4 setObject:&off_3A128 forKeyedSubscript:&off_3A140];
  [v4 setObject:&off_3A158 forKeyedSubscript:&off_3A170];
  [v4 setObject:&off_3A188 forKeyedSubscript:&off_3A1A0];
  [v4 setObject:&off_3A1B8 forKeyedSubscript:&off_3A1D0];
  [v4 setObject:&off_3A1E8 forKeyedSubscript:&off_3A188];
  [v4 setObject:&off_3A200 forKeyedSubscript:&off_3A218];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1C44;
  v16[3] = &unk_38870;
  v5 = v4;
  v17 = v5;
  [createDefaultOptions setVisibleMarkersTestBlock:v16];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1CA0;
  v14[3] = &unk_38898;
  v15 = v5;
  v6 = v5;
  [createDefaultOptions setMarkerTextBlock:v14];
  v7 = +[NTKFaceViewRenderingContext sharedRenderingContext];
  device = [v7 device];

  v13 = 0;
  v12 = 0u;
  memset(v11, 0, sizeof(v11));
  sub_297C(device, v11);
  [createDefaultOptions setMarkersDiameter:*&v12];
  v9 = [(NTKAlaskanSubdialViewFactory *)self _subdialViewWithOptions:createDefaultOptions palette:self->_palette tag:30];

  return v9;
}

- (id)_15MinutesSubdialView
{
  createDefaultOptions = [(NTKAlaskanSubdialViewFactory *)self createDefaultOptions];
  [createDefaultOptions setTicksCount:60];
  [createDefaultOptions setLargerTicksTestBlock:&stru_388B8];
  [createDefaultOptions setMarkersCount:60];
  v4 = +[NSMutableDictionary dictionary];
  [v4 setObject:&off_3A188 forKeyedSubscript:&off_3A218];
  [v4 setObject:&off_3A140 forKeyedSubscript:&off_3A1D0];
  [v4 setObject:&off_3A170 forKeyedSubscript:&off_3A230];
  [v4 setObject:&off_3A1A0 forKeyedSubscript:&off_3A248];
  [v4 setObject:&off_3A1D0 forKeyedSubscript:&off_3A260];
  [v4 setObject:&off_3A188 forKeyedSubscript:&off_3A278];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1FA8;
  v16[3] = &unk_38870;
  v5 = v4;
  v17 = v5;
  [createDefaultOptions setVisibleMarkersTestBlock:v16];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_2004;
  v14[3] = &unk_38898;
  v15 = v5;
  v6 = v5;
  [createDefaultOptions setMarkerTextBlock:v14];
  v7 = +[NTKFaceViewRenderingContext sharedRenderingContext];
  device = [v7 device];

  v13 = 0;
  v12 = 0u;
  memset(v11, 0, sizeof(v11));
  sub_297C(device, v11);
  [createDefaultOptions setMarkersDiameter:*(&v12 + 1)];
  v9 = [(NTKAlaskanSubdialViewFactory *)self _subdialViewWithOptions:createDefaultOptions palette:self->_palette tag:15];

  return v9;
}

- (id)_3MinutesSubdialView
{
  createDefaultOptions = [(NTKAlaskanSubdialViewFactory *)self createDefaultOptions];
  [createDefaultOptions setTicksCount:60];
  [createDefaultOptions setLargerTicksTestBlock:&stru_388D8];
  [createDefaultOptions setMarkersCount:12];
  v4 = +[NSMutableDictionary dictionary];
  [v4 setObject:&off_3A140 forKeyedSubscript:&off_3A218];
  [v4 setObject:&off_3A290 forKeyedSubscript:&off_3A2A8];
  [v4 setObject:&off_3A2C0 forKeyedSubscript:&off_3A2D8];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_2264;
  v14[3] = &unk_38870;
  v5 = v4;
  v15 = v5;
  [createDefaultOptions setVisibleMarkersTestBlock:v14];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_22C0;
  v12 = &unk_38898;
  v13 = v5;
  v6 = v5;
  [createDefaultOptions setMarkerTextBlock:&v9];
  v7 = [(NTKAlaskanSubdialViewFactory *)self _subdialViewWithOptions:createDefaultOptions palette:self->_palette tag:3, v9, v10, v11, v12];

  return v7;
}

- (id)_2MinutesSubdialView
{
  createDefaultOptions = [(NTKAlaskanSubdialViewFactory *)self createDefaultOptions];
  [createDefaultOptions setTicksCount:60];
  [createDefaultOptions setLargerTicksTestBlock:&stru_388F8];
  [createDefaultOptions setMarkersCount:12];
  v4 = +[NSMutableDictionary dictionary];
  [v4 setObject:&off_3A2C0 forKeyedSubscript:&off_3A218];
  [v4 setObject:&off_3A290 forKeyedSubscript:&off_3A170];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_251C;
  v14[3] = &unk_38870;
  v5 = v4;
  v15 = v5;
  [createDefaultOptions setVisibleMarkersTestBlock:v14];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_2578;
  v12 = &unk_38898;
  v13 = v5;
  v6 = v5;
  [createDefaultOptions setMarkerTextBlock:&v9];
  v7 = [(NTKAlaskanSubdialViewFactory *)self _subdialViewWithOptions:createDefaultOptions palette:self->_palette tag:2, v9, v10, v11, v12];

  return v7;
}

- (id)_60secondsSubdialView
{
  createDefaultOptions = [(NTKAlaskanSubdialViewFactory *)self createDefaultOptions];
  [createDefaultOptions setTicksCount:60];
  [createDefaultOptions setLargerTicksTestBlock:&stru_38918];
  [createDefaultOptions setMarkersCount:12];
  [createDefaultOptions setVisibleMarkersTestBlock:&stru_38938];
  [createDefaultOptions setMarkerTextBlock:&stru_38958];
  v4 = [(NTKAlaskanSubdialViewFactory *)self _subdialViewWithOptions:createDefaultOptions palette:self->_palette tag:-60];

  return v4;
}

- (id)createDefaultOptions
{
  v3 = +[NTKFaceViewRenderingContext sharedRenderingContext];
  device = [v3 device];

  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  sub_297C(device, &v8);
  v5 = objc_alloc_init(NTKAlaskanChronoSubdialViewOptions);
  [(NTKAlaskanChronoSubdialViewOptions *)v5 setLargeTickSize:v8];
  [(NTKAlaskanChronoSubdialViewOptions *)v5 setSmallTickSize:v9];
  [(NTKAlaskanChronoSubdialViewOptions *)v5 setTicksContentInset:*&v11];
  markersFont = [(NTKAlaskanSubdialViewFactory *)self markersFont];
  [(NTKAlaskanChronoSubdialViewOptions *)v5 setMarkersFont:markersFont];

  [(NTKAlaskanChronoSubdialViewOptions *)v5 setMarkersDiameter:*(&v11 + 1)];

  return v5;
}

- (id)markersFont
{
  markersFont = self->_markersFont;
  if (!markersFont)
  {
    v4 = +[NTKFaceViewRenderingContext sharedRenderingContext];
    device = [v4 device];

    v10 = 0.0;
    memset(v9, 0, sizeof(v9));
    sub_297C(device, v9);
    v6 = [CLKFont nonAccessibleCompactSoftFontOfSize:v10 weight:UIFontWeightSemibold];
    v7 = self->_markersFont;
    self->_markersFont = v6;

    markersFont = self->_markersFont;
  }

  return markersFont;
}

@end