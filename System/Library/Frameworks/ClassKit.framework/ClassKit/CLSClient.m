@interface CLSClient
- (CLSClientDelegate)delagate;
- (void)clientRemote_databaseRecreated;
@end

@implementation CLSClient

- (void)clientRemote_databaseRecreated
{
  v2 = clsNotificationQueue();
  dispatch_async(v2, &unk_284A08228);
}

- (CLSClientDelegate)delagate
{
  WeakRetained = objc_loadWeakRetained(&self->_delagate);

  return WeakRetained;
}

@end