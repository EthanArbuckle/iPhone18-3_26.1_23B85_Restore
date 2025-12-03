@interface CNChangeHistoryLegacyResultEnumerator
+ (id)contactEnumeratorWithChanges:(id)changes keysToFetch:(id)fetch unifyResults:(BOOL)results contactStore:(id)store;
+ (id)groupEnumeratorWithChanges:(id)changes contactStore:(id)store;
- (CNChangeHistoryLegacyResultEnumerator)initWithChanges:(id)changes refillStrategy:(id)strategy;
- (id)nextObject;
- (void)_fetchNextBatch;
@end

@implementation CNChangeHistoryLegacyResultEnumerator

+ (id)contactEnumeratorWithChanges:(id)changes keysToFetch:(id)fetch unifyResults:(BOOL)results contactStore:(id)store
{
  storeCopy = store;
  fetchCopy = fetch;
  changesCopy = changes;
  v12 = [[_CNChangeHistoryContactRefillStrategy alloc] initWithKeysToFetch:fetchCopy unifyResults:results contactStore:storeCopy];

  v13 = [[CNChangeHistoryLegacyResultEnumerator alloc] initWithChanges:changesCopy refillStrategy:v12];

  return v13;
}

+ (id)groupEnumeratorWithChanges:(id)changes contactStore:(id)store
{
  storeCopy = store;
  changesCopy = changes;
  v7 = [[_CNChangeHistoryGroupRefillStrategy alloc] initWithContactStore:storeCopy];

  v8 = [[CNChangeHistoryLegacyResultEnumerator alloc] initWithChanges:changesCopy refillStrategy:v7];

  return v8;
}

- (CNChangeHistoryLegacyResultEnumerator)initWithChanges:(id)changes refillStrategy:(id)strategy
{
  changesCopy = changes;
  strategyCopy = strategy;
  v16.receiver = self;
  v16.super_class = CNChangeHistoryLegacyResultEnumerator;
  v8 = [(CNChangeHistoryLegacyResultEnumerator *)&v16 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69967F0]);
    changes = v8->_changes;
    v8->_changes = v9;

    v11 = objc_alloc_init(MEMORY[0x1E69967F0]);
    batchFetchQueue = v8->_batchFetchQueue;
    v8->_batchFetchQueue = v11;

    v13 = [strategyCopy batchesToRepresentObjects:changesCopy suggestedBatchSize:100];
    [(CNQueue *)v8->_batchFetchQueue enqueueObjectsFromArray:v13];
    objc_storeStrong(&v8->_refillStrategy, strategy);
    v14 = v8;
  }

  return v8;
}

- (id)nextObject
{
  changes = [(CNChangeHistoryLegacyResultEnumerator *)self changes];
  v4 = [changes count];

  if (!v4)
  {
    [(CNChangeHistoryLegacyResultEnumerator *)self _fetchNextBatch];
  }

  changes2 = [(CNChangeHistoryLegacyResultEnumerator *)self changes];
  dequeue = [changes2 dequeue];

  return dequeue;
}

- (void)_fetchNextBatch
{
  batchFetchQueue = [(CNChangeHistoryLegacyResultEnumerator *)self batchFetchQueue];
  dequeue = [batchFetchQueue dequeue];

  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    refillStrategy = [(CNChangeHistoryLegacyResultEnumerator *)self refillStrategy];
    v5 = [refillStrategy objectsRepresentedByBatch:dequeue];

    changes = [(CNChangeHistoryLegacyResultEnumerator *)self changes];
    [changes enqueueObjectsFromArray:v5];
  }
}

@end