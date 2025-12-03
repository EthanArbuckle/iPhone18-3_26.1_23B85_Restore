@interface BKEpubManualCurlDriver
- (BKEpubManualCurlDriver)initWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint time:(double)time;
- (void)_linkFired:(id)fired;
- (void)run:(id)run;
@end

@implementation BKEpubManualCurlDriver

- (BKEpubManualCurlDriver)initWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint time:(double)time
{
  y = endPoint.y;
  x = endPoint.x;
  v8 = point.y;
  v9 = point.x;
  v17.receiver = self;
  v17.super_class = BKEpubManualCurlDriver;
  v10 = [(BKEpubManualCurlDriver *)&v17 init];
  if (v10)
  {
    v11 = [CADisplayLink displayLinkWithTarget:v10 selector:"_linkFired:"];
    displayLink = v10->_displayLink;
    v10->_displayLink = v11;

    [(CADisplayLink *)v10->_displayLink heartbeatRate];
    v10->_minimumGestureInterval = v13 * 0.5;
    time = [[BKEpubManualCurlGestureImplementation alloc] initWithStartPoint:v9 endPoint:v8 duration:x, y, time];
    gesture = v10->_gesture;
    v10->_gesture = time;
  }

  return v10;
}

- (void)run:(id)run
{
  [(BKEpubManualCurlDriver *)self setManualCurlHandler:run];
  gesture = [(BKEpubManualCurlDriver *)self gesture];
  [gesture setState:1];

  v5 = CACurrentMediaTime();
  gesture2 = [(BKEpubManualCurlDriver *)self gesture];
  [gesture2 setStartTime:v5];

  displayLink = [(BKEpubManualCurlDriver *)self displayLink];
  v7 = +[NSRunLoop mainRunLoop];
  [displayLink addToRunLoop:v7 forMode:NSDefaultRunLoopMode];
}

- (void)_linkFired:(id)fired
{
  firedCopy = fired;
  gesture = [(BKEpubManualCurlDriver *)self gesture];
  state = [gesture state];

  [firedCopy targetTimestamp];
  v7 = v6;
  gesture2 = [(BKEpubManualCurlDriver *)self gesture];
  v9 = gesture2;
  if (state == &dword_0 + 1)
  {
    [gesture2 setNextTime:v7];

    manualCurlHandler = [(BKEpubManualCurlDriver *)self manualCurlHandler];
    gesture3 = [(BKEpubManualCurlDriver *)self gesture];
    (manualCurlHandler)[2](manualCurlHandler, gesture3);

    gesture4 = [(BKEpubManualCurlDriver *)self gesture];
    [gesture4 setState:2];
  }

  else
  {
    [gesture2 endTime];
    v14 = v13;

    if (v7 <= v14)
    {
      [firedCopy targetTimestamp];
      v20 = v19;
      gesture5 = [(BKEpubManualCurlDriver *)self gesture];
      [gesture5 nextTime];
      v23 = v20 - v22;
      [(BKEpubManualCurlDriver *)self minimumGestureInterval];
      v25 = v24;

      if (v23 >= v25)
      {
        [firedCopy targetTimestamp];
        v27 = v26;
        gesture6 = [(BKEpubManualCurlDriver *)self gesture];
        [gesture6 setNextTime:v27];

        manualCurlHandler2 = [(BKEpubManualCurlDriver *)self manualCurlHandler];
        gesture7 = [(BKEpubManualCurlDriver *)self gesture];
        (manualCurlHandler2)[2](manualCurlHandler2, gesture7);
      }
    }

    else
    {
      gesture8 = [(BKEpubManualCurlDriver *)self gesture];
      [gesture8 setState:3];

      manualCurlHandler3 = [(BKEpubManualCurlDriver *)self manualCurlHandler];
      (manualCurlHandler3)[2](manualCurlHandler3, self->_gesture);

      [(BKEpubManualCurlDriver *)self setManualCurlHandler:0];
      displayLink = [(BKEpubManualCurlDriver *)self displayLink];
      v18 = +[NSRunLoop mainRunLoop];
      [displayLink removeFromRunLoop:v18 forMode:NSDefaultRunLoopMode];

      [(BKEpubManualCurlDriver *)self setDisplayLink:0];
    }
  }
}

@end