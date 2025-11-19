@interface NTKAlaskanGMTStyleView
- (CGPoint)centerPointForAngle:(double)a3 radius:(int64_t)a4;
- (CGRect)pickerViewFrame;
- (NTKAlaskanGMTStyleView)initWithFrame:(CGRect)a3;
- (NTKAlaskanGMTStyleViewDelegate)delegate;
- (NTKAlaskanGMTTimezoneLocation)noneLocation;
- (UIImage)locationIcon;
- (UIImageView)heroMarker;
- (UILabel)centerLabel;
- (double)angleForHour:(double)a3;
- (double)magnifierAnglePositionForDate:(id)a3;
- (double)pickerViewCornerRadius;
- (id)_formattedTextForHour:(unint64_t)a3;
- (id)attributedStringWithPrefix:(id)a3 image:(id)a4 suffix:(id)a5;
- (id)createHourMarkerForBezelView:(unint64_t)a3;
- (id)createTickMarkerForBezelView;
- (id)layerDisabledActions;
- (int64_t)hourForDate:(id)a3;
- (void)_setAngleOffset:(double)a3;
- (void)_updateDialViewsFrameAnimated:(BOOL)a3;
- (void)applyHourMarkersScaleTransform;
- (void)dealloc;
- (void)layoutSubviews;
- (void)selectHourOffset:(double)a3 animated:(BOOL)a4 completionBlock:(id)a5;
- (void)selectTimezoneLocation:(id)a3 animated:(BOOL)a4 completionBlock:(id)a5;
- (void)setAdditionalTimezoneLocations:(id)a3;
- (void)setDate:(id)a3;
- (void)setDiameter:(double)a3 animated:(BOOL)a4;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4 completionBlock:(id)a5;
- (void)setEditingAlpha:(double)a3;
- (void)setPalette:(id)a3;
- (void)setSelectedTimezoneLocation:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateBezelMarkerForCurrentDate;
- (void)updateCenterLabelFrame;
- (void)updateCenterLabelText;
- (void)updateColor:(id)a3 object:(id)a4;
- (void)updateGMTHourHands;
- (void)updateMagnifierMask;
- (void)updateSolarMaskWithSunriseAngle:(double)a3 sunsetAngle:(double)a4 clockwise:(BOOL)a5;
- (void)updateSolarMaskWithTimezoneLocation:(id)a3;
@end

@implementation NTKAlaskanGMTStyleView

- (NTKAlaskanGMTStyleView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v71.receiver = self;
  v71.super_class = NTKAlaskanGMTStyleView;
  v7 = [(NTKAlaskanGMTStyleView *)&v71 initWithFrame:?];
  if (v7)
  {
    v8 = [[UIView alloc] initWithFrame:{x, y, width, height}];
    containerView = v7->_containerView;
    v7->_containerView = v8;

    [(NTKAlaskanGMTStyleView *)v7 addSubview:v7->_containerView];
    v10 = objc_opt_new();
    date = v7->_date;
    v7->_date = v10;

    v12 = +[NTKFaceViewRenderingContext sharedRenderingContext];
    v13 = [v12 device];
    device = v7->_device;
    v7->_device = v13;

    memset(__src, 0, 312);
    v15 = [(NTKAlaskanGMTStyleView *)v7 device];
    sub_1682C(v15, __src);

    v16 = +[NSLocale currentLocale];
    v7->_is24HourMode = CLKLocaleIs24HourMode();

    v17 = [(NTKAlaskanGMTStyleView *)v7 layerDisabledActions];
    v18 = objc_alloc_init(CALayer);
    primaryBackgroundLayer = v7->_primaryBackgroundLayer;
    v7->_primaryBackgroundLayer = v18;

    [(CALayer *)v7->_primaryBackgroundLayer setActions:v17];
    v20 = [(NTKAlaskanGMTStyleView *)v7 containerView];
    v21 = [v20 layer];
    [v21 addSublayer:v7->_primaryBackgroundLayer];

    v22 = objc_alloc_init(CALayer);
    secondaryBackgroundLayer = v7->_secondaryBackgroundLayer;
    v7->_secondaryBackgroundLayer = v22;

    [(CALayer *)v7->_secondaryBackgroundLayer setActions:v17];
    [(CALayer *)v7->_primaryBackgroundLayer addSublayer:v7->_secondaryBackgroundLayer];
    objc_initWeak(&location, v7);
    v24 = [NTKAlaskanDialView alloc];
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_12B2C;
    v67[3] = &unk_391B8;
    objc_copyWeak(&v68, &location);
    v25 = [(NTKAlaskanDialView *)v24 initWithNumberOfMarkers:24 markersFactory:v67];
    bezelView = v7->_bezelView;
    v7->_bezelView = v25;

    [(NTKAlaskanDialView *)v7->_bezelView setShouldRotateMarkers:1];
    v27 = [(NTKAlaskanGMTStyleView *)v7 containerView];
    [v27 addSubview:v7->_bezelView];

    v28 = objc_alloc_init(CALayer);
    centerCircleBackgroundLayer = v7->_centerCircleBackgroundLayer;
    v7->_centerCircleBackgroundLayer = v28;

    v30 = +[UIColor blackColor];
    -[CALayer setBackgroundColor:](v7->_centerCircleBackgroundLayer, "setBackgroundColor:", [v30 CGColor]);

    [(CALayer *)v7->_centerCircleBackgroundLayer setActions:v17];
    v31 = [(NTKAlaskanGMTStyleView *)v7 containerView];
    v32 = [v31 layer];
    [v32 addSublayer:v7->_centerCircleBackgroundLayer];

    v33 = [NTKAlaskanDialView alloc];
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_12BD8;
    v63[3] = &unk_391E0;
    objc_copyWeak(&v64, &location);
    memcpy(v65, __src, sizeof(v65));
    v66 = 12;
    v34 = [(NTKAlaskanDialView *)v33 initWithNumberOfMarkers:12 markersFactory:v63];
    dialView = v7->_dialView;
    v7->_dialView = v34;

    v36 = [(NTKAlaskanGMTStyleView *)v7 containerView];
    [v36 addSubview:v7->_dialView];

    [(NTKAlaskanDialView *)v7->_dialView setContentDiameter:__src[1]];
    v37 = +[UIColor clearColor];
    [(NTKAlaskanDialView *)v7->_dialView setBackgroundColor:v37];

    [(NTKAlaskanDialView *)v7->_dialView setShouldPixelAlignCenterPoints:0];
    v38 = [NTKAlaskanDialView alloc];
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_12D74;
    v59[3] = &unk_39208;
    objc_copyWeak(v61, &location);
    v61[1] = &stru_68 + 16;
    v39 = v17;
    v60 = v39;
    memcpy(v62, __src, sizeof(v62));
    v40 = [(NTKAlaskanDialView *)v38 initWithNumberOfMarkers:120 markersFactory:v59];
    ticksView = v7->_ticksView;
    v7->_ticksView = v40;

    [(NTKAlaskanDialView *)v7->_ticksView setShouldRotateMarkers:1];
    v42 = [(NTKAlaskanGMTStyleView *)v7 containerView];
    [v42 addSubview:v7->_ticksView];

    v43 = objc_opt_new();
    gmtHandTip = v7->_gmtHandTip;
    v7->_gmtHandTip = v43;

    [(CALayer *)v7->_gmtHandTip setActions:v39];
    [(CALayer *)v7->_gmtHandTip setFrame:0.0, 0.0, __src[26], __src[26]];
    [(CALayer *)v7->_gmtHandTip bounds];
    [(CALayer *)v7->_gmtHandTip setCornerRadius:v45 * 0.5];
    v46 = [(NTKAlaskanGMTColorPalette *)v7->_palette gmtHandInlayColor];
    -[CALayer setBackgroundColor:](v7->_gmtHandTip, "setBackgroundColor:", [v46 CGColor]);

    v47 = [(NTKAlaskanGMTColorPalette *)v7->_palette gmtHandColor];
    -[CALayer setBorderColor:](v7->_gmtHandTip, "setBorderColor:", [v47 CGColor]);

    v48 = __src[27];
    [(CALayer *)v7->_gmtHandTip setBorderWidth:__src[27]];
    v49 = [[NTKAlaskanAnalogHand alloc] initWithFrame:0.0, 0.0, v48, 0.0];
    gmtHourHands = v7->_gmtHourHands;
    v7->_gmtHourHands = v49;

    v51 = [(NTKAlaskanAnalogHand *)v7->_gmtHourHands layer];
    [v51 setAnchorPoint:{0.5, 0.0}];

    v52 = [(NTKAlaskanGMTColorPalette *)v7->_palette gmtHandColor];
    [(NTKAlaskanAnalogHand *)v7->_gmtHourHands setBackgroundColor:v52];

    [(NTKAlaskanAnalogHand *)v7->_gmtHourHands setTipLayer:v7->_gmtHandTip];
    [(UIView *)v7->_containerView addSubview:v7->_gmtHourHands];
    v53 = [NSMutableArray arrayWithCapacity:50];
    magnifierFonts = v7->_magnifierFonts;
    v7->_magnifierFonts = v53;

    for (i = 0; i != 50; ++i)
    {
      CLKInterpolateBetweenFloatsClipped();
      v56 = v7->_magnifierFonts;
      v57 = [CLKFont compactSoftFontOfSize:"compactSoftFontOfSize:weight:" weight:?];
      [(NSMutableArray *)v56 addObject:v57];
    }

    objc_destroyWeak(v61);
    objc_destroyWeak(&v64);
    objc_destroyWeak(&v68);
    objc_destroyWeak(&location);
  }

  return v7;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NTKAlaskanGMTStyleView;
  [(NTKAlaskanGMTStyleView *)&v2 dealloc];
}

- (id)layerDisabledActions
{
  v2 = +[NSNull null];
  v5[0] = @"contents";
  v5[1] = @"backgroundColor";
  v6[0] = v2;
  v6[1] = v2;
  v5[2] = @"transform";
  v5[3] = @"position";
  v6[2] = v2;
  v6[3] = v2;
  v5[4] = @"opacity";
  v5[5] = @"mask";
  v6[4] = v2;
  v6[5] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:6];

  return v3;
}

- (void)setPalette:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_palette, a3);
  v6 = [(NTKAlaskanGMTColorPalette *)self->_palette dayDialColor];
  -[CALayer setBackgroundColor:](self->_primaryBackgroundLayer, "setBackgroundColor:", [v6 CGColor]);

  v7 = [(NTKAlaskanGMTColorPalette *)self->_palette nightDialColor];
  -[CALayer setBackgroundColor:](self->_secondaryBackgroundLayer, "setBackgroundColor:", [v7 CGColor]);

  bezelView = self->_bezelView;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_13364;
  v36[3] = &unk_39230;
  v36[4] = self;
  v9 = v5;
  v37 = v9;
  [(NTKAlaskanDialView *)bezelView enumerateMarkers:v36];
  dialView = self->_dialView;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_133F8;
  v34[3] = &unk_39230;
  v34[4] = self;
  v11 = v9;
  v35 = v11;
  [(NTKAlaskanDialView *)dialView enumerateMarkers:v34];
  gmtHourMarkersView = self->_gmtHourMarkersView;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_13468;
  v32[3] = &unk_39230;
  v32[4] = self;
  v13 = v11;
  v33 = v13;
  [(NTKAlaskanDialView *)gmtHourMarkersView enumerateMarkers:v32];
  magnifierGmtHourMarkersView = self->_magnifierGmtHourMarkersView;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_134D8;
  v30[3] = &unk_39230;
  v30[4] = self;
  v15 = v13;
  v31 = v15;
  [(NTKAlaskanDialView *)magnifierGmtHourMarkersView enumerateMarkers:v30];
  v16 = [(NTKAlaskanGMTColorPalette *)self->_palette magnifierLensBorderColor];
  -[CALayer setBorderColor:](self->_magnifierLensBorder, "setBorderColor:", [v16 CGColor]);

  v17 = [(NTKAlaskanGMTColorPalette *)self->_palette monogramTextColor];
  [(UILabel *)self->_centerLabel setTextColor:v17];

  v18 = [(NTKAlaskanGMTColorPalette *)self->_palette gmtHandColor];
  [(NTKAlaskanAnalogHand *)self->_gmtHourHands setBackgroundColor:v18];

  v19 = [(NTKAlaskanGMTColorPalette *)self->_palette gmtHandColor];
  -[CALayer setBorderColor:](self->_gmtHandTip, "setBorderColor:", [v19 CGColor]);

  v20 = [(NTKAlaskanGMTColorPalette *)self->_palette gmtHandInlayColor];
  -[CALayer setBackgroundColor:](self->_gmtHandTip, "setBackgroundColor:", [v20 CGColor]);

  ticksView = self->_ticksView;
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_13548;
  v27 = &unk_39230;
  v28 = self;
  v29 = v15;
  v22 = v15;
  [(NTKAlaskanDialView *)ticksView enumerateMarkers:&v24];
  v23 = [v22 outerMarkersColor];
  [(UIImageView *)self->_heroMarker setTintColor:v23];
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

- (void)setDate:(id)a3
{
  v5 = a3;
  if (([v5 isEqualToDate:self->_date] & 1) == 0)
  {
    objc_storeStrong(&self->_date, a3);
    [(NTKAlaskanGMTStyleView *)self updateGMTHourHands];
    [(NTKAlaskanGMTStyleView *)self updateMagnifierMask];
  }
}

- (void)setEditingAlpha:(double)a3
{
  [(NTKAlaskanAnalogHand *)self->_gmtHourHands setAlpha:?];
  centerLabel = self->_centerLabel;

  [(UILabel *)centerLabel setAlpha:a3];
}

- (void)selectHourOffset:(double)a3 animated:(BOOL)a4 completionBlock:(id)a5
{
  v5 = a4;
  v8 = a5;
  [(NTKAlaskanGMTStyleView *)self setSelectedTimezoneLocation:0];
  [(NTKAlaskanGMTStyleView *)self setHourOffset:a3];
  [(NTKAlaskanGMTStyleView *)self updatePickerViewSelectionAnimated:v5];
  if (a3 < 0.0)
  {
    a3 = [(NTKAlaskanDialView *)self->_bezelView numberOfMarkers]+ a3;
  }

  v9 = [(NTKAlaskanGMTStyleView *)self bezelView];
  if (a3 < 0.0)
  {
    a3 = 0.0;
  }

  v10 = ([(NTKAlaskanDialView *)self->_bezelView numberOfMarkers]- 1);
  if (a3 < v10)
  {
    v10 = a3;
  }

  [v9 angleForIndex:v10];
  v12 = v11;

  [(NTKAlaskanGMTStyleView *)self setAngleOffset:v5 animated:0 progressCallback:v8 completionBlock:360.0 - v12];
  [(NTKAlaskanGMTStyleView *)self updateSolarMaskWithTimezoneLocation:0];

  [(NTKAlaskanGMTStyleView *)self updateCenterLabelText];
}

- (void)setSelectedTimezoneLocation:(id)a3
{
  objc_storeStrong(&self->_selectedTimezoneLocation, a3);

  [(NTKAlaskanGMTStyleView *)self updateCenterLabelText];
}

- (void)selectTimezoneLocation:(id)a3 animated:(BOOL)a4 completionBlock:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  [v9 hourOffset];
  [(NTKAlaskanGMTStyleView *)self selectHourOffset:v5 animated:v8 completionBlock:v10];

  [(NTKAlaskanGMTStyleView *)self setSelectedTimezoneLocation:v9];
  [(NTKAlaskanGMTStyleView *)self updatePickerViewSelectionAnimated:v5];
  selectedTimezoneLocation = self->_selectedTimezoneLocation;

  [(NTKAlaskanGMTStyleView *)self updateSolarMaskWithTimezoneLocation:selectedTimezoneLocation];
}

- (void)setAdditionalTimezoneLocations:(id)a3
{
  v4 = [a3 sortedArrayUsingComparator:&stru_39250];
  v21 = [v4 mutableCopy];

  v5 = [(NSArray *)self->_defaultLocations firstObject];
  [v5 hourOffset];
  v7 = v6;

  v8 = +[NSMutableArray array];
  if ([(NSArray *)self->_defaultLocations count])
  {
    v9 = 0;
    v10 = fminf(v7, 0.0);
    while (v10)
    {
      v11 = [(NSArray *)self->_defaultLocations objectAtIndexedSubscript:v9];
      v12 = 0;
      ++v9;
      if (v11)
      {
        goto LABEL_5;
      }

LABEL_6:
      v13 = +[NSMutableIndexSet indexSet];
      if ([v21 count])
      {
        v14 = 0;
        while (1)
        {
          v15 = [v21 objectAtIndexedSubscript:v14];
          [v15 hourOffset];
          v17 = v16;
          [(NTKAlaskanGMTTimezoneLocation *)v11 hourOffset];
          if (v17 >= (v18 + 1.0))
          {
            break;
          }

          [(NSArray *)v8 addObject:v15];
          [v13 addIndex:v14];

          if ([v21 count] <= ++v14)
          {
            goto LABEL_14;
          }
        }
      }

LABEL_14:
      [v21 removeObjectsAtIndexes:v13];
      if (!v10 && !self->_selectedTimezoneLocation)
      {
        [(NTKAlaskanGMTStyleView *)self setSelectedTimezoneLocation:v12];
      }

      ++v10;
      if (v9 >= [(NSArray *)self->_defaultLocations count])
      {
        goto LABEL_18;
      }
    }

    v12 = [(NTKAlaskanGMTStyleView *)self noneLocation];
    [(NSArray *)v8 addObject:v12];
    v11 = self->_referenceTimezoneLocation;
    if (!v11)
    {
      goto LABEL_6;
    }

LABEL_5:
    [(NSArray *)v8 addObject:v11];
    goto LABEL_6;
  }

LABEL_18:
  timezones = self->_timezones;
  self->_timezones = v8;

  [(NTKAlaskanGMTStyleView *)self updatePickerViewWithTimezones];
  [(NTKAlaskanGMTStyleView *)self updatePickerViewSelection];
  v20 = [(NTKAlaskanGMTStyleView *)self selectedTimezoneLocation];
  [(NTKAlaskanGMTStyleView *)self updateSolarMaskWithTimezoneLocation:v20];
}

- (NTKAlaskanGMTTimezoneLocation)noneLocation
{
  noneLocation = self->_noneLocation;
  if (!noneLocation)
  {
    v4 = objc_alloc_init(NTKAlaskanGMTTimezoneLocation);
    v5 = self->_noneLocation;
    self->_noneLocation = v4;

    [(NTKAlaskanGMTTimezoneLocation *)self->_noneLocation setHourOffset:0.0];
    [(NTKAlaskanGMTTimezoneLocation *)self->_noneLocation setSunriseHourOfDay:6.0];
    [(NTKAlaskanGMTTimezoneLocation *)self->_noneLocation setSunsetHourOfDay:18.0];
    v6 = [NTKSalmonFaceBundle localizedStringForKey:@"ALASKAN_GMT_NONE_SELECTED_CITY_LABEL" comment:@"None"];
    [(NTKAlaskanGMTTimezoneLocation *)self->_noneLocation setLocationName:v6];

    v7 = [(NTKAlaskanGMTTimezoneLocation *)self->_noneLocation locationName];
    [(NTKAlaskanGMTTimezoneLocation *)self->_noneLocation setCityName:v7];

    noneLocation = self->_noneLocation;
  }

  return noneLocation;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4 completionBlock:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = v8;
  if (self->_isEditing == v6)
  {
    if (v8)
    {
      v8[2](v8);
    }
  }

  else
  {
    self->_isEditing = v6;
    if (v6)
    {
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_13FEC;
      v22[3] = &unk_38C80;
      v23 = v8;
      [(NTKAlaskanGMTStyleView *)self startEditingWithCompletionBlock:v22];
      v10 = [(NTKAlaskanGMTStyleView *)self delegate];
      v11 = [(NTKAlaskanGMTStyleView *)self selectedTimezoneLocation];
      [v10 alaskanGMTStyleView:self didSelectTimezoneLocation:v11];

      v12 = [(NTKAlaskanGMTStyleView *)self delegate];
      [v12 alaskanGMTStyleViewDidStartEditing:self];

      selectedPickerViewTimezoneLocation = v23;
    }

    else
    {
      if (self->_doneButtonTapped)
      {
        self->_doneButtonTapped = 0;
        [(NTKAlaskanGMTStyleView *)self stopEditing];
        v14 = [(NTKAlaskanGMTStyleView *)self delegate];
        [v14 alaskanGMTStyleViewDidFinishEditing:self];
      }

      else
      {
        v17 = _NSConcreteStackBlock;
        v18 = 3221225472;
        v19 = sub_14004;
        v20 = &unk_38C80;
        v21 = v8;
        [(NTKAlaskanGMTStyleView *)self stopEditingAnimated:v5 completionBlock:&v17];
        v15 = [(NTKAlaskanGMTStyleView *)self delegate:v17];
        [v15 alaskanGMTStyleViewDidCancelEditing:self animated:v5];

        v16 = [(NTKAlaskanGMTStyleView *)self selectedTimezoneLocation];
        [(NTKAlaskanGMTStyleView *)self selectTimezoneLocation:v16 animated:0 completionBlock:0];
      }

      selectedPickerViewTimezoneLocation = self->_selectedPickerViewTimezoneLocation;
      self->_selectedPickerViewTimezoneLocation = 0;
    }

    [(NTKAlaskanGMTStyleView *)self updateGMTHourHands];
  }
}

- (void)_setAngleOffset:(double)a3
{
  if (self->_angleOffset != a3)
  {
    self->_angleOffset = a3;
    v5 = [(NTKAlaskanGMTStyleView *)self bezelView];
    [v5 setAngleOffset:a3];

    [(NTKAlaskanDialView *)self->_gmtHourMarkersView setAngleOffset:a3];
    [(NTKAlaskanDialView *)self->_magnifierGmtHourMarkersView setAngleOffset:a3];
    CLKDegreesToRadians();
    CGAffineTransformMakeRotation(&v9, v6);
    v7 = [(NTKAlaskanGMTStyleView *)self secondaryBackgroundLayer];
    v8 = v9;
    [v7 setAffineTransform:&v8];

    [(NTKAlaskanGMTStyleView *)self updateMagnifierMask];
  }
}

- (void)updateMagnifierMask
{
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  v3 = [(NTKAlaskanGMTStyleView *)self device];
  sub_1682C(v3, v27);

  [(NTKAlaskanGMTStyleView *)self bounds];
  CLKRectGetCenter();
  v5 = v4;
  v7 = v6;
  [(NTKAlaskanDialView *)self->_magnifierGmtHourMarkersView contentDiameter];
  v9 = v8 * 0.5;
  v10 = [(NTKAlaskanGMTStyleView *)self date];
  [(NTKAlaskanGMTStyleView *)self magnifierAnglePositionForDate:v10];
  v12 = v11;

  [(NTKAlaskanGMTStyleView *)self centerPointForAngle:v9 radius:v12];
  CGAffineTransformMakeTranslation(&v26, v5, v7);
  v13 = [(NTKAlaskanGMTStyleView *)self device];
  CLKPixelAlignRectForDevice();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [UIBezierPath bezierPathWithOvalInRect:v15, v17, v19, v21];
  v23 = +[CAShapeLayer layer];
  [v23 setPath:{objc_msgSend(v22, "CGPath")}];
  v24 = [(NTKAlaskanDialView *)self->_magnifierGmtHourMarkersView layer];
  [v24 setMask:v23];

  v25 = [(NTKAlaskanGMTColorPalette *)self->_palette magnifierLensBackgroundColor];
  [(NTKAlaskanDialView *)self->_magnifierGmtHourMarkersView setBackgroundColor:v25];

  [(CALayer *)self->_magnifierLensBorder setFrame:v15, v17, v19, v21];
  [(NTKAlaskanGMTStyleView *)self applyHourMarkersScaleTransform];
}

- (void)applyHourMarkersScaleTransform
{
  if (([(NTKAlaskanDialView *)self->_gmtHourMarkersView disableLayout]& 1) == 0)
  {
    [(NTKAlaskanDialView *)self->_gmtHourMarkersView layoutMarkers];
    [(NTKAlaskanGMTStyleView *)self bounds];
    CLKRectGetCenter();
    v4 = v3;
    v6 = v5;
    [(CALayer *)self->_magnifierLensBorder position];
    atan2(v7 - v4, v8 - v6);
    CLKRadiansToDegrees();
    gmtHourMarkersView = self->_gmtHourMarkersView;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_14414;
    v11[3] = &unk_39278;
    *&v11[5] = v4;
    *&v11[6] = v6;
    v11[7] = v10;
    v11[4] = self;
    [(NTKAlaskanDialView *)gmtHourMarkersView enumerateMarkers:v11];
  }
}

- (int64_t)hourForDate:(id)a3
{
  v3 = a3;
  v4 = +[NSCalendar currentCalendar];
  v5 = [v4 components:32 fromDate:v3];

  v6 = [v5 hour];
  return v6;
}

- (double)magnifierAnglePositionForDate:(id)a3
{
  v4 = a3;
  v5 = +[NSCalendar currentCalendar];
  v6 = [v5 components:96 fromDate:v4];

  v7 = [v6 hour];
  v8 = 360.0 / [(NTKAlaskanDialView *)self->_bezelView numberOfMarkers];
  v9 = v8 * (v7 % [(NTKAlaskanDialView *)self->_bezelView numberOfMarkers]) + -270.0;

  return v9;
}

- (CGPoint)centerPointForAngle:(double)a3 radius:(int64_t)a4
{
  CLKDegreesToRadians();
  memset(&v8, 0, sizeof(v8));
  CGAffineTransformMakeRotation(&v8, v5);
  v6 = vaddq_f64(*&v8.tx, vmlaq_n_f64(vmulq_f64(*&v8.c, 0), *&v8.a, -a4));
  v7 = v6.f64[1];
  result.x = v6.f64[0];
  result.y = v7;
  return result;
}

- (void)updateGMTHourHands
{
  v3 = +[NSCalendar currentCalendar];
  v4 = [v3 components:96 fromDate:self->_date];
  [v4 hour];
  [v4 minute];
  [(NTKAlaskanDialView *)self->_bezelView numberOfMarkers];
  [(NTKAlaskanDialView *)self->_bezelView numberOfMarkers];
  CLKDegreesToRadians();
  CGAffineTransformMakeRotation(&v8, v5);
  gmtHourHands = self->_gmtHourHands;
  v7 = v8;
  [(NTKAlaskanAnalogHand *)gmtHourHands setTransform:&v7];
  [(NTKAlaskanGMTStyleView *)self updateBezelMarkerForCurrentDate];
}

- (void)updateBezelMarkerForCurrentDate
{
  v16 = [(NSDate *)self->_date dateByAddingTimeInterval:self->_hourOffset * 3600.0];
  v3 = [(NTKAlaskanGMTStyleView *)self hourForDate:?];
  currentHighlightedHour = self->_currentHighlightedHour;
  if (currentHighlightedHour)
  {
    if ([(NSNumber *)currentHighlightedHour integerValue]== v3)
    {
      goto LABEL_9;
    }

    if (self->_currentHighlightedHour)
    {
      v5 = [(NTKAlaskanGMTStyleView *)self bezelView];
      v6 = +[NSMutableIndexSet indexSet];
      [v5 setMarkersToRotateIndexSet:v6];

      v7 = [(NSNumber *)self->_currentHighlightedHour integerValue];
      v8 = [(NTKAlaskanGMTStyleView *)self bezelView];
      if (v7)
      {
        [(NTKAlaskanGMTStyleView *)self createTickMarkerForBezelView];
      }

      else
      {
        [(NTKAlaskanGMTStyleView *)self heroMarker];
      }
      v9 = ;
      [v8 replaceMarker:v9 atIndex:{-[NSNumber integerValue](self->_currentHighlightedHour, "integerValue")}];
    }
  }

  v10 = [NSNumber numberWithInteger:v3];
  v11 = self->_currentHighlightedHour;
  self->_currentHighlightedHour = v10;

  v12 = [(NTKAlaskanGMTStyleView *)self createHourMarkerForBezelView:v3];
  v13 = [(NTKAlaskanGMTStyleView *)self bezelView];
  v14 = [NSMutableIndexSet indexSetWithIndex:v3];
  [v13 setMarkersToRotateIndexSet:v14];

  v15 = [(NTKAlaskanGMTStyleView *)self bezelView];
  [v15 replaceMarker:v12 atIndex:v3];

LABEL_9:
}

- (id)createHourMarkerForBezelView:(unint64_t)a3
{
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
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
  v5 = [(NTKAlaskanGMTStyleView *)self device:0];
  sub_1682C(v5, &v14);

  v6 = objc_alloc_init(UILabel);
  v7 = [CLKFont compactSoftFontOfSize:*(&v15 + 1) weight:UIFontWeightSemibold];
  [v6 setFont:v7];

  v8 = [(NTKAlaskanGMTStyleView *)self _formattedTextForHour:a3];
  [v6 setText:v8];

  v9 = [(NTKAlaskanGMTStyleView *)self layerDisabledActions];
  v10 = [v6 layer];
  [v10 setActions:v9];

  v11 = [(NTKAlaskanGMTStyleView *)self palette];
  v12 = [v11 gmtCurrentHourLabelColor];
  [v6 setTextColor:v12];

  [v6 sizeToFit];

  return v6;
}

- (id)createTickMarkerForBezelView
{
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  v3 = [(NTKAlaskanGMTStyleView *)self device:0];
  sub_1682C(v3, &v10);

  v4 = +[CALayer layer];
  v5 = [(NTKAlaskanGMTStyleView *)self layerDisabledActions];
  [v4 setActions:v5];

  [v4 setFrame:{0.0, 0.0, v11}];
  v6 = [(NTKAlaskanGMTStyleView *)self palette];
  v7 = [v6 outerMarkersColor];
  [v4 setBackgroundColor:{objc_msgSend(v7, "CGColor")}];

  [v4 bounds];
  v8 = [(NTKAlaskanGMTStyleView *)self device];
  CLKRoundForDevice();
  [v4 setCornerRadius:?];

  return v4;
}

- (UIImageView)heroMarker
{
  heroMarker = self->_heroMarker;
  if (!heroMarker)
  {
    v4 = [NTKAlaskanFaceBundle imageWithName:@"gmt-arrow"];
    v5 = [[UIImageView alloc] initWithImage:v4];
    v6 = self->_heroMarker;
    self->_heroMarker = v5;

    heroMarker = self->_heroMarker;
  }

  return heroMarker;
}

- (id)_formattedTextForHour:(unint64_t)a3
{
  v4 = a3;
  if (self->_is24HourMode)
  {
    if (!a3)
    {
      a3 = 24;
    }
  }

  else
  {
    a3 = 12;
    if (v4)
    {
      v5 = v4 == 12;
      v6 = v4 % 0xC;
      if (!v5)
      {
        a3 = v6;
      }
    }
  }

  v7 = [NSNumber numberWithUnsignedInteger:a3];
  v8 = [NSString localizedStringWithFormat:@"%@", v7];

  return v8;
}

- (void)updateCenterLabelText
{
  [(NTKAlaskanGMTStyleView *)self hourOffset];
  if (v3 == 0.0 && (-[NTKAlaskanGMTStyleView selectedTimezoneLocation](self, "selectedTimezoneLocation"), v4 = objc_claimAutoreleasedReturnValue(), [v4 cityIdentifier], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, !v5))
  {
    v8 = [(NTKAlaskanGMTStyleView *)self centerLabel];
    [v8 setText:0];
  }

  else
  {
    v6 = [(NTKAlaskanGMTStyleView *)self selectedTimezoneLocation];
    v7 = [v6 cityIdentifier];

    if (v7)
    {
      v8 = [(NTKAlaskanGMTStyleView *)self selectedTimezoneLocation];
      [v8 locationName];
    }

    else
    {
      v8 = [NTKSalmonFaceBundle localizedStringForKey:@"ALASKAN_GMT_HOUR_OFFSET_MONOGRAM_LABEL" comment:@"%+ld HRS"];
      [(NTKAlaskanGMTStyleView *)self hourOffset];
      [NSString localizedStringWithFormat:v8, v9];
    }
    v10 = ;
    v11 = [(NTKAlaskanGMTStyleView *)self centerLabel];
    [v11 setText:v10];
  }

  [(NTKAlaskanGMTStyleView *)self updateCenterLabelFrame];
}

- (id)attributedStringWithPrefix:(id)a3 image:(id)a4 suffix:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[NSMutableAttributedString alloc] initWithString:v9];

  v11 = objc_alloc_init(NSTextAttachment);
  [v11 setImage:v8];

  v12 = [NSAttributedString attributedStringWithAttachment:v11];
  [v10 appendAttributedString:v12];

  v13 = [[NSAttributedString alloc] initWithString:v7];
  [v10 appendAttributedString:v13];

  v14 = +[UIColor whiteColor];
  [v10 addAttribute:NSForegroundColorAttributeName value:v14 range:{0, objc_msgSend(v10, "length")}];

  return v10;
}

- (UIImage)locationIcon
{
  locationIcon = self->_locationIcon;
  if (!locationIcon)
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
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
    v12 = 0u;
    v4 = [(NTKAlaskanGMTStyleView *)self device:0];
    sub_1682C(v4, &v11);

    v5 = [CLKFont compactSoftFontOfSize:*(&v12 + 1) weight:UIFontWeightSemibold];
    v6 = [UIImageSymbolConfiguration configurationWithFont:v5];

    v7 = [UIImage systemImageNamed:@"location.fill" withConfiguration:v6];
    v8 = [v7 imageWithRenderingMode:2];
    v9 = self->_locationIcon;
    self->_locationIcon = v8;

    locationIcon = self->_locationIcon;
  }

  return locationIcon;
}

- (UILabel)centerLabel
{
  centerLabel = self->_centerLabel;
  if (!centerLabel)
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    v4 = [(NTKAlaskanGMTStyleView *)self device:0];
    sub_1682C(v4, &v10);

    v5 = [CLKUIColoringLabel labelWithOptions:0];
    v6 = self->_centerLabel;
    self->_centerLabel = v5;

    v7 = [CLKFont compactSoftFontOfSize:*&v11 weight:UIFontWeightBold];
    [(UILabel *)self->_centerLabel setFont:v7];

    v8 = [(NTKAlaskanGMTColorPalette *)self->_palette monogramTextColor];
    [(UILabel *)self->_centerLabel setTextColor:v8];

    [(UILabel *)self->_centerLabel setTextAlignment:1];
    [(UILabel *)self->_centerLabel setNumberOfLines:1];
    [(NTKAlaskanGMTStyleView *)self addSubview:self->_centerLabel];
    centerLabel = self->_centerLabel;
  }

  return centerLabel;
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = NTKAlaskanGMTStyleView;
  v4 = a3;
  [(NTKAlaskanGMTStyleView *)&v8 traitCollectionDidChange:v4];
  v5 = [(NTKAlaskanGMTStyleView *)self traitCollection:v8.receiver];
  v6 = [v5 legibilityWeight];
  v7 = [v4 legibilityWeight];

  if (v6 != v7)
  {
    [(NTKAlaskanDialView *)self->_dialView reloadMarkers];
    [(NTKAlaskanDialView *)self->_bezelView reloadMarkers];
  }
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = NTKAlaskanGMTStyleView;
  [(NTKAlaskanGMTStyleView *)&v8 layoutSubviews];
  v7 = 0;
  v6 = 0u;
  v3 = [(NTKAlaskanGMTStyleView *)self device:0];
  sub_1682C(v3, &v5);

  v4 = *&v6;
  [(UIView *)self->_containerView setBounds:0.0, 0.0, *&v6, *&v6];
  [(NTKAlaskanGMTStyleView *)self bounds];
  CLKRectGetCenter();
  [(UIView *)self->_containerView setCenter:?];
  [(CALayer *)self->_primaryBackgroundLayer setBounds:0.0, 0.0, v4, v4];
  CLKRectGetCenter();
  [(CALayer *)self->_primaryBackgroundLayer setPosition:?];
  [(CALayer *)self->_secondaryBackgroundLayer setBounds:0.0, 0.0, v4, v4];
  CLKRectGetCenter();
  [(CALayer *)self->_secondaryBackgroundLayer setPosition:?];
  [(NTKAlaskanDialView *)self->_bezelView setFrame:0.0, 0.0, v4, v4];
  [(NTKAlaskanDialView *)self->_gmtHourMarkersView setFrame:0.0, 0.0, v4, v4];
  [(NTKAlaskanGMTStyleView *)self bounds];
  [(NTKAlaskanDialView *)self->_magnifierGmtHourMarkersView setFrame:?];
  [(NTKAlaskanGMTStyleView *)self bounds];
  CLKRectGetCenter();
  [(NTKAlaskanDialView *)self->_magnifierGmtHourMarkersView setCenter:?];
  [(NTKAlaskanGMTStyleView *)self _updateDialViewsFrame];
  [(NTKAlaskanGMTStyleView *)self updateMagnifierMask];
  [(NTKAlaskanGMTStyleView *)self updateCenterLabelFrame];
}

- (void)_updateDialViewsFrameAnimated:(BOOL)a3
{
  v3 = a3;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  *dx = 0u;
  v13 = 0u;
  v11 = 0u;
  v5 = [(NTKAlaskanGMTStyleView *)self device];
  sub_1682C(v5, &v11);

  v6 = 2.0;
  if (self->_isEditing)
  {
    v6 = 3.0;
  }

  v7 = *&v11 * v6;
  [(UIView *)self->_containerView bounds];
  v8 = CGRectGetWidth(v32) - v7;
  [(NTKAlaskanDialView *)self->_dialView setFrame:0.0, 0.0, v8, v8];
  [(UIView *)self->_containerView bounds];
  CLKRectGetCenter();
  [(NTKAlaskanDialView *)self->_dialView setPosition:?];
  +[CATransaction begin];
  [CATransaction setDisableActions:v3 ^ 1];
  [(NTKAlaskanDialView *)self->_dialView frame];
  [(CALayer *)self->_centerCircleBackgroundLayer setFrame:?];
  +[CATransaction commit];
  [(NTKAlaskanDialView *)self->_dialView frame];
  v34 = CGRectInset(v33, dx[1], dx[1]);
  [(NTKAlaskanDialView *)self->_ticksView setFrame:v34.origin.x, v34.origin.y, v34.size.width, v34.size.height];
  [(NTKAlaskanDialView *)self->_bezelView frame];
  [(CALayer *)self->_centerCircleBackgroundLayer frame];
  v9 = [(NTKAlaskanGMTStyleView *)self device];
  CLKRoundForDevice();
  [(NTKAlaskanDialView *)self->_bezelView setContentInset:?];

  [(NTKAlaskanDialView *)self->_gmtHourMarkersView frame];
  [(CALayer *)self->_centerCircleBackgroundLayer frame];
  v10 = [(NTKAlaskanGMTStyleView *)self device];
  CLKRoundForDevice();
  [(NTKAlaskanDialView *)self->_gmtHourMarkersView setContentInset:?];

  [(NTKAlaskanGMTStyleView *)self setDiameter:v3 animated:v8];
}

- (void)updateCenterLabelFrame
{
  [(CALayer *)self->_centerCircleBackgroundLayer bounds];
  v4 = v3 * 0.6;
  centerLabel = self->_centerLabel;
  [(NTKAlaskanGMTStyleView *)self bounds];
  [(UILabel *)centerLabel sizeThatFits:v4, v6];
  [(UILabel *)self->_centerLabel setFrame:0.0, 0.0, v7, v8];
  [(NTKAlaskanGMTStyleView *)self bounds];
  MidX = CGRectGetMidX(v16);
  dialView = self->_dialView;
  [(NTKAlaskanDialView *)dialView positionForMarkerAtIndex:2];
  [(NTKAlaskanDialView *)dialView convertPoint:self toView:?];
  [(UILabel *)self->_centerLabel setCenter:MidX];
  [(UILabel *)self->_centerLabel frame];
  v14 = [(NTKAlaskanGMTStyleView *)self device];
  CLKRoundForDevice();
  v12 = v11;
  v13 = [(UILabel *)self->_centerLabel layer];
  [v13 setCornerRadius:v12];
}

- (CGRect)pickerViewFrame
{
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v3 = [(NTKAlaskanGMTStyleView *)self device];
  sub_1682C(v3, v14);

  if (self->_isEditing)
  {
    [(UIView *)self->_containerView bounds];
    v5 = v4 + *v14 * -3.0;
  }

  else
  {
    [(CALayer *)self->_centerCircleBackgroundLayer bounds];
    v5 = v6;
  }

  [(UIView *)self->_containerView bounds];
  v8 = (v7 - v5) * 0.5;
  [(UIView *)self->_containerView bounds];
  v10 = (v9 - v5) * 0.5;
  v11 = v8;
  v12 = v5;
  v13 = v5;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v10;
  result.origin.x = v11;
  return result;
}

- (double)pickerViewCornerRadius
{
  [(NTKAlaskanGMTStyleView *)self pickerViewFrame];
  v3 = [(NTKAlaskanGMTStyleView *)self device];
  CLKRoundForDevice();
  v5 = v4;

  return v5;
}

- (void)setDiameter:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    self->_diameter = a3;
    +[CATransaction begin];
    [CATransaction setDisableActions:!v4];
    [(CALayer *)self->_centerCircleBackgroundLayer bounds];
    v7 = [(NTKAlaskanGMTStyleView *)self device];
    CLKRoundForDevice();
    [(CALayer *)self->_centerCircleBackgroundLayer setCornerRadius:?];

    +[CATransaction commit];
    [(CALayer *)self->_primaryBackgroundLayer bounds];
    v8 = [(NTKAlaskanGMTStyleView *)self device];
    CLKRoundForDevice();
    [(CALayer *)self->_primaryBackgroundLayer setCornerRadius:?];

    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    v9 = [(NTKAlaskanGMTStyleView *)self device:0];
    sub_1682C(v9, &v17);

    [(NTKAlaskanAnalogHand *)self->_gmtHourHands bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [(UIView *)self->_containerView bounds];
    [(NTKAlaskanAnalogHand *)self->_gmtHourHands setBounds:v11, v13, v15, v16 * 0.5 - *&v18];
    [(UIView *)self->_containerView bounds];
    CLKRectGetCenter();
    [(NTKAlaskanAnalogHand *)self->_gmtHourHands setCenter:?];
  }
}

- (void)updateSolarMaskWithTimezoneLocation:(id)a3
{
  v4 = a3;
  v14 = v4;
  if (v4)
  {
    [v4 sunriseHourOfDay];
    [(NTKAlaskanGMTStyleView *)self angleForHour:?];
    v6 = v5;
    [v14 sunsetHourOfDay];
  }

  else
  {
    [(NTKAlaskanGMTStyleView *)self angleForHour:6.0];
    v6 = v8;
    v7 = 18.0;
  }

  [(NTKAlaskanGMTStyleView *)self angleForHour:v7];
  v10 = v9;
  [v14 sunriseHourOfDay];
  v12 = v11;
  [v14 sunsetHourOfDay];
  [(NTKAlaskanGMTStyleView *)self updateSolarMaskWithSunriseAngle:v12 > v13 sunsetAngle:v6 clockwise:v10];
}

- (void)updateSolarMaskWithSunriseAngle:(double)a3 sunsetAngle:(double)a4 clockwise:(BOOL)a5
{
  v5 = a5;
  [(NTKAlaskanGMTStyleView *)self layoutIfNeeded];
  [(UIView *)self->_containerView bounds];
  CLKRectGetCenter();
  v8 = v7;
  v10 = v9;
  v17 = +[UIBezierPath bezierPath];
  [v17 moveToPoint:{v8, v10}];
  [(UIView *)self->_containerView bounds];
  v11 = CGRectGetHeight(v19) * 0.5;
  CLKDegreesToRadians();
  v13 = v12;
  CLKDegreesToRadians();
  [v17 addArcWithCenter:v5 radius:v8 startAngle:v10 endAngle:v11 clockwise:{v13, v14}];
  [v17 closePath];
  v15 = +[CAShapeLayer layer];
  v16 = v17;
  [v15 setPath:{objc_msgSend(v17, "CGPath")}];
  [(CALayer *)self->_secondaryBackgroundLayer setMask:v15];
}

- (double)angleForHour:(double)a3
{
  v3 = a3;
  if (a3 < 0.0)
  {
    v3 = [(NTKAlaskanDialView *)self->_bezelView numberOfMarkers]+ a3;
  }

  v5 = [(NTKAlaskanGMTStyleView *)self bezelView];
  if (v3 < 0.0)
  {
    v3 = 0.0;
  }

  v6 = ([(NTKAlaskanDialView *)self->_bezelView numberOfMarkers]- 1);
  if (v3 < v6)
  {
    v6 = v3;
  }

  [v5 angleForIndex:v6];

  NTKNormalizeAngle();
  return result;
}

- (NTKAlaskanGMTStyleViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end