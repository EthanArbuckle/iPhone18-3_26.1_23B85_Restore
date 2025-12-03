@interface SHLSyncSessionFetchTask
- (SHLSyncSession)session;
- (SHLSyncSessionFetchTask)init;
- (SHLSyncSessionFetchTask)initWithCoder:(id)coder;
- (SHLSyncSessionFetchTaskDelegate)delegate;
- (void)encodeWithCoder:(id)coder;
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
    uUIDString = [v3 UUIDString];
    identifier = v2->_identifier;
    v2->_identifier = uUIDString;

    v6 = [NSProgress progressWithTotalUnitCount:1];
    progress = v2->_progress;
    v2->_progress = v6;

    v2->_retryCount = 0;
  }

  return v2;
}

- (SHLSyncSessionFetchTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SHLSyncSessionFetchTask;
  v5 = [(SHLSyncSessionFetchTask *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHLSyncSessionFetchTaskIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_fetchType = [coderCopy decodeIntegerForKey:@"SHLSyncSessionFetchTaskFetchType"];
    v5->_syncStartCondition = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHLSyncSessionFetchTaskSyncTrigger"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"SHLSyncSessionFetchTaskIdentifier"];
  [coderCopy encodeInteger:self->_fetchType forKey:@"SHLSyncSessionFetchTaskFetchType"];
  [coderCopy encodeObject:self->_syncStartCondition forKey:@"SHLSyncSessionFetchTaskSyncTrigger"];
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