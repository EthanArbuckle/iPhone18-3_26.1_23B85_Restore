@interface ATThroughputCalculator
- (ATThroughputCalculator)init;
- (BOOL)update:(double)update;
- (double)throughput;
- (void)resume;
- (void)suspend;
@end

@implementation ATThroughputCalculator

- (double)throughput
{
  if (CFAbsoluteTimeGetCurrent() - self->_startTime < 5.0)
  {
    return -1.0;
  }

  average = self->_average;

  [(ATMovingAverage *)average average];
  return result;
}

- (BOOL)update:(double)update
{
  if (self->_suspended)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ATThroughputCalculator.m" lineNumber:47 description:@"calculator is suspended"];
  }

  Current = CFAbsoluteTimeGetCurrent();
  v6 = Current - self->_lastUpdate;
  v7 = self->_currentValue + update;
  self->_currentValue = v7;
  if (v6 >= 1.0)
  {
    [(ATMovingAverage *)self->_average update:v7 / v6];
    self->_lastUpdate = Current;
    self->_currentValue = 0.0;
  }

  return v6 >= 1.0;
}

- (void)suspend
{
  if (self->_suspended)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ATThroughputCalculator.m" lineNumber:41 description:@"calculator is suspended"];
  }

  self->_suspended = 1;
}

- (void)resume
{
  if (!self->_suspended)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ATThroughputCalculator.m" lineNumber:32 description:@"calculator is not suspended"];
  }

  Current = CFAbsoluteTimeGetCurrent();
  self->_lastUpdate = Current;
  self->_startTime = Current;
  self->_currentValue = 0.0;
  self->_suspended = 0;
}

- (ATThroughputCalculator)init
{
  v7.receiver = self;
  v7.super_class = ATThroughputCalculator;
  v2 = [(ATThroughputCalculator *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_suspended = 1;
    v4 = [[ATMovingAverage alloc] initWithWindow:5];
    average = v3->_average;
    v3->_average = v4;
  }

  return v3;
}

@end