@interface NCALDateRichComplicationFullColorImageView
- (CLKMonochromeFilterProvider)filterProvider;
- (id)_newLabelSubviewWithFont:(id)font;
- (id)bodyTextProviderWithDate:(id)date;
- (id)headerTextProviderWithDate:(id)date;
- (id)initFullColorImageViewWithDevice:(id)device family:(int64_t)family;
- (void)_commonInit;
- (void)_timeChanged:(id)changed;
- (void)_updateDate;
- (void)_updateFiltersShouldUseFraction:(BOOL)fraction fraction:(double)a4;
- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setOverrideDate:(id)date;
- (void)updateMonochromeFiltersWithAccentFilters:(id)filters noAccentFilters:(id)accentFilters;
@end

@implementation NCALDateRichComplicationFullColorImageView

- (id)initFullColorImageViewWithDevice:(id)device family:(int64_t)family
{
  deviceCopy = device;
  v11.receiver = self;
  v11.super_class = NCALDateRichComplicationFullColorImageView;
  v8 = [(NCALDateRichComplicationFullColorImageView *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_device, device);
    v9->_family = family;
    [(NCALDateRichComplicationFullColorImageView *)v9 _commonInit];
  }

  return v9;
}

- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason
{
  metadata = [provider metadata];
  v8 = [metadata objectForKeyedSubscript:NCALDateComplicationOverrideMetadataKey];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = v8;
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_5;
    }

    v7 = 0;
  }

  [(NCALDateRichComplicationFullColorImageView *)self setOverrideDate:v7];
LABEL_5:
}

- (void)_commonInit
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  sub_6CE4(self->_device, self->_family, &v15);
  v3 = UIFontSystemFontDesignRounded;
  v14 = [CLKFont systemFontOfSize:UIFontSystemFontDesignRounded weight:v15 design:?];
  v4 = [(NCALDateRichComplicationFullColorImageView *)self _newLabelSubviewWithFont:v14];
  weekdayLabel = self->_weekdayLabel;
  self->_weekdayLabel = v4;

  [(CLKUIColoringLabel *)self->_weekdayLabel setUppercase:1];
  v6 = +[UIColor systemRedColor];
  [(CLKUIColoringLabel *)self->_weekdayLabel setColor:v6];

  v7 = [CLKFont systemFontOfSize:v3 weight:v16 design:?];
  v8 = [(NCALDateRichComplicationFullColorImageView *)self _newLabelSubviewWithFont:v7];
  dayLabel = self->_dayLabel;
  self->_dayLabel = v8;

  v10 = +[UIColor whiteColor];
  [(CLKUIColoringLabel *)self->_dayLabel setColor:v10];

  [(NCALDateRichComplicationFullColorImageView *)self _updateDate];
  v11 = +[NSNotificationCenter defaultCenter];
  [v11 addObserver:self selector:"_timeChanged:" name:UIApplicationSignificantTimeChangeNotification object:0];

  v12 = +[NSNotificationCenter defaultCenter];
  [v12 addObserver:self selector:"_timeChanged:" name:CUIKPreferencesNotification_OverlayCalendarID object:0];

  v13 = +[NSNotificationCenter defaultCenter];
  [v13 addObserver:self selector:"_timeChanged:" name:NTKLunarCalendarIDChangedNotification object:0];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIApplicationSignificantTimeChangeNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:NTKLunarCalendarIDChangedNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:NSCalendarDayChangedNotification object:0];

  v6.receiver = self;
  v6.super_class = NCALDateRichComplicationFullColorImageView;
  [(NCALDateRichComplicationFullColorImageView *)&v6 dealloc];
}

- (id)_newLabelSubviewWithFont:(id)font
{
  fontCopy = font;
  v5 = objc_alloc_init(CLKUIColoringLabel);
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_6FFC;
  v10[3] = &unk_20AF0;
  objc_copyWeak(&v11, &location);
  [v5 setNowProvider:v10];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_706C;
  v8[3] = &unk_20B18;
  objc_copyWeak(&v9, &location);
  [v5 setNeedsResizeHandler:v8];
  [v5 setFont:fontCopy];
  sub_6CE4(self->_device, self->_family, v7);
  [v5 setMaxWidth:v7[6]];
  [(NCALDateRichComplicationFullColorImageView *)self addSubview:v5];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v5;
}

- (void)layoutSubviews
{
  v36.receiver = self;
  v36.super_class = NCALDateRichComplicationFullColorImageView;
  [(NCALDateRichComplicationFullColorImageView *)&v36 layoutSubviews];
  v35 = 0;
  v34 = 0u;
  memset(v33, 0, sizeof(v33));
  [(NCALDateRichComplicationFullColorImageView *)self bounds:sub_6CE4(self->_device];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CLKUIColoringLabel *)self->_weekdayLabel sizeToFit];
  [(CLKUIColoringLabel *)self->_weekdayLabel frame];
  device = self->_device;
  CLKRectCenteredXInRectForDevice();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = *&v34;
  [(CLKUIColoringLabel *)self->_weekdayLabel _lastLineBaseline];
  [(CLKUIColoringLabel *)self->_weekdayLabel setFrame:v13, v18 - v19, v15, v17];
  [(CLKUIColoringLabel *)self->_dayLabel sizeToFit];
  [(CLKUIColoringLabel *)self->_dayLabel frame];
  v20 = self->_device;
  CLKRectCenteredXInRectForDevice();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = v18 + *(&v34 + 1);
  [(CLKUIColoringLabel *)self->_dayLabel _lastLineBaseline];
  [(CLKUIColoringLabel *)self->_dayLabel setFrame:v22, v27 - v28, v24, v26];
  v37.origin.x = v4;
  v37.origin.y = v6;
  v37.size.width = v8;
  v37.size.height = v10;
  Width = CGRectGetWidth(v37);
  v38.origin.x = v4;
  v38.origin.y = v6;
  v38.size.width = v8;
  v38.size.height = v10;
  Height = CGRectGetHeight(v38);
  if (Width < Height)
  {
    Height = Width;
  }

  v31 = Height * 0.5;
  layer = [(NCALDateRichComplicationFullColorImageView *)self layer];
  [layer setCornerRadius:v31];
}

- (void)_timeChanged:(id)changed
{
  changedCopy = changed;
  v5 = ncs_log_complication();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    name = [changedCopy name];
    *buf = 136315394;
    v9 = "[NCALDateRichComplicationFullColorImageView _timeChanged:]";
    v10 = 2112;
    v11 = name;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%s - Received %@", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_73B4;
  block[3] = &unk_20B40;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_updateDate
{
  overrideDate = [(NCALDateRichComplicationFullColorImageView *)self overrideDate];
  v4 = overrideDate;
  if (overrideDate)
  {
    v5 = overrideDate;
  }

  else
  {
    v5 = +[CLKDate complicationDate];
  }

  v8 = v5;

  v6 = [(NCALDateRichComplicationFullColorImageView *)self headerTextProviderWithDate:v8];
  [(CLKUIColoringLabel *)self->_weekdayLabel setTextProvider:v6];

  v7 = [(NCALDateRichComplicationFullColorImageView *)self bodyTextProviderWithDate:v8];
  [(CLKUIColoringLabel *)self->_dayLabel setTextProvider:v7];

  [(NCALDateRichComplicationFullColorImageView *)self setNeedsLayout];
}

- (id)headerTextProviderWithDate:(id)date
{
  dateCopy = date;
  if ([(NCALDateRichComplicationFullColorImageView *)self displayLunarDate])
  {
    v5 = 8;
  }

  else
  {
    v5 = 512;
  }

  v6 = [CLKDateTextProvider textProviderWithDate:dateCopy units:v5];

  if ([(NCALDateRichComplicationFullColorImageView *)self displayLunarDate])
  {
    v7 = OverlayCalendarLocaleID();
    [v6 setAlternateCalendarLocaleID:v7];
  }

  else
  {
    [v6 setAlternateCalendarLocaleID:0];
  }

  [v6 setShortUnits:1];

  return v6;
}

- (id)bodyTextProviderWithDate:(id)date
{
  v4 = [CLKDateTextProvider textProviderWithDate:date units:16];
  [v4 setShortUnits:1];
  [v4 setAllowsNarrowUnits:{-[NCALDateRichComplicationFullColorImageView displayLunarDate](self, "displayLunarDate") ^ 1}];
  if ([(NCALDateRichComplicationFullColorImageView *)self displayLunarDate])
  {
    v5 = OverlayCalendarLocaleID();
    [v4 setAlternateCalendarLocaleID:v5];
  }

  else
  {
    [v4 setAlternateCalendarLocaleID:0];
  }

  return v4;
}

- (void)setOverrideDate:(id)date
{
  dateCopy = date;
  overrideDate = self->_overrideDate;
  v7 = dateCopy;
  if ((NTKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_overrideDate, date);
    [(NCALDateRichComplicationFullColorImageView *)self _updateDate];
  }
}

- (void)_updateFiltersShouldUseFraction:(BOOL)fraction fraction:(double)a4
{
  fractionCopy = fraction;
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);
  v8 = WeakRetained;
  if (fractionCopy)
  {
    v10 = [WeakRetained filtersForView:self style:2 fraction:a4];
    [v8 filtersForView:self style:0 fraction:a4];
  }

  else
  {
    v10 = [WeakRetained filtersForView:self style:2];
    [v8 filtersForView:self style:0];
  }
  v9 = ;
  [(NCALDateRichComplicationFullColorImageView *)self updateMonochromeFiltersWithAccentFilters:v10 noAccentFilters:v9];
}

- (void)updateMonochromeFiltersWithAccentFilters:(id)filters noAccentFilters:(id)accentFilters
{
  filtersCopy = filters;
  accentFiltersCopy = accentFilters;
  if (filtersCopy)
  {
    layer = [(CLKUIColoringLabel *)self->_weekdayLabel layer];
    [layer setFilters:filtersCopy];
  }

  if (accentFiltersCopy)
  {
    layer2 = [(CLKUIColoringLabel *)self->_dayLabel layer];
    [layer2 setFilters:accentFiltersCopy];
  }
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

@end