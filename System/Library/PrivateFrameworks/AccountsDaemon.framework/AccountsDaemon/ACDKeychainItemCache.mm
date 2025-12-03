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
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v5 = self->_syncableItems;
    self->_syncableItems = dictionary;

    syncableItems = self->_syncableItems;
  }

  return syncableItems;
}

- (NSMutableDictionary)nonSyncableItems
{
  nonSyncableItems = self->_nonSyncableItems;
  if (!nonSyncableItems)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v5 = self->_nonSyncableItems;
    self->_nonSyncableItems = dictionary;

    nonSyncableItems = self->_nonSyncableItems;
  }

  return nonSyncableItems;
}

@end