@interface NTKGlobetrotterDialView
- (NTKGlobetrotterDialView)initWithFrame:(CGRect)frame timeZoneHourOffset:(int64_t)offset device:(id)device;
- (id)_dialMarkerAttributedStringForHour:(unint64_t)hour;
- (id)_hourMarkerFont;
- (id)_imageViewWithSymbolName:(id)name font:(id)font;
- (id)_newCityLabelWithCityIndex:(unint64_t)index;
- (id)_newHourMarkerLabel;
- (void)_rotateHourMarkerDialToCurrentTime;
- (void)_updateCityDialColor;
- (void)_updateColor:(id)color forObject:(id)object;
- (void)_updateEditingImageColor;
- (void)_updateHourDialMarkers;
- (void)_updateHourMarkerDial;
- (void)_updateSunriseSunsetInfo;
- (void)applyTransitionFraction:(double)fraction fromNumeralOption:(id)option toNumeralOption:(id)numeralOption;
- (void)cleanupAfterEditing;
- (void)layoutSubviews;
- (void)prepareForEditing;
- (void)setAlphaForNonHourMarkerSubviews:(double)subviews;
- (void)setNumberSystem:(unint64_t)system;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)setPalette:(id)palette;
- (void)setTimeZoneHourOffset:(int64_t)offset;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation NTKGlobetrotterDialView

- (NTKGlobetrotterDialView)initWithFrame:(CGRect)frame timeZoneHourOffset:(int64_t)offset device:(id)device
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  deviceCopy = device;
  v67.receiver = self;
  v67.super_class = NTKGlobetrotterDialView;
  height = [(NTKGlobetrotterDialView *)&v67 initWithFrame:x, y, width, height];
  v13 = height;
  if (height)
  {
    objc_storeStrong(&height->_device, device);
    v66 = 0;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    sub_8C1C(deviceCopy, &v59);
    v13->_numberSystem = -1;
    device = v13->_device;
    if (NTKShowIndicScriptNumerals())
    {
      v15 = *(&v63 + 1);
      v16 = UIFontWeightSemibold;
      v17 = [NTKSFCompactFont numericRoundedFontOfSize:*(&v63 + 1) weight:UIFontWeightSemibold];
      if (v17)
      {
LABEL_7:
        v18 = [(NTKGlobetrotterDialView *)v13 _imageViewWithSymbolName:@"sun.max.fill" font:v17];
        sunriseImageView = v13->_sunriseImageView;
        v13->_sunriseImageView = v18;

        v20 = [(NTKGlobetrotterDialView *)v13 _imageViewWithSymbolName:@"moon.fill" font:v17];
        sunsetImageView = v13->_sunsetImageView;
        v13->_sunsetImageView = v20;

        v13->_previousSunriseHour = 0x7FFFFFFFFFFFFFFFLL;
        v13->_previousSunsetHour = 0x7FFFFFFFFFFFFFFFLL;
        objc_initWeak(&location, v13);
        v22 = [NTKDialView alloc];
        v56[0] = _NSConcreteStackBlock;
        v56[1] = 3221225472;
        v56[2] = sub_67E4;
        v56[3] = &unk_10578;
        objc_copyWeak(&v57, &location);
        v23 = [v22 initWithNumberOfMarkers:12 markersFactory:v56];
        outerCityDialView = v13->_outerCityDialView;
        v13->_outerCityDialView = v23;

        [(NTKDialView *)v13->_outerCityDialView setShouldRotateMarkers:1];
        [(NTKGlobetrotterDialView *)v13 addSubview:v13->_outerCityDialView];
        v25 = [NTKDialView alloc];
        v54[0] = _NSConcreteStackBlock;
        v54[1] = 3221225472;
        v54[2] = sub_6844;
        v54[3] = &unk_10578;
        objc_copyWeak(&v55, &location);
        v26 = [v25 initWithNumberOfMarkers:12 markersFactory:v54];
        innerCityDialView = v13->_innerCityDialView;
        v13->_innerCityDialView = v26;

        [(NTKDialView *)v13->_innerCityDialView setShouldRotateMarkers:1];
        [(NTKGlobetrotterDialView *)v13 addSubview:v13->_innerCityDialView];
        v28 = +[NSNull null];
        v68[0] = @"contents";
        v68[1] = @"backgroundColor";
        v69[0] = v28;
        v69[1] = v28;
        v68[2] = @"transform";
        v68[3] = @"bounds";
        v69[2] = v28;
        v69[3] = v28;
        v68[4] = @"position";
        v68[5] = @"opacity";
        v69[4] = v28;
        v69[5] = v28;
        v68[6] = @"hidden";
        v69[6] = v28;
        v29 = [NSDictionary dictionaryWithObjects:v69 forKeys:v68 count:7];
        v30 = [NTKDialView alloc];
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = sub_68A8;
        v43[3] = &unk_105A0;
        objc_copyWeak(&v45, &location);
        v51 = v64;
        v52 = v65;
        v46 = v59;
        v47 = v60;
        v48 = v61;
        v53 = v66;
        v49 = v62;
        v50 = v63;
        v31 = v29;
        v44 = v31;
        v32 = [v30 initWithNumberOfMarkers:24 markersFactory:v43];
        cityDialDotsView = v13->_cityDialDotsView;
        v13->_cityDialDotsView = v32;

        [(NTKGlobetrotterDialView *)v13 addSubview:v13->_cityDialDotsView];
        v34 = objc_alloc_init(UIView);
        nonHourMarkerOverlayView = v13->_nonHourMarkerOverlayView;
        v13->_nonHourMarkerOverlayView = v34;

        v36 = +[UIColor blackColor];
        [(UIView *)v13->_nonHourMarkerOverlayView setBackgroundColor:v36];

        [(UIView *)v13->_nonHourMarkerOverlayView setAlpha:0.0];
        [(NTKGlobetrotterDialView *)v13 addSubview:v13->_nonHourMarkerOverlayView];
        v37 = [NTKDialView alloc];
        v41[0] = _NSConcreteStackBlock;
        v41[1] = 3221225472;
        v41[2] = sub_69A8;
        v41[3] = &unk_10578;
        objc_copyWeak(&v42, &location);
        v38 = [v37 initWithNumberOfMarkers:24 markersFactory:v41];
        hourMarkerDialView = v13->_hourMarkerDialView;
        v13->_hourMarkerDialView = v38;

        [(NTKDialView *)v13->_hourMarkerDialView setShouldPixelAlignCenterPoints:0];
        [(NTKDialView *)v13->_hourMarkerDialView setShouldRotateMarkers:1];
        [(NTKGlobetrotterDialView *)v13 addSubview:v13->_hourMarkerDialView];
        [(NTKGlobetrotterDialView *)v13 layoutIfNeeded];
        [(NTKGlobetrotterDialView *)v13 setTimeZoneHourOffset:0];
        objc_destroyWeak(&v42);

        objc_destroyWeak(&v45);
        objc_destroyWeak(&v55);
        objc_destroyWeak(&v57);
        objc_destroyWeak(&location);

        goto LABEL_8;
      }
    }

    else
    {
      v15 = *(&v63 + 1);
      v16 = UIFontWeightSemibold;
    }

    v17 = [CLKFont systemFontOfSize:CLKRoundedFontDesignName weight:v15 design:v16];
    goto LABEL_7;
  }

LABEL_8:

  return v13;
}

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = NTKGlobetrotterDialView;
  [(NTKGlobetrotterDialView *)&v24 layoutSubviews];
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  memset(v19, 0, sizeof(v19));
  sub_8C1C(self->_device, v19);
  [(NTKGlobetrotterDialView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(NTKDialView *)self->_outerCityDialView setFrame:?];
  [(NTKDialView *)self->_innerCityDialView setFrame:v4, v6, v8, v10];
  [(NTKDialView *)self->_cityDialDotsView setFrame:0.0, 0.0, *&v20, *&v20];
  [(NTKDialView *)self->_hourMarkerDialView setFrame:0.0, 0.0, *(&v21 + 1), *(&v21 + 1)];
  [(UIView *)self->_nonHourMarkerOverlayView setFrame:v4, v6, v8, v10];
  CLKRectGetCenter();
  v12 = v11;
  v14 = v13;
  [(NTKDialView *)self->_outerCityDialView setCenter:?];
  [(NTKDialView *)self->_innerCityDialView setCenter:v12, v14];
  [(NTKDialView *)self->_cityDialDotsView setCenter:v12, v14];
  [(NTKDialView *)self->_hourMarkerDialView setCenter:v12, v14];
  [(NTKDialView *)self->_hourMarkerDialView setContentInset:*&v22];
  v25.origin.x = v4;
  v25.origin.y = v6;
  v25.size.width = v8;
  v25.size.height = v10;
  MidX = CGRectGetMidX(v25);
  layer = [(NTKGlobetrotterDialView *)self layer];
  [layer setCornerRadius:MidX];

  [(NTKDialView *)self->_hourMarkerDialView bounds];
  v17 = CGRectGetMidX(v26);
  layer2 = [(NTKDialView *)self->_hourMarkerDialView layer];
  [layer2 setCornerRadius:v17];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = NTKGlobetrotterDialView;
  changeCopy = change;
  [(NTKGlobetrotterDialView *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(NTKGlobetrotterDialView *)self traitCollection:v8.receiver];
  legibilityWeight = [v5 legibilityWeight];
  legibilityWeight2 = [changeCopy legibilityWeight];

  if (legibilityWeight != legibilityWeight2)
  {
    [(NTKDialView *)self->_outerCityDialView reloadMarkers];
    [(NTKDialView *)self->_innerCityDialView reloadMarkers];
    [(NTKGlobetrotterDialView *)self setTimeZoneHourOffset:self->_timeZoneHourOffset];
    [(NTKGlobetrotterDialView *)self _updateCityDialColor];
  }
}

- (void)prepareForEditing
{
  v3 = [UIGraphicsImageRenderer alloc];
  [(NTKGlobetrotterDialView *)self bounds];
  v4 = [v3 initWithBounds:?];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_6E00;
  v9[3] = &unk_105C8;
  v9[4] = self;
  v5 = [v4 imageWithActions:v9];
  v6 = [v5 imageWithRenderingMode:2];

  v7 = [[UIImageView alloc] initWithImage:v6];
  editingImageView = self->_editingImageView;
  self->_editingImageView = v7;

  [(NTKGlobetrotterDialView *)self _updateEditingImageColor];
  [(NTKGlobetrotterDialView *)self addSubview:self->_editingImageView];
  [(NTKDialView *)self->_outerCityDialView setHidden:1];
  [(NTKDialView *)self->_innerCityDialView setHidden:1];
}

- (void)cleanupAfterEditing
{
  [(NTKGlobetrotterDialView *)self _updateCityDialColor];
  [(NTKDialView *)self->_outerCityDialView setHidden:0];
  [(NTKDialView *)self->_innerCityDialView setHidden:0];
  [(UIImageView *)self->_editingImageView removeFromSuperview];
  editingImageView = self->_editingImageView;
  self->_editingImageView = 0;
}

- (void)setPalette:(id)palette
{
  paletteCopy = palette;
  objc_storeStrong(&self->_palette, palette);
  dialBackground = [paletteCopy dialBackground];
  [(NTKGlobetrotterDialView *)self setBackgroundColor:dialBackground];

  if (self->_editingImageView)
  {
    [(NTKGlobetrotterDialView *)self _updateEditingImageColor];
  }

  else
  {
    [(NTKGlobetrotterDialView *)self _updateCityDialColor];
  }

  hourMarkerLabel = [paletteCopy hourMarkerLabel];
  [(UIImageView *)self->_sunriseImageView setTintColor:hourMarkerLabel];
  [(UIImageView *)self->_sunsetImageView setTintColor:hourMarkerLabel];
  cityDialDotsView = self->_cityDialDotsView;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_7104;
  v15[3] = &unk_105F0;
  v15[4] = self;
  v16 = paletteCopy;
  v9 = paletteCopy;
  [(NTKDialView *)cityDialDotsView enumerateMarkers:v15];
  hourMarkerDialBackground = [v9 hourMarkerDialBackground];
  [(NTKDialView *)self->_hourMarkerDialView setBackgroundColor:hourMarkerDialBackground];

  hourMarkerDialView = self->_hourMarkerDialView;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_7190;
  v13[3] = &unk_105F0;
  v13[4] = self;
  v14 = hourMarkerLabel;
  v12 = hourMarkerLabel;
  [(NTKDialView *)hourMarkerDialView enumerateMarkers:v13];
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  dateCopy = date;
  if (![(NSDate *)self->_overrideDate isEqualToDate:?])
  {
    objc_storeStrong(&self->_overrideDate, date);
    [(NTKGlobetrotterDialView *)self _rotateHourMarkerDialToCurrentTime];
  }
}

- (void)setAlphaForNonHourMarkerSubviews:(double)subviews
{
  [(UIView *)self->_nonHourMarkerOverlayView setAlpha:1.0 - subviews];
  editingImageView = self->_editingImageView;

  [(UIImageView *)editingImageView setAlpha:subviews];
}

- (void)applyTransitionFraction:(double)fraction fromNumeralOption:(id)option toNumeralOption:(id)numeralOption
{
  numeralOptionCopy = numeralOption;
  [option numeralOption];
  v9 = CLKLocaleNumberSystemFromNumeralOption();
  [numeralOptionCopy numeralOption];

  v10 = CLKLocaleNumberSystemFromNumeralOption();
  if (v9 == v10)
  {

    [(NTKGlobetrotterDialView *)self setNumberSystem:v9];
  }

  else
  {
    if (fraction >= 0.5)
    {
      v13 = v10;
      CLKMapFractionIntoRange();
      v12 = v14;
      v9 = v13;
    }

    else
    {
      CLKMapFractionIntoRange();
      v12 = v11;
    }

    [(NTKGlobetrotterDialView *)self setNumberSystem:v9];
    markerContainerView = [(NTKDialView *)self->_hourMarkerDialView markerContainerView];
    [markerContainerView setAlpha:v12];
  }
}

- (void)_rotateHourMarkerDialToCurrentTime
{
  _currentDate = [(NTKGlobetrotterDialView *)self _currentDate];
  v3 = NTKDateHourIn24HourTime();
  _localTimeZone = [(NTKGlobetrotterDialView *)self _localTimeZone];
  if ([_localTimeZone isDaylightSavingTimeForDate:_currentDate])
  {
    [_localTimeZone daylightSavingTimeOffsetForDate:_currentDate];
    v6 = v3 + v5 / -3600.0;
    if (v6)
    {
      v3 = v6;
    }

    else
    {
      v3 = 24;
    }
  }

  [(NTKDialView *)self->_hourMarkerDialView angleForIndex:[(NTKGlobetrotterDialView *)self _hourMarkerDialIndexForHour:v3]];
  [(NTKDialView *)self->_hourMarkerDialView setAngleOffset:-(v7 + -180.0)];
  [(NTKGlobetrotterDialView *)self _updateHourDialMarkers];
}

- (void)_updateHourDialMarkers
{
  [(NTKDialView *)self->_hourMarkerDialView angleOffset];
  v4 = llround(v3 / 15.0);
  [(NTKDialView *)self->_outerCityDialView angleOffset];
  v6 = (v5 / 15.0);
  _currentDate = [(NTKGlobetrotterDialView *)self _currentDate];
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  sub_8C1C(self->_device, &v25);
  hourMarkerDialView = self->_hourMarkerDialView;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_7668;
  v12[3] = &unk_10618;
  v14 = v4;
  v15 = v6;
  v12[4] = self;
  v13 = _currentDate;
  v16 = xmmword_C590;
  v21 = v29;
  v22 = v30;
  v23 = v31;
  v24 = v32;
  v17 = v25;
  v18 = v26;
  v19 = v27;
  v20 = v28;
  v9 = _currentDate;
  [(NTKDialView *)hourMarkerDialView enumerateMarkers:v12];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_7820;
  v10[3] = &unk_10638;
  v10[4] = v4;
  v11 = xmmword_C590;
  [(NTKDialView *)self->_hourMarkerDialView setMarkerRotationProvider:v10];
}

- (id)_dialMarkerAttributedStringForHour:(unint64_t)hour
{
  numberSystem = self->_numberSystem;
  v6 = CLKLocaleNumberSystemIdentifier();
  v7 = [NSString stringWithFormat:@"en_US@numbers=%@", v6];
  v8 = [[NSLocale alloc] initWithLocaleIdentifier:v7];
  v9 = [NSString alloc];
  v10 = [NSNumber numberWithUnsignedInteger:hour];
  v11 = [v9 initWithFormat:@"%@" locale:v8, v10];

  v12 = self->_numberSystem;
  v13 = CLKLocaleRenderingHintLanguageIdentifierForNumberingSystem();
  _hourMarkerFont = [(NTKGlobetrotterDialView *)self _hourMarkerFont];
  v15 = [NSAttributedString alloc];
  v19[0] = NSLanguageIdentifierAttributeName;
  v19[1] = NSFontAttributeName;
  v20[0] = v13;
  v20[1] = _hourMarkerFont;
  v16 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  v17 = [v15 initWithString:v11 attributes:v16];

  return v17;
}

- (void)setTimeZoneHourOffset:(int64_t)offset
{
  self->_timeZoneHourOffset = offset;
  offsetCopy = offset;
  v6 = offset * 15.0;
  [(NTKDialView *)self->_outerCityDialView setAngleOffset:v6];
  [(NTKDialView *)self->_innerCityDialView setAngleOffset:v6 + 15.0];
  if (offset < 0)
  {
    v7 = -(-offset >> 1);
  }

  else if (offset)
  {
    v7 = llround(offsetCopy * 0.5);
  }

  else
  {
    v7 = 0;
  }

  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  sub_8C1C(self->_device, &v36);
  outerCityDialView = self->_outerCityDialView;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_7D10;
  v26[3] = &unk_10658;
  v32 = v40;
  v33 = v41;
  v34 = v42;
  v28 = v36;
  v29 = v37;
  v30 = v38;
  v27 = xmmword_C5A0;
  v26[4] = v7;
  v35 = v43;
  v31 = v39;
  [(NTKDialView *)outerCityDialView enumerateMarkers:v26];
  if (offset < 1)
  {
    if (offset < 0)
    {
      v9 = llround(offsetCopy * 0.5);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = offset >> 1;
  }

  innerCityDialView = self->_innerCityDialView;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_7DD0;
  v16[3] = &unk_10658;
  v22 = v40;
  v23 = v41;
  v24 = v42;
  v18 = v36;
  v19 = v37;
  v20 = v38;
  v17 = xmmword_C5B0;
  v16[4] = v9;
  v25 = v43;
  v21 = v39;
  [(NTKDialView *)innerCityDialView enumerateMarkers:v16, 3, 8];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_7E90;
  v14[3] = &unk_10638;
  v14[4] = v7;
  v15 = xmmword_C5A0;
  [(NTKDialView *)self->_outerCityDialView setMarkerRotationProvider:v14];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_7EE0;
  v12[3] = &unk_10638;
  v12[4] = v9;
  v13 = v11;
  [(NTKDialView *)self->_innerCityDialView setMarkerRotationProvider:v12];
  [(NTKGlobetrotterDialView *)self _updateHourMarkerDial];
}

- (void)setNumberSystem:(unint64_t)system
{
  if (self->_numberSystem != system)
  {
    self->_numberSystem = system;
    [(NTKGlobetrotterDialView *)self _updateHourDialMarkers];
    hourMarkerDialView = self->_hourMarkerDialView;

    [(NTKDialView *)hourMarkerDialView setNeedsLayout];
  }
}

- (void)_updateHourMarkerDial
{
  [(NTKGlobetrotterDialView *)self _updateSunriseSunsetInfo];

  [(NTKGlobetrotterDialView *)self _rotateHourMarkerDialToCurrentTime];
}

- (void)_updateSunriseSunsetInfo
{
  v3 = +[NTKGlobetrotterCityManager sharedInstance];
  [v3 cityCoordinateForHourOffset:self->_timeZoneHourOffset];
  v5 = v4;
  v7 = v6;

  _currentDate = [(NTKGlobetrotterDialView *)self _currentDate];
  objc_initWeak(&location, self);
  v9 = dispatch_get_global_queue(25, 0);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_80E8;
  v11[3] = &unk_106A8;
  objc_copyWeak(v14, &location);
  v14[1] = v5;
  v14[2] = v7;
  v12 = _currentDate;
  selfCopy = self;
  v10 = _currentDate;
  dispatch_async(v9, v11);

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

- (id)_newHourMarkerLabel
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  memset(v7, 0, sizeof(v7));
  sub_8C1C(self->_device, v7);
  v3 = objc_alloc_init(CLKUICurvedColoringLabel);
  _hourMarkerFont = [(NTKGlobetrotterDialView *)self _hourMarkerFont];
  [v3 setFont:_hourMarkerFont];

  [v3 setTracking:*&v8];
  tintColor = [(UIImageView *)self->_sunriseImageView tintColor];
  [v3 setTextColor:tintColor];

  return v3;
}

- (id)_hourMarkerFont
{
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  memset(v7, 0, sizeof(v7));
  sub_8C1C(self->_device, v7);
  v3 = *(&v8 + 1);
  device = self->_device;
  if (NTKShowIndicScriptNumerals())
  {
    [NTKSFCompactFont numericRoundedFontOfSize:v3 weight:UIFontWeightSemibold];
  }

  else
  {
    [CLKFont systemFontOfSize:CLKRoundedFontDesignName weight:v3 design:UIFontWeightSemibold];
  }
  v5 = ;

  return v5;
}

- (id)_newCityLabelWithCityIndex:(unint64_t)index
{
  v5 = +[NTKGlobetrotterCityManager sharedInstance];
  v6 = [v5 displayNameForCityAtIndex:index];

  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  sub_8C1C(self->_device, v10);
  v7 = objc_alloc_init(CLKUICurvedColoringLabel);
  v8 = [CLKFont systemFontOfSize:CLKRoundedFontDesignName weight:*&v11 design:UIFontWeightSemibold];
  [v7 setFont:v8];

  [v7 setTracking:*(&v11 + 1)];
  [v7 setText:v6];
  [v7 sizeToFit];

  return v7;
}

- (id)_imageViewWithSymbolName:(id)name font:(id)font
{
  nameCopy = name;
  v6 = [UIImageSymbolConfiguration configurationWithFont:font];
  v7 = [UIImage systemImageNamed:nameCopy withConfiguration:v6];

  v8 = [v7 imageWithRenderingMode:2];

  v9 = [[UIImageView alloc] initWithImage:v8];

  return v9;
}

- (void)_updateColor:(id)color forObject:(id)object
{
  colorCopy = color;
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objectCopy setTextColor:colorCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [objectCopy setTintColor:colorCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [objectCopy setBackgroundColor:{objc_msgSend(colorCopy, "CGColor")}];
      }
    }
  }
}

- (void)_updateCityDialColor
{
  outerCityDialView = self->_outerCityDialView;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_89B0;
  v6[3] = &unk_106D0;
  v6[4] = self;
  [(NTKDialView *)outerCityDialView enumerateMarkers:v6];
  innerCityDialView = self->_innerCityDialView;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_8A2C;
  v5[3] = &unk_106D0;
  v5[4] = self;
  [(NTKDialView *)innerCityDialView enumerateMarkers:v5];
}

- (void)_updateEditingImageColor
{
  cityDialLabel = [(NTKGlobetrotterColorPalette *)self->_palette cityDialLabel];
  [(NTKGlobetrotterDialView *)self _updateColor:cityDialLabel forObject:self->_editingImageView];
}

@end