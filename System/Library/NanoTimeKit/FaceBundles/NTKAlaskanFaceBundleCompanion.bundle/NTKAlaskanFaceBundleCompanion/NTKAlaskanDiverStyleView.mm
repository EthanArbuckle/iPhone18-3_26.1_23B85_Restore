@interface NTKAlaskanDiverStyleView
- (CGSize)previousBoundsSize;
- (CLKUIColoringLabel)countUpLabel;
- (NTKAlaskanDiverStyleView)initWithFrame:(CGRect)a3;
- (NTKAlaskanDiverStyleViewDelegate)delegate;
- (UIImageView)markerFillIcon;
- (UIImageView)markerOutlineIcon;
- (double)angleOffsetForDate:(id)a3;
- (double)countUpLabelAlpha;
- (double)targetAngleOffsetForOffset:(double)a3;
- (double)timeIntervalBetweenStartDate:(id)a3 date:(id)a4;
- (id)_countUpLabelTextColor;
- (id)_timelapsedTextProviderWithStartDate:(id)a3 forcePaused:(BOOL)a4;
- (id)countUpLabelColor;
- (id)currentDate;
- (id)innerDialViewBackgroundColor;
- (void)_setAngleOffset:(unint64_t)a3;
- (void)layoutSubviews;
- (void)setAngleOffset:(double)a3 animated:(BOOL)a4 progressCallback:(id)a5 completionBlock:(id)a6;
- (void)setAngleOffset:(unint64_t)a3;
- (void)setCurrentMode:(unint64_t)a3;
- (void)setDisableMarkerTracking:(BOOL)a3;
- (void)setForceInactiveMode:(BOOL)a3;
- (void)setOverrideDate:(id)a3;
- (void)setPalette:(id)a3;
- (void)setStartDate:(id)a3 animated:(BOOL)a4 setAngleOffset:(double)a5;
- (void)updateColor:(id)a3 object:(id)a4;
- (void)updateCountUp;
- (void)updateFrameForCountUpLabel;
- (void)updateStartDate;
- (void)updateTicksForCurrentTime;
- (void)updateTrackingTicks;
- (void)updateViewStateAnimated:(BOOL)a3;
@end

@implementation NTKAlaskanDiverStyleView

- (NTKAlaskanDiverStyleView)initWithFrame:(CGRect)a3
{
  v125.receiver = self;
  v125.super_class = NTKAlaskanDiverStyleView;
  v3 = [(NTKAlaskanDiverStyleView *)&v125 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[NTKFaceViewRenderingContext sharedRenderingContext];
    v5 = [v4 device];
    device = v3->_device;
    v3->_device = v5;

    v7 = +[UIColor blackColor];
    [(NTKAlaskanDiverStyleView *)v3 setBackgroundColor:v7];

    v124 = 0;
    v123 = 0u;
    v122 = 0u;
    v121 = 0u;
    v120 = 0u;
    v119 = 0u;
    v118 = 0u;
    v117 = 0u;
    v116 = 0u;
    v115 = 0u;
    v114 = 0u;
    v113 = 0u;
    v112 = 0u;
    v111 = 0u;
    v110 = 0u;
    v8 = [(NTKAlaskanDiverStyleView *)v3 device];
    sub_20354(v8, &v110);

    v9 = +[NSNull null];
    v126[0] = @"contents";
    v126[1] = @"backgroundColor";
    v127[0] = v9;
    v127[1] = v9;
    v126[2] = @"transform";
    v126[3] = @"bounds";
    v127[2] = v9;
    v127[3] = v9;
    v126[4] = @"position";
    v126[5] = @"opacity";
    v127[4] = v9;
    v127[5] = v9;
    v126[6] = @"hidden";
    v127[6] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v127 forKeys:v126 count:7];
    objc_initWeak(&location, v3);
    v11 = [NTKAlaskanDialView alloc];
    v91[0] = _NSConcreteStackBlock;
    v91[1] = 3221225472;
    v91[2] = sub_1D8C4;
    v91[3] = &unk_39308;
    objc_copyWeak(&v93, &location);
    v106 = v122;
    v107 = v123;
    v108 = v124;
    v103 = v119;
    v105 = v121;
    v104 = v120;
    v98 = v114;
    v99 = v115;
    v101 = v117;
    v102 = v118;
    v100 = v116;
    v94 = v110;
    v95 = v111;
    v96 = v112;
    v97 = v113;
    v12 = v10;
    v92 = v12;
    v13 = [(NTKAlaskanDialView *)v11 initWithNumberOfMarkers:12 markersFactory:v91];
    innerDialView = v3->_innerDialView;
    v3->_innerDialView = v13;

    v15 = [(NTKAlaskanDiverStyleView *)v3 innerDialViewBackgroundColor];
    [(NTKAlaskanDialView *)v3->_innerDialView setBackgroundColor:v15];

    [(NTKAlaskanDialView *)v3->_innerDialView setContentDiameter:*(&v111 + 1)];
    v16 = +[NSMutableIndexSet indexSet];
    [v16 addIndex:0];
    [v16 addIndex:1];
    [v16 addIndex:3];
    [v16 addIndex:5];
    [v16 addIndex:7];
    [v16 addIndex:9];
    [v16 addIndex:11];
    v17 = [NTKAlaskanDialView alloc];
    v72[0] = _NSConcreteStackBlock;
    v72[1] = 3221225472;
    v72[2] = sub_1D9B4;
    v72[3] = &unk_39330;
    objc_copyWeak(&v74, &location);
    v87 = v122;
    v88 = v123;
    v83 = v118;
    v84 = v119;
    v85 = v120;
    v86 = v121;
    v79 = v114;
    v80 = v115;
    v81 = v116;
    v82 = v117;
    v75 = v110;
    v76 = v111;
    v77 = v112;
    v78 = v113;
    v89 = v124;
    v90 = 12;
    v18 = v12;
    v73 = v18;
    v19 = [(NTKAlaskanDialView *)v17 initWithNumberOfMarkers:12 markersFactory:v72];
    minutesMarkerView = v3->_minutesMarkerView;
    v3->_minutesMarkerView = v19;

    [(NTKAlaskanDialView *)v3->_minutesMarkerView setShouldPixelAlignCenterPoints:0];
    [(NTKAlaskanDialView *)v3->_minutesMarkerView setShouldRotateMarkers:0];
    [(NTKAlaskanDialView *)v3->_minutesMarkerView setMarkersToRotateIndexSet:v16];
    v21 = [(NTKAlaskanDiversColorPalette *)v3->_palette ring];
    [(NTKAlaskanDialView *)v3->_minutesMarkerView setBackgroundColor:v21];

    v22 = +[NSMutableIndexSet indexSet];
    [v22 addIndex:0];
    [v22 addIndex:10];
    [v22 addIndex:20];
    [v22 addIndex:30];
    [v22 addIndex:40];
    [v22 addIndex:50];
    [v22 addIndex:60];
    v23 = [NTKAlaskanDialView alloc];
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_1DCE0;
    v54[3] = &unk_39308;
    objc_copyWeak(&v56, &location);
    v24 = v22;
    v69 = v122;
    v70 = v123;
    v55 = v24;
    v71 = v124;
    v65 = v118;
    v66 = v119;
    v67 = v120;
    v68 = v121;
    v61 = v114;
    v62 = v115;
    v63 = v116;
    v64 = v117;
    v57 = v110;
    v58 = v111;
    v59 = v112;
    v60 = v113;
    v25 = [(NTKAlaskanDialView *)v23 initWithNumberOfMarkers:60 markersFactory:v54];
    trackingTicksView = v3->_trackingTicksView;
    v3->_trackingTicksView = v25;

    [(NTKAlaskanDialView *)v3->_trackingTicksView setShouldRotateMarkers:1];
    [(NTKAlaskanDialView *)v3->_trackingTicksView setShouldPixelAlignCenterPoints:0];
    v27 = [NTKAlaskanDialView alloc];
    v33 = _NSConcreteStackBlock;
    v34 = 3221225472;
    v35 = sub_1DEFC;
    v36 = &unk_39308;
    objc_copyWeak(&v38, &location);
    v28 = v18;
    v37 = v28;
    v51 = v122;
    v52 = v123;
    v53 = v124;
    v47 = v118;
    v48 = v119;
    v49 = v120;
    v50 = v121;
    v43 = v114;
    v44 = v115;
    v45 = v116;
    v46 = v117;
    v39 = v110;
    v40 = v111;
    v41 = v112;
    v42 = v113;
    v29 = [(NTKAlaskanDialView *)v27 initWithNumberOfMarkers:60 markersFactory:&v33];
    ticksView = v3->_ticksView;
    v3->_ticksView = v29;

    [(NTKAlaskanDialView *)v3->_ticksView setShouldRotateMarkers:1, v33, v34, v35, v36];
    [(NTKAlaskanDiverStyleView *)v3 addSubview:v3->_minutesMarkerView];
    [(NTKAlaskanDiverStyleView *)v3 addSubview:v3->_innerDialView];
    [(NTKAlaskanDiverStyleView *)v3 addSubview:v3->_trackingTicksView];
    [(NTKAlaskanDiverStyleView *)v3 addSubview:v3->_ticksView];
    [(NTKAlaskanDiverStyleView *)v3 updateViewStateAnimated:0];
    v31 = +[NSNotificationCenter defaultCenter];
    [v31 addObserver:v3->_minutesMarkerView selector:"reloadMarkers" name:UIAccessibilityBoldTextStatusDidChangeNotification object:0];

    objc_destroyWeak(&v38);
    objc_destroyWeak(&v56);

    objc_destroyWeak(&v74);
    objc_destroyWeak(&v93);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)setPalette:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_palette, a3);
  innerDialView = self->_innerDialView;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1E2D4;
  v32[3] = &unk_39230;
  v32[4] = self;
  v7 = v5;
  v33 = v7;
  [(NTKAlaskanDialView *)innerDialView enumerateMarkers:v32];
  minutesMarkerView = self->_minutesMarkerView;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1E344;
  v30[3] = &unk_39230;
  v30[4] = self;
  v9 = v7;
  v31 = v9;
  [(NTKAlaskanDialView *)minutesMarkerView enumerateMarkers:v30];
  trackingTicksView = self->_trackingTicksView;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1E3B4;
  v28[3] = &unk_39230;
  v28[4] = self;
  v11 = v9;
  v29 = v11;
  [(NTKAlaskanDialView *)trackingTicksView enumerateMarkers:v28];
  v12 = [(NTKAlaskanDiversColorPalette *)self->_palette ring];
  [(NTKAlaskanDialView *)self->_minutesMarkerView setBackgroundColor:v12];

  ticksView = self->_ticksView;
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_1E424;
  v25 = &unk_39230;
  v26 = self;
  v27 = v11;
  v14 = v11;
  [(NTKAlaskanDialView *)ticksView enumerateMarkers:&v22];
  v15 = [(NTKAlaskanDiverStyleView *)self innerDialViewBackgroundColor:v22];
  [(NTKAlaskanDialView *)self->_innerDialView setBackgroundColor:v15];

  v16 = [(NTKAlaskanDiverStyleView *)self palette];
  v17 = [v16 markerFillColor];
  WeakRetained = objc_loadWeakRetained(&self->_markerFillIcon);
  [WeakRetained setTintColor:v17];

  v19 = [(NTKAlaskanDiverStyleView *)self palette];
  v20 = [v19 markerOutlineColor];
  v21 = objc_loadWeakRetained(&self->_markerOutlineIcon);
  [v21 setTintColor:v20];
}

- (void)updateColor:(id)a3 object:(id)a4
{
  v8 = a3;
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setTextColor:v8];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setTintColor:v8];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = v8;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_10;
    }

    v7 = [v8 CGColor];
    v6 = v5;
  }

  [v6 setBackgroundColor:v7];
LABEL_10:
}

- (void)setCurrentMode:(unint64_t)a3
{
  self->_currentMode = a3;
  if (!a3)
  {
    v6 = [(NTKAlaskanDiversColorPalette *)self->_palette markerFillColor];
    WeakRetained = objc_loadWeakRetained(&self->_markerFillIcon);
    [WeakRetained setTintColor:v6];
  }
}

- (void)setDisableMarkerTracking:(BOOL)a3
{
  self->_syncMarkerWithMinuteHand = a3;
  if (!a3)
  {
    v5 = [(NTKAlaskanDiverStyleView *)self currentDate];
    [(NTKAlaskanDiverStyleView *)self setDate:v5];
  }
}

- (void)updateTicksForCurrentTime
{
  v3 = [(NTKAlaskanDiverStyleView *)self currentDate];
  v4 = [(NTKAlaskanDiverStyleView *)self currentDate];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  if (self->_currentMode == 1)
  {
    v8 = [(NTKAlaskanDiverStyleView *)self startDate];
    v7 = [v8 dateByAddingTimeInterval:v6];
    [(NTKAlaskanDiverStyleView *)self setStartDate:v7];
  }

  else
  {

    [(NTKAlaskanDiverStyleView *)self updateCountUp];
  }
}

- (void)setOverrideDate:(id)a3
{
  v5 = a3;
  if ((NTKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_overrideDate, a3);
    [(NTKAlaskanDiverStyleView *)self updateTicksForCurrentTime];
  }
}

- (id)currentDate
{
  overrideDate = self->_overrideDate;
  if (overrideDate)
  {
    v3 = overrideDate;
  }

  else
  {
    v3 = +[NSDate date];
  }

  return v3;
}

- (void)setStartDate:(id)a3 animated:(BOOL)a4 setAngleOffset:(double)a5
{
  v6 = a4;
  v9 = a3;
  if (![(NSDate *)self->_startDate isEqualToDate:?])
  {
    objc_storeStrong(&self->_startDate, a3);
    [(NTKAlaskanDiverStyleView *)self updateCountUp];
    [(NTKAlaskanDiverStyleView *)self angleOffsetForDate:self->_startDate];
    if (a5 != 0.0)
    {
      [(NTKAlaskanDiverStyleView *)self setAngleOffset:v6 animated:0 progressCallback:0 completionBlock:?];
    }

    [(NTKAlaskanDiverStyleView *)self updateViewStateAnimated:v6];
  }
}

- (void)updateViewStateAnimated:(BOOL)a3
{
  v3 = a3;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1EA80;
  v10[3] = &unk_38BE8;
  objc_copyWeak(&v11, &location);
  v5 = objc_retainBlock(v10);
  v6 = v5;
  if (v3)
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    v7 = [(NTKAlaskanDiverStyleView *)self device];
    sub_20354(v7, v8);

    [UIView animateWithDuration:v6 animations:*(v8 + 1)];
  }

  else
  {
    (v5[2])(v5);
  }

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)updateCountUp
{
  v3 = [(NTKAlaskanDiverStyleView *)self countUpLabel];
  [v3 setTextProvider:0];

  if (self->_currentMode == 1)
  {
    v4 = [(NTKAlaskanDiverStyleView *)self startDate];
    v5 = [(NTKAlaskanDiverStyleView *)self currentDate];
    [(NTKAlaskanDiverStyleView *)self timeIntervalBetweenStartDate:v4 date:v5];
    v7 = v6;

    if (self->_currentCountUp == v7)
    {
      goto LABEL_8;
    }

    self->_currentCountUp = v7;
    v8 = [NTKTroutFaceBundle localizedStringForKey:@"ALASKAN_COUNT_UP_ALERT_ACTION_START" comment:@"Start"];
    v9 = [(NTKAlaskanDiverStyleView *)self countUpLabel];
    [v9 setText:v8];
  }

  else if (self->_startDate)
  {
    v8 = [(NTKAlaskanDiverStyleView *)self _timelapsedTextProviderWithStartDate:?];
    v9 = [(NTKAlaskanDiverStyleView *)self countUpLabel];
    [v9 setTextProvider:v8];
  }

  else
  {
    v8 = +[NSDate date];
    v9 = [(NTKAlaskanDiverStyleView *)self _timelapsedTextProviderWithStartDate:v8 forcePaused:1];
    v10 = [(NTKAlaskanDiverStyleView *)self countUpLabel];
    [v10 setTextProvider:v9];
  }

LABEL_8:
  [(NTKAlaskanDiverStyleView *)self updateTrackingTicks];

  [(NTKAlaskanDiverStyleView *)self updateFrameForCountUpLabel];
}

- (double)timeIntervalBetweenStartDate:(id)a3 date:(id)a4
{
  result = 0.0;
  if (a3 && a4)
  {
    v6 = a3;
    [a4 timeIntervalSinceReferenceDate];
    v8 = v7;
    [v6 timeIntervalSinceReferenceDate];
    v10 = v9;

    v11 = v8 - v10;
    if (v8 - v10 < 0.0)
    {
      v11 = 0.0;
    }

    return ((v11 / 60.0) % 60);
  }

  return result;
}

- (CLKUIColoringLabel)countUpLabel
{
  countUpLabel = self->_countUpLabel;
  if (!countUpLabel)
  {
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v25 = 0u;
    memset(v24, 0, sizeof(v24));
    v4 = [(NTKAlaskanDiverStyleView *)self device];
    sub_20354(v4, v24);

    v5 = [CLKUIColoringLabel labelWithOptions:0];
    v6 = self->_countUpLabel;
    self->_countUpLabel = v5;

    v7 = [(NTKAlaskanDiverStyleView *)self _countUpLabelTextColor];
    [(CLKUIColoringLabel *)self->_countUpLabel setTextColor:v7];

    v8 = [CLKFont compactSoftFontOfSize:*(&v25 + 1) weight:UIFontWeightSemibold];
    [(CLKUIColoringLabel *)self->_countUpLabel setFont:v8];

    v9 = [(CLKUIColoringLabel *)self->_countUpLabel layer];
    [v9 setMasksToBounds:1];

    [(CLKUIColoringLabel *)self->_countUpLabel setTextAlignment:1];
    [(CLKUIColoringLabel *)self->_countUpLabel setBaselineAdjustment:1];
    [(CLKUIColoringLabel *)self->_countUpLabel setHitTestInsets:*(&v30 + 1), v31, *&v32];
    objc_initWeak(&location, self);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1F2CC;
    v21[3] = &unk_392C0;
    objc_copyWeak(&v22, &location);
    [(CLKUIColoringLabel *)self->_countUpLabel setNowProvider:v21];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1F328;
    v19[3] = &unk_38BE8;
    objc_copyWeak(&v20, &location);
    [(CLKUIColoringLabel *)self->_countUpLabel setNeedsResizeHandler:v19];
    v10 = +[CALayer layer];
    countUpBackgroundLayer = self->_countUpBackgroundLayer;
    self->_countUpBackgroundLayer = v10;

    v38[0] = @"backgroundColor";
    v12 = +[NSNull null];
    v38[1] = @"opacity";
    v39[0] = v12;
    v13 = +[NSNull null];
    v39[1] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];
    [(CALayer *)self->_countUpBackgroundLayer setActions:v14];

    v15 = +[UIColor systemRedColor];
    v16 = v15;
    -[CALayer setBackgroundColor:](self->_countUpBackgroundLayer, "setBackgroundColor:", [v15 CGColor]);

    v17 = [(NTKAlaskanDiverStyleView *)self layer];
    [v17 addSublayer:self->_countUpBackgroundLayer];

    [(NTKAlaskanDiverStyleView *)self addSubview:self->_countUpLabel];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
    countUpLabel = self->_countUpLabel;
  }

  return countUpLabel;
}

- (double)targetAngleOffsetForOffset:(double)a3
{
  v5 = [(NTKAlaskanDiverStyleView *)self currentDate];
  [(NTKAlaskanDiverStyleView *)self angleOffsetForDate:v5];

  v6 = [(NTKAlaskanDiverStyleView *)self startDate];
  v7 = [(NTKAlaskanDiverStyleView *)self currentDate];
  [(NTKAlaskanDiverStyleView *)self timeIntervalBetweenStartDate:v6 date:v7];

  NTKNormalizeAngle();
  v9 = v8;
  if (CLKFloatEqualsFloat())
  {
    return a3;
  }

  else
  {
    return v9;
  }
}

- (double)angleOffsetForDate:(id)a3
{
  v3 = [a3 dateByAddingTimeInterval:self->_timeOffset];
  [NTKAnalogHandsView minuteHandAngleForDate:v3];
  v5 = v4;

  return v5;
}

- (void)setAngleOffset:(unint64_t)a3
{
  [(NTKAlaskanDiverStyleView *)self _setAngleOffset:a3];

  [(NTKAlaskanDiverStyleView *)self updateStartDate];
}

- (void)setAngleOffset:(double)a3 animated:(BOOL)a4 progressCallback:(id)a5 completionBlock:(id)a6
{
  v7 = a4;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v10 = a6;
  v12 = a5;
  v11 = [(NTKAlaskanDiverStyleView *)self device];
  sub_20354(v11, v13);

  [(NTKAlaskanDiverStyleView *)self setAngleOffset:v7 animated:v12 progressCallback:v10 completionBlock:1 animationDuration:a3 shouldSetDate:*v13];
}

- (void)setForceInactiveMode:(BOOL)a3
{
  self->_forceInactiveMode = a3;
  if (!a3)
  {
    [(NTKAlaskanDiverStyleView *)self updateViewStateAnimated:1];
  }
}

- (void)_setAngleOffset:(unint64_t)a3
{
  if (self->_angleOffset != a3)
  {
    self->_angleOffset = a3;
    [(NTKAlaskanDialView *)self->_minutesMarkerView setAngleOffset:a3];
    [(NTKAlaskanDialView *)self->_trackingTicksView setAngleOffset:self->_angleOffset];

    [(NTKAlaskanDiverStyleView *)self updateTrackingTicks];
  }
}

- (void)updateTrackingTicks
{
  v3 = [(NTKAlaskanDiverStyleView *)self startDate];
  v4 = 0.0;
  if (v3)
  {
    if ([(NTKAlaskanDiverStyleView *)self currentMode])
    {
      v4 = 1.0;
      if ([(NTKAlaskanDiverStyleView *)self currentMode]== &dword_0 + 1)
      {
        if ([(NTKAlaskanDiverStyleView *)self hasRotatedToMinuteHand])
        {
          v4 = 1.0;
        }

        else
        {
          v4 = 0.0;
        }
      }
    }
  }

  v5 = [(NTKAlaskanDiverStyleView *)self trackingTicksView];
  [v5 setAlpha:v4];

  v11 = [(NTKAlaskanDiverStyleView *)self currentDate];
  [(NTKAlaskanDiverStyleView *)self angleOffsetForDate:v11];
  v7 = v6;
  [(NTKAlaskanDiverStyleView *)self angleOffset];
  NTKNormalizeAngle();
  v9 = [NSNumber numberWithDouble:v7 - v8];
  v10 = [(NTKAlaskanDiverStyleView *)self trackingTicksView];
  [v10 setHidingMaskStartAngle:v9];
}

- (void)layoutSubviews
{
  v30.receiver = self;
  v30.super_class = NTKAlaskanDiverStyleView;
  [(NTKAlaskanDiverStyleView *)&v30 layoutSubviews];
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  *v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  *dx = 0u;
  v3 = [(NTKAlaskanDiverStyleView *)self device:0];
  sub_20354(v3, &v19);

  [(NTKAlaskanDiverStyleView *)self bounds];
  height = self->_previousBoundsSize.height;
  if (self->_previousBoundsSize.width != v6 || height != v4)
  {
    [(NTKAlaskanDiverStyleView *)self bounds:self->_previousBoundsSize.width];
    self->_previousBoundsSize.width = v8;
    self->_previousBoundsSize.height = v9;
    [(NTKAlaskanDialView *)self->_minutesMarkerView setFrame:0.0, 0.0, *&v28, *&v28];
    [(NTKAlaskanDiverStyleView *)self bounds];
    CLKRectGetCenter();
    [(NTKAlaskanDialView *)self->_minutesMarkerView setPosition:?];
    [(NTKAlaskanDialView *)self->_minutesMarkerView frame];
    v32 = CGRectInset(v31, dx[0], dx[0]);
    [(NTKAlaskanDialView *)self->_innerDialView setFrame:v32.origin.x, v32.origin.y, v32.size.width, v32.size.height];
    [(NTKAlaskanDialView *)self->_minutesMarkerView bounds];
    [(NTKAlaskanDialView *)self->_innerDialView bounds];
    v10 = [(NTKAlaskanDiverStyleView *)self device];
    CLKRoundForDevice();
    [(NTKAlaskanDialView *)self->_minutesMarkerView setContentInset:?];

    [(NTKAlaskanDialView *)self->_minutesMarkerView bounds];
    v11 = [(NTKAlaskanDiverStyleView *)self device];
    CLKRoundForDevice();
    v13 = v12;
    v14 = [(NTKAlaskanDialView *)self->_minutesMarkerView layer];
    [v14 setCornerRadius:v13];

    [(NTKAlaskanDialView *)self->_innerDialView bounds];
    v15 = [(NTKAlaskanDiverStyleView *)self device];
    CLKRoundForDevice();
    v17 = v16;
    v18 = [(NTKAlaskanDialView *)self->_innerDialView layer];
    [v18 setCornerRadius:v17];

    [(NTKAlaskanDialView *)self->_innerDialView frame];
    v34 = CGRectInset(v33, v26[1], v26[1]);
    [(NTKAlaskanDialView *)self->_ticksView setFrame:v34.origin.x, v34.origin.y, v34.size.width, v34.size.height];
    [(NTKAlaskanDialView *)self->_minutesMarkerView frame];
    [(NTKAlaskanDialView *)self->_trackingTicksView setFrame:?];
    [(NTKAlaskanDialView *)self->_minutesMarkerView contentInset];
    [(NTKAlaskanDialView *)self->_trackingTicksView setContentInset:?];
  }

  [(NTKAlaskanDiverStyleView *)self updateFrameForCountUpLabel];
}

- (void)updateFrameForCountUpLabel
{
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  *dy = 0u;
  v23 = 0u;
  v21 = 0u;
  memset(v20, 0, sizeof(v20));
  v3 = [(NTKAlaskanDiverStyleView *)self device];
  sub_20354(v3, v20);

  [(NTKAlaskanDialView *)self->_innerDialView bounds];
  [(CLKUIColoringLabel *)self->_countUpLabel setMaxWidth:*(&v28 + 1) * v4];
  countUpLabel = self->_countUpLabel;
  [(CLKUIColoringLabel *)countUpLabel maxWidth];
  v7 = v6;
  [(NTKAlaskanDiverStyleView *)self bounds];
  [(CLKUIColoringLabel *)countUpLabel sizeThatFits:v7, v8];
  [(CLKUIColoringLabel *)self->_countUpLabel setFrame:0.0, 0.0, v9 + *(&v21 + 1), v10];
  [(NTKAlaskanDiverStyleView *)self bounds];
  CGRectGetMidX(v32);
  v11 = [(NTKAlaskanDiverStyleView *)self device];
  CLKRoundForDevice();
  v13 = v12;
  [(NTKAlaskanDiverStyleView *)self bounds];
  CGRectGetMidY(v33);
  [(CLKUIColoringLabel *)self->_countUpLabel bounds];
  CGRectGetMidY(v34);
  v14 = [(NTKAlaskanDiverStyleView *)self device];
  CLKRoundForDevice();
  [(CLKUIColoringLabel *)self->_countUpLabel setCenter:v13, v15];

  [(CLKUIColoringLabel *)self->_countUpLabel frame];
  v36 = CGRectInset(v35, 0.0, dy[1]);
  [(CALayer *)self->_countUpBackgroundLayer setFrame:v36.origin.x, v36.origin.y, v36.size.width, v36.size.height];
  [(CALayer *)self->_countUpBackgroundLayer position];
  v17 = v16;
  [(CALayer *)self->_countUpBackgroundLayer position];
  [(CALayer *)self->_countUpBackgroundLayer setPosition:v17, v18 + *&v23];
  [(CALayer *)self->_countUpBackgroundLayer frame];
  v19 = [(NTKAlaskanDiverStyleView *)self device];
  CLKRoundForDevice();
  [(CALayer *)self->_countUpBackgroundLayer setCornerRadius:?];
}

- (double)countUpLabelAlpha
{
  if (!self->_startDate)
  {
    return 0.0;
  }

  result = 1.0;
  if (!self->_currentMode)
  {
    return 0.0;
  }

  return result;
}

- (id)countUpLabelColor
{
  currentMode = self->_currentMode;
  switch(currentMode)
  {
    case 2uLL:
      self = +[UIColor systemRedColor];
      break;
    case 1uLL:
      self = +[UIColor systemGreenColor];
      break;
    case 0uLL:
      self = [UIColor colorWithWhite:0.129411765 alpha:1.0];
      break;
  }

  return self;
}

- (id)_countUpLabelTextColor
{
  if (self->_currentMode == 1)
  {
    +[UIColor blackColor];
  }

  else
  {
    +[UIColor whiteColor];
  }
  v2 = ;

  return v2;
}

- (id)innerDialViewBackgroundColor
{
  if ([(NTKAlaskanDiverStyleView *)self hasCountUpStarted]&& !self->_forceInactiveMode)
  {
    v4 = [(NTKAlaskanDiverStyleView *)self palette];
    v3 = [v4 activeBackground];
  }

  else
  {
    v3 = +[UIColor blackColor];
  }

  return v3;
}

- (id)_timelapsedTextProviderWithStartDate:(id)a3 forcePaused:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [CLKRelativeDateTextProvider textProviderWithDate:v6 style:2 units:224];
  [v7 setTritiumDateStyle:0];
  [v7 setWantsSubseconds:1];
  if (self->_currentMode != 1 && !v4)
  {
    v10 = 0;
  }

  else
  {
    v9 = +[NSDate date];
    [v7 setDate:v9];
    [v7 setRelativeToDate:v6];

    v10 = self->_currentMode == 1;
  }

  [v7 setPaused:v10];

  return v7;
}

- (void)updateStartDate
{
  v6 = +[NSDate date];
  [(NTKAlaskanDiverStyleView *)self angleOffsetForDate:v6];
  v4 = v3 - [(NTKAlaskanDiverStyleView *)self angleOffset];
  if (v4 < 0.0)
  {
    v4 = v4 + 360.0;
  }

  v5 = [v6 dateByAddingTimeInterval:v4 / -6.0 * 60.0];
  [(NTKAlaskanDiverStyleView *)self setStartDate:v5 animated:0 setAngleOffset:0.0];
}

- (NTKAlaskanDiverStyleViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIImageView)markerFillIcon
{
  WeakRetained = objc_loadWeakRetained(&self->_markerFillIcon);

  return WeakRetained;
}

- (UIImageView)markerOutlineIcon
{
  WeakRetained = objc_loadWeakRetained(&self->_markerOutlineIcon);

  return WeakRetained;
}

- (CGSize)previousBoundsSize
{
  width = self->_previousBoundsSize.width;
  height = self->_previousBoundsSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end