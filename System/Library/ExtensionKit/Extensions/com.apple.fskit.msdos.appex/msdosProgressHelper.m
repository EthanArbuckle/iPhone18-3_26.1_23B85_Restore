@interface msdosProgressHelper
- (id)startPhase:(id)a3 parentUnitCount:(int64_t)a4 phaseTotalCount:(int64_t)a5 completedCounter:(const unsigned int *)a6;
- (msdosProgressHelper)initWithProgress:(id)a3;
- (void)endPhase:(id)a3;
@end

@implementation msdosProgressHelper

- (msdosProgressHelper)initWithProgress:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = msdosProgressHelper;
  v6 = [(msdosProgressHelper *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_parentProgress, a3);
    childProgress = v7->_childProgress;
    v7->_childProgress = 0;
  }

  return v7;
}

- (id)startPhase:(id)a3 parentUnitCount:(int64_t)a4 phaseTotalCount:(int64_t)a5 completedCounter:(const unsigned int *)a6
{
  v9 = a3;
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
    [(NSProgress *)self->_parentProgress setLocalizedDescription:v9];
    v11 = [NSProgress progressWithTotalUnitCount:a5];
    childProgress = self->_childProgress;
    self->_childProgress = v11;

    [(NSProgress *)self->_parentProgress addChild:self->_childProgress withPendingUnitCount:a4];
    v10 = 0;
  }

  return v10;
}

- (void)endPhase:(id)a3
{
  if (self->_childProgress)
  {
    [(NSProgress *)self->_parentProgress setLocalizedDescription:a3];
    [(NSProgress *)self->_childProgress setCompletedUnitCount:[(NSProgress *)self->_childProgress totalUnitCount]];
    childProgress = self->_childProgress;
    self->_childProgress = 0;
  }
}

@end