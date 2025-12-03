@interface PHProgressContainerForRetryableRequest
- (PHProgressContainerForRetryableRequest)init;
- (void)setRequestProgress:(id)progress;
@end

@implementation PHProgressContainerForRetryableRequest

- (void)setRequestProgress:(id)progress
{
  progressCopy = progress;
  totalUnitCount = [(NSProgress *)self->_totalProgress totalUnitCount];
  currentRequestProgress = self->_currentRequestProgress;
  if (currentRequestProgress)
  {
    [(NSProgress *)currentRequestProgress setCompletedUnitCount:0];
    v7 = self->_currentRequestProgress;
  }

  else
  {
    v7 = 0;
  }

  self->_currentRequestProgress = progressCopy;
  v8 = progressCopy;

  [(NSProgress *)self->_totalProgress addChild:self->_currentRequestProgress withPendingUnitCount:totalUnitCount];
}

- (PHProgressContainerForRetryableRequest)init
{
  v6.receiver = self;
  v6.super_class = PHProgressContainerForRetryableRequest;
  v2 = [(PHProgressContainerForRetryableRequest *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:1000];
    totalProgress = v2->_totalProgress;
    v2->_totalProgress = v3;
  }

  return v2;
}

@end