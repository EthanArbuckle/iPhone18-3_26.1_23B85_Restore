@interface SSUISlateView
- (CGPoint)hotspotAdjustmentForCursorFrame:(CGRect)frame;
- (SSUISlateView)initWithFrame:(CGRect)frame;
- (void)addPoint:(CGPoint)point;
- (void)createCGBitmapContextWithSize:(CGSize)size;
- (void)dealloc;
- (void)drawCompletedPath;
- (void)drawFromCollectedPoints;
- (void)drawRect:(CGRect)rect;
- (void)drawSampleAnnotations;
- (void)setCurrentOrientation:(int64_t)orientation;
- (void)setEventFlags:(unsigned int)flags;
- (void)startPeriodicUpdate;
- (void)stopPeriodicUpdate;
- (void)wipeSlate;
- (void)wipeSlateCore;
@end

@implementation SSUISlateView

- (SSUISlateView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v11.receiver = self;
  v11.super_class = SSUISlateView;
  v5 = [(SSUISlateView *)&v11 initWithFrame:frame.origin.x, frame.origin.y];
  if (v5)
  {
    v6 = +[UIColor clearColor];
    [(SSUISlateView *)v5 setBackgroundColor:v6];

    [(SSUISlateView *)v5 setLineWidth:4.0];
    v7 = +[NSMutableArray array];
    [(SSUISlateView *)v5 setDrawingPoints:v7];

    v8 = +[NSMutableArray array];
    [(SSUISlateView *)v5 setFinalDrawingPoints:v8];

    v9 = +[NSMutableArray array];
    [(SSUISlateView *)v5 setAllDrawingPoints:v9];

    [(SSUISlateView *)v5 createCGBitmapContextWithSize:width, height];
    [(SSUISlateView *)v5 setEventFlags:0];
  }

  return v5;
}

- (void)dealloc
{
  [(SSUISlateView *)self setDrawingPoints:0];
  [(SSUISlateView *)self setFinalDrawingPoints:0];
  [(SSUISlateView *)self setAllDrawingPoints:0];
  mBitmapContextPortrait = self->mBitmapContextPortrait;
  if (mBitmapContextPortrait)
  {
    CGContextRelease(mBitmapContextPortrait);
    self->mBitmapContextPortrait = 0;
  }

  mBitmapContextLandscape = self->mBitmapContextLandscape;
  if (mBitmapContextLandscape)
  {
    CGContextRelease(mBitmapContextLandscape);
    self->mBitmapContextLandscape = 0;
  }

  mRawBitmapData = self->mRawBitmapData;
  if (mRawBitmapData)
  {
    free(mRawBitmapData);
    self->mRawBitmapData = 0;
    [(SSUISlateView *)self setRawBitmapByteCount:0];
  }

  mDrawColor = self->mDrawColor;
  if (mDrawColor)
  {
    CGColorRelease(mDrawColor);
    self->mDrawColor = 0;
  }

  v7.receiver = self;
  v7.super_class = SSUISlateView;
  [(SSUISlateView *)&v7 dealloc];
}

- (void)setEventFlags:(unsigned int)flags
{
  flagsCopy = flags;
  if ((flags & 0x20000000) != 0)
  {
    [(SSUISlateView *)self wipeSlate];
  }

  v5 = flagsCopy & 0x70;
  if (self->mDrawColor)
  {
    if (v5 == [(SSUISlateView *)self currentColor])
    {
      return;
    }

    mDrawColor = self->mDrawColor;
    if (mDrawColor)
    {
      CGColorRelease(mDrawColor);
      self->mDrawColor = 0;
    }
  }

  v7 = v5 >> 4;
  if (v5 >> 4 <= 2)
  {
    if (v7 == 1)
    {
      v8 = +[UIColor blackColor];
      goto LABEL_19;
    }

    if (v7 == 2)
    {
      v8 = +[UIColor systemGreenColor];
      goto LABEL_19;
    }

LABEL_18:
    v8 = +[UIColor systemRedColor];
    goto LABEL_19;
  }

  if (v7 == 3)
  {
    v8 = +[UIColor whiteColor];
    goto LABEL_19;
  }

  if (v7 == 4)
  {
    v8 = +[UIColor systemBlueColor];
    goto LABEL_19;
  }

  if (v7 != 5)
  {
    goto LABEL_18;
  }

  v8 = +[UIColor systemYellowColor];
LABEL_19:
  v9 = v8;
  self->mDrawColor = CGColorCreateCopy([v8 CGColor]);

  [(SSUISlateView *)self setCurrentColor:v5];
}

- (CGPoint)hotspotAdjustmentForCursorFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  [(SSUISlateView *)self lineWidth:frame.origin.x];
  v6 = width - trunc(v5) + -1.0;
  v7 = height * 0.5;
  result.y = v7;
  result.x = v6;
  return result;
}

- (void)createCGBitmapContextWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if (DeviceRGB)
  {
    v7 = DeviceRGB;
    v8 = floor(width);
    v9 = vcvtd_n_u64_f64(v8, 2uLL);
    v10 = floor(height);
    [(SSUISlateView *)self setRawBitmapByteCount:(v10 * (v8 * 4.0))];
    v11 = malloc_type_calloc([(SSUISlateView *)self rawBitmapByteCount], 1uLL, 0x100004077774924uLL);
    self->mRawBitmapData = v11;
    v12 = vcvtmd_u64_f64(width);
    v13 = vcvtmd_u64_f64(height);
    v14 = CGBitmapContextCreate(v11, v12, v13, 8uLL, v9, v7, 1u);
    self->mBitmapContextPortrait = v14;
    self->mBitmapContext = v14;
    self->mBitmapContextLandscape = CGBitmapContextCreate(self->mRawBitmapData, v13, v12, 8uLL, vcvtd_n_u64_f64(v10, 2uLL), v7, 1u);

    CGColorSpaceRelease(v7);
  }
}

- (void)wipeSlate
{
  allDrawingPoints = [(SSUISlateView *)self allDrawingPoints];
  [allDrawingPoints removeAllObjects];

  [(SSUISlateView *)self wipeSlateCore];
}

- (void)wipeSlateCore
{
  finalDrawingPoints = [(SSUISlateView *)self finalDrawingPoints];
  [finalDrawingPoints removeAllObjects];

  drawingPoints = [(SSUISlateView *)self drawingPoints];
  [drawingPoints removeAllObjects];

  bzero(self->mRawBitmapData, [(SSUISlateView *)self rawBitmapByteCount]);

  [(SSUISlateView *)self setNeedsDisplay];
}

- (void)drawSampleAnnotations
{
  v3 = 3;
  v4 = [NSMutableArray arrayWithCapacity:3];
  do
  {
    v5 = random();
    [(SSUISlateView *)self frame];
    v7 = (v5 % v6);
    [(SSUISlateView *)self frame];
    v9 = ((v5 >> 16) % v8);
    v10 = [NSNumber numberWithInt:v7];
    v31[0] = v10;
    v11 = [NSNumber numberWithInt:v9];
    v31[1] = v11;
    v12 = [NSArray arrayWithObjects:v31 count:2];
    [v4 addObject:v12];

    --v3;
  }

  while (v3);
  CGContextSetStrokeColorWithColor(self->mBitmapContext, self->mDrawColor);
  mBitmapContext = self->mBitmapContext;
  [(SSUISlateView *)self lineWidth];
  CGContextSetLineWidth(mBitmapContext, v14);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = v4;
  v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v27;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v26 + 1) + 8 * i);
        v21 = [v20 objectAtIndexedSubscript:{0, v26}];
        v22 = [v20 objectAtIndexedSubscript:1];
        [v21 floatValue];
        v24 = v23;
        [v22 floatValue];
        v32.origin.y = v25;
        v32.origin.x = v24;
        v32.size.width = 64.0;
        v32.size.height = 64.0;
        CGContextStrokeEllipseInRect(self->mBitmapContext, v32);
      }

      v17 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v17);
  }

  [(SSUISlateView *)self setNeedsDisplay];
}

- (void)drawFromCollectedPoints
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "drawFromCollectedPoints", buf, 2u);
  }

  drawingPoints = [(SSUISlateView *)self drawingPoints];
  v4 = [drawingPoints count];

  if (v4 >= 2)
  {
    CGContextSetStrokeColorWithColor(self->mBitmapContext, self->mDrawColor);
    mBitmapContext = self->mBitmapContext;
    [(SSUISlateView *)self lineWidth];
    CGContextSetLineWidth(mBitmapContext, v6);
    CGContextBeginPath(self->mBitmapContext);
    drawingPoints2 = [(SSUISlateView *)self drawingPoints];
    firstObject = [drawingPoints2 firstObject];

    v9 = [firstObject objectAtIndexedSubscript:0];
    v10 = [firstObject objectAtIndexedSubscript:1];
    v11 = self->mBitmapContext;
    [v9 floatValue];
    v13 = v12;
    [v10 floatValue];
    CGContextMoveToPoint(v11, v13, v14);
    drawingPoints3 = [(SSUISlateView *)self drawingPoints];
    [drawingPoints3 removeObject:firstObject];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    selfCopy = self;
    obj = [(SSUISlateView *)self drawingPoints];
    v17 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v31;
      do
      {
        v20 = 0;
        v21 = firstObject;
        v22 = v9;
        v23 = v10;
        do
        {
          if (*v31 != v19)
          {
            objc_enumerationMutation(obj);
          }

          firstObject = *(*(&v30 + 1) + 8 * v20);

          v9 = [firstObject objectAtIndexedSubscript:0];

          v10 = [firstObject objectAtIndexedSubscript:1];

          v24 = selfCopy->mBitmapContext;
          [v9 floatValue];
          v26 = v25;
          [v10 floatValue];
          CGContextAddLineToPoint(v24, v26, v27);
          v20 = v20 + 1;
          v21 = firstObject;
          v22 = v9;
          v23 = v10;
        }

        while (v18 != v20);
        v18 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v18);
    }

    if (![(SSUISlateView *)selfCopy liveUpdate])
    {
      drawingPoints4 = [(SSUISlateView *)selfCopy drawingPoints];
      [drawingPoints4 removeAllObjects];
    }

    CGContextStrokePath(selfCopy->mBitmapContext);
    [(SSUISlateView *)selfCopy setNeedsDisplay];
  }
}

- (void)drawRect:(CGRect)rect
{
  CurrentContext = UIGraphicsGetCurrentContext();
  Image = CGBitmapContextCreateImage(self->mBitmapContext);
  if (Image)
  {
    v6 = Image;
    [(SSUISlateView *)self frame];
    CGContextDrawImage(CurrentContext, v8, v6);

    CGImageRelease(v6);
  }
}

- (void)addPoint:(CGPoint)point
{
  y = point.y;
  v5 = [NSNumber numberWithDouble:point.x];
  v10[0] = v5;
  v6 = [NSNumber numberWithDouble:y];
  v10[1] = v6;
  v7 = [NSArray arrayWithObjects:v10 count:2];

  drawingPoints = [(SSUISlateView *)self drawingPoints];
  [drawingPoints addObject:v7];

  if ([(SSUISlateView *)self liveUpdate])
  {
    finalDrawingPoints = [(SSUISlateView *)self finalDrawingPoints];
    [finalDrawingPoints addObject:v7];
  }
}

- (void)startPeriodicUpdate
{
  if (![(SSUISlateView *)self liveUpdate])
  {
    [(SSUISlateView *)self setLiveUpdate:1];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_548C;
    v4[3] = &unk_10580;
    v4[4] = self;
    v3 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:v4 block:0.1];
    [(SSUISlateView *)self setUpdateTimer:v3];
  }
}

- (void)stopPeriodicUpdate
{
  [(SSUISlateView *)self setLiveUpdate:0];
  updateTimer = [(SSUISlateView *)self updateTimer];
  [updateTimer invalidate];

  [(SSUISlateView *)self setUpdateTimer:0];
}

- (void)drawCompletedPath
{
  finalDrawingPoints = [(SSUISlateView *)self finalDrawingPoints];
  v4 = [finalDrawingPoints count];

  if (v4 >= 2)
  {
    drawingPoints = [(SSUISlateView *)self drawingPoints];
    [drawingPoints removeAllObjects];

    drawingPoints2 = [(SSUISlateView *)self drawingPoints];
    finalDrawingPoints2 = [(SSUISlateView *)self finalDrawingPoints];
    [drawingPoints2 addObjectsFromArray:finalDrawingPoints2];

    allDrawingPoints = [(SSUISlateView *)self allDrawingPoints];
    finalDrawingPoints3 = [(SSUISlateView *)self finalDrawingPoints];
    v10 = [finalDrawingPoints3 copy];
    [allDrawingPoints addObject:v10];

    finalDrawingPoints4 = [(SSUISlateView *)self finalDrawingPoints];
    [finalDrawingPoints4 removeAllObjects];

    [(SSUISlateView *)self drawFromCollectedPoints];
  }
}

- (void)setCurrentOrientation:(int64_t)orientation
{
  if (self->_currentOrientation != orientation)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      currentOrientation = self->_currentOrientation;
      *buf = 134218240;
      orientationCopy = orientation;
      v32 = 2048;
      v33 = currentOrientation;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "currentOrientation: %ld, was: %ld", buf, 0x16u);
    }

    self->_currentOrientation = orientation;
    mBitmapContext = self->mBitmapContext;
    if ((orientation & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      if (mBitmapContext == self->mBitmapContextLandscape)
      {
        return;
      }

      [(SSUISlateView *)self stopPeriodicUpdate];
      [(SSUISlateView *)self wipeSlateCore];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "switch to landscape context", buf, 2u);
      }

      self->mBitmapContext = self->mBitmapContextLandscape;
      [(SSUISlateView *)self frame];
      [(SSUISlateView *)self setFrame:?];
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      allDrawingPoints = [(SSUISlateView *)self allDrawingPoints];
      v8 = [allDrawingPoints countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v25;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v25 != v10)
            {
              objc_enumerationMutation(allDrawingPoints);
            }

            v12 = *(*(&v24 + 1) + 8 * i);
            drawingPoints = [(SSUISlateView *)self drawingPoints];
            [drawingPoints addObjectsFromArray:v12];

            [(SSUISlateView *)self drawFromCollectedPoints];
          }

          v9 = [allDrawingPoints countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v9);
      }
    }

    else
    {
      if (mBitmapContext == self->mBitmapContextPortrait)
      {
        return;
      }

      [(SSUISlateView *)self stopPeriodicUpdate];
      [(SSUISlateView *)self wipeSlateCore];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "switch to portrait context", buf, 2u);
      }

      self->mBitmapContext = self->mBitmapContextPortrait;
      [(SSUISlateView *)self frame];
      [(SSUISlateView *)self setFrame:?];
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      allDrawingPoints = [(SSUISlateView *)self allDrawingPoints];
      v14 = [allDrawingPoints countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v21;
        do
        {
          for (j = 0; j != v15; j = j + 1)
          {
            if (*v21 != v16)
            {
              objc_enumerationMutation(allDrawingPoints);
            }

            v18 = *(*(&v20 + 1) + 8 * j);
            drawingPoints2 = [(SSUISlateView *)self drawingPoints];
            [drawingPoints2 addObjectsFromArray:v18];

            [(SSUISlateView *)self drawFromCollectedPoints];
          }

          v15 = [allDrawingPoints countByEnumeratingWithState:&v20 objects:v28 count:16];
        }

        while (v15);
      }
    }
  }
}

@end