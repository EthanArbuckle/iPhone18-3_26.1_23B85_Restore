@interface ACDKeychainItemCache
- (NSMutableDictionary)nonSyncableItems;
- (NSMutableDictionary)syncableItems;
@end

@implementation ACDKeychainItemCache

- (NSMutableDictionary)syncableItems
{
  syncableItems = self->_syncableItems;
  if (!syncableItems)
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    v5 = self->_syncableItems;
    self->_syncableItems = v4;

    syncableItems = self->_syncableItems;
  }

  return syncableItems;
}

- (NSMutableDictionary)nonSyncableItems
{
  nonSyncableItems = self->_nonSyncableItems;
  if (!nonSyncableItems)
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    v5 = self->_nonSyncableItems;
    self->_nonSyncableItems = v4;

    nonSyncableItems = self->_nonSyncableItems;
  }

  return nonSyncableItems;
}

@end