@interface NCALDateRichComplicationFullColorImageView
- (CLKMonochromeFilterProvider)filterProvider;
- (id)_newLabelSubviewWithFont:(id)a3;
- (id)bodyTextProviderWithDate:(id)a3;
- (id)headerTextProviderWithDate:(id)a3;
- (id)initFullColorImageViewWithDevice:(id)a3 family:(int64_t)a4;
- (void)_commonInit;
- (void)_timeChanged:(id)a3;
- (void)_updateDate;
- (void)_updateFiltersShouldUseFraction:(BOOL)a3 fraction:(double)a4;
- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setOverrideDate:(id)a3;
- (void)updateMonochromeFiltersWithAccentFilters:(id)a3 noAccentFilters:(id)a4;
@end

@implementation NCALDateRichComplicationFullColorImageView

- (id)initFullColorImageViewWithDevice:(id)a3 family:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = NCALDateRichComplicationFullColorImageView;
  v8 = [(NCALDateRichComplicationFullColorImageView *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_device, a3);
    v9->_family = a4;
    [(NCALDateRichComplicationFullColorImageView *)v9 _commonInit];
  }

  return v9;
}

- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4
{
  v5 = [a3 metadata];
  v8 = [v5 objectForKeyedSubscript:NCALDateComplicationOverrideMetadataKey];

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

- (id)_newLabelSubviewWithFont:(id)a3
{
  v4 = a3;
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
  [v5 setFont:v4];
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
  v32 = [(NCALDateRichComplicationFullColorImageView *)self layer];
  [v32 setCornerRadius:v31];
}

- (void)_timeChanged:(id)a3
{
  v4 = a3;
  v5 = ncs_log_complication();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 name];
    *buf = 136315394;
    v9 = "[NCALDateRichComplicationFullColorImageView _timeChanged:]";
    v10 = 2112;
    v11 = v6;
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
  v3 = [(NCALDateRichComplicationFullColorImageView *)self overrideDate];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
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

- (id)headerTextProviderWithDate:(id)a3
{
  v4 = a3;
  if ([(NCALDateRichComplicationFullColorImageView *)self displayLunarDate])
  {
    v5 = 8;
  }

  else
  {
    v5 = 512;
  }

  v6 = [CLKDateTextProvider textProviderWithDate:v4 units:v5];

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

- (id)bodyTextProviderWithDate:(id)a3
{
  v4 = [CLKDateTextProvider textProviderWithDate:a3 units:16];
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

- (void)setOverrideDate:(id)a3
{
  v5 = a3;
  overrideDate = self->_overrideDate;
  v7 = v5;
  if ((NTKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_overrideDate, a3);
    [(NCALDateRichComplicationFullColorImageView *)self _updateDate];
  }
}

- (void)_updateFiltersShouldUseFraction:(BOOL)a3 fraction:(double)a4
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);
  v8 = WeakRetained;
  if (v5)
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

- (void)updateMonochromeFiltersWithAccentFilters:(id)a3 noAccentFilters:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v9)
  {
    v7 = [(CLKUIColoringLabel *)self->_weekdayLabel layer];
    [v7 setFilters:v9];
  }

  if (v6)
  {
    v8 = [(CLKUIColoringLabel *)self->_dayLabel layer];
    [v8 setFilters:v6];
  }
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

@end