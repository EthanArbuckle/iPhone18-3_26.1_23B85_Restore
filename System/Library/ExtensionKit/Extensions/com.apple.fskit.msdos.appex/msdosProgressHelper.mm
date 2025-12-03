@interface msdosProgressHelper
- (id)startPhase:(id)phase parentUnitCount:(int64_t)count phaseTotalCount:(int64_t)totalCount completedCounter:(const unsigned int *)counter;
- (msdosProgressHelper)initWithProgress:(id)progress;
- (void)endPhase:(id)phase;
@end

@implementation msdosProgressHelper

- (msdosProgressHelper)initWithProgress:(id)progress
{
  progressCopy = progress;
  v10.receiver = self;
  v10.super_class = msdosProgressHelper;
  v6 = [(msdosProgressHelper *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_parentProgress, progress);
    childProgress = v7->_childProgress;
    v7->_childProgress = 0;
  }

  return v7;
}

- (id)startPhase:(id)phase parentUnitCount:(int64_t)count phaseTotalCount:(int64_t)totalCount completedCounter:(const unsigned int *)counter
{
  phaseCopy = phase;
  if (self->_childProgress)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100033D50(self);
    }

    v10 = fs_errorForPOSIXError();
  }

  else
  {
    [(NSProgress *)self->_parentProgress setLocalizedDescription:phaseCopy];
    v11 = [NSProgress progressWithTotalUnitCount:totalCount];
    childProgress = self->_childProgress;
    self->_childProgress = v11;

    [(NSProgress *)self->_parentProgress addChild:self->_childProgress withPendingUnitCount:count];
    v10 = 0;
  }

  return v10;
}

- (void)endPhase:(id)phase
{
  if (self->_childProgress)
  {
    [(NSProgress *)self->_parentProgress setLocalizedDescription:phase];
    [(NSProgress *)self->_childProgress setCompletedUnitCount:[(NSProgress *)self->_childProgress totalUnitCount]];
    childProgress = self->_childProgress;
    self->_childProgress = 0;
  }
}

@end