@interface NLActivityRichComplicationChartView
- (double)_exercisePointRelativeHeightForValue:(double)a3;
- (double)_movePointRelativeHeightForValue:(double)a3;
- (id)_generateChartPointsForQuantityStatisticsInfo:(id)a3 withUnit:(id)a4 accumulateFractionalValues:(BOOL)a5;
- (id)_generateStandChartPointsForStandHourInfo:(id)a3;
- (id)_keyForDate:(id)a3;
- (id)_timeStringByRemovingSpacesFromTimeString:(id)a3;
- (id)initForDevice:(id)a3;
- (void)_createHourFormatter;
- (void)_currentLocaleChangeOccurred;
- (void)_drawChartsBarsInContext:(CGContext *)a3 lineNumber:(unint64_t)a4 xPosition:(double)a5;
- (void)_registerForNotifications;
- (void)_updateHourLabelsText;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
- (void)setExerciseGraphData:(id)a3;
- (void)setMoveGraphData:(id)a3 activityMoveMode:(int64_t)a4;
- (void)setStandGraphData:(id)a3;
@end

@implementation NLActivityRichComplicationChartView

- (id)initForDevice:(id)a3
{
  v5 = a3;
  v35.receiver = self;
  v35.super_class = NLActivityRichComplicationChartView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v9 = [(NLActivityRichComplicationChartView *)&v35 initWithFrame:CGRectZero.origin.x, y, width, height];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, a3);
    v11 = +[UIColor clearColor];
    [(NLActivityRichComplicationChartView *)v10 setBackgroundColor:v11];

    [(NLActivityRichComplicationChartView *)v10 setClipsToBounds:0];
    v12 = [UIColor colorWithWhite:1.0 alpha:0.3];
    chartLineColor = v10->_chartLineColor;
    v10->_chartLineColor = v12;

    v14 = NTKMoveGradientLightColor();
    v15 = NTKMoveGradientDarkColor();
    v10->_moveBarGradient = [ARUIMetricColors newGradientForStartColor:v14 endColor:v15];

    v16 = NTKMoveAdjustmentButtonBackgroundColor();
    moveBarFadedColor = v10->_moveBarFadedColor;
    v10->_moveBarFadedColor = v16;

    v18 = NTKExerciseGradientLightColor();
    v19 = NTKExerciseGradientDarkColor();
    v10->_exerciseBarGradient = [ARUIMetricColors newGradientForStartColor:v18 endColor:v19];

    v20 = NTKExerciseAdjustmentButtonBackgroundColor();
    exerciseBarFadedColor = v10->_exerciseBarFadedColor;
    v10->_exerciseBarFadedColor = v20;

    v22 = NTKStandGradientLightColor();
    v23 = NTKStandGradientDarkColor();
    v10->_standBarGradient = [ARUIMetricColors newGradientForStartColor:v22 endColor:v23];

    sub_4EB4(v24, v10->_device);
    v25 = [CLKFont systemFontOfSize:CLKRoundedFontDesignName weight:*&qword_16718 design:UIFontWeightSemibold];
    v26 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    midnightHourLabel = v10->_midnightHourLabel;
    v10->_midnightHourLabel = v26;

    [(UILabel *)v10->_midnightHourLabel setFont:v25];
    [(UILabel *)v10->_midnightHourLabel setTextColor:v10->_chartLineColor];
    [(NLActivityRichComplicationChartView *)v10 addSubview:v10->_midnightHourLabel];
    v28 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    sixAMHourLabel = v10->_sixAMHourLabel;
    v10->_sixAMHourLabel = v28;

    [(UILabel *)v10->_sixAMHourLabel setFont:v25];
    [(UILabel *)v10->_sixAMHourLabel setTextColor:v10->_chartLineColor];
    [(NLActivityRichComplicationChartView *)v10 addSubview:v10->_sixAMHourLabel];
    v30 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    noonHourLabel = v10->_noonHourLabel;
    v10->_noonHourLabel = v30;

    [(UILabel *)v10->_noonHourLabel setFont:v25];
    [(UILabel *)v10->_noonHourLabel setTextColor:v10->_chartLineColor];
    [(NLActivityRichComplicationChartView *)v10 addSubview:v10->_noonHourLabel];
    v32 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    sixPMHourLabel = v10->_sixPMHourLabel;
    v10->_sixPMHourLabel = v32;

    [(UILabel *)v10->_sixPMHourLabel setFont:v25];
    [(UILabel *)v10->_sixPMHourLabel setTextColor:v10->_chartLineColor];
    [(NLActivityRichComplicationChartView *)v10 addSubview:v10->_sixPMHourLabel];
    [(NLActivityRichComplicationChartView *)v10 _createHourFormatter];
    [(NLActivityRichComplicationChartView *)v10 _updateHourLabelsText];
    [(NLActivityRichComplicationChartView *)v10 _registerForNotifications];
  }

  return v10;
}

- (void)dealloc
{
  CGGradientRelease(self->_moveBarGradient);
  CGGradientRelease(self->_exerciseBarGradient);
  CGGradientRelease(self->_standBarGradient);
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = NLActivityRichComplicationChartView;
  [(NLActivityRichComplicationChartView *)&v4 dealloc];
}

- (void)_createHourFormatter
{
  v6 = +[NSLocale currentLocale];
  v3 = objc_alloc_init(NSDateFormatter);
  hourFormatter = self->_hourFormatter;
  self->_hourFormatter = v3;

  [(NSDateFormatter *)self->_hourFormatter setLocale:v6];
  v5 = [NSDateFormatter dateFormatFromTemplate:@"j" options:0 locale:v6];
  [(NSDateFormatter *)self->_hourFormatter setDateFormat:v5];
}

- (void)_updateHourLabelsText
{
  v18 = objc_alloc_init(NSDateComponents);
  [v18 setDay:12];
  [v18 setMonth:1];
  [v18 setYear:2010];
  v3 = +[NSCalendar currentCalendar];
  v4 = [v3 dateFromComponents:v18];
  v5 = objc_alloc_init(NSDateComponents);
  [v5 setHour:6];
  v17 = v4;
  v6 = [(NSDateFormatter *)self->_hourFormatter stringFromDate:v4];
  v16 = [(NLActivityRichComplicationChartView *)self _timeStringByRemovingSpacesFromTimeString:v6];

  [(UILabel *)self->_midnightHourLabel setText:v16];
  v7 = [v3 dateByAddingComponents:v5 toDate:v4 options:0];
  v8 = [(NSDateFormatter *)self->_hourFormatter stringFromDate:v7];
  v9 = [(NLActivityRichComplicationChartView *)self _timeStringByRemovingSpacesFromTimeString:v8];

  [(UILabel *)self->_sixAMHourLabel setText:v9];
  v10 = [v3 dateByAddingComponents:v5 toDate:v7 options:0];
  v11 = [(NSDateFormatter *)self->_hourFormatter stringFromDate:v10];
  v12 = [(NLActivityRichComplicationChartView *)self _timeStringByRemovingSpacesFromTimeString:v11];

  [(UILabel *)self->_noonHourLabel setText:v12];
  v13 = [v3 dateByAddingComponents:v5 toDate:v10 options:0];
  v14 = [(NSDateFormatter *)self->_hourFormatter stringFromDate:v13];
  v15 = [(NLActivityRichComplicationChartView *)self _timeStringByRemovingSpacesFromTimeString:v14];

  [(UILabel *)self->_sixPMHourLabel setText:v15];
}

- (id)_timeStringByRemovingSpacesFromTimeString:(id)a3
{
  v3 = a3;
  v4 = +[NSLocale currentLocale];
  v5 = [v4 languageCode];
  if ([@"hi" isEqualToString:v5])
  {
    v6 = v3;
  }

  else
  {
    v6 = [v3 stringByReplacingOccurrencesOfString:@" " withString:&stru_108E8];
  }

  v7 = v6;

  return v7;
}

- (void)_currentLocaleChangeOccurred
{
  [(NLActivityRichComplicationChartView *)self _createHourFormatter];
  [(NLActivityRichComplicationChartView *)self _updateHourLabelsText];

  [(NLActivityRichComplicationChartView *)self setNeedsDisplay];
}

- (void)_registerForNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_currentLocaleChangeOccurred" name:NSCurrentLocaleDidChangeNotification object:0];
}

- (void)setMoveGraphData:(id)a3 activityMoveMode:(int64_t)a4
{
  if (a4 == 2)
  {
    v6 = a3;
    v7 = +[HKUnit minuteUnit];
  }

  else
  {
    v8 = a3;
    v9 = +[FIUIActivityDataModel formattingManager];
    v10 = [v9 unitManager];
    v7 = [v10 userActiveEnergyBurnedUnit];
  }

  v11 = [(NLActivityRichComplicationChartView *)self _generateChartPointsForQuantityStatisticsInfo:a3 withUnit:v7 accumulateFractionalValues:0];

  moveChartPoints = self->_moveChartPoints;
  self->_moveChartPoints = v11;

  v13 = [NSNumber numberWithInteger:0x8000000000000000];
  maxMoveValue = self->_maxMoveValue;
  self->_maxMoveValue = v13;

  v15 = [(NSDictionary *)self->_moveChartPoints allValues];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_38BC;
  v16[3] = &unk_10560;
  v16[4] = self;
  [v15 enumerateObjectsUsingBlock:v16];

  [(NLActivityRichComplicationChartView *)self setNeedsDisplay];
}

- (void)setExerciseGraphData:(id)a3
{
  v4 = a3;
  v5 = +[HKUnit minuteUnit];
  v6 = [(NLActivityRichComplicationChartView *)self _generateChartPointsForQuantityStatisticsInfo:v4 withUnit:v5 accumulateFractionalValues:1];

  exerciseChartPoints = self->_exerciseChartPoints;
  self->_exerciseChartPoints = v6;

  v8 = [NSNumber numberWithInteger:0x8000000000000000];
  maxExerciseValue = self->_maxExerciseValue;
  self->_maxExerciseValue = v8;

  v10 = [(NSDictionary *)self->_exerciseChartPoints allValues];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_3A50;
  v11[3] = &unk_10560;
  v11[4] = self;
  [v10 enumerateObjectsUsingBlock:v11];

  [(NLActivityRichComplicationChartView *)self setNeedsDisplay];
}

- (void)setStandGraphData:(id)a3
{
  v4 = [(NLActivityRichComplicationChartView *)self _generateStandChartPointsForStandHourInfo:a3];
  standChartPoints = self->_standChartPoints;
  self->_standChartPoints = v4;

  [(NLActivityRichComplicationChartView *)self setNeedsDisplay];
}

- (id)_keyForDate:(id)a3
{
  v3 = a3;
  v4 = +[NSCalendar currentCalendar];
  v5 = [v4 components:96 fromDate:v3];

  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 hour] + objc_msgSend(v5, "minute"));

  return v6;
}

- (id)_generateChartPointsForQuantityStatisticsInfo:(id)a3 withUnit:(id)a4 accumulateFractionalValues:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v40 = a4;
  v9 = +[NSMutableDictionary dictionary];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (!v11)
  {
    v13 = 0;
    v36 = v10;
    goto LABEL_28;
  }

  v12 = v11;
  v13 = 0;
  v14 = *v42;
  v15 = 0.0;
  obj = v10;
  do
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v42 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v41 + 1) + 8 * i);
      v18 = [v17 quantityValue];
      [v18 doubleValueForUnit:v40];
      v20 = v19;

      v21 = floor(v20);
      v22 = v15 + v20 - v21;
      if (!v5)
      {
        v22 = v15;
      }

      v23 = v22 >= 1.0;
      if (1.0 - v22 < 0.01)
      {
        v23 = 1;
      }

      v24 = v22 + -1.0;
      if (v22 + -1.0 < 0.0)
      {
        v24 = 0.0;
      }

      if (v23)
      {
        v25 = v21 + 1.0;
      }

      else
      {
        v25 = v21;
      }

      if (v23)
      {
        v15 = v24;
      }

      else
      {
        v15 = v22;
      }

      v26 = objc_alloc_init(NLActivityRichComplicationChartPoint);
      v27 = [v17 startDate];
      [(NLActivityRichComplicationChartPoint *)v26 setXValue:v27];

      v28 = [NSNumber numberWithDouble:v25];
      [(NLActivityRichComplicationChartPoint *)v26 setYValue:v28];

      v29 = [v17 startDate];
      v30 = [(NLActivityRichComplicationChartView *)self _keyForDate:v29];

      [v9 setObject:v26 forKeyedSubscript:v30];
      if (v25 > 0.0)
      {
        v31 = v26;

        v13 = v31;
      }
    }

    v10 = obj;
    v12 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  }

  while (v12);

  if (v15 > 0.7 && v5)
  {
    v33 = [(NLActivityRichComplicationChartPoint *)v13 yValue];
    [v33 doubleValue];
    v35 = v34;

    v36 = [NSNumber numberWithDouble:v35 + 1.0];
    [(NLActivityRichComplicationChartPoint *)v13 setYValue:v36];
LABEL_28:
  }

  v37 = [v9 copy];

  return v37;
}

- (id)_generateStandChartPointsForStandHourInfo:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = objc_alloc_init(NLActivityRichComplicationChartPoint);
        [v10 timeStamp];
        v12 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
        [(NLActivityRichComplicationChartPoint *)v11 setXValue:v12];
        if ([v10 state])
        {
          v13 = &off_110B0;
        }

        else
        {
          v13 = &off_110A0;
        }

        [(NLActivityRichComplicationChartPoint *)v11 setYValue:v13];
        v14 = [(NLActivityRichComplicationChartView *)self _keyForDate:v12];
        [v5 setObject:v11 forKeyedSubscript:v14];
      }

      v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v15 = [v5 copy];

  return v15;
}

- (void)layoutSubviews
{
  v36.receiver = self;
  v36.super_class = NLActivityRichComplicationChartView;
  v3 = [(NLActivityRichComplicationChartView *)&v36 layoutSubviews];
  sub_4EB4(v3, self->_device);
  v4 = *&qword_166A0;
  v33 = *&qword_166A8;
  v34 = *&xmmword_166B0;
  v5 = *&qword_16710;
  v35 = *&qword_16720;
  v6 = qword_166E8 - qword_166E8 / qword_166F0;
  v7 = qword_166E8 - 1;
  v8 = (qword_166E8 / qword_166F0);
  CLKRoundForDevice();
  v10 = v9;
  CLKRoundForDevice();
  v12 = v11 * v6 + v8 * v10;
  CLKRoundForDevice();
  v14 = v12 + v7 * v13;
  [(NLActivityRichComplicationChartView *)self bounds];
  self->_chartLineStartPositionX = (v15 - v14) * 0.5;
  self->_moveChartBottomLineY = v4;
  v16 = v33 + v4 + v5;
  self->_exerciseChartBottomLineY = v16;
  v17 = v34 + v5 + v16;
  self->_standChartBottomLineY = v17;
  sixAMHourLabel = self->_sixAMHourLabel;
  v37[0] = self->_midnightHourLabel;
  v37[1] = sixAMHourLabel;
  sixPMHourLabel = self->_sixPMHourLabel;
  v37[2] = self->_noonHourLabel;
  v37[3] = sixPMHourLabel;
  v20 = [NSArray arrayWithObjects:v37 count:4];
  v21 = +[NSMutableArray array];
  chartLineStartPositionX = self->_chartLineStartPositionX;
  v23 = [NSNumber numberWithDouble:chartLineStartPositionX];
  [v21 addObject:v23];

  if (v7)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = v20;
    do
    {
      if (!(v24 + 6 * (v26 / 6)) && v25 < [v20 count])
      {
        v28 = [v20 objectAtIndexedSubscript:v25];
        [v28 sizeToFit];
        [v28 bounds];
        [v28 setFrame:{v35 + chartLineStartPositionX, v5 + v17}];
        ++v25;
      }

      CLKRoundForDevice();
      chartLineStartPositionX = v29;
      v30 = [NSNumber numberWithDouble:?];
      [v21 addObject:v30];

      ++v26;
      --v24;
      --v7;
      v20 = v27;
    }

    while (v7);
  }

  v31 = [v21 copy];
  chartLineXPositions = self->_chartLineXPositions;
  self->_chartLineXPositions = v31;

  [(NLActivityRichComplicationChartView *)self setNeedsDisplay];
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  v9 = +[UIColor clearColor];
  [v9 setFill];

  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  UIRectFill(v35);
  sub_4EB4(v10, self->_device);
  v24 = *&qword_166C0;
  v25 = xmmword_166D0;
  v26 = *&qword_166E0;
  v21 = xmmword_16690;
  v22 = *&qword_166A0;
  v27 = qword_166F0;
  v23 = xmmword_166B0;
  v30 = *&qword_16718;
  v31 = qword_16728;
  v18 = *&qword_166F8;
  v19 = *&qword_16708;
  v11 = [(NSArray *)self->_chartLineXPositions lastObject];
  [v11 floatValue];
  v13 = v12 - self->_chartLineStartPositionX;

  [(NLActivityRichComplicationChartView *)self bounds];
  v15 = v14;
  [(UIColor *)self->_chartLineColor setFill];
  chartLineStartPositionX = self->_chartLineStartPositionX;
  v36.origin.y = self->_moveChartBottomLineY;
  v36.origin.x = chartLineStartPositionX;
  v36.size.width = v13;
  *&v36.size.height = v19.i64[1];
  UIRectFill(v36);
  v37.origin.y = self->_exerciseChartBottomLineY;
  v37.origin.x = chartLineStartPositionX;
  v37.size.width = v13;
  *&v37.size.height = v19.i64[1];
  UIRectFill(v37);
  v38.origin.y = self->_standChartBottomLineY;
  v38.origin.x = chartLineStartPositionX;
  v38.size.width = v13;
  *&v38.size.height = v19.i64[1];
  UIRectFill(v38);
  chartLineXPositions = self->_chartLineXPositions;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_45D4;
  v20[3] = &unk_10588;
  v29 = v19;
  v28 = v18;
  v32 = v15;
  v33 = vzip1q_s64(v18, v19);
  v20[4] = self;
  v34 = CurrentContext;
  [(NSArray *)chartLineXPositions enumerateObjectsUsingBlock:v20];
}

- (void)_drawChartsBarsInContext:(CGContext *)a3 lineNumber:(unint64_t)a4 xPosition:(double)a5
{
  sub_4EB4(self, self->_device);
  v9 = xmmword_16690;
  v10 = xmmword_166B0;
  v11 = *&qword_166C8;
  v12 = *&qword_166E0;
  v13 = *&qword_16710;
  obj = a5;
  rect = *&qword_166A0;
  v14 = *&qword_166A8 + *&qword_166A0 + *&qword_16710;
  CLKRoundForDevice();
  v16 = v15;
  v54 = [NSNumber numberWithUnsignedInteger:a4];
  v17 = [(NSDictionary *)self->_standChartPoints objectForKeyedSubscript:?];
  v18 = v17;
  if (v17)
  {
    *&v57 = v14;
    v19 = *&v10 + v13 + v14 - *&v9;
    v20 = [v17 yValue];
    v21 = [v20 integerValue];

    Mutable = CGPathCreateMutable();
    v74.origin.x = *(&v9 + 1) + obj;
    v74.size.height = -v12;
    v74.origin.y = v19;
    v74.size.width = v12;
    CGPathAddRoundedRect(Mutable, 0, v74, v12 * 0.5, v12 * 0.5);
    CGContextSaveGState(a3);
    if (!v21)
    {
      CGContextSetAlpha(a3, 0.3);
    }

    CGContextAddPath(a3, Mutable);
    CGContextClip(a3);
    v68.x = 1.0;
    v68.y = 0.0;
    v71.x = 1.0;
    v71.y = v19;
    CGContextDrawLinearGradient(a3, self->_standBarGradient, v68, v71, 0);
    CGContextRestoreGState(a3);
    CGPathRelease(Mutable);
    v14 = *&v57;
  }

  v53 = v18;
  c = a3;
  path = CGPathCreateMutable();
  v23 = CGPathCreateMutable();
  v58 = CGPathCreateMutable();
  v24 = CGPathCreateMutable();
  v25 = [NSNumber numberWithUnsignedInteger:a4];
  [NSNumber numberWithUnsignedInteger:a4 + 30];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v51 = v65 = 0u;
  v52 = v25;
  v66[0] = v25;
  v66[1] = v51;
  obja = [NSArray arrayWithObjects:v66 count:2];
  v26 = [obja countByEnumeratingWithState:&v62 objects:v67 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v63;
    do
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v63 != v28)
        {
          objc_enumerationMutation(obja);
        }

        v30 = *(*(&v62 + 1) + 8 * i);
        v31 = [(NSDictionary *)self->_moveChartPoints objectForKeyedSubscript:v30];
        v32 = [v31 yValue];
        [v32 doubleValue];
        v34 = v33;

        v35 = -v11;
        v36 = v23;
        if (v34 > 0.0)
        {
          [(NLActivityRichComplicationChartView *)self _movePointRelativeHeightForValue:v34];
          if (v37 == 0.0)
          {
            v37 = v11;
          }

          v35 = -v37;
          v36 = path;
        }

        v38 = v16;
        v39 = rect - *&v9;
        v40 = *(&v10 + 1);
        CGPathAddRoundedRect(v36, 0, *(&v35 - 3), *(&v10 + 1) * 0.5, *(&v10 + 1) * 0.5);
        v41 = [(NSDictionary *)self->_exerciseChartPoints objectForKeyedSubscript:v30];
        v42 = [v41 yValue];
        [v42 doubleValue];
        v44 = v43;

        v45 = -v11;
        v46 = v24;
        if (v44 > 0.0)
        {
          [(NLActivityRichComplicationChartView *)self _exercisePointRelativeHeightForValue:v44];
          if (v47 == 0.0)
          {
            v47 = v11;
          }

          v45 = -v47;
          v46 = v58;
        }

        v48 = v16;
        v49 = v14 - *&v9;
        v50 = *(&v10 + 1);
        CGPathAddRoundedRect(v46, 0, *(&v45 - 3), *(&v10 + 1) * 0.5, *(&v10 + 1) * 0.5);
        v16 = *(&v9 + 1) + *(&v10 + 1) + v16;
      }

      v27 = [obja countByEnumeratingWithState:&v62 objects:v67 count:16];
    }

    while (v27);
  }

  if (!CGPathIsEmpty(v23))
  {
    CGContextSaveGState(c);
    CGContextAddPath(c, v23);
    CGContextSetFillColorWithColor(c, [(UIColor *)self->_moveBarFadedColor CGColor]);
    CGContextFillPath(c);
    CGContextRestoreGState(c);
  }

  CGPathRelease(v23);
  if (!CGPathIsEmpty(path))
  {
    CGContextSaveGState(c);
    CGContextAddPath(c, path);
    CGContextClip(c);
    v69.x = 1.0;
    v69.y = 0.0;
    v72.x = 1.0;
    v72.y = rect - *&v9;
    CGContextDrawLinearGradient(c, self->_moveBarGradient, v69, v72, 0);
    CGContextRestoreGState(c);
  }

  CGPathRelease(path);
  if (!CGPathIsEmpty(v24))
  {
    CGContextSaveGState(c);
    CGContextAddPath(c, v24);
    CGContextSetFillColorWithColor(c, [(UIColor *)self->_exerciseBarFadedColor CGColor]);
    CGContextFillPath(c);
    CGContextRestoreGState(c);
  }

  CGPathRelease(v24);
  if (!CGPathIsEmpty(v58))
  {
    CGContextSaveGState(c);
    CGContextAddPath(c, v58);
    CGContextClip(c);
    v70.x = 1.0;
    v70.y = 0.0;
    v73.x = 1.0;
    v73.y = v14 - *&v9;
    CGContextDrawLinearGradient(c, self->_exerciseBarGradient, v70, v73, 0);
    CGContextRestoreGState(c);
  }

  CGPathRelease(v58);
}

- (double)_movePointRelativeHeightForValue:(double)a3
{
  sub_4EB4(self, self->_device);
  v5 = *&qword_166C0;
  v6 = *&xmmword_166D0;
  [(NSNumber *)self->_maxMoveValue doubleValue];
  v8 = v7;
  result = 0.0;
  if (v8 > 0.00000011920929)
  {
    result = v6 * (a3 / v8);
    if (result < v5)
    {
      return v5;
    }
  }

  return result;
}

- (double)_exercisePointRelativeHeightForValue:(double)a3
{
  sub_4EB4(self, self->_device);
  v5 = *&qword_166C0;
  v6 = *(&xmmword_166D0 + 1);
  [(NSNumber *)self->_maxExerciseValue doubleValue];
  v8 = v7;
  result = 0.0;
  if (v8 > 0.00000011920929)
  {
    result = v6 * (a3 / v8);
    if (result < v5)
    {
      return v5;
    }
  }

  return result;
}

@end