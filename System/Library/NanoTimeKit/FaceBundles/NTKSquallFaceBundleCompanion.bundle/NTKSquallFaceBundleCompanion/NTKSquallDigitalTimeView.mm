@interface NTKSquallDigitalTimeView
- (CGRect)_hourFrameForLinkingFraction:(double)fraction font:(id)font;
- (CGRect)_minuteFrameForLinkingFraction:(double)fraction font:(id)font;
- (NTKSquallDigitalTimeView)initWithDevice:(id)device;
- (double)_hourYForLinkingFraction:(double)fraction font:(id)font;
- (double)_minuteYForLinkingFraction:(double)fraction font:(id)font;
- (id)_attributedStringForHour:(id)hour linkingFraction:(double)fraction colorShiftFraction:(double)shiftFraction;
- (id)_attributedStringForLink:(id)link linkingFraction:(double)fraction colorShiftFraction:(double)shiftFraction;
- (id)_attributedStringForMinute:(id)minute linkingFraction:(double)fraction colorShiftFraction:(double)shiftFraction;
- (id)_fontForHour:(BOOL)hour linkingFraction:(double)fraction;
- (id)_linkedHourFontForDigitBelow:(unint64_t)below linkingFraction:(double)fraction;
- (id)_timeWithFaking:(id)faking formatter:(id)formatter;
- (id)stringAttributesForHour:(BOOL)hour fontSize:(double)size;
- (int64_t)_shiftDirectionForTime:(id)time;
- (void)_centerDateAnimated:(BOOL)animated;
- (void)_layoutTime;
- (void)_startClockUpdates;
- (void)_stopClockUpdates;
- (void)_updateAnimating;
- (void)_updateLabelsAnimated:(BOOL)animated;
- (void)_updateLocale;
- (void)applyColorPalette:(id)palette;
- (void)layoutSubviews;
- (void)setFrozen:(BOOL)frozen;
- (void)setHidden:(BOOL)hidden;
- (void)setOverrideDate:(id)date duration:(double)duration;
@end

@implementation NTKSquallDigitalTimeView

- (NTKSquallDigitalTimeView)initWithDevice:(id)device
{
  deviceCopy = device;
  v45.receiver = self;
  v45.super_class = NTKSquallDigitalTimeView;
  v6 = [(NTKSquallDigitalTimeView *)&v45 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    v8 = +[NTKSquallFontLoader squallFontDescriptor];
    v48 = kCTFontVariationAttribute;
    v9 = [NSNumber numberWithUnsignedInt:TextToFourCharCode()];
    v46 = v9;
    sub_2D30(v7->_device, &v43);
    v10 = [NSNumber numberWithDouble:v44];
    v47 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v49 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v13 = [v8 fontDescriptorByAddingAttributes:v12];
    linkFontDescriptor = v7->_linkFontDescriptor;
    v7->_linkFontDescriptor = v13;

    v15 = +[NTKDate faceDate];
    date = v7->_date;
    v7->_date = v15;

    v17 = objc_alloc_init(NSDateFormatter);
    formatter = v7->_formatter;
    v7->_formatter = v17;

    v19 = v7->_formatter;
    v20 = [NSLocale localeWithLocaleIdentifier:@"en"];
    [(NSDateFormatter *)v19 setLocale:v20];

    v21 = objc_alloc_init(NSDateFormatter);
    hourFormatter = v7->_hourFormatter;
    v7->_hourFormatter = v21;

    v23 = v7->_hourFormatter;
    v24 = [NSLocale localeWithLocaleIdentifier:@"en"];
    [(NSDateFormatter *)v23 setLocale:v24];

    v25 = objc_alloc_init(NSDateFormatter);
    minuteFormatter = v7->_minuteFormatter;
    v7->_minuteFormatter = v25;

    v27 = v7->_minuteFormatter;
    v28 = [NSLocale localeWithLocaleIdentifier:@"en"];
    [(NSDateFormatter *)v27 setLocale:v28];

    [(NTKSquallDigitalTimeView *)v7 _updateLocale];
    v29 = objc_alloc_init(CLKUIColoringLabel);
    hourLabel = v7->_hourLabel;
    v7->_hourLabel = v29;

    [(NTKSquallDigitalTimeView *)v7 addSubview:v7->_hourLabel];
    [(CLKUIColoringLabel *)v7->_hourLabel setTextAlignment:1];
    v31 = objc_alloc_init(CLKUIColoringLabel);
    minuteLabel = v7->_minuteLabel;
    v7->_minuteLabel = v31;

    [(NTKSquallDigitalTimeView *)v7 addSubview:v7->_minuteLabel];
    [(CLKUIColoringLabel *)v7->_minuteLabel setTextAlignment:1];
    v33 = objc_alloc_init(CLKUIColoringLabel);
    overlayLabel = v7->_overlayLabel;
    v7->_overlayLabel = v33;

    [(NTKSquallDigitalTimeView *)v7 addSubview:v7->_overlayLabel];
    [(CLKUIColoringLabel *)v7->_overlayLabel setTextAlignment:1];
    v35 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    animationTimingFunction = v7->_animationTimingFunction;
    v7->_animationTimingFunction = v35;

    [(NTKSquallDigitalTimeView *)v7 _updateLabelsAnimated:0];
    [(NTKSquallDigitalTimeView *)v7 _startClockUpdates];
    v37 = objc_alloc_init(NTKSquallTimeProvider);
    bezelProvider = v7->_bezelProvider;
    v7->_bezelProvider = v37;

    v39 = [[NTKSquallTimeBezelView alloc] initWithDevice:deviceCopy progressProvider:v7->_bezelProvider];
    bezelView = v7->_bezelView;
    v7->_bezelView = v39;

    [(NTKSquallDigitalTimeView *)v7 addSubview:v7->_bezelView];
    [(NTKSquallDigitalTimeView *)v7 sendSubviewToBack:v7->_bezelView];
    v41 = +[NSNotificationCenter defaultCenter];
    [v41 addObserver:v7 selector:"_updateLocale" name:NSCurrentLocaleDidChangeNotification object:0];
  }

  return v7;
}

- (void)layoutSubviews
{
  [(NTKSquallDigitalTimeView *)self _layoutTime];
  bezelView = self->_bezelView;
  [(NTKSquallDigitalTimeView *)self bounds];

  [(NTKSquallTimeBezelView *)bezelView ntk_setBoundsAndPositionFromFrame:?];
}

- (void)_layoutTime
{
  v7 = [(NTKSquallDigitalTimeView *)self _fontForHour:1 linkingFraction:0.0];
  v3 = [(NTKSquallDigitalTimeView *)self _fontForHour:0 linkingFraction:0.0];
  hourLabel = self->_hourLabel;
  [(NTKSquallDigitalTimeView *)self _hourFrameForLinkingFraction:v7 font:0.0];
  [(CLKUIColoringLabel *)hourLabel setFrame:?];
  minuteLabel = self->_minuteLabel;
  [(NTKSquallDigitalTimeView *)self _minuteFrameForLinkingFraction:v3 font:0.0];
  [(CLKUIColoringLabel *)minuteLabel setFrame:?];
  overlayLabel = self->_overlayLabel;
  [(NTKSquallDigitalTimeView *)self _hourFrameForLinkingFraction:v7 font:0.0];
  [(CLKUIColoringLabel *)overlayLabel setFrame:?];
}

- (void)applyColorPalette:(id)palette
{
  objc_storeStrong(&self->_palette, palette);
  paletteCopy = palette;
  [(NTKSquallBezelView *)self->_bezelView applyColorPalette:paletteCopy];

  [(NTKSquallDigitalTimeView *)self _updateLabelsAnimated:0];
}

- (double)_hourYForLinkingFraction:(double)fraction font:(id)font
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  device = self->_device;
  fontCopy = font;
  sub_2D30(device, &v13);
  CLKInterpolateBetweenFloatsClipped();
  v7 = v6;
  [fontCopy lineHeight];
  v9 = v8;
  [fontCopy descender];
  v11 = v10;

  return v7 - (v9 + v11);
}

- (double)_minuteYForLinkingFraction:(double)fraction font:(id)font
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  device = self->_device;
  fontCopy = font;
  sub_2D30(device, &v13);
  CLKInterpolateBetweenFloatsClipped();
  v7 = v6;
  [fontCopy lineHeight];
  v9 = v8;
  [fontCopy descender];
  v11 = v10;

  return v7 - (v9 + v11);
}

- (CGRect)_hourFrameForLinkingFraction:(double)fraction font:(id)font
{
  fontCopy = font;
  if (!fontCopy)
  {
    fontCopy = [(NTKSquallDigitalTimeView *)self _fontForHour:1 linkingFraction:fraction];
  }

  [(NTKSquallDigitalTimeView *)self bounds];
  v8 = v7;
  [(NTKSquallDigitalTimeView *)self _hourYForLinkingFraction:fontCopy font:fraction];
  v10 = v9;
  [fontCopy lineHeight];
  v12 = v11;

  v13 = 0.0;
  v14 = v10;
  v15 = v8;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)_minuteFrameForLinkingFraction:(double)fraction font:(id)font
{
  fontCopy = font;
  if (!fontCopy)
  {
    fontCopy = [(NTKSquallDigitalTimeView *)self _fontForHour:0 linkingFraction:fraction];
  }

  [(NTKSquallDigitalTimeView *)self bounds];
  v8 = v7;
  [(NTKSquallDigitalTimeView *)self _minuteYForLinkingFraction:fontCopy font:fraction];
  v10 = v9;
  [fontCopy lineHeight];
  v12 = v11;

  v13 = 0.0;
  v14 = v10;
  v15 = v8;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)_updateLabelsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  hourLabel = self->_hourLabel;
  v6 = [(NTKSquallDigitalTimeView *)self _attributedStringForHour:self->_date linkingFraction:0.0 colorShiftFraction:0.0];
  [(CLKUIColoringLabel *)hourLabel setAttributedText:v6];

  minuteLabel = self->_minuteLabel;
  v8 = [(NTKSquallDigitalTimeView *)self _attributedStringForMinute:self->_date linkingFraction:0.0 colorShiftFraction:0.0];
  [(CLKUIColoringLabel *)minuteLabel setAttributedText:v8];

  overlayLabel = self->_overlayLabel;
  v10 = [(NTKSquallDigitalTimeView *)self _attributedStringForLink:self->_date linkingFraction:0.0 colorShiftFraction:0.0];
  [(CLKUIColoringLabel *)overlayLabel setAttributedText:v10];

  [(NTKSquallDigitalTimeView *)self _centerDateAnimated:animatedCopy];
  if (!animatedCopy)
  {

    [(NTKSquallDigitalTimeView *)self _layoutTime];
  }
}

- (id)_timeWithFaking:(id)faking formatter:(id)formatter
{
  v4 = [formatter stringFromDate:faking];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_105B8;
  }

  v7 = v6;

  return v6;
}

- (id)_attributedStringForLink:(id)link linkingFraction:(double)fraction colorShiftFraction:(double)shiftFraction
{
  linkCopy = link;
  v8 = [(NTKSquallDigitalTimeView *)self _hourString:linkCopy];
  v9 = +[NSCalendar currentCalendar];
  v10 = [v9 components:64 fromDate:linkCopy];

  minute = [v10 minute];
  v12 = [[NSMutableAttributedString alloc] initWithString:v8];
  v13 = [(NTKSquallDigitalTimeView *)self _linkedHourFontForDigitBelow:minute / 0xA linkingFraction:fraction];
  [v12 addAttribute:NSFontAttributeName value:v13 range:{0, 1}];
  v14 = [(NTKSquallDigitalTimeView *)self _linkedHourFontForDigitBelow:minute % 0xA linkingFraction:fraction];
  [v12 addAttribute:NSFontAttributeName value:v14 range:{1, 1}];
  sub_2D30(self->_device, &v22);
  v15 = [NSNumber numberWithDouble:v23];
  [v12 addAttribute:NSTrackingAttributeName value:v15 range:{0, 2}];

  palette = self->_palette;
  if (palette)
  {
    hourNumeralsFill = [(NTKSquallColorPalette *)palette hourNumeralsFill];
    v18 = [hourNumeralsFill colorWithAlphaComponent:0.0];

    hourNumeralsFillLinked = [(NTKSquallColorPalette *)self->_palette hourNumeralsFillLinked];
    v20 = CLKInterpolateBetweenColors();

    [v12 addAttribute:NSForegroundColorAttributeName value:v20 range:{0, 2}];
  }

  return v12;
}

- (id)_attributedStringForHour:(id)hour linkingFraction:(double)fraction colorShiftFraction:(double)shiftFraction
{
  v7 = [(NTKSquallDigitalTimeView *)self _hourString:hour];
  v8 = [[NSMutableAttributedString alloc] initWithString:v7];
  v9 = [(NTKSquallDigitalTimeView *)self _fontForHour:1 linkingFraction:fraction];
  [v8 addAttribute:NSFontAttributeName value:v9 range:{0, 2}];
  sub_2D30(self->_device, &v16);
  v10 = [NSNumber numberWithDouble:v17];
  [v8 addAttribute:NSTrackingAttributeName value:v10 range:{0, 2}];

  palette = self->_palette;
  if (palette)
  {
    hourNumeralsFill = [(NTKSquallColorPalette *)palette hourNumeralsFill];
    hourNumeralsFillLinked = [(NTKSquallColorPalette *)self->_palette hourNumeralsFillLinked];
    v14 = CLKInterpolateBetweenColors();

    [v8 addAttribute:NSForegroundColorAttributeName value:v14 range:{0, 2}];
  }

  return v8;
}

- (id)_attributedStringForMinute:(id)minute linkingFraction:(double)fraction colorShiftFraction:(double)shiftFraction
{
  v7 = [(NTKSquallDigitalTimeView *)self _minuteString:minute];
  v8 = [[NSMutableAttributedString alloc] initWithString:v7];
  v9 = [(NTKSquallDigitalTimeView *)self _fontForHour:0 linkingFraction:fraction];
  [v8 addAttribute:NSFontAttributeName value:v9 range:{0, 2}];
  sub_2D30(self->_device, &v16);
  v10 = [NSNumber numberWithDouble:v17];
  [v8 addAttribute:NSTrackingAttributeName value:v10 range:{0, 2}];

  palette = self->_palette;
  if (palette)
  {
    minuteNumeralsFill = [(NTKSquallColorPalette *)palette minuteNumeralsFill];
    minuteNumeralsFillLinked = [(NTKSquallColorPalette *)self->_palette minuteNumeralsFillLinked];
    v14 = CLKInterpolateBetweenColors();

    [v8 addAttribute:NSForegroundColorAttributeName value:v14 range:{0, 2}];
  }

  return v8;
}

- (int64_t)_shiftDirectionForTime:(id)time
{
  v4 = +[NSCalendar currentCalendar];
  v5 = [v4 components:96 fromDate:self->_date];
  minute = [v5 minute];
  hour = [v5 hour];
  if (self->_is24HourMode)
  {
    v8 = hour;
  }

  else
  {
    v8 = hour % 0xC;
  }

  v9 = v8 - 10;
  v10 = __ROR8__(0xCCCCCCCCCCCCCCCDLL * v8 + 0x3333333333333333, 1);
  v11 = __ROR8__(0xCCCCCCCCCCCCCCCDLL * minute + 0x3333333333333333, 1);
  v14 = minute - 10 > &dword_8 + 1 && v9 > 9 && v11 < 0x199999999999999ALL;
  v17 = minute - 10 < &dword_8 + 2 && v9 < 0xA && v11 > 0x1999999999999999;
  v18 = v17 << 63 >> 63;
  if (v10 >= 0x199999999999999ALL)
  {
    v19 = v18;
  }

  else
  {
    v19 = v14;
  }

  return v19;
}

- (void)_centerDateAnimated:(BOOL)animated
{
  v4 = [(NTKSquallDigitalTimeView *)self _shiftDirectionForTime:self->_date];
  if (v4 != self->_currentHorizontalShift)
  {
    v5 = v4;
    sub_2D30(self->_device, &v15);
    v6 = *(&v15 + 1);
    [(CLKUIColoringLabel *)self->_hourLabel center];
    v8 = v7;
    [(CLKUIColoringLabel *)self->_minuteLabel center];
    v10 = v9;
    [(NTKSquallDigitalTimeView *)self frame];
    v11 = CGRectGetMidX(v16) + v6 * v5;
    if (v8 != v11 || v10 != v11)
    {
      [(CLKUIColoringLabel *)self->_hourLabel center];
      v14 = v13;
      [(CLKUIColoringLabel *)self->_hourLabel setCenter:v11];
      [(CLKUIColoringLabel *)self->_overlayLabel setCenter:v11, v14];
      [(CLKUIColoringLabel *)self->_minuteLabel center];
      [(CLKUIColoringLabel *)self->_minuteLabel setCenter:v11];
      self->_currentHorizontalShift = v5;
    }
  }
}

- (id)stringAttributesForHour:(BOOL)hour fontSize:(double)size
{
  v6 = [(NTKSquallDigitalTimeView *)self _fontForHour:hour linkingFraction:0.0];
  v13[0] = NSFontAttributeName;
  v7 = [v6 fontWithSize:size];
  v14[0] = v7;
  v13[1] = NSTrackingAttributeName;
  sub_2D30(self->_device, &v11);
  v8 = [NSNumber numberWithDouble:v12];
  v14[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v9;
}

- (id)_fontForHour:(BOOL)hour linkingFraction:(double)fraction
{
  if (hour)
  {
    v22[0] = UIFontFeatureTypeIdentifierKey;
    v22[1] = UIFontFeatureSelectorIdentifierKey;
    v23[0] = &off_10920;
    v23[1] = &off_10938;
    v6 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
    v24 = v6;
    v7 = &v24;
  }

  else
  {
    v19[0] = UIFontFeatureTypeIdentifierKey;
    v19[1] = UIFontFeatureSelectorIdentifierKey;
    v20[0] = &off_10920;
    v20[1] = &off_10950;
    v6 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
    v21 = v6;
    v7 = &v21;
  }

  v8 = [NSArray arrayWithObjects:v7 count:1];

  v9 = objc_opt_new();
  [v9 setObject:v8 forKey:UIFontDescriptorFeatureSettingsAttribute];
  v10 = [NSNumber numberWithUnsignedInt:TextToFourCharCode()];
  v17 = v10;
  v11 = [NSNumber numberWithDouble:fraction];
  v18 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  [v9 setObject:v12 forKey:kCTFontVariationAttribute];

  v13 = [(UIFontDescriptor *)self->_linkFontDescriptor fontDescriptorByAddingAttributes:v9];
  sub_2D30(self->_device, v16);
  v14 = [UIFont fontWithDescriptor:v13 size:*v16];

  return v14;
}

- (id)_linkedHourFontForDigitBelow:(unint64_t)below linkingFraction:(double)fraction
{
  v23[0] = UIFontFeatureTypeIdentifierKey;
  v23[1] = UIFontFeatureSelectorIdentifierKey;
  v24[0] = &off_10920;
  v24[1] = &off_10938;
  v7 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
  v25[0] = v7;
  v21[1] = UIFontFeatureSelectorIdentifierKey;
  v22[0] = &off_10920;
  v21[0] = UIFontFeatureTypeIdentifierKey;
  v8 = [NSNumber numberWithInt:dword_9A20[below % 0xA]];
  v22[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
  v25[1] = v9;
  v10 = [NSArray arrayWithObjects:v25 count:2];

  v11 = objc_opt_new();
  [v11 setObject:v10 forKey:UIFontDescriptorFeatureSettingsAttribute];
  v12 = [NSNumber numberWithUnsignedInt:TextToFourCharCode()];
  v19 = v12;
  v13 = [NSNumber numberWithDouble:fraction];
  v20 = v13;
  v14 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  [v11 setObject:v14 forKey:kCTFontVariationAttribute];

  v15 = [(UIFontDescriptor *)self->_linkFontDescriptor fontDescriptorByAddingAttributes:v11];
  sub_2D30(self->_device, v18);
  v16 = [UIFont fontWithDescriptor:v15 size:v18[0]];

  return v16;
}

- (void)_updateLocale
{
  v6 = +[NSLocale currentLocale];
  v3 = CLKLocaleIs24HourMode();
  self->_is24HourMode = v3;
  if (v3)
  {
    v4 = @"HH\nmm";
  }

  else
  {
    v4 = @"hh\nmm";
  }

  [(NSDateFormatter *)self->_formatter setDateFormat:v4];
  if (self->_is24HourMode)
  {
    v5 = @"HH";
  }

  else
  {
    v5 = @"hh";
  }

  [(NSDateFormatter *)self->_hourFormatter setDateFormat:v5];
  [(NSDateFormatter *)self->_minuteFormatter setDateFormat:@"mm"];
  [(NTKSquallDigitalTimeView *)self _updateLabelsAnimated:0];
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  dateCopy = date;
  [(NTKSquallDigitalTimeView *)self setDate:dateCopy];
  [(NTKSquallTimeProvider *)self->_bezelProvider setDate:dateCopy];

  bezelView = self->_bezelView;

  [(NTKSquallBezelView *)bezelView bezelProgressUpdated];
}

- (void)setFrozen:(BOOL)frozen
{
  frozenCopy = frozen;
  self->_frozen = frozen;
  [(NTKSquallDigitalTimeView *)self _updateAnimating];
  if (frozenCopy)
  {

    [(NTKSquallDigitalTimeView *)self _stopClockUpdates];
  }

  else
  {

    [(NTKSquallDigitalTimeView *)self _startClockUpdates];
  }
}

- (void)_startClockUpdates
{
  objc_initWeak(&location, self);
  v3 = +[CLKClockTimer sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_29A4;
  v6[3] = &unk_103E8;
  objc_copyWeak(&v7, &location);
  v4 = [v3 startUpdatesWithUpdateFrequency:0 withHandler:v6 identificationLog:&stru_10428];
  timerToken = self->_timerToken;
  self->_timerToken = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_stopClockUpdates
{
  if (self->_timerToken)
  {
    v3 = +[CLKClockTimer sharedInstance];
    [v3 stopUpdatesForToken:self->_timerToken];

    timerToken = self->_timerToken;
    self->_timerToken = 0;
  }
}

- (void)setHidden:(BOOL)hidden
{
  v4.receiver = self;
  v4.super_class = NTKSquallDigitalTimeView;
  [(NTKSquallDigitalTimeView *)&v4 setHidden:hidden];
  [(NTKSquallDigitalTimeView *)self _updateAnimating];
}

- (void)_updateAnimating
{
  bezelView = self->_bezelView;
  if (self->_frozen || self->_faceDataMode != 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(NTKSquallDigitalTimeView *)self isHidden]^ 1;
  }

  [(NTKSquallBezelView *)bezelView setAnimating:v3];
}

@end