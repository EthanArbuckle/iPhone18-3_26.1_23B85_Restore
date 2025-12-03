@interface ZWLensAutopanner
- (CGPoint)_lensMovementDeltaForOffset:(CGPoint)offset;
- (ZWLensAutopannerDataSource)dataSource;
- (ZWLensAutopannerDelegate)delegate;
- (void)_beginAutomovingZoomLens;
- (void)_endAutomovingZoomLens;
- (void)_handleDisplayLinkTimerDidFire:(id)fire;
@end

@implementation ZWLensAutopanner

- (void)_beginAutomovingZoomLens
{
  if ([(ZWLensAutopanner *)self isAutomovingLens])
  {
    _AXAssert();
  }

  [(ZWLensAutopanner *)self setAutomovingLens:1];
  delegate = [(ZWLensAutopanner *)self delegate];
  [delegate willBeginAutopanningLensWithAutopanner:self];

  displayLinkTimer = [(ZWLensAutopanner *)self displayLinkTimer];

  if (!displayLinkTimer)
  {
    v5 = [CADisplayLink displayLinkWithTarget:self selector:"_handleDisplayLinkTimerDidFire:"];
    [(ZWLensAutopanner *)self setDisplayLinkTimer:v5];
  }

  displayLinkTimer2 = [(ZWLensAutopanner *)self displayLinkTimer];
  v6 = +[NSRunLoop currentRunLoop];
  [displayLinkTimer2 addToRunLoop:v6 forMode:NSRunLoopCommonModes];
}

- (void)_endAutomovingZoomLens
{
  displayLinkTimer = [(ZWLensAutopanner *)self displayLinkTimer];
  [displayLinkTimer invalidate];

  [(ZWLensAutopanner *)self setDisplayLinkTimer:0];
  [(ZWLensAutopanner *)self setAutomovingLens:0];
  delegate = [(ZWLensAutopanner *)self delegate];
  [delegate didFinishAutopanningLensWithAutopanner:self];
}

- (void)_handleDisplayLinkTimerDidFire:(id)fire
{
  dataSource = [(ZWLensAutopanner *)self dataSource];
  [dataSource offsetForAutopanner:self];
  v6 = v5;
  v8 = v7;

  [(ZWLensAutopanner *)self _lensMovementDeltaForOffset:v6, v8];
  v10 = v9;
  v12 = v11;
  delegate = [(ZWLensAutopanner *)self delegate];
  [delegate autopanner:self didAutopanByDelta:{v10, v12}];
}

- (CGPoint)_lensMovementDeltaForOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  if (_lensMovementDeltaForOffset__onceToken != -1)
  {
    [ZWLensAutopanner _lensMovementDeltaForOffset:];
  }

  dataSource = [(ZWLensAutopanner *)self dataSource];
  v7 = [dataSource offsetValuesAreNormalizedForAutopanner:self];

  v8 = +[AXSettings sharedInstance];
  zoomAutopannerShouldPanWithAcceleration = [v8 zoomAutopannerShouldPanWithAcceleration];

  if (v7)
  {
    if (!zoomAutopannerShouldPanWithAcceleration)
    {
      x = x * 600.0;
      y = y * 600.0;
      goto LABEL_32;
    }

    v10 = log(fabs(x) + 1.0) * 50.0;
    if (x >= 0.0)
    {
      v11 = v10;
    }

    else
    {
      v11 = -v10;
    }

    v12 = log(fabs(y) + 1.0) * 50.0;
    v13 = -v12;
    if (y >= 0.0)
    {
      v13 = v12;
    }

    if (v11 >= *&_lensMovementDeltaForOffset__ZWAutomoveMaxSpeed)
    {
      v14 = *&_lensMovementDeltaForOffset__ZWAutomoveMaxSpeed;
    }

    else
    {
      v14 = v11;
    }

    v15 = -*&_lensMovementDeltaForOffset__ZWAutomoveMaxSpeed;
    if (v14 >= -*&_lensMovementDeltaForOffset__ZWAutomoveMaxSpeed)
    {
      x = v14;
    }

    else
    {
      x = -*&_lensMovementDeltaForOffset__ZWAutomoveMaxSpeed;
    }

    if (v13 >= *&_lensMovementDeltaForOffset__ZWAutomoveMaxSpeed)
    {
      v13 = *&_lensMovementDeltaForOffset__ZWAutomoveMaxSpeed;
    }
  }

  else
  {
    if (!zoomAutopannerShouldPanWithAcceleration)
    {
      goto LABEL_32;
    }

    v16 = x * fabs(x) / 500.0;
    v17 = y * fabs(y) / 500.0;
    if (v16 >= *&_lensMovementDeltaForOffset__ZWAutomoveMaxSpeed)
    {
      v16 = *&_lensMovementDeltaForOffset__ZWAutomoveMaxSpeed;
    }

    v15 = -*&_lensMovementDeltaForOffset__ZWAutomoveMaxSpeed;
    if (v16 >= -*&_lensMovementDeltaForOffset__ZWAutomoveMaxSpeed)
    {
      x = v16;
    }

    else
    {
      x = -*&_lensMovementDeltaForOffset__ZWAutomoveMaxSpeed;
    }

    if (v17 >= *&_lensMovementDeltaForOffset__ZWAutomoveMaxSpeed)
    {
      v13 = *&_lensMovementDeltaForOffset__ZWAutomoveMaxSpeed;
    }

    else
    {
      v13 = v17;
    }
  }

  if (v13 >= v15)
  {
    y = v13;
  }

  else
  {
    y = v15;
  }

LABEL_32:
  v18 = x;
  v19 = y;
  result.y = v19;
  result.x = v18;
  return result;
}

void __48__ZWLensAutopanner__lensMovementDeltaForOffset___block_invoke(id a1)
{
  v1 = +[UIScreen mainScreen];
  *&_lensMovementDeltaForOffset__ZWAutomoveMaxSpeed = 60.0 / [v1 maximumFramesPerSecond] * 30.0;
}

- (ZWLensAutopannerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (ZWLensAutopannerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end