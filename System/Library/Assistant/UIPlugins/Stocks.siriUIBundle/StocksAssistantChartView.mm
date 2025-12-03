@interface StocksAssistantChartView
+ (CGGradient)LineBackgroundGradient;
- (StocksAssistantChartView)initWithFrame:(CGRect)frame;
- (void)_prepareXAxisLabelsAndPositions;
- (void)_prepareXAxisLabelsForLabelInfoArray:(id)array;
- (void)_prepareYAxisLabelsAndPositions;
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)setChartData:(id)data;
- (void)setFrame:(CGRect)frame;
- (void)stockGraphViewReadyForDisplay:(id)display;
@end

@implementation StocksAssistantChartView

+ (CGGradient)LineBackgroundGradient
{
  result = qword_11BE8;
  if (!qword_11BE8)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v4 = [UIColor colorWithWhite:0.08 alpha:0.2];
    cGColor = [v4 CGColor];
    v6 = [UIColor colorWithWhite:0.08 alpha:0.5];
    v7 = +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", cGColor, [v6 CGColor], 0);

    qword_11BE8 = CGGradientCreateWithColors(DeviceRGB, v7, 0);
    CGColorSpaceRelease(DeviceRGB);
    return qword_11BE8;
  }

  return result;
}

- (StocksAssistantChartView)initWithFrame:(CGRect)frame
{
  v20.receiver = self;
  v20.super_class = StocksAssistantChartView;
  v3 = [(StocksAssistantChartView *)&v20 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[StockGraphView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    graph = v3->_graph;
    v3->_graph = v4;

    [(StockGraphView *)v3->_graph setChartViewDelegate:v3];
    v6 = +[StockChartDisplayMode defaultDisplayMode];
    displayMode = v3->_displayMode;
    v3->_displayMode = v6;

    v8 = +[UIColor systemMidGrayColor];
    [(StockChartDisplayMode *)v3->_displayMode setLineColor:v8];

    v9 = +[UIColor blackColor];
    [(StockChartDisplayMode *)v3->_displayMode setAxisLabelsColor:v9];

    v10 = +[UIColor systemGrayColor];
    [(StockChartDisplayMode *)v3->_displayMode setXAxisKeylineColor:v10];

    v11 = [UIColor colorWithWhite:0.5 alpha:1.0];
    [(StockChartDisplayMode *)v3->_displayMode setBackgroundLinesColor:v11];

    [(StockChartDisplayMode *)v3->_displayMode setLineWidth:1.0];
    [(StockChartDisplayMode *)v3->_displayMode setShowsVolume:0];
    -[StockChartDisplayMode setBackgroundGradient:](v3->_displayMode, "setBackgroundGradient:", [objc_opt_class() LineBackgroundGradient]);
    [(StockGraphView *)v3->_graph setDisplayMode:v3->_displayMode];
    [(StocksAssistantChartView *)v3 addSubview:v3->_graph];
    v12 = objc_alloc_init(NSMutableArray);
    xAxisLabels = v3->_xAxisLabels;
    v3->_xAxisLabels = v12;

    v14 = objc_alloc_init(NSMutableArray);
    yAxisLabels = v3->_yAxisLabels;
    v3->_yAxisLabels = v14;

    v16 = objc_alloc_init(ChartLabelInfoManager);
    labelInfoManager = v3->_labelInfoManager;
    v3->_labelInfoManager = v16;

    v18 = +[UIColor clearColor];
    [(StocksAssistantChartView *)v3 setBackgroundColor:v18];
  }

  return v3;
}

- (void)dealloc
{
  +[GraphRenderer clearSharedRenderer];
  v3.receiver = self;
  v3.super_class = StocksAssistantChartView;
  [(StocksAssistantChartView *)&v3 dealloc];
}

- (void)stockGraphViewReadyForDisplay:(id)display
{
  xAxisLabels = self->_xAxisLabels;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_39C8;
  v7[3] = &unk_C3E0;
  v7[4] = self;
  [(NSMutableArray *)xAxisLabels enumerateObjectsUsingBlock:v7];
  yAxisLabels = self->_yAxisLabels;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_39D4;
  v6[3] = &unk_C3E0;
  v6[4] = self;
  [(NSMutableArray *)yAxisLabels enumerateObjectsUsingBlock:v6];
  [(StockGraphView *)self->_graph setNeedsDisplay];
  [(StocksAssistantChartView *)self setNeedsDisplay];
  [(StocksAssistantChartView *)self setNeedsLayout];
}

- (void)setChartData:(id)data
{
  dataCopy = data;
  if (self->_chartData != dataCopy)
  {
    objc_storeStrong(&self->_chartData, data);
    if (self->_chartData)
    {
      [(StockGraphView *)self->_graph loadStockChartData:dataCopy];
      [(StockGraphView *)self->_graph bounds];
      if (v5 != CGSizeZero.width || v6 != CGSizeZero.height)
      {
        [(StockGraphView *)self->_graph recomputePathsAndRenderIfNeededForSize:v5, v6];
        [(StocksAssistantChartView *)self _prepareXAxisLabelsAndPositions];
        [(StocksAssistantChartView *)self _prepareYAxisLabelsAndPositions];
      }
    }
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(StocksAssistantChartView *)self frame];
  v23.origin.x = v8;
  v23.origin.y = v9;
  v23.size.width = v10;
  v23.size.height = v11;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  if (!CGRectEqualToRect(v22, v23))
  {
    v12 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v12 userInterfaceIdiom];

    if (userInterfaceIdiom == &dword_0 + 1)
    {
      RoundToPixel();
      v15 = v14;
      v16 = 49.0;
    }

    else
    {
      v15 = 80.0;
      v16 = 40.0;
    }

    [(StockGraphView *)self->_graph setFrame:0.0, 0.0, width - v16, v15];
    chartData = self->_chartData;
    if (chartData)
    {
      [(StockChartData *)chartData clearAllImageSets];
      graph = self->_graph;
      [(StockGraphView *)graph bounds];
      [(StockGraphView *)graph recomputePathsAndRenderIfNeededForSize:v19, v20];
      [(StocksAssistantChartView *)self _prepareXAxisLabelsAndPositions];
      [(StocksAssistantChartView *)self _prepareYAxisLabelsAndPositions];
    }
  }

  v21.receiver = self;
  v21.super_class = StocksAssistantChartView;
  [(StocksAssistantChartView *)&v21 setFrame:x, y, width, height];
}

- (void)layoutSubviews
{
  if (self->_chartData && [(StockGraphView *)self->_graph isRendered])
  {
    v43 = [(StockChartData *)self->_chartData xAxisLabelInfoArrayForMode:self->_displayMode];
    v3 = [(StockChartData *)self->_chartData yAxisLabelInfoArrayForMode:self->_displayMode];
    v4 = +[UIDevice currentDevice];
    [v4 userInterfaceIdiom];

    v5 = [v43 count];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NSMutableArray *)self->_xAxisLabels objectAtIndex:i];
        v9 = [v43 objectAtIndex:i];
        [(StockGraphView *)self->_graph frame];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;
        [v8 frame];
        v19 = v18;
        v21 = v20;
        [v9 position];
        v23 = v22;
        [(StockGraphView *)self->_graph frame];
        v25 = round(v19 * -0.5 + v23 * v24);
        v45.origin.x = v11;
        v45.origin.y = v13;
        v45.size.width = v15;
        v45.size.height = v17;
        CGRectGetMaxY(v45);
        font = [v8 font];
        [font ascender];
        RoundToPixel();
        v28 = v27;

        [v8 setFrame:{v25, v28, v19, v21}];
      }
    }

    v29 = [v3 count];
    if (v29)
    {
      v30 = v29;
      for (j = 0; j != v30; ++j)
      {
        v32 = [(NSMutableArray *)self->_yAxisLabels objectAtIndex:j];
        v33 = [v3 objectAtIndex:j];
        [v32 frame];
        v35 = v34;
        v37 = fmin(v36, 35.5);
        [(StocksAssistantChartView *)self bounds];
        v38 = CGRectGetMaxX(v46) - v37;
        [v33 position];
        v40 = 1.0 - v39;
        [(StockGraphView *)self->_graph frame];
        v42 = v40 * (v41 - v35 + -5.0) + 2.0;
        [v32 setFrame:{v38, floorf(v42), v37, v35}];
      }
    }
  }
}

- (void)_prepareXAxisLabelsForLabelInfoArray:(id)array
{
  arrayCopy = array;
  [(NSMutableArray *)self->_xAxisLabels enumerateObjectsUsingBlock:&stru_C420];
  [(NSMutableArray *)self->_xAxisLabels removeAllObjects];
  v4 = [arrayCopy count];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    do
    {
      v10 = [arrayCopy objectAtIndex:v6];
      v11 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
      string = [v10 string];
      [v11 setText:string];

      [v11 setTextAlignment:2];
      v13 = +[UIColor blackColor];
      [v11 setTextColor:v13];

      v14 = [UIFont systemFontOfSize:12.0];
      [v11 setFont:v14];

      v15 = +[UIColor clearColor];
      [v11 setBackgroundColor:v15];

      [v11 sizeToFit];
      [(NSMutableArray *)self->_xAxisLabels addObject:v11];

      ++v6;
    }

    while (v5 != v6);
  }
}

- (void)_prepareXAxisLabelsAndPositions
{
  v3 = +[NSCalendar currentCalendar];
  j = [v3 copy];

  marketTimeZone = [(StockChartData *)self->_chartData marketTimeZone];
  [j setTimeZone:marketTimeZone];

  marketOpenDate = [(StockChartData *)self->_chartData marketOpenDate];
  marketCloseDate = [(StockChartData *)self->_chartData marketCloseDate];
  v8 = [j components:96 fromDate:marketOpenDate toDate:marketCloseDate options:0];

  marketOpenDate2 = [(StockChartData *)self->_chartData marketOpenDate];
  v10 = [j components:96 fromDate:marketOpenDate2];

  marketCloseDate2 = [(StockChartData *)self->_chartData marketCloseDate];
  v12 = [j components:96 fromDate:marketCloseDate2];

  minute = [v10 minute];
  if (minute)
  {
    v14 = 1.0 - (minute / 60.0);
  }

  else
  {
    v14 = 0.0;
  }

  v15 = [v12 minute] / 60.0;
  v16 = ceilf(v14);
  v17 = (v16 + [v8 hour]) - ((v15 + v14) >= 1.0);
  if (v17 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = v17;
  }

  *&v18 = v15 + v14;
  v20 = [NSMutableArray arrayWithCapacity:v19, v18];
  if ((v17 - 25) > 0xFFFFFFFFFFFFFFE7)
  {
    v48 = v10;
    v49 = v8;
    v50 = j;
    hour = [v12 hour];
    v23 = -hour;
    v47 = v17;
    v24 = v17;
    do
    {
      v25 = v20;
      v26 = (hour & ~(hour >> 63)) + v23;
      v27 = v26 != 0;
      v28 = ((v26 - v27) * 0xAAAAAAAAAAAAAAABLL) >> 64;
      v29 = (v26 - v27) / 0x18uLL;
      if ((hour & ~(hour >> 63)) + v23)
      {
        v30 = v29 + 1;
      }

      else
      {
        v30 = v28 >> 4;
      }

      if (([(ChartLabelInfoManager *)self->_labelInfoManager use24hrTime]& 1) != 0)
      {
        v31 = hour + 24 * v30;
      }

      else if (hour + 24 * (v27 + (v28 >> 4)) - 12 * ((hour + 24 * (v27 + (v28 >> 4))) / 0xC))
      {
        v31 = hour + 24 * (v27 + (v28 >> 4)) - 12 * ((hour + 24 * (v27 + (v28 >> 4))) / 0xC);
      }

      else
      {
        v31 = 12;
      }

      v32 = [(ChartLabelInfoManager *)self->_labelInfoManager labelInfoWithUnsignedInteger:v31];
      v33 = [v32 copy];
      v20 = v25;
      [v25 addObject:v33];

      --hour;
      ++v23;
      --v24;
    }

    while (v24);
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v34 = v25;
    v35 = [v34 countByEnumeratingWithState:&v51 objects:v55 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = 1.0 / (v15 + (v14 + (v47 - v16)));
      v38 = 1.0 - (v37 * v15);
      v39 = *v52;
      do
      {
        for (i = 0; i != v36; i = i + 1)
        {
          if (*v52 != v39)
          {
            objc_enumerationMutation(v34);
          }

          [*(*(&v51 + 1) + 8 * i) setPosition:v38];
          v38 = v38 - v37;
        }

        v36 = [v34 countByEnumeratingWithState:&v51 objects:v55 count:16];
      }

      while (v36);
    }

    if (v47 < 13)
    {
      integerValue = 0;
      j = v50;
    }

    else
    {
      v41 = objc_alloc_init(NSMutableIndexSet);
      v42 = [v34 objectAtIndex:0];
      string = [v42 string];
      integerValue = [string integerValue];
      v45 = (integerValue & 1) == 0;

      for (j = v50; [v34 count] > v45; v45 += 2)
      {
        [v41 addIndex:v45];
      }

      [v34 removeObjectsAtIndexes:v41];
    }

    if (v15 > 0.0 || (integerValue & 1) != 0)
    {
      labelInfoForYAxis = [(ChartLabelInfoManager *)self->_labelInfoManager labelInfoForYAxis];
      [v34 insertObject:labelInfoForYAxis atIndex:0];
    }

    [(StocksAssistantChartView *)self _prepareXAxisLabelsForLabelInfoArray:v34];
    [(StockChartData *)self->_chartData setXAxisLabelInfoArray:v34 forDisplayMode:self->_displayMode];
    v10 = v48;
    v8 = v49;
  }

  else
  {
    labelInfoForYAxis2 = [(ChartLabelInfoManager *)self->_labelInfoManager labelInfoForYAxis];
    [v20 addObject:labelInfoForYAxis2];

    [(StocksAssistantChartView *)self _prepareXAxisLabelsForLabelInfoArray:v20];
    [(StockChartData *)self->_chartData setXAxisLabelInfoArray:v20 forDisplayMode:self->_displayMode];
  }
}

- (void)_prepareYAxisLabelsAndPositions
{
  v3 = *([(StockChartData *)self->_chartData minValue]+ 1);
  v4 = *([(StockChartData *)self->_chartData maxValue]+ 1);
  v5 = v4 - v3;
  v6 = (v4 - v3) * 0.5;
  v8 = v6 >= 2.0 && v4 >= 100.0;
  v10 = [NSMutableArray arrayWithCapacity:3];
  v11 = 0;
  v12 = 0;
  v13 = 0;
  if (v6 >= 0.0199999996)
  {
    v14 = 2;
  }

  else
  {
    v14 = 3;
  }

  do
  {
    v15 = v3 + (v5 * vcvts_n_f32_u32(v13, 1uLL));
    if (v8)
    {
      LODWORD(v9) = llroundf(v15);
      v16 = [NSNumber numberWithInt:v9];
      v17 = 0;
    }

    else
    {
      pricePrecision = [(Stock *)self->_stock pricePrecision];
      if (v14 <= pricePrecision)
      {
        v20 = pricePrecision;
      }

      else
      {
        v20 = v14;
      }

      v17 = v20;
      *&v19 = v15;
      v16 = [NSNumber numberWithFloat:v19];
    }

    v37 = objc_alloc_init(ChartLabelInfo);
    [v37 setPosition:((v15 - v3) / v5)];
    v21 = +[StockDataFormatter sharedDataFormatter];
    v22 = [v21 formattedNumber:v16 withPrecision:v17 useGroupSeparator:0];
    [v37 setString:v22];

    [v10 addObject:v37];
    v11 = v37;
    ++v13;
    v12 = v16;
  }

  while (v13 != 3);
  [(NSMutableArray *)self->_yAxisLabels enumerateObjectsUsingBlock:&stru_C440];
  [(NSMutableArray *)self->_yAxisLabels removeAllObjects];
  v23 = [v10 count];
  if (v23)
  {
    v24 = v23;
    v25 = 0;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    do
    {
      v29 = [v10 objectAtIndex:v25];
      v30 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
      string = [v29 string];
      [v30 setText:string];

      [v30 setTextAlignment:1];
      v32 = +[UIColor blackColor];
      [v30 setTextColor:v32];

      v33 = [UIFont systemFontOfSize:12.0];
      [v30 setFont:v33];

      v34 = +[UIColor clearColor];
      [v30 setBackgroundColor:v34];

      [v30 setAdjustsFontSizeToFitWidth:1];
      [v30 setBaselineAdjustment:1];
      font = [v30 font];
      [font pointSize];
      [v30 setMinimumScaleFactor:8.0 / v36];

      [v30 sizeToFit];
      [(NSMutableArray *)self->_yAxisLabels addObject:v30];

      ++v25;
    }

    while (v24 != v25);
  }

  [(StockChartData *)self->_chartData setYAxisLabelInfoArray:v10 forDisplayMode:self->_displayMode];
}

- (void)drawRect:(CGRect)rect
{
  if (self->_chartData)
  {
    width = rect.size.width;
    if ([(StockGraphView *)self->_graph isRendered:rect.origin.x])
    {
      v5 = [(StockChartData *)self->_chartData xAxisLabelInfoArrayForMode:self->_displayMode];
      RoundToPixel();
      v7 = v6;
      RoundToPixel();
      v9 = v8 * 0.5;
      CurrentContext = UIGraphicsGetCurrentContext();
      v11 = +[UIColor siriui_keylineColor];
      CGContextSetStrokeColorWithColor(CurrentContext, [v11 CGColor]);

      CGContextSetLineWidth(CurrentContext, v7);
      CGContextSetLineJoin(CurrentContext, kCGLineJoinMiter);
      CGContextSetLineCap(CurrentContext, kCGLineCapSquare);
      [(StockGraphView *)self->_graph frame];
      v12 = v9 + CGRectGetMaxY(v27);
      CGContextBeginPath(CurrentContext);
      CGContextMoveToPoint(CurrentContext, 0.0, v12);
      CGContextAddLineToPoint(CurrentContext, width, v12);
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v13 = v5;
      v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v23;
        do
        {
          v17 = 0;
          do
          {
            if (*v23 != v16)
            {
              objc_enumerationMutation(v13);
            }

            [*(*(&v22 + 1) + 8 * v17) position];
            v19 = v18;
            [(StockGraphView *)self->_graph frame];
            v21 = v9 + v19 * v20;
            CGContextMoveToPoint(CurrentContext, v21, 0.0);
            CGContextAddLineToPoint(CurrentContext, v21, v12);
            v17 = v17 + 1;
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v15);
      }

      CGContextStrokePath(CurrentContext);
    }
  }
}

@end