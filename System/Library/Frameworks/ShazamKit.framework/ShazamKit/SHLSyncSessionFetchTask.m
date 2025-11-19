@interface SHLSyncSessionFetchTask
- (SHLSyncSession)session;
- (SHLSyncSessionFetchTask)init;
- (SHLSyncSessionFetchTask)initWithCoder:(id)a3;
- (SHLSyncSessionFetchTaskDelegate)delegate;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SHLSyncSessionFetchTask

- (SHLSyncSessionFetchTask)init
{
  v9.receiver = self;
  v9.super_class = SHLSyncSessionFetchTask;
  v2 = [(SHLSyncSessionFetchTask *)&v9 init];
  if (v2)
  {
    v3 = +[NSUUID UUID];
    v4 = [v3 UUIDString];
    identifier = v2->_identifier;
    v2->_identifier = v4;

    v6 = [NSProgress progressWithTotalUnitCount:1];
    progress = v2->_progress;
    v2->_progress = v6;

    v2->_retryCount = 0;
  }

  return v2;
}

- (SHLSyncSessionFetchTask)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SHLSyncSessionFetchTask;
  v5 = [(SHLSyncSessionFetchTask *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHLSyncSessionFetchTaskIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_fetchType = [v4 decodeIntegerForKey:@"SHLSyncSessionFetchTaskFetchType"];
    v5->_syncStartCondition = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHLSyncSessionFetchTaskSyncTrigger"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"SHLSyncSessionFetchTaskIdentifier"];
  [v5 encodeInteger:self->_fetchType forKey:@"SHLSyncSessionFetchTaskFetchType"];
  [v5 encodeObject:self->_syncStartCondition forKey:@"SHLSyncSessionFetchTaskSyncTrigger"];
}

- (SHLSyncSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->session);

  return WeakRetained;
}

- (SHLSyncSessionFetchTaskDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end