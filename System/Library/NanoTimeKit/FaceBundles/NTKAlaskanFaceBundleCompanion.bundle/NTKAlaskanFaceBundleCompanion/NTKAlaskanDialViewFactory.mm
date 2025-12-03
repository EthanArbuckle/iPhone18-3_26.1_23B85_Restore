@interface NTKAlaskanDialViewFactory
- (id)_12HourDialView;
- (id)_30secondsDialView;
- (id)_3secondsDialView;
- (id)_60secondsDialView;
- (id)_6secondsDialView;
- (id)_tachymeterDialView;
@end

@implementation NTKAlaskanDialViewFactory

- (id)_12HourDialView
{
  v3 = +[NTKFaceViewRenderingContext sharedRenderingContext];
  device = [v3 device];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  sub_D99C(device, &v25);
  v5 = objc_alloc_init(NTKAlaskanChronoDialViewOptions);
  [(NTKAlaskanChronoDialViewOptions *)v5 setTicksCount:120];
  [(NTKAlaskanChronoDialViewOptions *)v5 setLargerTicksTestBlock:&stru_38CA0];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_C4A0;
  v9[3] = &unk_38CC0;
  v22 = v37;
  v23 = v38;
  v24 = v39;
  v18 = v33;
  v19 = v34;
  v20 = v35;
  v21 = v36;
  v14 = v29;
  v15 = v30;
  v16 = v31;
  v17 = v32;
  v10 = v25;
  v11 = v26;
  v12 = v27;
  v13 = v28;
  [(NTKAlaskanChronoDialViewOptions *)v5 setTickSizeAtIndexBlock:v9];
  [(NTKAlaskanChronoDialViewOptions *)v5 setLargeTicksAnchorPoint:0.5, 0.0];
  [(NTKAlaskanChronoDialViewOptions *)v5 setSmallTicksAnchorPoint:0.5, 0.0];
  [(NTKAlaskanChronoDialViewOptions *)v5 setTicksContentInset:*&v31];
  [(NTKAlaskanChronoDialViewOptions *)v5 setMarkersCount:12];
  [(NTKAlaskanChronoDialViewOptions *)v5 setVisibleMarkersTestBlock:&stru_38CE0];
  v6 = [CLKFont nonAccessibleSystemFontOfSize:*&v32 weight:UIFontWeightSemibold];
  [(NTKAlaskanChronoDialViewOptions *)v5 setMarkersFont:v6];

  [(NTKAlaskanChronoDialViewOptions *)v5 setMarkersDiameter:*&v36];
  [(NTKAlaskanChronoDialViewOptions *)v5 setMarkerTextBlock:&stru_38D00];
  v7 = [[NTKAlaskanChronoDialView alloc] initWithFrame:v5 options:self->_palette palette:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];

  return v7;
}

- (id)_tachymeterDialView
{
  v2 = +[NTKFaceViewRenderingContext sharedRenderingContext];
  device = [v2 device];

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v60 = 0u;
  v28 = device;
  sub_D99C(device, &v60);
  v4 = objc_alloc_init(NTKAlaskanChronoDialViewOptions);
  v5 = [&off_3AD48 mutableCopy];
  LODWORD(v6) = 101;
  do
  {
    v6 = (v6 - 1);
    v7 = [NSNumber numberWithInt:v6];
    v8 = [&off_3AD30 containsObject:v7];

    if ((v8 & 1) == 0)
    {
      v9 = [NSNumber numberWithInt:v6];
      [v5 addObject:v9];
    }
  }

  while (v6 > 0x3D);
  v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [&off_3AD30 count] + 1);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v11 = [&off_3AD30 countByEnumeratingWithState:&v56 objects:v76 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v57;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v57 != v13)
        {
          objc_enumerationMutation(&off_3AD30);
        }

        [*(*(&v56 + 1) + 8 * i) floatValue];
        CLKInterpolateBetweenFloatsClipped();
        v15 = [NSNumber numberWithDouble:?];
        [v10 addObject:v15];
      }

      v12 = [&off_3AD30 countByEnumeratingWithState:&v56 objects:v76 count:16];
    }

    while (v12);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v16 = v5;
  v17 = [v16 countByEnumeratingWithState:&v52 objects:v75 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v53;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v53 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v52 + 1) + 8 * j) floatValue];
        CLKInterpolateBetweenFloatsClipped();
        v21 = [NSNumber numberWithDouble:?];
        [v10 addObject:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v52 objects:v75 count:16];
    }

    while (v18);
  }

  [v10 addObject:&off_3A6C8];
  -[NTKAlaskanChronoDialViewOptions setMarkersCount:](v4, "setMarkersCount:", [&off_3AD30 count]);
  [(NTKAlaskanChronoDialViewOptions *)v4 setVisibleMarkersTestBlock:&stru_38D20];
  v22 = [CLKFont nonAccessibleSystemFontOfSize:*(&v67 + 1) weight:UIFontWeightSemibold];
  [(NTKAlaskanChronoDialViewOptions *)v4 setMarkersFont:v22];

  [(NTKAlaskanChronoDialViewOptions *)v4 setMarkersDiameter:*(&v71 + 1)];
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_CB98;
  v50[3] = &unk_38898;
  v51 = &off_3AD30;
  [(NTKAlaskanChronoDialViewOptions *)v4 setMarkerTextBlock:v50];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_CC08;
  v48[3] = &unk_38D48;
  v23 = v10;
  v49 = v23;
  [(NTKAlaskanChronoDialViewOptions *)v4 setMarkersAngleProvider:v48];
  -[NTKAlaskanChronoDialViewOptions setTicksCount:](v4, "setTicksCount:", [v23 count]);
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_CC14;
  v46[3] = &unk_38D48;
  v47 = v23;
  v24 = v23;
  [(NTKAlaskanChronoDialViewOptions *)v4 setTicksAngleProvider:v46];
  [(NTKAlaskanChronoDialViewOptions *)v4 setLargerTicksTestBlock:&stru_38D68];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v45 = v74;
  v42 = v71;
  v43 = v72;
  v44 = v73;
  v38 = v67;
  v39 = v68;
  v40 = v69;
  v41 = v70;
  v34 = v63;
  v35 = v64;
  v36 = v65;
  v37 = v66;
  v31 = v60;
  v32 = v61;
  v29[2] = sub_CC28;
  v29[3] = &unk_38D90;
  v30 = &off_3AD30;
  v33 = v62;
  [(NTKAlaskanChronoDialViewOptions *)v4 setTickSizeAtIndexBlock:v29];
  [(NTKAlaskanChronoDialViewOptions *)v4 setLargeTicksAnchorPoint:0.5, 1.0];
  [(NTKAlaskanChronoDialViewOptions *)v4 setSmallTicksAnchorPoint:0.5, 1.0];
  [(NTKAlaskanChronoDialViewOptions *)v4 setTicksContentInset:*(&v66 + 1)];
  v25 = [[NTKAlaskanChronoDialView alloc] initWithFrame:v4 options:self->_palette palette:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];

  return v25;
}

- (id)_60secondsDialView
{
  v3 = +[NTKFaceViewRenderingContext sharedRenderingContext];
  device = [v3 device];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  sub_D99C(device, &v25);
  v5 = objc_alloc_init(NTKAlaskanChronoDialViewOptions);
  [(NTKAlaskanChronoDialViewOptions *)v5 setTicksCount:120];
  [(NTKAlaskanChronoDialViewOptions *)v5 setLargerTicksTestBlock:&stru_38DB0];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_CEC0;
  v9[3] = &unk_38CC0;
  v22 = v37;
  v23 = v38;
  v24 = v39;
  v18 = v33;
  v19 = v34;
  v20 = v35;
  v21 = v36;
  v14 = v29;
  v15 = v30;
  v16 = v31;
  v17 = v32;
  v10 = v25;
  v11 = v26;
  v12 = v27;
  v13 = v28;
  [(NTKAlaskanChronoDialViewOptions *)v5 setTickSizeAtIndexBlock:v9];
  [(NTKAlaskanChronoDialViewOptions *)v5 setLargeTicksAnchorPoint:0.5, 0.0];
  [(NTKAlaskanChronoDialViewOptions *)v5 setSmallTicksAnchorPoint:0.5, 0.0];
  [(NTKAlaskanChronoDialViewOptions *)v5 setTicksContentInset:*&v31];
  [(NTKAlaskanChronoDialViewOptions *)v5 setMarkersCount:60];
  [(NTKAlaskanChronoDialViewOptions *)v5 setVisibleMarkersTestBlock:&stru_38DD0];
  v6 = [CLKFont nonAccessibleSystemFontOfSize:*&v33 weight:UIFontWeightSemibold];
  [(NTKAlaskanChronoDialViewOptions *)v5 setMarkersFont:v6];

  [(NTKAlaskanChronoDialViewOptions *)v5 setMarkersDiameter:*&v37];
  [(NTKAlaskanChronoDialViewOptions *)v5 setMarkerTextBlock:&stru_38DF0];
  v7 = [[NTKAlaskanChronoDialView alloc] initWithFrame:v5 options:self->_palette palette:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];

  return v7;
}

- (id)_30secondsDialView
{
  v3 = +[NTKFaceViewRenderingContext sharedRenderingContext];
  device = [v3 device];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  sub_D99C(device, &v25);
  v5 = objc_alloc_init(NTKAlaskanChronoDialViewOptions);
  [(NTKAlaskanChronoDialViewOptions *)v5 setTicksCount:120];
  [(NTKAlaskanChronoDialViewOptions *)v5 setLargerTicksTestBlock:&stru_38E10];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_D1A4;
  v9[3] = &unk_38CC0;
  v22 = v37;
  v23 = v38;
  v24 = v39;
  v18 = v33;
  v19 = v34;
  v20 = v35;
  v21 = v36;
  v14 = v29;
  v15 = v30;
  v16 = v31;
  v17 = v32;
  v10 = v25;
  v11 = v26;
  v12 = v27;
  v13 = v28;
  [(NTKAlaskanChronoDialViewOptions *)v5 setTickSizeAtIndexBlock:v9];
  [(NTKAlaskanChronoDialViewOptions *)v5 setLargeTicksAnchorPoint:0.5, 0.0];
  [(NTKAlaskanChronoDialViewOptions *)v5 setSmallTicksAnchorPoint:0.5, 0.0];
  [(NTKAlaskanChronoDialViewOptions *)v5 setTicksContentInset:*&v31];
  [(NTKAlaskanChronoDialViewOptions *)v5 setMarkersCount:30];
  [(NTKAlaskanChronoDialViewOptions *)v5 setVisibleMarkersTestBlock:&stru_38E30];
  v6 = [CLKFont nonAccessibleSystemFontOfSize:*(&v33 + 1) weight:UIFontWeightSemibold];
  [(NTKAlaskanChronoDialViewOptions *)v5 setMarkersFont:v6];

  [(NTKAlaskanChronoDialViewOptions *)v5 setMarkersDiameter:*(&v37 + 1)];
  [(NTKAlaskanChronoDialViewOptions *)v5 setMarkerTextBlock:&stru_38E50];
  v7 = [[NTKAlaskanChronoDialView alloc] initWithFrame:v5 options:self->_palette palette:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];

  return v7;
}

- (id)_6secondsDialView
{
  v3 = +[NTKFaceViewRenderingContext sharedRenderingContext];
  device = [v3 device];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  sub_D99C(device, &v10);
  v5 = objc_alloc_init(NTKAlaskanChronoDialViewOptions);
  [(NTKAlaskanChronoDialViewOptions *)v5 setTicksCount:150];
  [(NTKAlaskanChronoDialViewOptions *)v5 setLargerTicksTestBlock:&stru_38E70];
  [(NTKAlaskanChronoDialViewOptions *)v5 setLargeTickSize:v10];
  [(NTKAlaskanChronoDialViewOptions *)v5 setSmallTickSize:v11];
  [(NTKAlaskanChronoDialViewOptions *)v5 setLargeTicksAnchorPoint:0.5, 0.0];
  [(NTKAlaskanChronoDialViewOptions *)v5 setSmallTicksAnchorPoint:0.5, 0.0];
  [(NTKAlaskanChronoDialViewOptions *)v5 setTicksContentInset:*&v16];
  [(NTKAlaskanChronoDialViewOptions *)v5 setMarkersCount:30];
  [(NTKAlaskanChronoDialViewOptions *)v5 setVisibleMarkersTestBlock:&stru_38E90];
  v6 = [CLKFont nonAccessibleSystemFontOfSize:*&v19 weight:UIFontWeightSemibold];
  [(NTKAlaskanChronoDialViewOptions *)v5 setMarkersFont:v6];

  [(NTKAlaskanChronoDialViewOptions *)v5 setMarkersDiameter:*&v23];
  [(NTKAlaskanChronoDialViewOptions *)v5 setMarkerTextBlock:&stru_38EB0];
  [(NTKAlaskanChronoDialViewOptions *)v5 setHasSecondaryMarkers:1];
  [(NTKAlaskanChronoDialViewOptions *)v5 setSecondaryMarkersCount:30];
  [(NTKAlaskanChronoDialViewOptions *)v5 setVisibleSecondaryMarkersTestBlock:&stru_38ED0];
  [(NTKAlaskanChronoDialViewOptions *)v5 setSecondaryMarkersDiameter:*(&v23 + 1)];
  [(NTKAlaskanChronoDialViewOptions *)v5 setSecondaryMarkerTextBlock:&stru_38EF0];
  v7 = [CLKFont nonAccessibleSystemFontOfSize:*(&v20 + 1) weight:UIFontWeightRegular];
  [(NTKAlaskanChronoDialViewOptions *)v5 setSecondaryMarkersFont:v7];

  v8 = [[NTKAlaskanChronoDialView alloc] initWithFrame:v5 options:self->_palette palette:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];

  return v8;
}

- (id)_3secondsDialView
{
  v3 = +[NTKFaceViewRenderingContext sharedRenderingContext];
  device = [v3 device];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  sub_D99C(device, &v10);
  v5 = objc_alloc_init(NTKAlaskanChronoDialViewOptions);
  [(NTKAlaskanChronoDialViewOptions *)v5 setTicksCount:150];
  [(NTKAlaskanChronoDialViewOptions *)v5 setLargerTicksTestBlock:&stru_38F10];
  [(NTKAlaskanChronoDialViewOptions *)v5 setLargeTickSize:v10];
  [(NTKAlaskanChronoDialViewOptions *)v5 setSmallTickSize:v11];
  [(NTKAlaskanChronoDialViewOptions *)v5 setLargeTicksAnchorPoint:0.5, 0.0];
  [(NTKAlaskanChronoDialViewOptions *)v5 setSmallTicksAnchorPoint:0.5, 0.0];
  [(NTKAlaskanChronoDialViewOptions *)v5 setTicksContentInset:*&v16];
  [(NTKAlaskanChronoDialViewOptions *)v5 setMarkersCount:30];
  [(NTKAlaskanChronoDialViewOptions *)v5 setVisibleMarkersTestBlock:&stru_38F30];
  v6 = [CLKFont nonAccessibleSystemFontOfSize:*&v20 weight:UIFontWeightSemibold];
  [(NTKAlaskanChronoDialViewOptions *)v5 setMarkersFont:v6];

  [(NTKAlaskanChronoDialViewOptions *)v5 setMarkersDiameter:*&v24];
  [(NTKAlaskanChronoDialViewOptions *)v5 setMarkerTextBlock:&stru_38F50];
  [(NTKAlaskanChronoDialViewOptions *)v5 setHasSecondaryMarkers:1];
  [(NTKAlaskanChronoDialViewOptions *)v5 setSecondaryMarkersCount:30];
  [(NTKAlaskanChronoDialViewOptions *)v5 setVisibleSecondaryMarkersTestBlock:&stru_38F70];
  [(NTKAlaskanChronoDialViewOptions *)v5 setSecondaryMarkersDiameter:*(&v24 + 1)];
  [(NTKAlaskanChronoDialViewOptions *)v5 setSecondaryMarkerTextBlock:&stru_38F90];
  v7 = [CLKFont nonAccessibleSystemFontOfSize:*(&v20 + 1) weight:UIFontWeightRegular];
  [(NTKAlaskanChronoDialViewOptions *)v5 setSecondaryMarkersFont:v7];

  v8 = [[NTKAlaskanChronoDialView alloc] initWithFrame:v5 options:self->_palette palette:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];

  return v8;
}

@end