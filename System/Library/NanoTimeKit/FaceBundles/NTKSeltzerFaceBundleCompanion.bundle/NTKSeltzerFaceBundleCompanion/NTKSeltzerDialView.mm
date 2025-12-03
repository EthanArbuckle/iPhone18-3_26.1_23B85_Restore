@interface NTKSeltzerDialView
- (CGPoint)_keystoneDateLabelCenter;
- (CGPoint)_keystoneMoonPhaseImageViewCenter;
- (NTKSeltzerDialView)initWithFrame:(CGRect)frame device:(id)device calendar:(unint64_t)calendar palette:(id)palette;
- (id)_animationFromPath:(id)path toPath:(id)toPath;
- (id)_calendarIdentifierForCalendar:(unint64_t)calendar;
- (id)_createDateLabel;
- (id)_currentDate;
- (id)_dateForDayOffset:(int64_t)offset;
- (id)_dateForIndex:(unint64_t)index;
- (id)_dateLabelFont;
- (id)_keystoneAXDateLabel;
- (id)_keystoneAXMoonPhaseImageLabel;
- (id)_keystoneDateLabelText;
- (id)_keystoneMoonPhaseImage;
- (id)_lunarCalendar;
- (id)_lunarDateLabelTextForDate:(id)date;
- (id)_lunarStringWithDate:(id)date;
- (id)_monospacedDateLabelFont;
- (id)_moonPhaseImageForDate:(id)date;
- (id)_moonPhaseImageForDate:(id)date foregroundColor:(id)color backgroundColor:(id)backgroundColor;
- (id)_overlayCalendar;
- (int64_t)_keystoneIndex;
- (unint64_t)_timeTravelIndexForFuture:(BOOL)future;
- (void)_addDialOutlineWithPath:(id)path;
- (void)_animateDateCardFromPath:(id)path toPath:(id)toPath;
- (void)_animateKeystoneFromPath:(id)path toPath:(id)toPath;
- (void)_applyRTLCorrectionIfNeeded:(int64_t *)needed;
- (void)_drawDateCardOutline;
- (void)_drawDialMaskOutline;
- (void)_drawDialOutlines;
- (void)_drawKeystoneOutline;
- (void)_drawOutlines;
- (void)_layoutCurvedLabel:(id)label;
- (void)_loadContainerViews;
- (void)_loadDateLabels;
- (void)_loadKeystone;
- (void)_loadLunarCalendarDial;
- (void)_loadMoonPhaseDial;
- (void)_loadMoonPhaseSeparatorDial;
- (void)_updateDateLabels;
- (void)_updateDialOffset:(double)offset skipTimeTravel:(BOOL)travel;
- (void)_updateGregorianLabelWithDate:(id)date;
- (void)_updateKeystone;
- (void)_updateLunarCalendarUI;
- (void)_updateLunarLabelWithDate:(id)date;
- (void)applyInteractiveModeProgress:(double)progress;
- (void)applyTransitionFraction:(double)fraction fromCalendar:(unint64_t)calendar toCalendar:(unint64_t)toCalendar;
- (void)enterInteractiveModeAnimated:(BOOL)animated;
- (void)exitInteractiveModeAnimated:(BOOL)animated;
- (void)layoutSubviews;
- (void)setCalendar:(unint64_t)calendar;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)traitCollectionDidChange:(id)change;
- (void)updateAngleOffset:(double)offset animated:(BOOL)animated;
- (void)updateDialUI;
@end

@implementation NTKSeltzerDialView

- (NTKSeltzerDialView)initWithFrame:(CGRect)frame device:(id)device calendar:(unint64_t)calendar palette:(id)palette
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  deviceCopy = device;
  paletteCopy = palette;
  v25.receiver = self;
  v25.super_class = NTKSeltzerDialView;
  height = [(NTKSeltzerDialView *)&v25 initWithFrame:x, y, width, height];
  v17 = height;
  if (height)
  {
    objc_storeStrong(&height->_device, device);
    v17->_calendar = calendar;
    objc_storeStrong(&v17->_palette, palette);
    v18 = +[NTKLocationManager sharedLocationManager];
    anyLocation = [v18 anyLocation];
    [anyLocation coordinate];
    v17->_currentCoordinate.latitude = v20;
    v17->_currentCoordinate.longitude = v21;

    v22 = objc_alloc_init(NSDateFormatter);
    gregorianDateFormatter = v17->_gregorianDateFormatter;
    v17->_gregorianDateFormatter = v22;

    [(NSDateFormatter *)v17->_gregorianDateFormatter setLocalizedDateFormatFromTemplate:@"MMM d, yyyy"];
    [(NTKSeltzerDialView *)v17 _loadContainerViews];
    [(NTKSeltzerDialView *)v17 _loadLunarCalendarDial];
    [(NTKSeltzerDialView *)v17 _loadMoonPhaseDial];
    [(NTKSeltzerDialView *)v17 _loadMoonPhaseSeparatorDial];
    [(NTKSeltzerDialView *)v17 _loadDateLabels];
    [(NTKSeltzerDialView *)v17 _drawOutlines];
    [(NTKSeltzerDialView *)v17 updateDialUI];
    [(NTKSeltzerDialView *)v17 layoutIfNeeded];
    [(NTKSeltzerDialView *)v17 _loadKeystone];
  }

  return v17;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = NTKSeltzerDialView;
  [(NTKSeltzerDialView *)&v7 layoutSubviews];
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  sub_82A8(self->_device, v5);
  [(NTKSeltzerDialView *)self bounds];
  CLKRectGetCenter();
  device = self->_device;
  CLKRectCenteredAboutPointForDevice();
  [(NTKDialView *)self->_calendarDialView setFrame:?];
  v4 = self->_device;
  CLKRectCenteredAboutPointForDevice();
  [(NTKDialView *)self->_moonPhaseDialView setFrame:?];
  [(NTKDialView *)self->_moonPhaseDialView frame];
  [(NTKDialView *)self->_moonPhaseSeparatorDialView setFrame:?];
  if (self->_keystoneDateLabel)
  {
    if (self->_keystoneMoonPhaseImageView)
    {
      [(NTKSeltzerDialView *)self _keystoneDateLabelCenter];
      [(UILabel *)self->_keystoneDateLabel setCenter:?];
      [(NTKSeltzerDialView *)self _keystoneMoonPhaseImageViewCenter];
      [(UIImageView *)self->_keystoneMoonPhaseImageView setCenter:?];
    }
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v12.receiver = self;
  v12.super_class = NTKSeltzerDialView;
  changeCopy = change;
  [(NTKSeltzerDialView *)&v12 traitCollectionDidChange:changeCopy];
  v5 = [(NTKSeltzerDialView *)self traitCollection:v12.receiver];
  legibilityWeight = [v5 legibilityWeight];
  legibilityWeight2 = [changeCopy legibilityWeight];

  if (legibilityWeight != legibilityWeight2)
  {
    dateLabelFont = self->_dateLabelFont;
    self->_dateLabelFont = 0;

    monospacedDateLabelFont = self->_monospacedDateLabelFont;
    self->_monospacedDateLabelFont = 0;

    [(NTKDialView *)self->_calendarDialView reloadMarkers];
    _dateLabelFont = [(NTKSeltzerDialView *)self _dateLabelFont];
    _monospacedDateLabelFont = [(NTKSeltzerDialView *)self _monospacedDateLabelFont];
    [(UILabel *)self->_keystoneDateLabel setFont:_dateLabelFont];
    [(CLKUICurvedColoringLabel *)self->_gregorianDateLabel setFont:_monospacedDateLabelFont];
    [(CLKUICurvedColoringLabel *)self->_lunarDateLabel setFont:_monospacedDateLabelFont];
    [(UILabel *)self->_keystoneDateLabel sizeToFit];
    [(NTKSeltzerDialView *)self _layoutCurvedLabel:self->_gregorianDateLabel];
    [(NTKSeltzerDialView *)self _layoutCurvedLabel:self->_lunarDateLabel];
  }
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  objc_storeStrong(&self->_overrideDate, date);

  [(NTKSeltzerDialView *)self updateDialUI];
}

- (void)setCalendar:(unint64_t)calendar
{
  if (self->_calendar != calendar)
  {
    self->_calendar = calendar;
    [(NTKSeltzerDialView *)self _updateLunarCalendarUI];
  }
}

- (void)applyTransitionFraction:(double)fraction fromCalendar:(unint64_t)calendar toCalendar:(unint64_t)toCalendar
{
  if (calendar != toCalendar)
  {
    v18 = v8;
    v19 = v7;
    v20 = v5;
    v21 = v6;
    if (fraction >= 0.5)
    {
      CLKMapFractionIntoRange();
      v12 = v14;
      calendarCopy = toCalendar;
    }

    else
    {
      calendarCopy = calendar;
      CLKMapFractionIntoRange();
      v12 = v11;
    }

    CLKMapFractionIntoRange();
    memset(&v17, 0, sizeof(v17));
    CGAffineTransformMakeScale(&v17, v15, v15);
    [(NTKSeltzerDialView *)self setCalendar:calendarCopy];
    [(UIView *)self->_keystoneDateLabelContainerView setAlpha:v12];
    v16 = v17;
    [(UIView *)self->_keystoneDateLabelContainerView setTransform:&v16];
    [(UIView *)self->_calendarDialContainerView setAlpha:v12];
    v16 = v17;
    [(UIView *)self->_calendarDialContainerView setTransform:&v16];
    [(UIView *)self->_lunarDateLabelContainerView setAlpha:v12];
    v16 = v17;
    [(UIView *)self->_lunarDateLabelContainerView setTransform:&v16];
  }
}

- (void)_loadContainerViews
{
  [(NTKSeltzerDialView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [[UIView alloc] initWithFrame:{v3, v5, v7, v9}];
  dialContainerView = self->_dialContainerView;
  self->_dialContainerView = v11;

  [(NTKSeltzerDialView *)self addSubview:self->_dialContainerView];
  v13 = [[UIView alloc] initWithFrame:{v4, v6, v8, v10}];
  calendarDialContainerView = self->_calendarDialContainerView;
  self->_calendarDialContainerView = v13;

  [(UIView *)self->_dialContainerView addSubview:self->_calendarDialContainerView];
  v15 = [[UIView alloc] initWithFrame:{v4, v6, v8, v10}];
  upperContainerView = self->_upperContainerView;
  self->_upperContainerView = v15;

  [(NTKSeltzerDialView *)self addSubview:self->_upperContainerView];
  v17 = [[UIView alloc] initWithFrame:{v4, v6, v8, v10}];
  keystoneDateLabelContainerView = self->_keystoneDateLabelContainerView;
  self->_keystoneDateLabelContainerView = v17;

  [(UIView *)self->_upperContainerView addSubview:self->_keystoneDateLabelContainerView];
  v19 = [[UIView alloc] initWithFrame:{v4, v6, v8, v10}];
  lowerContainerView = self->_lowerContainerView;
  self->_lowerContainerView = v19;

  [(NTKSeltzerDialView *)self addSubview:self->_lowerContainerView];
  v21 = [[UIView alloc] initWithFrame:{v4, v6, v8, v10}];
  lunarDateLabelContainerView = self->_lunarDateLabelContainerView;
  self->_lunarDateLabelContainerView = v21;

  v23 = self->_lowerContainerView;
  v24 = self->_lunarDateLabelContainerView;

  [(UIView *)v23 addSubview:v24];
}

- (void)_loadLunarCalendarDial
{
  objc_initWeak(&location, self);
  v3 = [NTKDialView alloc];
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_5648;
  v9 = &unk_10538;
  objc_copyWeak(&v10, &location);
  v4 = [v3 initWithNumberOfMarkers:30 markersFactory:&v6];
  calendarDialView = self->_calendarDialView;
  self->_calendarDialView = v4;

  [(NTKDialView *)self->_calendarDialView setShouldRotateMarkers:1, v6, v7, v8, v9];
  [(NTKDialView *)self->_calendarDialView setShouldPixelAlignCenterPoints:0];
  [(UIView *)self->_calendarDialContainerView addSubview:self->_calendarDialView];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_loadMoonPhaseDial
{
  objc_initWeak(&location, self);
  v3 = [NTKDialView alloc];
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_5854;
  v9 = &unk_10538;
  objc_copyWeak(&v10, &location);
  v4 = [v3 initWithNumberOfMarkers:30 markersFactory:&v6];
  moonPhaseDialView = self->_moonPhaseDialView;
  self->_moonPhaseDialView = v4;

  [(NTKDialView *)self->_moonPhaseDialView setShouldPixelAlignCenterPoints:0, v6, v7, v8, v9];
  [(UIView *)self->_dialContainerView addSubview:self->_moonPhaseDialView];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_loadMoonPhaseSeparatorDial
{
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  sub_82A8(self->_device, v10);
  v4 = *(&v11 + 1);
  v3 = v12;
  dialStroke = [(NTKSeltzerColorPalette *)self->_palette dialStroke];
  cGColor = [dialStroke CGColor];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_5A40;
  v9[3] = &unk_10558;
  v9[4] = 0;
  v9[5] = 0;
  v9[6] = v3;
  v9[7] = v4;
  v9[8] = cGColor;
  v7 = [[NTKDialView alloc] initWithNumberOfMarkers:30 markersFactory:v9];
  moonPhaseSeparatorDialView = self->_moonPhaseSeparatorDialView;
  self->_moonPhaseSeparatorDialView = v7;

  [(NTKDialView *)self->_moonPhaseSeparatorDialView setShouldRotateMarkers:1];
  [(NTKDialView *)self->_moonPhaseSeparatorDialView setShouldPixelAlignCenterPoints:0];
  [(NTKDialView *)self->_moonPhaseSeparatorDialView setAngleOffset:6.0];
  [(UIView *)self->_dialContainerView addSubview:self->_moonPhaseSeparatorDialView];
}

- (void)_updateLunarCalendarUI
{
  _currentDate = [(NTKSeltzerDialView *)self _currentDate];
  [(NTKSeltzerDialView *)self _updateLunarLabelWithDate:_currentDate];

  calendarDialView = self->_calendarDialView;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_5B48;
  v5[3] = &unk_10580;
  v5[4] = self;
  [(NTKDialView *)calendarDialView enumerateMarkers:v5];
  [(NTKSeltzerDialView *)self _updateKeystone];
}

- (void)updateDialUI
{
  _currentDate = [(NTKSeltzerDialView *)self _currentDate];
  if (!self->_previousDate || (+[NSCalendar currentCalendar](NSCalendar, "currentCalendar"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isDate:self->_previousDate inSameDayAsDate:_currentDate], v4, (v5 & 1) == 0))
  {
    objc_storeStrong(&self->_previousDate, _currentDate);
    self->_nextDayAngleOffset = -12.0;
    self->_previousDayAngleOffset = 12.0;
    [(NTKSeltzerDialView *)self _updateLunarCalendarUI];
    [(NTKSeltzerDialView *)self _updateGregorianLabelWithDate:_currentDate];
    moonPhaseDialView = self->_moonPhaseDialView;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_5D00;
    v7[3] = &unk_105A8;
    v7[4] = self;
    [(NTKDialView *)moonPhaseDialView enumerateMarkers:v7];
  }
}

- (id)_dateForIndex:(unint64_t)index
{
  indexCopy = index - 30;
  if (index < 0xF)
  {
    indexCopy = index;
  }

  v7 = indexCopy;
  [(NTKSeltzerDialView *)self _applyRTLCorrectionIfNeeded:&v7];
  v5 = [(NTKSeltzerDialView *)self _dateForDayOffset:v7];

  return v5;
}

- (id)_lunarDateLabelTextForDate:(id)date
{
  dateCopy = date;
  _lunarCalendar = [(NTKSeltzerDialView *)self _lunarCalendar];
  v6 = [_lunarCalendar component:16 fromDate:dateCopy];

  return [NSString localizedStringWithFormat:@"%02lu", v6];
}

- (id)_moonPhaseImageForDate:(id)date
{
  palette = self->_palette;
  dateCopy = date;
  moonForeground = [(NTKSeltzerColorPalette *)palette moonForeground];
  moonBackground = [(NTKSeltzerColorPalette *)self->_palette moonBackground];
  v8 = [(NTKSeltzerDialView *)self _moonPhaseImageForDate:dateCopy foregroundColor:moonForeground backgroundColor:moonBackground];

  return v8;
}

- (id)_moonPhaseImageForDate:(id)date foregroundColor:(id)color backgroundColor:(id)backgroundColor
{
  latitude = self->_currentCoordinate.latitude;
  longitude = self->_currentCoordinate.longitude;
  backgroundColorCopy = backgroundColor;
  colorCopy = color;
  NUNIMoonPhaseNumber();
  sub_82A8(self->_device, v13);
  v11 = NUNIRenderedMoonImage();

  return v11;
}

- (id)_currentDate
{
  overrideDate = self->_overrideDate;
  if (overrideDate)
  {
    v3 = overrideDate;
  }

  else
  {
    v3 = +[NTKDate faceDate];
  }

  return v3;
}

- (void)_loadKeystone
{
  v3 = objc_alloc_init(UILabel);
  keystoneDateLabel = self->_keystoneDateLabel;
  self->_keystoneDateLabel = v3;

  keystoneDateLabel = [(NTKSeltzerColorPalette *)self->_palette keystoneDateLabel];
  [(UILabel *)self->_keystoneDateLabel setTextColor:keystoneDateLabel];

  _dateLabelFont = [(NTKSeltzerDialView *)self _dateLabelFont];
  [(UILabel *)self->_keystoneDateLabel setFont:_dateLabelFont];

  [(UIView *)self->_keystoneDateLabelContainerView addSubview:self->_keystoneDateLabel];
  sub_82A8(self->_device, v9);
  v7 = [[UIImageView alloc] initWithFrame:{0.0, 0.0, v10, v10}];
  keystoneMoonPhaseImageView = self->_keystoneMoonPhaseImageView;
  self->_keystoneMoonPhaseImageView = v7;

  [(UIView *)self->_lowerContainerView addSubview:self->_keystoneMoonPhaseImageView];

  [(NTKSeltzerDialView *)self _updateKeystone];
}

- (void)_updateKeystone
{
  _keystoneDateLabelText = [(NTKSeltzerDialView *)self _keystoneDateLabelText];
  [(UILabel *)self->_keystoneDateLabel setText:_keystoneDateLabelText];

  [(UILabel *)self->_keystoneDateLabel sizeToFit];
  _keystoneMoonPhaseImage = [(NTKSeltzerDialView *)self _keystoneMoonPhaseImage];
  [(UIImageView *)self->_keystoneMoonPhaseImageView setImage:_keystoneMoonPhaseImage];

  [(NTKSeltzerDialView *)self setNeedsLayout];
}

- (id)_keystoneDateLabelText
{
  v2 = [(NTKDialView *)self->_calendarDialView markerAtIndex:[(NTKSeltzerDialView *)self _keystoneIndex]];
  text = [v2 text];

  return text;
}

- (id)_keystoneAXDateLabel
{
  v2 = [(NTKDialView *)self->_calendarDialView markerAtIndex:[(NTKSeltzerDialView *)self _keystoneIndex]];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)_keystoneMoonPhaseImage
{
  _dayOffset = [(NTKSeltzerDialView *)self _dayOffset];
  [(NTKSeltzerDialView *)self _applyRTLCorrectionIfNeeded:&_dayOffset];
  v3 = [(NTKSeltzerDialView *)self _dateForDayOffset:_dayOffset];
  keystoneMoonForeground = [(NTKSeltzerColorPalette *)self->_palette keystoneMoonForeground];
  keystoneMoonBackground = [(NTKSeltzerColorPalette *)self->_palette keystoneMoonBackground];
  v6 = [(NTKSeltzerDialView *)self _moonPhaseImageForDate:v3 foregroundColor:keystoneMoonForeground backgroundColor:keystoneMoonBackground];

  return v6;
}

- (id)_keystoneAXMoonPhaseImageLabel
{
  v2 = [(NTKDialView *)self->_moonPhaseDialView markerAtIndex:[(NTKSeltzerDialView *)self _keystoneIndex]];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (int64_t)_keystoneIndex
{
  _dayOffset = [(NTKSeltzerDialView *)self _dayOffset];
  if (_dayOffset % 30 >= 0)
  {
    return _dayOffset % 30;
  }

  else
  {
    return _dayOffset % 30 + 30;
  }
}

- (CGPoint)_keystoneDateLabelCenter
{
  p_keystoneDateLabelCenter = &self->_keystoneDateLabelCenter;
  if (self->_keystoneMoonPhaseImageViewCenter.x == CGPointZero.x && self->_keystoneMoonPhaseImageViewCenter.y == CGPointZero.y)
  {
    calendarDialView = self->_calendarDialView;
    [(NTKDialView *)calendarDialView positionForMarkerAtIndex:0];
    [(NTKDialView *)calendarDialView convertPoint:self->_keystoneDateLabelContainerView toView:?];
    p_keystoneDateLabelCenter->x = x;
    p_keystoneDateLabelCenter->y = y;
  }

  else
  {
    x = p_keystoneDateLabelCenter->x;
    y = self->_keystoneDateLabelCenter.y;
  }

  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)_keystoneMoonPhaseImageViewCenter
{
  p_keystoneMoonPhaseImageViewCenter = &self->_keystoneMoonPhaseImageViewCenter;
  x = self->_keystoneMoonPhaseImageViewCenter.x;
  y = self->_keystoneMoonPhaseImageViewCenter.y;
  if (x == CGPointZero.x && y == CGPointZero.y)
  {
    moonPhaseDialView = self->_moonPhaseDialView;
    [(NTKDialView *)moonPhaseDialView positionForMarkerAtIndex:0];
    [(NTKDialView *)moonPhaseDialView convertPoint:self->_lowerContainerView toView:?];
    p_keystoneMoonPhaseImageViewCenter->x = x;
    p_keystoneMoonPhaseImageViewCenter->y = y;
  }

  result.y = y;
  result.x = x;
  return result;
}

- (void)_loadDateLabels
{
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  sub_82A8(self->_device, v9);
  _createDateLabel = [(NTKSeltzerDialView *)self _createDateLabel];
  gregorianDateLabel = self->_gregorianDateLabel;
  self->_gregorianDateLabel = _createDateLabel;

  [(CLKUICurvedColoringLabel *)self->_gregorianDateLabel setCircleRadius:*(&v10 + 1)];
  [(UIView *)self->_upperContainerView addSubview:self->_gregorianDateLabel];
  _createDateLabel2 = [(NTKSeltzerDialView *)self _createDateLabel];
  lunarDateLabel = self->_lunarDateLabel;
  self->_lunarDateLabel = _createDateLabel2;

  [(CLKUICurvedColoringLabel *)self->_lunarDateLabel setCircleRadius:*&v11];
  lunarDateLabelContainerView = self->_lunarDateLabelContainerView;
  v8 = self->_lunarDateLabel;

  [(UIView *)lunarDateLabelContainerView addSubview:v8];
}

- (id)_createDateLabel
{
  v3 = objc_alloc_init(CLKUICurvedColoringLabel);
  [v3 setInterior:1];
  heroDateLabel = [(NTKSeltzerColorPalette *)self->_palette heroDateLabel];
  [v3 setTextColor:heroDateLabel];

  sub_82A8(self->_device, v7);
  [v3 setTracking:v8];
  _monospacedDateLabelFont = [(NTKSeltzerDialView *)self _monospacedDateLabelFont];
  [v3 setFont:_monospacedDateLabelFont];

  return v3;
}

- (id)_dateLabelFont
{
  dateLabelFont = self->_dateLabelFont;
  if (!dateLabelFont)
  {
    sub_82A8(self->_device, v7);
    v4 = [CLKFont systemFontOfSize:CLKRoundedFontDesignName weight:v8 design:UIFontWeightMedium];
    v5 = self->_dateLabelFont;
    self->_dateLabelFont = v4;

    dateLabelFont = self->_dateLabelFont;
  }

  return dateLabelFont;
}

- (id)_monospacedDateLabelFont
{
  monospacedDateLabelFont = self->_monospacedDateLabelFont;
  if (!monospacedDateLabelFont)
  {
    _dateLabelFont = [(NTKSeltzerDialView *)self _dateLabelFont];
    cLKFontWithMonospacedNumbers = [_dateLabelFont CLKFontWithMonospacedNumbers];
    v6 = self->_monospacedDateLabelFont;
    self->_monospacedDateLabelFont = cLKFontWithMonospacedNumbers;

    monospacedDateLabelFont = self->_monospacedDateLabelFont;
  }

  return monospacedDateLabelFont;
}

- (void)_layoutCurvedLabel:(id)label
{
  v4 = *&CGAffineTransformIdentity.c;
  *&v16.a = *&CGAffineTransformIdentity.a;
  *&v16.c = v4;
  *&v16.tx = *&CGAffineTransformIdentity.tx;
  labelCopy = label;
  [labelCopy setTransform:&v16];
  [labelCopy frame];
  [labelCopy sizeThatFits:{v6, v7}];
  [labelCopy setFrame:{0.0, 0.0, v8, v9}];
  [(NTKSeltzerDialView *)self bounds];
  CLKRectGetCenter();
  v11 = v10;
  v13 = v12;
  v15 = CGPointZero;
  [labelCopy getTextCenter:&v15 startAngle:0 endAngle:0];
  CGAffineTransformMakeTranslation(&v14, v11 - v15.x, v13 - v15.y);
  v16 = v14;
  [labelCopy setTransform:&v16];
}

- (void)_updateDateLabels
{
  _dayOffset = [(NTKSeltzerDialView *)self _dayOffset];
  [(NTKSeltzerDialView *)self _applyRTLCorrectionIfNeeded:&_dayOffset];
  v3 = [(NTKSeltzerDialView *)self _dateForDayOffset:_dayOffset];
  [(NTKSeltzerDialView *)self _updateGregorianLabelWithDate:v3];
  [(NTKSeltzerDialView *)self _updateLunarLabelWithDate:v3];
}

- (void)_updateGregorianLabelWithDate:(id)date
{
  v7 = [(NSDateFormatter *)self->_gregorianDateFormatter stringFromDate:date];
  if (NTKSeltzerUseAllUppercaseText())
  {
    v4 = +[NSLocale currentLocale];
    v5 = [v7 uppercaseStringWithLocale:v4];

    v6 = v5;
  }

  else
  {
    v6 = v7;
  }

  v8 = v6;
  [(CLKUICurvedColoringLabel *)self->_gregorianDateLabel setText:v6];
  [(NTKSeltzerDialView *)self _layoutCurvedLabel:self->_gregorianDateLabel];
}

- (id)_lunarStringWithDate:(id)date
{
  dateCopy = date;
  _overlayCalendar = [(NTKSeltzerDialView *)self _overlayCalendar];
  v6 = [CUIKDateStrings monthDayStringForDate:dateCopy inCalendar:_overlayCalendar];

  if (NTKSeltzerUseAllUppercaseText())
  {
    v7 = +[NSLocale currentLocale];
    v8 = [v6 uppercaseStringWithLocale:v7];

    v6 = v8;
  }

  return v6;
}

- (void)_updateLunarLabelWithDate:(id)date
{
  v4 = [(NTKSeltzerDialView *)self _lunarStringWithDate:date];
  [(CLKUICurvedColoringLabel *)self->_lunarDateLabel setText:v4];

  lunarDateLabel = self->_lunarDateLabel;

  [(NTKSeltzerDialView *)self _layoutCurvedLabel:lunarDateLabel];
}

- (void)_drawOutlines
{
  [(NTKSeltzerDialView *)self _drawDialOutlines];
  [(NTKSeltzerDialView *)self _drawKeystoneOutline];
  [(NTKSeltzerDialView *)self _drawDialMaskOutline];

  [(NTKSeltzerDialView *)self _drawDateCardOutline];
}

- (void)_drawDialOutlines
{
  v36 = 0.0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  sub_82A8(self->_device, &v27);
  [(NTKSeltzerDialView *)self bounds];
  CLKRectGetCenter();
  v4 = v3;
  v6 = v5;
  v7 = *&v27;
  v8 = *&v35;
  v9 = [UIBezierPath bezierPathWithArcCenter:"bezierPathWithArcCenter:radius:startAngle:endAngle:clockwise:" radius:1 startAngle:? endAngle:? clockwise:?];
  [v9 currentPoint];
  v11 = v10;
  v13 = v12;

  v25 = *(&v35 + 1);
  v14 = *(&v34 + 1);
  v26 = [UIBezierPath bezierPathWithArcCenter:1 radius:v4 startAngle:v6 endAngle:v7 clockwise:?];
  [v26 moveToPoint:{v11, v13}];
  v15 = v36;
  [v26 addArcWithCenter:1 radius:v4 startAngle:v6 endAngle:v7 clockwise:{v8, v36}];
  [(NTKSeltzerDialView *)self bounds];
  v16 = CGRectGetMidY(v38) - *(&v27 + 1);
  [(NTKSeltzerDialView *)self bounds];
  v40 = CGRectInset(v39, v16, v16);
  v17 = [UIBezierPath bezierPathWithOvalInRect:v40.origin.x, v40.origin.y, v40.size.width, v40.size.height];
  v18 = *&v28;
  v19 = [UIBezierPath bezierPathWithArcCenter:1 radius:v4 startAngle:v6 endAngle:*&v28 clockwise:v8, v8];
  [v19 currentPoint];
  v21 = v20;
  v23 = v22;

  v24 = [UIBezierPath bezierPathWithArcCenter:1 radius:v4 startAngle:v6 endAngle:v18 clockwise:v25, v14];
  [v24 moveToPoint:{v21, v23}];
  [v24 addArcWithCenter:1 radius:v4 startAngle:v6 endAngle:v18 clockwise:{v8, v15}];
  [(NTKSeltzerDialView *)self _addDialOutlineWithPath:v26];
  [(NTKSeltzerDialView *)self _addDialOutlineWithPath:v17];
  [(NTKSeltzerDialView *)self _addDialOutlineWithPath:v24];
}

- (void)_addDialOutlineWithPath:(id)path
{
  pathCopy = path;
  v8 = +[CAShapeLayer layer];
  cGPath = [pathCopy CGPath];

  [v8 setPath:cGPath];
  dialStroke = [(NTKSeltzerColorPalette *)self->_palette dialStroke];
  [v8 setStrokeColor:{objc_msgSend(dialStroke, "CGColor")}];

  [v8 setFillColor:0];
  sub_82A8(self->_device, v9);
  [v8 setLineWidth:v10];
  layer = [(NTKSeltzerDialView *)self layer];
  [layer addSublayer:v8];
}

- (void)_drawKeystoneOutline
{
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  sub_82A8(self->_device, &v30);
  [(NTKSeltzerDialView *)self bounds];
  CLKRectGetCenter();
  v4 = v3;
  v6 = v5;
  v7 = +[CAShapeLayer layer];
  keystoneLayer = self->_keystoneLayer;
  self->_keystoneLayer = v7;

  dialStroke = [(NTKSeltzerColorPalette *)self->_palette dialStroke];
  -[CAShapeLayer setStrokeColor:](self->_keystoneLayer, "setStrokeColor:", [dialStroke CGColor]);

  [(CAShapeLayer *)self->_keystoneLayer setFillColor:0];
  [(CAShapeLayer *)self->_keystoneLayer setLineWidth:*&v37];
  v10 = *&v31;
  v11 = *&v38;
  v12 = [UIBezierPath bezierPathWithArcCenter:1 radius:v4 startAngle:v6 endAngle:*&v31 clockwise:*&v38, *&v38];
  [v12 currentPoint];
  v14 = v13;
  v16 = v15;

  v17 = *(&v37 + 1);
  v18 = [UIBezierPath bezierPathWithArcCenter:1 radius:v4 startAngle:v6 endAngle:*&v30 clockwise:*(&v37 + 1), v11];
  [(UIBezierPath *)v18 addLineToPoint:v14, v16];
  [(UIBezierPath *)v18 addArcWithCenter:0 radius:v4 startAngle:v6 endAngle:v10 clockwise:v11, v17];
  [(UIBezierPath *)v18 closePath];
  defaultKeystonePath = self->_defaultKeystonePath;
  self->_defaultKeystonePath = v18;
  v29 = v18;

  [(CAShapeLayer *)self->_keystoneLayer setPath:[(UIBezierPath *)self->_defaultKeystonePath CGPath]];
  layer = [(NTKSeltzerDialView *)self layer];
  [layer addSublayer:self->_keystoneLayer];

  v21 = *&v32;
  v22 = [UIBezierPath bezierPathWithArcCenter:1 radius:v4 startAngle:v6 endAngle:*&v32 clockwise:v11, v11];
  [v22 currentPoint];
  v24 = v23;
  v26 = v25;

  v27 = [UIBezierPath bezierPathWithArcCenter:1 radius:v4 startAngle:v6 endAngle:*(&v31 + 1) clockwise:v17, v11];
  [(UIBezierPath *)v27 addLineToPoint:v24, v26];
  [(UIBezierPath *)v27 addArcWithCenter:0 radius:v4 startAngle:v6 endAngle:v21 clockwise:v11, v17];
  [(UIBezierPath *)v27 closePath];
  interactiveKeystonePath = self->_interactiveKeystonePath;
  self->_interactiveKeystonePath = v27;
}

- (void)_drawDialMaskOutline
{
  v38 = 0.0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  sub_82A8(self->_device, &v29);
  [(NTKSeltzerDialView *)self bounds];
  CLKRectGetCenter();
  v4 = v3;
  v6 = v5;
  v28 = +[CALayer layer];
  v7 = +[CAShapeLayer layer];
  v8 = +[CAShapeLayer layer];
  [v28 addSublayer:v7];
  [v28 addSublayer:v8];
  v9 = *&v29;
  v10 = *(&v36 + 1);
  v11 = [UIBezierPath bezierPathWithArcCenter:0 radius:v4 startAngle:v6 endAngle:*&v29 clockwise:*(&v36 + 1), *(&v36 + 1)];
  [v11 currentPoint];
  v13 = v12;
  v15 = v14;

  v16 = *&v30;
  v17 = *(&v37 + 1);
  v18 = [UIBezierPath bezierPathWithArcCenter:1 radius:v4 startAngle:v6 endAngle:*&v30 clockwise:*(&v37 + 1), v10];
  [v18 addLineToPoint:{v13, v15}];
  [v18 addArcWithCenter:0 radius:v4 startAngle:v6 endAngle:v9 clockwise:{v10, v17}];
  [v18 closePath];
  [v7 setPath:{objc_msgSend(v18, "CGPath")}];
  v19 = v38;
  v20 = [UIBezierPath bezierPathWithArcCenter:0 radius:v4 startAngle:v6 endAngle:v9 clockwise:v38, v38];
  [v20 currentPoint];
  v22 = v21;
  v24 = v23;

  v25 = *&v37;
  v26 = [UIBezierPath bezierPathWithArcCenter:1 radius:v4 startAngle:v6 endAngle:v16 clockwise:*&v37, v19];
  [v26 addLineToPoint:{v22, v24}];
  [v26 addArcWithCenter:0 radius:v4 startAngle:v6 endAngle:v9 clockwise:{v19, v25}];
  [v26 closePath];
  [v8 setPath:{objc_msgSend(v26, "CGPath")}];
  layer = [(UIView *)self->_dialContainerView layer];
  [layer setMask:v28];
}

- (void)_drawDateCardOutline
{
  v39 = 0.0;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  sub_82A8(self->_device, &v30);
  [(NTKSeltzerDialView *)self bounds];
  CLKRectGetCenter();
  v4 = v3;
  v6 = v5;
  v7 = +[CAShapeLayer layer];
  dateCardLayer = self->_dateCardLayer;
  self->_dateCardLayer = v7;

  dialStroke = [(NTKSeltzerColorPalette *)self->_palette dialStroke];
  -[CAShapeLayer setStrokeColor:](self->_dateCardLayer, "setStrokeColor:", [dialStroke CGColor]);

  [(CAShapeLayer *)self->_dateCardLayer setFillColor:0];
  [(CAShapeLayer *)self->_dateCardLayer setLineWidth:*&v37];
  v10 = *&v30;
  v11 = v39;
  v12 = [UIBezierPath bezierPathWithArcCenter:1 radius:v4 startAngle:v6 endAngle:*&v30 clockwise:v39, v39];
  [v12 currentPoint];
  v14 = v13;
  v16 = v15;

  v17 = *(&v38 + 1);
  v18 = [UIBezierPath bezierPathWithArcCenter:0 radius:v4 startAngle:v6 endAngle:*&v31 clockwise:*(&v38 + 1), v11];
  [(UIBezierPath *)v18 addLineToPoint:v14, v16];
  [(UIBezierPath *)v18 addArcWithCenter:1 radius:v4 startAngle:v6 endAngle:v10 clockwise:v11, v17];
  [(UIBezierPath *)v18 closePath];
  defaultDateCardPath = self->_defaultDateCardPath;
  self->_defaultDateCardPath = v18;
  v29 = v18;

  [(CAShapeLayer *)self->_dateCardLayer setPath:[(UIBezierPath *)self->_defaultDateCardPath CGPath]];
  layer = [(NTKSeltzerDialView *)self layer];
  [layer addSublayer:self->_dateCardLayer];

  v21 = *(&v31 + 1);
  v22 = [UIBezierPath bezierPathWithArcCenter:1 radius:v4 startAngle:v6 endAngle:*(&v31 + 1) clockwise:v11, v11];
  [v22 currentPoint];
  v24 = v23;
  v26 = v25;

  v27 = [UIBezierPath bezierPathWithArcCenter:0 radius:v4 startAngle:v6 endAngle:*&v32 clockwise:v17, v11];
  [(UIBezierPath *)v27 addLineToPoint:v24, v26];
  [(UIBezierPath *)v27 addArcWithCenter:1 radius:v4 startAngle:v6 endAngle:v21 clockwise:v11, v17];
  [(UIBezierPath *)v27 closePath];
  interactiveDateCardPath = self->_interactiveDateCardPath;
  self->_interactiveDateCardPath = v27;
}

- (void)updateAngleOffset:(double)offset animated:(BOOL)animated
{
  if (!animated)
  {
    [(NTKSeltzerDialView *)self _updateDialOffset:offset];
    [(NTKSeltzerDialView *)self _updateKeystone];

    [(NTKSeltzerDialView *)self _updateDateLabels];
  }
}

- (void)_updateDialOffset:(double)offset skipTimeTravel:(BOOL)travel
{
  [(NTKDialView *)self->_calendarDialView setAngleOffset:?];
  [(NTKDialView *)self->_moonPhaseDialView setAngleOffset:offset];
  [(NTKDialView *)self->_moonPhaseSeparatorDialView setAngleOffset:offset + 6.0];
  if (!travel)
  {
    nextDayAngleOffset = self->_nextDayAngleOffset;
    if (self->_previousDayAngleOffset <= offset)
    {
      self->_nextDayAngleOffset = nextDayAngleOffset + 12.0;
      self->_previousDayAngleOffset = self->_previousDayAngleOffset + 12.0;
      v11 = [(NTKSeltzerDialView *)self _timeTravelIndexForFuture:0];
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        return;
      }

      v9 = v11;
      v10 = -15;
      goto LABEL_8;
    }

    if (nextDayAngleOffset >= offset)
    {
      self->_nextDayAngleOffset = nextDayAngleOffset + -12.0;
      self->_previousDayAngleOffset = self->_previousDayAngleOffset + -12.0;
      v8 = [(NTKSeltzerDialView *)self _timeTravelIndexForFuture:1];
      if (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = v8;
        v10 = 14;
LABEL_8:
        v17 = [(NTKSeltzerDialView *)self _dayOffset]+ v10;
        [(NTKSeltzerDialView *)self _applyRTLCorrectionIfNeeded:&v17];
        v12 = [(NTKSeltzerDialView *)self _dateForDayOffset:v17];
        v13 = [(NTKDialView *)self->_calendarDialView markerAtIndex:v9];
        v14 = [(NTKSeltzerDialView *)self _lunarDateLabelTextForDate:v12];
        [v13 setText:v14];

        [v13 sizeToFit];
        v15 = [(NTKDialView *)self->_moonPhaseDialView markerAtIndex:v9];
        v16 = [(NTKSeltzerDialView *)self _moonPhaseImageForDate:v12];
        [v15 setImage:v16];
      }
    }
  }
}

- (unint64_t)_timeTravelIndexForFuture:(BOOL)future
{
  if (future)
  {
    v3 = 14;
  }

  else
  {
    v3 = 15;
  }

  _dayOffset = [(NTKSeltzerDialView *)self _dayOffset];
  v5 = (_dayOffset + v3) % 30;
  if (v5 >= 0)
  {
    return (_dayOffset + v3) % 30;
  }

  else
  {
    return v5 + 30;
  }
}

- (void)_applyRTLCorrectionIfNeeded:(int64_t *)needed
{
  if (CLKLayoutIsRTL())
  {
    *needed = -*needed;
  }
}

- (id)_dateForDayOffset:(int64_t)offset
{
  _currentDate = [(NTKSeltzerDialView *)self _currentDate];
  v4 = NTKAddDaysToDate();

  return v4;
}

- (void)enterInteractiveModeAnimated:(BOOL)animated
{
  if (animated)
  {
    [(NTKSeltzerDialView *)self _animateKeystoneFromPath:self->_defaultKeystonePath toPath:self->_interactiveKeystonePath];
    defaultDateCardPath = self->_defaultDateCardPath;
    interactiveDateCardPath = self->_interactiveDateCardPath;

    [(NTKSeltzerDialView *)self _animateDateCardFromPath:defaultDateCardPath toPath:interactiveDateCardPath];
  }

  else
  {
    [(CAShapeLayer *)self->_keystoneLayer setPath:[(UIBezierPath *)self->_interactiveKeystonePath CGPath]];
    cGPath = [(UIBezierPath *)self->_interactiveDateCardPath CGPath];
    dateCardLayer = self->_dateCardLayer;

    [(CAShapeLayer *)dateCardLayer setPath:cGPath];
  }
}

- (void)exitInteractiveModeAnimated:(BOOL)animated
{
  [(NTKSeltzerDialView *)self angleOffset];
  v6 = fabs(v5);
  if (!animated)
  {
    [(NTKSeltzerDialView *)self _updateDialOffset:1 skipTimeTravel:0.0];
    [(CAShapeLayer *)self->_keystoneLayer removeAllAnimations];
    [(CAShapeLayer *)self->_keystoneLayer setPath:[(UIBezierPath *)self->_defaultKeystonePath CGPath]];
    [(CAShapeLayer *)self->_dateCardLayer removeAllAnimations];
    [(CAShapeLayer *)self->_dateCardLayer setPath:[(UIBezierPath *)self->_defaultDateCardPath CGPath]];
    [(NTKSeltzerDialView *)self applyInteractiveModeProgress:0.0];
  }

  if (v6 >= 0.00000011920929)
  {
    previousDate = self->_previousDate;
    self->_previousDate = 0;

    [(NTKSeltzerDialView *)self updateDialUI];
  }
}

- (void)applyInteractiveModeProgress:(double)progress
{
  sub_82A8(self->_device, v13);
  v4 = v14;
  CGAffineTransformMakeTranslation(&v11, 0.0, -v14);
  v8 = *&CGAffineTransformIdentity.c;
  v9 = *&CGAffineTransformIdentity.a;
  v7 = *&CGAffineTransformIdentity.tx;
  CLKInterpolateBetweenTransform();
  upperContainerView = self->_upperContainerView;
  v11 = v12;
  [(UIView *)upperContainerView setTransform:&v11];
  CGAffineTransformMakeTranslation(&v11, 0.0, v4);
  CLKInterpolateBetweenTransform();
  lowerContainerView = self->_lowerContainerView;
  v11 = v10;
  [(UIView *)lowerContainerView setTransform:&v11];
}

- (void)_animateKeystoneFromPath:(id)path toPath:(id)toPath
{
  v7 = [(NTKSeltzerDialView *)self _animationFromPath:path toPath:toPath];
  keystoneLayer = self->_keystoneLayer;
  keyPath = [v7 keyPath];
  [(CAShapeLayer *)keystoneLayer addAnimation:v7 forKey:keyPath];
}

- (void)_animateDateCardFromPath:(id)path toPath:(id)toPath
{
  v7 = [(NTKSeltzerDialView *)self _animationFromPath:path toPath:toPath];
  dateCardLayer = self->_dateCardLayer;
  keyPath = [v7 keyPath];
  [(CAShapeLayer *)dateCardLayer addAnimation:v7 forKey:keyPath];
}

- (id)_animationFromPath:(id)path toPath:(id)toPath
{
  toPathCopy = toPath;
  pathCopy = path;
  v7 = [CABasicAnimation animationWithKeyPath:@"path"];
  cGPath = [pathCopy CGPath];

  [v7 setFromValue:cGPath];
  cGPath2 = [toPathCopy CGPath];

  [v7 setToValue:cGPath2];
  [v7 setDuration:0.4];
  v10 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  [v7 setTimingFunction:v10];

  [v7 setRemovedOnCompletion:0];
  [v7 setFillMode:kCAFillModeForwards];

  return v7;
}

- (id)_lunarCalendar
{
  v2 = [(NTKSeltzerDialView *)self _calendarIdentifierForCalendar:self->_calendar];
  v3 = [NSCalendar calendarWithIdentifier:v2];

  return v3;
}

- (id)_calendarIdentifierForCalendar:(unint64_t)calendar
{
  if (calendar <= 9)
  {
    self = **(&off_105C8 + calendar);
  }

  return self;
}

- (id)_overlayCalendar
{
  v3 = [(NTKSeltzerDialView *)self _calendarIdentifierForCalendar:self->_calendar];
  overlayCalendar = self->__overlayCalendar;
  if (!overlayCalendar || (-[NSCalendar calendarIdentifier](overlayCalendar, "calendarIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isEqualToString:v3], v5, (v6 & 1) == 0))
  {
    v7 = +[NSTimeZone calendarTimeZone];
    v8 = [CUIKOverlayCalendar overlayCalendarForCalendarIdentifier:v3 timezone:v7];
    v9 = self->__overlayCalendar;
    self->__overlayCalendar = v8;
  }

  v10 = self->__overlayCalendar;
  v11 = v10;

  return v10;
}

@end