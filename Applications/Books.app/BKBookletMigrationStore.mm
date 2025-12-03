@interface BKBookletMigrationStore
- (BKBookletMigrationStore)init;
- (BOOL)removeAllMigrationInfosExcludingStates:(id)states error:(id *)error;
- (BOOL)setMigrationState:(int64_t)state forStoreIDStrings:(id)strings error:(id *)error;
- (id)_convertToStoreIDs:(id)ds;
- (void)migrationItemsWithState:(int64_t)state completion:(id)completion;
- (void)migrationItemsWithStoreIDStrings:(id)strings completion:(id)completion;
@end

@implementation BKBookletMigrationStore

- (BKBookletMigrationStore)init
{
  v6.receiver = self;
  v6.super_class = BKBookletMigrationStore;
  v2 = [(BKBookletMigrationStore *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(BLBookletMigrationStore);
    store = v2->_store;
    v2->_store = v3;
  }

  return v2;
}

- (id)_convertToStoreIDs:(id)ds
{
  dsCopy = ds;
  v4 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(dsCopy, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = dsCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [NSNumber numberWithUnsignedLongLong:BUStoreIdFromObject(), v12];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BOOL)setMigrationState:(int64_t)state forStoreIDStrings:(id)strings error:(id *)error
{
  v8 = [(BKBookletMigrationStore *)self _convertToStoreIDs:strings];
  store = [(BKBookletMigrationStore *)self store];
  LOBYTE(error) = [store setMigrationState:state forStoreIDs:v8 error:error];

  return error;
}

- (void)migrationItemsWithStoreIDStrings:(id)strings completion:(id)completion
{
  completionCopy = completion;
  v8 = [(BKBookletMigrationStore *)self _convertToStoreIDs:strings];
  store = [(BKBookletMigrationStore *)self store];
  [store migrationInfosWithStoreIDs:v8 completion:completionCopy];
}

- (void)migrationItemsWithState:(int64_t)state completion:(id)completion
{
  completionCopy = completion;
  store = [(BKBookletMigrationStore *)self store];
  [store migrationInfosWithState:state completion:completionCopy];
}

- (BOOL)removeAllMigrationInfosExcludingStates:(id)states error:(id *)error
{
  statesCopy = states;
  store = [(BKBookletMigrationStore *)self store];
  LOBYTE(error) = [store removeAllMigrationInfosExcludingStates:statesCopy error:error];

  return error;
}

@end