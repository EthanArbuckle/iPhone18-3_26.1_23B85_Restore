@interface PLBatteryUIMoveableGraphView
- (CGSize)displaySize;
- (PLBatteryUIMoveableGraphView)init;
- (PLBatteryUIMoveableGraphView)initWithFrame:(CGRect)a3;
- (double)setGridRange:(double)a3;
- (void)drawDayLines:(CGContext *)a3 andRect:(CGRect)a4;
- (void)drawErrorText:(CGContext *)a3 andRect:(CGRect)a4;
- (void)drawFill:(CGContext *)a3 andRect:(CGRect)a4;
- (void)drawGrid:(CGContext *)a3 andRect:(CGRect)a4;
- (void)drawLine:(CGContext *)a3 andRect:(CGRect)a4;
- (void)drawRect:(CGRect)a3;
- (void)initGraphAttributes;
- (void)setDefaultRange;
- (void)setDisplayRange:(double)a3;
- (void)setFrame:(CGRect)a3;
- (void)setInputData:(id)a3;
- (void)setLabelColor:(id)a3;
- (void)setRangesFromArray:(id)a3;
@end

@implementation PLBatteryUIMoveableGraphView

- (void)initGraphAttributes
{
  [(PLBatteryUIMoveableGraphView *)self setInputData:0];
  [(PLBatteryUIMoveableGraphView *)self setDefaultRange];
  self->_displayRange = 86400.0;
  __asm { FMOV            V0.2D, #-1.0 }

  self->_displaySize = _Q0;
  self->horizontal_label_offset = 0.0;
  self->vertical_label_offset = 15.0;
  self->_MaxDataRange = -1.0;
  v8 = +[UIColor whiteColor];
  lineColor = self->_lineColor;
  self->_lineColor = v8;

  v10 = +[UIColor grayColor];
  gridColor = self->_gridColor;
  self->_gridColor = v10;

  v12 = +[UIColor grayColor];
  labelColor = self->_labelColor;
  self->_labelColor = v12;

  v14 = +[UIColor blackColor];
  graphBackgroundColor = self->_graphBackgroundColor;
  self->_graphBackgroundColor = v14;

  v21 = [UIFont systemFontOfSize:10.0];
  v16 = +[NSMutableDictionary dictionary];
  defaultTextAttributes = self->defaultTextAttributes;
  self->defaultTextAttributes = v16;

  [(NSMutableDictionary *)self->defaultTextAttributes setObject:v21 forKeyedSubscript:NSFontAttributeName];
  v18 = [(PLBatteryUIMoveableGraphView *)self labelColor];
  [(NSMutableDictionary *)self->defaultTextAttributes setObject:v18 forKeyedSubscript:NSForegroundColorAttributeName];

  v19 = +[NSMutableArray array];
  dateChangeArray = self->_dateChangeArray;
  self->_dateChangeArray = v19;
}

- (void)setLabelColor:(id)a3
{
  v4 = [a3 copy];
  labelColor = self->_labelColor;
  self->_labelColor = v4;

  v6 = self->_labelColor;
  defaultTextAttributes = self->defaultTextAttributes;

  [(NSMutableDictionary *)defaultTextAttributes setObject:v6 forKeyedSubscript:NSForegroundColorAttributeName];
}

- (PLBatteryUIMoveableGraphView)init
{
  v5.receiver = self;
  v5.super_class = PLBatteryUIMoveableGraphView;
  v2 = [(PLBatteryUIMoveableGraphView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PLBatteryUIMoveableGraphView *)v2 initGraphAttributes];
  }

  return v3;
}

- (PLBatteryUIMoveableGraphView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v8.receiver = self;
  v8.super_class = PLBatteryUIMoveableGraphView;
  v5 = [(PLBatteryUIMoveableGraphView *)&v8 initWithFrame:a3.origin.x, a3.origin.y];
  v6 = v5;
  if (v5)
  {
    [(PLBatteryUIMoveableGraphView *)v5 initGraphAttributes];
    v6->_displaySize.width = width;
    v6->_displaySize.height = height;
  }

  return v6;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v7.receiver = self;
  v7.super_class = PLBatteryUIMoveableGraphView;
  [(PLBatteryUIMoveableGraphView *)&v7 setFrame:a3.origin.x, a3.origin.y];
  [(PLBatteryUIMoveableGraphView *)self displaySize];
  if (v6 == -1.0)
  {
    [(PLBatteryUIMoveableGraphView *)self setDisplaySize:width, height];
  }
}

- (void)setDefaultRange
{
  self->minPower = 0.0;
  self->maxPower = 100.0;
  v3 = +[NSDate date];
  endDate = self->_endDate;
  self->_endDate = v3;

  v5 = [(NSDate *)self->_endDate dateByAddingTimeInterval:-86400.0];
  startDate = self->_startDate;
  self->_startDate = v5;

  _objc_release_x1();
}

- (void)setDisplayRange:(double)a3
{
  v3 = a3;
  if (a3 >= 3600.0)
  {
    v5 = [(PLBatteryUIMoveableGraphView *)self endDate];
    v6 = [(PLBatteryUIMoveableGraphView *)self startDate];
    [v5 timeIntervalSinceDate:v6];
    v8 = v7;

    if (v8 < v3)
    {
      v9 = [(PLBatteryUIMoveableGraphView *)self endDate];
      v10 = [(PLBatteryUIMoveableGraphView *)self startDate];
      [v9 timeIntervalSinceDate:v10];
      v3 = v11;
    }

    displayRange = self->_displayRange;
    if (v3 != displayRange)
    {
      v13 = displayRange / v3;
      [(PLBatteryUIMoveableGraphView *)self frame];
      v15 = v14 * v13;
      v16 = v15;
      [(PLBatteryUIMoveableGraphView *)self displaySize];
      if (v17 <= v16)
      {
        [(PLBatteryUIMoveableGraphView *)self frame];
        v19 = v18;
        [(PLBatteryUIMoveableGraphView *)self frame];
        v21 = v20;
        [(PLBatteryUIMoveableGraphView *)self frame];
        [(PLBatteryUIMoveableGraphView *)self setFrame:v19, v21, v16];
        self->_displayRange = v3;

        [(PLBatteryUIMoveableGraphView *)self setNeedsDisplay];
      }
    }
  }
}

- (void)setRangesFromArray:(id)a3
{
  v4 = a3;
  p_startDate = &self->_startDate;
  startDate = self->_startDate;
  self->_startDate = 0;

  p_endDate = &self->_endDate;
  endDate = self->_endDate;
  self->_endDate = 0;

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v35;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v34 + 1) + 8 * i) objectAtIndexedSubscript:{0, v34}];
        if (!*p_startDate)
        {
          objc_storeStrong(&self->_startDate, v14);
        }

        if (!*p_endDate)
        {
          objc_storeStrong(&self->_endDate, v14);
        }

        [v14 timeIntervalSinceDate:*p_startDate];
        v15 = &self->_startDate;
        if (v16 < 0.0 || ([v14 timeIntervalSinceDate:*p_endDate], v15 = &self->_endDate, v17 > 0.0))
        {
          objc_storeStrong(v15, v14);
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v11);
  }

  [(NSDate *)*p_endDate timeIntervalSinceDate:*p_startDate];
  if (v18 == 0.0)
  {
    v19 = [NSDate dateWithTimeInterval:*p_startDate sinceDate:-3600.0];
    v20 = *p_startDate;
    *p_startDate = v19;

    v21 = [NSDate dateWithTimeInterval:*p_endDate sinceDate:3600.0];
    v22 = *p_endDate;
    *p_endDate = v21;
  }

  [(NSDate *)*p_endDate timeIntervalSinceDate:*p_startDate, v34];
  v24 = v23;
  [(PLBatteryUIMoveableGraphView *)self displayRange];
  v26 = v24 / v25;
  if (v26 <= 1.0)
  {
    [(NSDate *)*p_endDate timeIntervalSinceDate:*p_startDate];
    self->_displayRange = v33;
  }

  else
  {
    [(PLBatteryUIMoveableGraphView *)self frame];
    v28 = v27;
    [(PLBatteryUIMoveableGraphView *)self frame];
    v30 = v29;
    [(PLBatteryUIMoveableGraphView *)self frame];
    v32 = v31 * v26;
    [(PLBatteryUIMoveableGraphView *)self frame];
    [(PLBatteryUIMoveableGraphView *)self setFrame:v28, v30, v32];
  }

  [(PLBatteryUIMoveableGraphView *)self setNeedsDisplay];
}

- (void)setInputData:(id)a3
{
  self->_errValue = 0;
  v4 = [a3 mutableCopy];
  inputData = self->_inputData;
  self->_inputData = v4;

  v6 = self->_inputData;
  if (v6 && [(NSMutableArray *)v6 count]> 1)
  {
    [(NSMutableArray *)self->_inputData sortUsingComparator:&stru_1653C8];
    if (self->_MaxDataRange != -1.0)
    {
      v7 = [(NSMutableArray *)self->_inputData mutableCopy];
      v8 = [(NSMutableArray *)self->_inputData lastObject];
      v9 = [v8 objectAtIndexedSubscript:0];
      v10 = [v9 dateByAddingTimeInterval:-self->_MaxDataRange];
      if ([(NSMutableArray *)self->_inputData count])
      {
        v11 = 0;
        while (1)
        {
          v12 = [(NSMutableArray *)self->_inputData objectAtIndexedSubscript:v11];
          v13 = [v12 objectAtIndexedSubscript:0];
          [v10 timeIntervalSinceDate:v13];
          v15 = v14;

          if (v15 <= 0.0)
          {
            break;
          }

          [(NSMutableArray *)v7 removeObjectAtIndex:0];

          if ([(NSMutableArray *)self->_inputData count]<= ++v11)
          {
            goto LABEL_11;
          }
        }
      }

LABEL_11:
      v16 = self->_inputData;
      self->_inputData = v7;
    }

    v17 = self->_inputData;

    [(PLBatteryUIMoveableGraphView *)self setRangesFromArray:v17];
  }

  else
  {
    self->_errValue = 2;
  }
}

- (double)setGridRange:(double)a3
{
  if (a3 >= 259200.0)
  {
    return 43200.0;
  }

  if (a3 >= 86400.0)
  {
    return 14400.0;
  }

  if (a3 >= 57600.0)
  {
    return 7200.0;
  }

  if (a3 >= 28800.0)
  {
    return 3600.0;
  }

  if (a3 >= 14400.0)
  {
    return 1800.0;
  }

  if (a3 >= 7200.0)
  {
    return 900.0;
  }

  if (a3 >= 3600.0)
  {
    return 600.0;
  }

  v3 = a3 < 1800.0;
  result = 300.0;
  if (v3)
  {
    return 120.0;
  }

  return result;
}

- (void)drawGrid:(CGContext *)a3 andRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  x = a4.origin.x;
  y = a4.origin.y;
  v8 = objc_alloc_init(NSDateFormatter);
  [v8 setDateFormat:@"MM/dd"];
  v9 = [(PLBatteryUIMoveableGraphView *)self startDate];
  v10 = v8;
  v11 = [v8 stringFromDate:v9];

  v12 = 72;
  v60 = v11;
  [v11 sizeWithAttributes:self->defaultTextAttributes];
  v14 = v13;
  v16 = v15;
  self->vertical_label_offset = v15 + v15;
  v17 = [(PLBatteryUIMoveableGraphView *)self endDate];
  v18 = [(PLBatteryUIMoveableGraphView *)self startDate];
  [v17 timeIntervalSinceDate:v18];
  v20 = v19;

  v63 = width;
  v64 = height;
  self->rectWidth = width - self->horizontal_label_offset;
  self->rectHeight = height - self->vertical_label_offset;
  self->xInterval = self->rectWidth / v20;
  self->yInterval = self->rectHeight / ((self->maxPower - self->minPower) + 1.0);
  v21 = [(PLBatteryUIMoveableGraphView *)self graphBackgroundColor];
  CGContextSetFillColorWithColor(a3, [v21 CGColor]);

  v67.origin.x = self->horizontal_label_offset;
  v67.size.width = self->rectWidth;
  v67.size.height = self->rectHeight;
  v67.origin.y = 0.0;
  CGContextFillRect(a3, v67);
  CGContextSetLineWidth(a3, 0.6);
  v22 = [(PLBatteryUIMoveableGraphView *)self gridColor];
  CGContextSetStrokeColorWithColor(a3, [v22 CGColor]);

  *lengths = xmmword_124510;
  CGContextSetLineDash(a3, 0.0, lengths, 2uLL);
  [(PLBatteryUIMoveableGraphView *)self displayRange];
  [(PLBatteryUIMoveableGraphView *)self setGridRange:?];
  v24 = v23;
  v25 = +[NSCalendar currentCalendar];
  v26 = [(PLBatteryUIMoveableGraphView *)self endDate];
  v27 = [v25 components:192 fromDate:v26];

  LODWORD(v25) = [v27 minute];
  v59 = v27;
  v28 = [v27 second];
  xInterval = self->xInterval;
  v30 = xInterval * ((v28 + 60 * v25) % v24);
  v31 = v24 * xInterval;
  rectHeight = self->rectHeight;
  horizontal_label_offset = self->horizontal_label_offset;
  v34 = self->rectWidth + horizontal_label_offset - v30;
  v35 = v34 < horizontal_label_offset;
  v36 = rectHeight;
  if (!v35)
  {
    do
    {
      CGContextMoveToPoint(a3, v34, 0.0);
      CGContextAddLineToPoint(a3, v34, self->rectHeight);
      v34 = v34 - v31;
    }

    while (v34 >= self->horizontal_label_offset);
    v36 = self->rectHeight;
  }

  if (v36 >= 0.0)
  {
    v37 = 0.0;
    v38 = rectHeight / 10.0;
    do
    {
      CGContextMoveToPoint(a3, self->horizontal_label_offset, v36 - v37);
      CGContextAddLineToPoint(a3, self->horizontal_label_offset + self->rectWidth, self->rectHeight - v37);
      v37 = v38 + v37;
      v36 = self->rectHeight;
    }

    while (v37 <= v36);
  }

  CGContextStrokePath(a3);
  CGContextSetLineDash(a3, 0.0, 0, 0);
  CGContextSetLineWidth(a3, 1.0);
  v39 = [(PLBatteryUIMoveableGraphView *)self lineColor];
  CGContextSetStrokeColorWithColor(a3, [v39 CGColor]);

  [(PLBatteryUIMoveableGraphView *)self displayRange];
  v41 = self->horizontal_label_offset;
  v42 = self->rectWidth + v41 - v30;
  if (v42 >= v41)
  {
    v43 = v16;
    v65 = v14 * 0.5;
    v44 = v64 + v16 * -2.0;
    v45 = v16 + v44;
    v46 = -(v40 * self->xInterval / v31 * 0.5);
    do
    {
      [v10 setDateFormat:@"MM/dd"];
      v47 = (v42 - self->horizontal_label_offset) / self->xInterval;
      v48 = [(PLBatteryUIMoveableGraphView *)self startDate];
      [NSDate dateWithTimeInterval:v48 sinceDate:v47];
      v50 = v49 = v12;
      v51 = [v10 stringFromDate:v50];

      [v10 setDateFormat:@"HH:mm"];
      v52 = (v42 - self->horizontal_label_offset) / self->xInterval;
      v53 = [(PLBatteryUIMoveableGraphView *)self startDate];
      v54 = [NSDate dateWithTimeInterval:v53 sinceDate:v52];
      v55 = [v10 stringFromDate:v54];

      v12 = v49;
      v56 = v42 - v65;
      if (v42 - v65 < 0.0)
      {
        v56 = 0.0;
      }

      rectWidth = self->rectWidth;
      if (v14 + v56 <= rectWidth)
      {
        v58 = v56;
      }

      else
      {
        v58 = rectWidth - v14;
      }

      [v55 drawInRect:*(&self->super.super.super.isa + v49) withAttributes:{v58, v44, v14, v43}];
      [v51 drawInRect:*(&self->super.super.super.isa + v49) withAttributes:{v58, v45, v14, v43}];
      CGContextMoveToPoint(a3, v42, self->rectHeight + -2.0);
      CGContextAddLineToPoint(a3, v42, self->rectHeight + 2.0);

      v42 = v42 + v46 * v31;
    }

    while (v42 >= self->horizontal_label_offset);
  }

  CGContextStrokePath(a3);
  [(PLBatteryUIMoveableGraphView *)self drawDayLines:a3 andRect:x, y, v63, v64];
}

- (void)drawDayLines:(CGContext *)a3 andRect:(CGRect)a4
{
  [(NSMutableArray *)self->_dateChangeArray removeAllObjects:a4.origin.x];
  v6 = +[NSCalendar currentCalendar];
  v7 = [(PLBatteryUIMoveableGraphView *)self endDate];
  v8 = [v6 components:224 fromDate:v7];

  v9 = 3600 * [v8 hour];
  v10 = v9 + 60 * [v8 minute];
  v29 = v8;
  v11 = -([v8 second] + v10);
  v12 = [(PLBatteryUIMoveableGraphView *)self endDate];
  v13 = [NSDate dateWithTimeInterval:v12 sinceDate:v11];

  v14 = objc_alloc_init(NSDateFormatter);
  [v14 setDateFormat:@"MM/dd"];
  CGContextSetLineWidth(a3, 1.5);
  v15 = [(PLBatteryUIMoveableGraphView *)self gridColor];
  CGContextSetStrokeColorWithColor(a3, [v15 CGColor]);

  v16 = [(PLBatteryUIMoveableGraphView *)self startDate];
  [v16 timeIntervalSinceDate:v13];
  v18 = v17;

  if (v18 >= 0.0)
  {
    v25 = v13;
  }

  else
  {
    do
    {
      v19 = [(PLBatteryUIMoveableGraphView *)self startDate];
      [v13 timeIntervalSinceDate:v19];
      v21 = v20 * self->xInterval;

      CGContextMoveToPoint(a3, v21 + self->horizontal_label_offset, 0.0);
      CGContextAddLineToPoint(a3, v21 + self->horizontal_label_offset, self->rectHeight);
      v22 = [NSNumber numberWithDouble:v21 + self->horizontal_label_offset];
      v30[0] = v22;
      v23 = [v14 stringFromDate:v13];
      v30[1] = v23;
      v24 = [NSArray arrayWithObjects:v30 count:2];

      [(NSMutableArray *)self->_dateChangeArray addObject:v24];
      v25 = [NSDate dateWithTimeInterval:v13 sinceDate:-86400.0];

      v26 = [(PLBatteryUIMoveableGraphView *)self startDate];
      [v26 timeIntervalSinceDate:v25];
      v28 = v27;

      v13 = v25;
    }

    while (v28 < 0.0);
  }

  CGContextStrokePath(a3);
}

- (void)drawLine:(CGContext *)a3 andRect:(CGRect)a4
{
  if (self->_inputData)
  {
    height = a4.size.height;
    width = a4.size.width;
    CGContextSetLineWidth(a3, 1.0);
    v8 = [(PLBatteryUIMoveableGraphView *)self lineColor];
    CGContextSetStrokeColorWithColor(a3, [v8 CGColor]);

    vertical_label_offset = self->vertical_label_offset;
    maxPower = self->maxPower;
    minPower = self->minPower;
    horizontal_label_offset = self->horizontal_label_offset;
    v13 = [(PLBatteryUIMoveableGraphView *)self endDate];
    v14 = [(PLBatteryUIMoveableGraphView *)self startDate];
    [v13 timeIntervalSinceDate:v14];
    v16 = v15;

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = [(PLBatteryUIMoveableGraphView *)self inputData];
    v17 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (!v17)
    {
      goto LABEL_21;
    }

    v18 = v17;
    v19 = 0;
    v20 = (height - vertical_label_offset) / ((maxPower - minPower) + 1.0);
    v21 = *v42;
    v22 = -1.0;
    v23 = (width - horizontal_label_offset) / v16;
    while (1)
    {
      v24 = 0;
      v25 = v22;
      do
      {
        if (*v42 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v41 + 1) + 8 * v24);
        v27 = [v26 objectAtIndexedSubscript:1];
        [v27 floatValue];
        v29 = v28;

        v30 = [v26 objectAtIndexedSubscript:0];
        v31 = v20 * (v29 - self->minPower);
        v32 = [(PLBatteryUIMoveableGraphView *)self startDate];
        [v30 timeIntervalSinceDate:v32];
        v34 = v23 * v33;

        v35 = height - self->vertical_label_offset - v31;
        v36 = self->horizontal_label_offset;
        v22 = v34 + v36;
        if ((v19 & 1) == 0)
        {
          CGContextMoveToPoint(a3, v34 + v36, v35);
          goto LABEL_15;
        }

        if ([(PLBatteryUIMoveableGraphView *)self graphType]== 2)
        {
          v37 = a3;
          v38 = v25;
          v39 = v35;
LABEL_13:
          CGContextAddLineToPoint(v37, v38, v39);
          goto LABEL_14;
        }

        if ([(PLBatteryUIMoveableGraphView *)self graphType]== 1)
        {
          v37 = a3;
          v38 = v22;
          v39 = v25;
          goto LABEL_13;
        }

LABEL_14:
        CGContextAddLineToPoint(a3, v22, v35);
LABEL_15:
        if ([(PLBatteryUIMoveableGraphView *)self graphType]!= 2)
        {
          if ([(PLBatteryUIMoveableGraphView *)self graphType]== 1)
          {
            v22 = v35;
          }

          else
          {
            v22 = v25;
          }
        }

        v24 = v24 + 1;
        v19 = 1;
        v25 = v22;
      }

      while (v18 != v24);
      v18 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (!v18)
      {
LABEL_21:

        CGContextStrokePath(a3);
        return;
      }
    }
  }
}

- (void)drawFill:(CGContext *)a3 andRect:(CGRect)a4
{
  if (self->_inputData)
  {
    CGContextSetLineWidth(a3, 0.5);
    v6 = [(PLBatteryUIMoveableGraphView *)self lineColor];
    CGContextSetStrokeColorWithColor(a3, [v6 CGColor]);

    CGContextBeginPath(a3);
    CGContextMoveToPoint(a3, self->horizontal_label_offset, self->rectHeight);
    if ([(PLBatteryUIMoveableGraphView *)self graphType]== 2)
    {
      v7 = 24;
    }

    else
    {
      v7 = 48;
    }

    v8 = *(&self->super.super.super.isa + v7);
    horizontal_label_offset = self->horizontal_label_offset;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = [(PLBatteryUIMoveableGraphView *)self inputData];
    v10 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v38;
      do
      {
        v13 = 0;
        v14 = v8;
        do
        {
          if (*v38 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v37 + 1) + 8 * v13);
          v16 = [v15 objectAtIndexedSubscript:1];
          [v16 floatValue];
          v18 = v17;

          v19 = [v15 objectAtIndexedSubscript:0];
          v20 = (v18 - self->minPower) * self->yInterval;
          v21 = [(PLBatteryUIMoveableGraphView *)self startDate];
          [v19 timeIntervalSinceDate:v21];
          v23 = v22 * self->xInterval;

          v24 = self->rectHeight - v20;
          horizontal_label_offset = v23 + self->horizontal_label_offset;
          if ([(PLBatteryUIMoveableGraphView *)self graphType]== 2)
          {
            v25 = a3;
            v26 = v14;
            v27 = v24;
          }

          else
          {
            if ([(PLBatteryUIMoveableGraphView *)self graphType]!= 1)
            {
              goto LABEL_15;
            }

            v25 = a3;
            v26 = horizontal_label_offset;
            v27 = v14;
          }

          CGContextAddLineToPoint(v25, v26, v27);
LABEL_15:
          CGContextAddLineToPoint(a3, horizontal_label_offset, v24);
          v8 = horizontal_label_offset;
          if ([(PLBatteryUIMoveableGraphView *)self graphType]!= 2)
          {
            if ([(PLBatteryUIMoveableGraphView *)self graphType]== 1)
            {
              v8 = v24;
            }

            else
            {
              v8 = v14;
            }
          }

          v13 = v13 + 1;
          v14 = v8;
        }

        while (v11 != v13);
        v11 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
      }

      while (v11);
    }

    CGContextAddLineToPoint(a3, horizontal_label_offset, self->rectHeight);
    CGContextClosePath(a3);
    v28 = [(PLBatteryUIMoveableGraphView *)self lineColor];
    v29 = [v28 CGColor];

    v30 = CGColorGetComponents(v29);
    *locations = xmmword_124680;
    v31 = v30[1];
    components[0] = *v30;
    components[1] = v31;
    v42 = *(v30 + 2);
    v43 = 0x3FC999999999999ALL;
    v44 = components[0];
    v45 = v31;
    v46 = v42;
    v47 = 0x3FF0000000000000;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v33 = CGGradientCreateWithColorComponents(DeviceRGB, components, locations, 2uLL);
    v34 = self->horizontal_label_offset;
    rectHeight = self->rectHeight;
    CGContextSaveGState(a3);
    CGContextClip(a3);
    v51.y = 0.0;
    v50.x = v34;
    v50.y = rectHeight;
    v51.x = v34;
    CGContextDrawLinearGradient(a3, v33, v50, v51, 0);
    CGContextRestoreGState(a3);
    CGColorSpaceRelease(DeviceRGB);
    CGGradientRelease(v33);
  }
}

- (void)drawErrorText:(CGContext *)a3 andRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  errValue = self->_errValue;
  v8 = @"Not Enough Data Points";
  if (errValue != 2)
  {
    v8 = 0;
  }

  if (errValue == 1)
  {
    v9 = @"Negative Power Value";
  }

  else
  {
    v9 = v8;
  }

  defaultTextAttributes = self->defaultTextAttributes;
  v13 = v9;
  [(__CFString *)v13 sizeWithAttributes:defaultTextAttributes];
  [(__CFString *)v13 drawInRect:self->defaultTextAttributes withAttributes:(width - v11) * 0.5, (height - v12) * 0.5, v11];
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  v9 = +[UIColor clearColor];
  CGContextSetFillColorWithColor(CurrentContext, [v9 CGColor]);

  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  CGContextFillRect(CurrentContext, v11);
  if (self->_errValue)
  {
    [(PLBatteryUIMoveableGraphView *)self setDefaultRange];
    [(PLBatteryUIMoveableGraphView *)self drawGrid:CurrentContext andRect:x, y, width, height];

    [(PLBatteryUIMoveableGraphView *)self drawErrorText:CurrentContext andRect:x, y, width, height];
  }

  else
  {
    [(PLBatteryUIMoveableGraphView *)self drawGrid:CurrentContext andRect:x, y, width, height];
    [(PLBatteryUIMoveableGraphView *)self drawFill:CurrentContext andRect:x, y, width, height];

    [(PLBatteryUIMoveableGraphView *)self drawLine:CurrentContext andRect:x, y, width, height];
  }
}

- (CGSize)displaySize
{
  width = self->_displaySize.width;
  height = self->_displaySize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end