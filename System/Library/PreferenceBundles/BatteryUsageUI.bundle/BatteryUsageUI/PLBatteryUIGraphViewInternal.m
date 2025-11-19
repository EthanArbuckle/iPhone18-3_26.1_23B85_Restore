@interface PLBatteryUIGraphViewInternal
- (PLBatteryUIGraphViewInternal)initWithFrame:(CGRect)a3;
- (PLBatteryUIGraphViewInternal)initWithFrame:(CGRect)a3 andData:(id)a4;
- (void)drawErrorText:(CGContext *)a3 andRect:(CGRect)a4;
- (void)drawGrid:(CGContext *)a3 andRect:(CGRect)a4;
- (void)drawPoints:(CGContext *)a3 andRect:(CGRect)a4;
- (void)drawRect:(CGRect)a3;
- (void)setDefaultRange;
- (void)setInputData:(id)a3;
- (void)setRangesFromArray:(id)a3;
@end

@implementation PLBatteryUIGraphViewInternal

- (void)setDefaultRange
{
  self->minPower = 0.0;
  self->maxPower = 10.0;
  v3 = +[NSDate date];
  endDate = self->endDate;
  self->endDate = v3;

  v5 = [(NSDate *)self->endDate dateByAddingTimeInterval:-43200.0];
  startDate = self->startDate;
  self->startDate = v5;

  _objc_release_x1();
}

- (void)setRangesFromArray:(id)a3
{
  v4 = a3;
  p_startDate = &self->startDate;
  startDate = self->startDate;
  self->startDate = 0;

  p_endDate = &self->endDate;
  endDate = self->endDate;
  self->endDate = 0;

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v32;
    v13 = -1.0;
    v14 = -1.0;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v31 + 1) + 8 * i);
        v17 = [v16 objectAtIndexedSubscript:{1, v31}];
        [v17 floatValue];
        v19 = v18;

        v20 = [v16 objectAtIndexedSubscript:0];
        if (v14 == -1.0)
        {
          v14 = v19;
        }

        if (v13 == -1.0)
        {
          v13 = v19;
        }

        if (!*p_startDate)
        {
          objc_storeStrong(&self->startDate, v20);
        }

        if (!*p_endDate)
        {
          objc_storeStrong(&self->endDate, v20);
        }

        if (v19 > v13)
        {
          *&v21 = v19;
        }

        else
        {
          *&v21 = v13;
        }

        if (v19 < v14)
        {
          v14 = v19;
        }

        else
        {
          v13 = *&v21;
        }

        [v20 timeIntervalSinceDate:{*p_startDate, v21}];
        v22 = &self->startDate;
        if (v23 < 0.0 || ([v20 timeIntervalSinceDate:*p_endDate], v22 = &self->endDate, v24 > 0.0))
        {
          objc_storeStrong(v22, v20);
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v11);
  }

  else
  {
    v13 = -1.0;
    v14 = -1.0;
  }

  v25 = (v13 - v14) * 0.125;
  self->minPower = v14 - v25;
  self->maxPower = v13 + v25;
  if (v14 >= 0.0)
  {
    if (self->minPower < 0.0)
    {
      self->minPower = 0.0;
    }

    if (v25 == 0.0)
    {
      self->maxPower = v13 + v13;
      self->minPower = 0.0;
    }

    if (self->maxPower == 0.0)
    {
      self->maxPower = 10.0;
      self->minPower = 0.0;
    }

    [(NSDate *)*p_endDate timeIntervalSinceDate:*p_startDate, v31];
    if (v26 == 0.0)
    {
      v27 = [NSDate dateWithTimeInterval:*p_startDate sinceDate:-3600.0];
      v28 = *p_startDate;
      *p_startDate = v27;

      v29 = [NSDate dateWithTimeInterval:*p_endDate sinceDate:3600.0];
      v30 = *p_endDate;
      *p_endDate = v29;
    }
  }

  else
  {
    self->_errValue = 1;
  }
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
    [(NSMutableArray *)self->_inputData sortUsingComparator:&stru_164108];
    v7 = self->_inputData;

    [(PLBatteryUIGraphViewInternal *)self setRangesFromArray:v7];
  }

  else
  {
    self->_errValue = 2;
  }
}

- (PLBatteryUIGraphViewInternal)initWithFrame:(CGRect)a3 andData:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = PLBatteryUIGraphViewInternal;
  v10 = [(PLBatteryUIGraphViewInternal *)&v13 initWithFrame:x, y, width, height];
  if (v10)
  {
    v11 = [v9 mutableCopy];
    [(PLBatteryUIGraphViewInternal *)v10 setInputData:v11];
  }

  return v10;
}

- (PLBatteryUIGraphViewInternal)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PLBatteryUIGraphViewInternal;
  v3 = [(PLBatteryUIGraphViewInternal *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PLBatteryUIGraphViewInternal *)v3 setInputData:0];
  }

  return v4;
}

- (void)drawGrid:(CGContext *)a3 andRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  v8 = a4.size.width + -20.0;
  v9 = a4.size.height + -15.0;
  v10 = +[UIColor lightGrayColor];
  CGContextSetFillColorWithColor(a3, [v10 CGColor]);

  v62.size.width = v8;
  v62.origin.x = 20.0;
  v62.origin.y = 0.0;
  v62.size.height = v9;
  CGContextFillRect(a3, v62);
  v11 = [UIFont systemFontOfSize:10.0];
  v12 = objc_alloc_init(NSDateFormatter);
  [(NSDate *)self->endDate timeIntervalSinceDate:self->startDate];
  v14 = v13;
  if (v14 <= 7200.0)
  {
    v15 = @"HH:mm";
  }

  else
  {
    v15 = @"HH";
  }

  [v12 setDateFormat:v15];
  CGContextSetLineWidth(a3, 0.6);
  v16 = +[UIColor grayColor];
  CGContextSetStrokeColorWithColor(a3, [v16 CGColor]);

  *lengths = xmmword_124510;
  CGContextSetLineDash(a3, 0.0, lengths, 2uLL);
  v17 = (v8 * 0.125);
  v18 = (v9 / 10.0);
  v19 = v18;
  v50 = self->maxPower - self->minPower;
  v20 = 9;
  v21 = 20;
  do
  {
    CGContextMoveToPoint(a3, v21, 0.0);
    CGContextAddLineToPoint(a3, v21, v9);
    v21 += v17;
    --v20;
  }

  while (v20);
  v51 = v12;
  v22 = self;
  v23 = v14 * 0.125;
  v24 = 11;
  do
  {
    CGContextMoveToPoint(a3, 20.0, (v9 - v20));
    CGContextAddLineToPoint(a3, width, (v9 - v20));
    v20 += v18;
    --v24;
  }

  while (v24);
  CGContextStrokePath(a3);
  CGContextSetLineDash(a3, 0.0, 0, 0);
  v25 = 0;
  v52 = 2 * v17;
  v26 = -2;
  v27 = 20;
  do
  {
    v28 = v25;
    v26 += 2;
    v29 = [NSDate dateWithTimeInterval:v22->startDate sinceDate:(v23 * v26)];
    v25 = [v51 stringFromDate:v29];

    v59 = NSFontAttributeName;
    v60 = v11;
    v30 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];
    [v25 sizeWithAttributes:v30];
    v32 = v31;
    v34 = v33;

    v35 = v27 + v32 * -0.5;
    v36 = height - v34;
    v37 = v35;
    v38 = v36;
    v57 = NSFontAttributeName;
    v58 = v11;
    v39 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    [v25 drawInRect:v39 withAttributes:{v37, v38, v32, v34}];

    v27 += v52;
  }

  while (v26 < 7);
  for (i = 1; i != 10; ++i)
  {
    v41 = v25;
    v25 = [NSString stringWithFormat:@"%d", (v22->minPower + (i * (v50 / 10.0)))];

    v55 = NSFontAttributeName;
    v56 = v11;
    v42 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    [v25 sizeWithAttributes:v42];
    v44 = v43;
    v46 = v45;

    v47 = (v9 - v19) + v46 * -0.5;
    v48 = v47;
    v53 = NSFontAttributeName;
    v54 = v11;
    v49 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    [v25 drawInRect:v49 withAttributes:{0.0, v48, v44, v46}];

    v19 += v18;
  }
}

- (void)drawErrorText:(CGContext *)a3 andRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  errValue = self->_errValue;
  v7 = @"Not Enough Data Points";
  if (errValue != 2)
  {
    v7 = 0;
  }

  if (errValue == 1)
  {
    v8 = @"Negative Power Value";
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;
  v10 = [UIFont systemFontOfSize:10.0];
  v19 = NSFontAttributeName;
  v20 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  [(__CFString *)v9 sizeWithAttributes:v11];
  v13 = v12;
  v15 = v14;

  v17 = NSFontAttributeName;
  v18 = v10;
  v16 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  [(__CFString *)v9 drawInRect:v16 withAttributes:(width - v13) * 0.5, (height - v15) * 0.5, v13, v15];
}

- (void)drawPoints:(CGContext *)a3 andRect:(CGRect)a4
{
  if (self->_inputData)
  {
    height = a4.size.height;
    width = a4.size.width;
    CGContextSetLineWidth(a3, 2.0);
    v8 = +[UIColor blueColor];
    CGContextSetStrokeColorWithColor(a3, [v8 CGColor]);

    maxPower = self->maxPower;
    minPower = self->minPower;
    [(NSDate *)self->endDate timeIntervalSinceDate:self->startDate];
    v12 = v11;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = [(PLBatteryUIGraphViewInternal *)self inputData];
    v13 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = height + -15.0;
      v17 = v16 / ((maxPower - minPower) + 1.0);
      v18 = (width + -20.0) / v12;
      v19 = *v38;
      v20 = v18;
      v21 = 0.0;
      do
      {
        v22 = 0;
        v23 = v21;
        do
        {
          if (*v38 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v37 + 1) + 8 * v22);
          v25 = [v24 objectAtIndexedSubscript:1];
          [v25 floatValue];
          v27 = v26;

          v28 = [v24 objectAtIndexedSubscript:0];
          v29 = (v27 - self->minPower) * v17;
          [v28 timeIntervalSinceDate:self->startDate];
          *&v30 = v30 * v20;
          v31 = v16 - v29;
          v21 = *&v30 + 20.0;
          if (v15)
          {
            v32 = [(PLBatteryUIGraphViewInternal *)self graphType];
            *&v33 = v23;
            *&v34 = v31;
            if (v32 == 2 || (v35 = [(PLBatteryUIGraphViewInternal *)self graphType:v33], *&v33 = v21, *&v34 = v23, v35 == 1))
            {
              CGContextAddLineToPoint(a3, *&v33, *&v34);
            }

            CGContextAddLineToPoint(a3, v21, v31);
          }

          else
          {
            CGContextMoveToPoint(a3, v21, v31);
          }

          if ([(PLBatteryUIGraphViewInternal *)self graphType]!= 2)
          {
            if ([(PLBatteryUIGraphViewInternal *)self graphType]== 1)
            {
              v21 = v31;
            }

            else
            {
              v21 = v23;
            }
          }

          v22 = v22 + 1;
          v15 = 1;
          v23 = v21;
        }

        while (v14 != v22);
        v14 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v14);
    }

    CGContextStrokePath(a3);
  }
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  v9 = +[UIColor whiteColor];
  CGContextSetFillColorWithColor(CurrentContext, [v9 CGColor]);

  [(PLBatteryUIGraphViewInternal *)self bounds];
  CGContextFillRect(CurrentContext, v11);
  if (self->_errValue)
  {
    [(PLBatteryUIGraphViewInternal *)self setDefaultRange];
    [(PLBatteryUIGraphViewInternal *)self drawGrid:CurrentContext andRect:x, y, width, height];

    [(PLBatteryUIGraphViewInternal *)self drawErrorText:CurrentContext andRect:x, y, width, height];
  }

  else
  {
    [(PLBatteryUIGraphViewInternal *)self drawGrid:CurrentContext andRect:x, y, width, height];

    [(PLBatteryUIGraphViewInternal *)self drawPoints:CurrentContext andRect:x, y, width, height];
  }
}

@end