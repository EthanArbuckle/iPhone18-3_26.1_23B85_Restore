@interface BKEpubManualCurlDriver
- (BKEpubManualCurlDriver)initWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 time:(double)a5;
- (void)_linkFired:(id)a3;
- (void)run:(id)a3;
@end

@implementation BKEpubManualCurlDriver

- (BKEpubManualCurlDriver)initWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 time:(double)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a3.y;
  v9 = a3.x;
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
    v14 = [[BKEpubManualCurlGestureImplementation alloc] initWithStartPoint:v9 endPoint:v8 duration:x, y, a5];
    gesture = v10->_gesture;
    v10->_gesture = v14;
  }

  return v10;
}

- (void)run:(id)a3
{
  [(BKEpubManualCurlDriver *)self setManualCurlHandler:a3];
  v4 = [(BKEpubManualCurlDriver *)self gesture];
  [v4 setState:1];

  v5 = CACurrentMediaTime();
  v6 = [(BKEpubManualCurlDriver *)self gesture];
  [v6 setStartTime:v5];

  v8 = [(BKEpubManualCurlDriver *)self displayLink];
  v7 = +[NSRunLoop mainRunLoop];
  [v8 addToRunLoop:v7 forMode:NSDefaultRunLoopMode];
}

- (void)_linkFired:(id)a3
{
  v31 = a3;
  v4 = [(BKEpubManualCurlDriver *)self gesture];
  v5 = [v4 state];

  [v31 targetTimestamp];
  v7 = v6;
  v8 = [(BKEpubManualCurlDriver *)self gesture];
  v9 = v8;
  if (v5 == &dword_0 + 1)
  {
    [v8 setNextTime:v7];

    v10 = [(BKEpubManualCurlDriver *)self manualCurlHandler];
    v11 = [(BKEpubManualCurlDriver *)self gesture];
    (v10)[2](v10, v11);

    v12 = [(BKEpubManualCurlDriver *)self gesture];
    [v12 setState:2];
  }

  else
  {
    [v8 endTime];
    v14 = v13;

    if (v7 <= v14)
    {
      [v31 targetTimestamp];
      v20 = v19;
      v21 = [(BKEpubManualCurlDriver *)self gesture];
      [v21 nextTime];
      v23 = v20 - v22;
      [(BKEpubManualCurlDriver *)self minimumGestureInterval];
      v25 = v24;

      if (v23 >= v25)
      {
        [v31 targetTimestamp];
        v27 = v26;
        v28 = [(BKEpubManualCurlDriver *)self gesture];
        [v28 setNextTime:v27];

        v29 = [(BKEpubManualCurlDriver *)self manualCurlHandler];
        v30 = [(BKEpubManualCurlDriver *)self gesture];
        (v29)[2](v29, v30);
      }
    }

    else
    {
      v15 = [(BKEpubManualCurlDriver *)self gesture];
      [v15 setState:3];

      v16 = [(BKEpubManualCurlDriver *)self manualCurlHandler];
      (v16)[2](v16, self->_gesture);

      [(BKEpubManualCurlDriver *)self setManualCurlHandler:0];
      v17 = [(BKEpubManualCurlDriver *)self displayLink];
      v18 = +[NSRunLoop mainRunLoop];
      [v17 removeFromRunLoop:v18 forMode:NSDefaultRunLoopMode];

      [(BKEpubManualCurlDriver *)self setDisplayLink:0];
    }
  }
}

@end