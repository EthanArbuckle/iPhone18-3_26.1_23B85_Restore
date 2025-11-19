@interface RCWaveformSegmentAccumulator
- (BOOL)waitUntilFinished;
- (RCWaveformSegmentAccumulator)initWithWaveformGenerator:(id)a3;
- (void)dealloc;
@end

@implementation RCWaveformSegmentAccumulator

- (RCWaveformSegmentAccumulator)initWithWaveformGenerator:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = RCWaveformSegmentAccumulator;
  v6 = [(RCWaveformSegmentAccumulator *)&v10 init];
  if (v6)
  {
    v7 = +[NSMutableArray array];
    segments = v6->_segments;
    v6->_segments = v7;

    objc_storeStrong(&v6->_generator, a3);
    [(RCWaveformGenerator *)v6->_generator addSegmentOutputObserver:v6];
    [(RCWaveformGenerator *)v6->_generator beginLoading];
  }

  return v6;
}

- (void)dealloc
{
  [(RCWaveformGenerator *)self->_generator removeSegmentOutputObserver:self];
  v3.receiver = self;
  v3.super_class = RCWaveformSegmentAccumulator;
  [(RCWaveformSegmentAccumulator *)&v3 dealloc];
}

- (BOOL)waitUntilFinished
{
  v3 = dispatch_semaphore_create(0);
  generator = self->_generator;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10E18;
  v7[3] = &unk_6D3A8;
  v5 = v3;
  v8 = v5;
  [(RCWaveformGenerator *)generator finishLoadingWithCompletionTimeout:-1 completionBlock:v7];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  self->_finishedSuccessfully = ![(RCWaveformGenerator *)self->_generator canceled];
  LOBYTE(self) = [(RCWaveformGenerator *)self->_generator canceled];

  return self ^ 1;
}

@end