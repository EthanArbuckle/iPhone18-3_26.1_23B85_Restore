@interface NCALDateRichComplicationCornerView
- (NCALDateRichComplicationCornerView)init;
- (id)_createAndAddColoringLabelWithFontSize:(double)a3 dayOffset:(int64_t)a4;
- (id)_createAndAddLabelPlatterWithAngularWidth:(double)a3 color:(id)a4;
- (void)_enumerateLabelsWithBlock:(id)a3;
- (void)_handleTemplate:(id)a3 reason:(int64_t)a4;
- (void)_timeChanged:(id)a3;
- (void)_updateDate;
- (void)_updateFiltersShouldUseFraction:(BOOL)a3 fraction:(double)a4;
- (void)dealloc;
- (void)layoutSubviews;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
- (void)updateMonochromeFiltersWithAccentFilters:(id)a3 noAccentFilters:(id)a4;
@end

@implementation NCALDateRichComplicationCornerView

- (NCALDateRichComplicationCornerView)init
{
  v28.receiver = self;
  v28.super_class = NCALDateRichComplicationCornerView;
  v2 = [(NCALDateRichComplicationCornerView *)&v28 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(NCALDateRichComplicationCornerView *)v2 device];
    sub_11164(v4, v4);
    v5 = xmmword_28278;

    v6 = [UIColor colorWithWhite:0.2 alpha:1.0];
    CLKDegreesToRadians();
    v8 = v7;
    v9 = [(NCALDateRichComplicationCornerView *)v3 _createAndAddLabelPlatterWithAngularWidth:v6 color:?];
    previousDatePlatter = v3->_previousDatePlatter;
    v3->_previousDatePlatter = v9;

    v11 = +[UIColor systemRedColor];
    v12 = [(NCALDateRichComplicationCornerView *)v3 _createAndAddLabelPlatterWithAngularWidth:v11 color:v8];
    datePlatter = v3->_datePlatter;
    v3->_datePlatter = v12;

    v14 = [(NCALDateRichComplicationCornerView *)v3 _createAndAddLabelPlatterWithAngularWidth:v6 color:v8];
    nextDatePlatter = v3->_nextDatePlatter;
    v3->_nextDatePlatter = v14;

    v16 = [(NCALDateRichComplicationCornerView *)v3 _createAndAddColoringLabelWithFontSize:0 dayOffset:*&v5];
    weekdayLabel = v3->_weekdayLabel;
    v3->_weekdayLabel = v16;

    v18 = [(NCALDateRichComplicationCornerView *)v3 _createAndAddColoringLabelWithFontSize:-1 dayOffset:*(&v5 + 1)];
    previousDateLabel = v3->_previousDateLabel;
    v3->_previousDateLabel = v18;

    v20 = [(NCALDateRichComplicationCornerView *)v3 _createAndAddColoringLabelWithFontSize:0 dayOffset:*(&v5 + 1)];
    dateLabel = v3->_dateLabel;
    v3->_dateLabel = v20;

    v22 = [(CLKUICurvedColoringLabel *)v3->_dateLabel layer];
    [v22 setCompositingFilter:kCAFilterSubtractS];

    v23 = [(NCALDateRichComplicationCornerView *)v3 _createAndAddColoringLabelWithFontSize:1 dayOffset:*(&v5 + 1)];
    nextDateLabel = v3->_nextDateLabel;
    v3->_nextDateLabel = v23;

    [(NCALDateRichComplicationCornerView *)v3 _updateDate];
    v25 = +[NSNotificationCenter defaultCenter];
    [v25 addObserver:v3 selector:"_timeChanged:" name:UIApplicationSignificantTimeChangeNotification object:0];

    v26 = +[NSNotificationCenter defaultCenter];
    [v26 addObserver:v3 selector:"_timeChanged:" name:NSCalendarDayChangedNotification object:0];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = NCALDateRichComplicationCornerView;
  [(NCALDateRichComplicationCornerView *)&v4 dealloc];
}

- (id)_createAndAddColoringLabelWithFontSize:(double)a3 dayOffset:(int64_t)a4
{
  v7 = [[CLKUICurvedColoringLabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v7 setAlpha:1.0];
  v8 = +[UIColor whiteColor];
  [v7 setColor:v8];

  v9 = [CLKFont systemFontOfSize:CLKRoundedFontDesignName weight:a3 design:UIFontWeightSemibold];
  [v7 setFont:v9];

  [v7 setInterior:0];
  [v7 setUppercase:1];
  [v7 setUsesLegibility:0];
  objc_initWeak(&location, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100D8;
  v16[3] = &unk_20B18;
  objc_copyWeak(&v17, &location);
  [v7 setNeedsResizeHandler:v16];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10118;
  v14 = &unk_20CC0;
  v15[1] = a4;
  objc_copyWeak(v15, &location);
  [v7 setNowProvider:&v11];
  [(NCALDateRichComplicationCornerView *)self addSubview:v7, v11, v12, v13, v14];
  objc_destroyWeak(v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v7;
}

- (id)_createAndAddLabelPlatterWithAngularWidth:(double)a3 color:(id)a4
{
  v6 = a4;
  if (qword_28270 != -1)
  {
    sub_13204();
  }

  v7 = [(NCALDateRichComplicationCornerView *)self device];
  sub_11164(v7, v7);
  v8 = *&qword_28288;
  v9 = *&qword_28290;
  v10 = xmmword_28298;
  v11 = *&qword_282C0;
  v12 = *&qword_282C8;
  v13 = *&qword_282D0;

  v14 = [(NCALDateRichComplicationCornerView *)self cornerComplicationPosition];
  v15 = 0.0;
  v16 = v14 - 2;
  v17 = v8 - v12;
  if (v14 <= 1)
  {
    v15 = *&v10 - v11;
  }

  else
  {
    v17 = 0.0;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = v9 - v12;
  }

  if (v16 >= 2)
  {
    v19 = v15;
  }

  else
  {
    v19 = *(&v10 + 1) - v11;
  }

  v20 = [[CDCurvedRoundedRectShapeLayer alloc] initWithAngularWidth:a3 innerRadius:v19 outerRadius:v18 cornerRadius:v13];
  [v20 setActions:qword_28268];
  [v20 setFillColor:{objc_msgSend(v6, "CGColor")}];
  v21 = [(NCALDateRichComplicationCornerView *)self layer];
  [v21 addSublayer:v20];

  return v20;
}

- (void)layoutSubviews
{
  v62.receiver = self;
  v62.super_class = NCALDateRichComplicationCornerView;
  [(NCALDateRichComplicationCornerView *)&v62 layoutSubviews];
  v3 = [(NCALDateRichComplicationCornerView *)self cornerComplicationPosition];
  v4 = [(NCALDateRichComplicationCornerView *)self device];
  sub_11164(v4, v4);
  v59 = xmmword_28278;
  v60 = *&qword_28288;
  v61 = xmmword_28298;
  v6 = *(&xmmword_282A8 + 1);
  *&v5 = xmmword_282A8;
  v56 = *&qword_282B8;
  v57 = *&qword_282C8;
  v58 = qword_282D8;

  v7 = self->_weekdayLabel;
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_10878;
  v46[3] = &unk_20D08;
  v8 = v7;
  v47 = v8;
  v48 = v3;
  v49 = v59;
  v50 = v60;
  v51 = v61;
  v43 = v6;
  v44 = v5;
  v52 = __PAIR128__(*&v6, *&v5);
  v53 = v56;
  v54 = v57;
  v55 = v58;
  [(NCALDateRichComplicationCornerView *)self _enumerateLabelsWithBlock:v46];
  v9 = [(NCALDateRichComplicationCornerView *)self device];
  [v9 screenBounds];
  v11 = v10;
  v13 = v12;

  CLKRectGetCenter();
  v15 = v14;
  v42 = v16;
  v17 = objc_opt_class();
  v18 = [(NCALDateRichComplicationCornerView *)self device];
  [v17 viewSizeForDevice:v18];
  v20 = v19;
  v22 = v21;

  x = CGPointZero.x;
  y = CGPointZero.y;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      y = v42 - v13 + v22;
      v25 = v44;
      x = v15;
    }

    else
    {
      v25 = v44;
      if (v3 == 3)
      {
        x = v15 - v11 + v20;
        y = v42 - v13 + v22;
      }
    }
  }

  else
  {
    if (v3)
    {
      v25 = v44;
      if (v3 != 1)
      {
        goto LABEL_11;
      }

      x = v15 - v11 + v20;
    }

    else
    {
      v25 = v44;
      x = v15;
    }

    y = v42;
  }

LABEL_11:
  v26 = v25;
  [(NCALDateRichComplicationCornerView *)self innerComponentRotationInDegree];
  if ((v3 & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    v27 = -1.0;
  }

  else
  {
    v27 = 1.0;
  }

  if (NTKLayoutIsRTL())
  {
    v27 = -v27;
  }

  [(CDCurvedRoundedRectShapeLayer *)self->_previousDatePlatter setPosition:x, y];
  previousDatePlatter = self->_previousDatePlatter;
  CLKDegreesToRadians();
  CGAffineTransformMakeRotation(&v45, v29);
  [(CDCurvedRoundedRectShapeLayer *)previousDatePlatter setAffineTransform:&v45];
  [(CDCurvedRoundedRectShapeLayer *)self->_datePlatter setPosition:x, y];
  datePlatter = self->_datePlatter;
  CLKDegreesToRadians();
  CGAffineTransformMakeRotation(&v45, v31);
  [(CDCurvedRoundedRectShapeLayer *)datePlatter setAffineTransform:&v45];
  [(CDCurvedRoundedRectShapeLayer *)self->_nextDatePlatter setPosition:x, y];
  nextDatePlatter = self->_nextDatePlatter;
  CLKDegreesToRadians();
  CGAffineTransformMakeRotation(&v45, v33);
  [(CDCurvedRoundedRectShapeLayer *)nextDatePlatter setAffineTransform:&v45];
  weekdayLabel = self->_weekdayLabel;
  [(NCALDateRichComplicationCornerView *)self outerComponentRotationInDegree];
  [(NCALDateRichComplicationCornerView *)self _layoutCurvedLabel:weekdayLabel centerAngleInDegree:v26 editingRotationInDegree:v35];
  previousDateLabel = self->_previousDateLabel;
  [(NCALDateRichComplicationCornerView *)self innerComponentRotationInDegree];
  [(NCALDateRichComplicationCornerView *)self _layoutCurvedLabel:previousDateLabel centerAngleInDegree:v26 + v27 * v43 editingRotationInDegree:v37];
  dateLabel = self->_dateLabel;
  [(NCALDateRichComplicationCornerView *)self innerComponentRotationInDegree];
  [(NCALDateRichComplicationCornerView *)self _layoutCurvedLabel:dateLabel centerAngleInDegree:v26 editingRotationInDegree:v39];
  nextDateLabel = self->_nextDateLabel;
  [(NCALDateRichComplicationCornerView *)self innerComponentRotationInDegree];
  [(NCALDateRichComplicationCornerView *)self _layoutCurvedLabel:nextDateLabel centerAngleInDegree:v26 - v27 * v43 editingRotationInDegree:v41];
}

- (void)_timeChanged:(id)a3
{
  v4 = a3;
  v5 = ncs_log_complication();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 name];
    *buf = 136315394;
    v9 = "[NCALDateRichComplicationCornerView _timeChanged:]";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%s - Received %@", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10A70;
  block[3] = &unk_20B40;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_updateDate
{
  overrideDate = self->_overrideDate;
  if (overrideDate)
  {
    v4 = overrideDate;
  }

  else
  {
    v4 = +[CLKDate complicationDate];
  }

  v14 = v4;
  v5 = [CLKDateTextProvider textProviderWithDate:v4 units:512];
  [v5 setShortUnits:1];
  [(CLKUICurvedColoringLabel *)self->_weekdayLabel setTextProvider:v5];
  previousDateLabel = self->_previousDateLabel;
  v7 = NTKAddDaysToDate();
  v8 = [CLKDateTextProvider textProviderWithDate:v7 units:16];
  [(CLKUICurvedColoringLabel *)previousDateLabel setTextProvider:v8];

  dateLabel = self->_dateLabel;
  v10 = [CLKDateTextProvider textProviderWithDate:v14 units:16];
  [(CLKUICurvedColoringLabel *)dateLabel setTextProvider:v10];

  nextDateLabel = self->_nextDateLabel;
  v12 = NTKAddDaysToDate();
  v13 = [CLKDateTextProvider textProviderWithDate:v12 units:16];
  [(CLKUICurvedColoringLabel *)nextDateLabel setTextProvider:v13];
}

- (void)_enumerateLabelsWithBlock:(id)a3
{
  weekdayLabel = self->_weekdayLabel;
  v5 = (a3 + 16);
  v6 = *(a3 + 2);
  v7 = a3;
  v6();
  (*v5)(v7, self->_previousDateLabel);
  (*v5)(v7, self->_dateLabel);
  (*v5)(v7, self->_nextDateLabel);
}

- (void)_handleTemplate:(id)a3 reason:(int64_t)a4
{
  v5 = [a3 metadata];
  v6 = [v5 objectForKeyedSubscript:NCALDateComplicationOverrideMetadataKey];
  overrideDate = self->_overrideDate;
  self->_overrideDate = v6;

  [(NCALDateRichComplicationCornerView *)self _updateDate];
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  [(NCALDateRichComplicationCornerView *)self _updateFiltersWithFraction:?];
  previousDatePlatter = self->_previousDatePlatter;
  CLKInterpolateBetweenFloatsClipped();
  *&v5 = v5;
  [(CDCurvedRoundedRectShapeLayer *)previousDatePlatter setOpacity:v5];
  nextDatePlatter = self->_nextDatePlatter;
  CLKInterpolateBetweenFloatsClipped();
  *&v7 = v7;

  [(CDCurvedRoundedRectShapeLayer *)nextDatePlatter setOpacity:v7];
}

- (void)updateMonochromeColor
{
  [(NCALDateRichComplicationCornerView *)self _updateFilters];
  LODWORD(v3) = 1051931443;
  [(CDCurvedRoundedRectShapeLayer *)self->_previousDatePlatter setOpacity:v3];
  nextDatePlatter = self->_nextDatePlatter;
  LODWORD(v5) = 1051931443;

  [(CDCurvedRoundedRectShapeLayer *)nextDatePlatter setOpacity:v5];
}

- (void)_updateFiltersShouldUseFraction:(BOOL)a3 fraction:(double)a4
{
  v5 = a3;
  v7 = [(NCALDateRichComplicationCornerView *)self filterProvider];
  v8 = v7;
  if (v5)
  {
    v11 = [v7 filtersForView:self style:2 fraction:a4];

    v9 = [(NCALDateRichComplicationCornerView *)self filterProvider];
    [v9 filtersForView:self style:0 fraction:a4];
  }

  else
  {
    v11 = [v7 filtersForView:self style:2];

    v9 = [(NCALDateRichComplicationCornerView *)self filterProvider];
    [v9 filtersForView:self style:0];
  }
  v10 = ;

  [(NCALDateRichComplicationCornerView *)self updateMonochromeFiltersWithAccentFilters:v11 noAccentFilters:v10];
}

- (void)updateMonochromeFiltersWithAccentFilters:(id)a3 noAccentFilters:(id)a4
{
  previousDatePlatter = self->_previousDatePlatter;
  v7 = a4;
  v8 = a3;
  [(CDCurvedRoundedRectShapeLayer *)previousDatePlatter setFilters:v8];
  [(CDCurvedRoundedRectShapeLayer *)self->_nextDatePlatter setFilters:v8];
  v9 = [(CLKUICurvedColoringLabel *)self->_previousDateLabel layer];
  [v9 setFilters:v8];

  v10 = [(CLKUICurvedColoringLabel *)self->_nextDateLabel layer];
  [v10 setFilters:v8];

  [(CDCurvedRoundedRectShapeLayer *)self->_datePlatter setFilters:v8];
  v11 = [(CLKUICurvedColoringLabel *)self->_dateLabel layer];
  [v11 setFilters:v8];

  v12 = [(CLKUICurvedColoringLabel *)self->_weekdayLabel layer];
  [v12 setFilters:v7];
}

@end