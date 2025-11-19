@interface AMSMetricsIdentifierStoreInfo
- (id)description;
@end

@implementation AMSMetricsIdentifierStoreInfo

- (id)description
{
  v13.receiver = self;
  v13.super_class = AMSMetricsIdentifierStoreInfo;
  v3 = [(AMSMetricsIdentifierStoreInfo *)&v13 description];
  v12 = *&self->_storeKey;
  started = self->_started;
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_resetInterval];
  lastSync = self->_lastSync;
  modified = self->_modified;
  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_crossDeviceSync];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_deleted];
  v10 = [v3 stringByAppendingFormat:@" (storeKey: %@, storeUUID: %@, started: %@, resetInterval: %@, modified: %@, lastSync: %@, crossDeviceSync: %@, deleted: %@, account: %@)", v12, started, v5, modified, lastSync, v8, v9, self->_account];

  return v10;
}

@end