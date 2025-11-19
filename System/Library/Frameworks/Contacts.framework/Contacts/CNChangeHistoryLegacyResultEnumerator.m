@interface CNChangeHistoryLegacyResultEnumerator
+ (id)contactEnumeratorWithChanges:(id)a3 keysToFetch:(id)a4 unifyResults:(BOOL)a5 contactStore:(id)a6;
+ (id)groupEnumeratorWithChanges:(id)a3 contactStore:(id)a4;
- (CNChangeHistoryLegacyResultEnumerator)initWithChanges:(id)a3 refillStrategy:(id)a4;
- (id)nextObject;
- (void)_fetchNextBatch;
@end

@implementation CNChangeHistoryLegacyResultEnumerator

+ (id)contactEnumeratorWithChanges:(id)a3 keysToFetch:(id)a4 unifyResults:(BOOL)a5 contactStore:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [[_CNChangeHistoryContactRefillStrategy alloc] initWithKeysToFetch:v10 unifyResults:a5 contactStore:v9];

  v13 = [[CNChangeHistoryLegacyResultEnumerator alloc] initWithChanges:v11 refillStrategy:v12];

  return v13;
}

+ (id)groupEnumeratorWithChanges:(id)a3 contactStore:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[_CNChangeHistoryGroupRefillStrategy alloc] initWithContactStore:v5];

  v8 = [[CNChangeHistoryLegacyResultEnumerator alloc] initWithChanges:v6 refillStrategy:v7];

  return v8;
}

- (CNChangeHistoryLegacyResultEnumerator)initWithChanges:(id)a3 refillStrategy:(id)a4
{
  v6 = a3;
  v7 = a4;
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

    v13 = [v7 batchesToRepresentObjects:v6 suggestedBatchSize:100];
    [(CNQueue *)v8->_batchFetchQueue enqueueObjectsFromArray:v13];
    objc_storeStrong(&v8->_refillStrategy, a4);
    v14 = v8;
  }

  return v8;
}

- (id)nextObject
{
  v3 = [(CNChangeHistoryLegacyResultEnumerator *)self changes];
  v4 = [v3 count];

  if (!v4)
  {
    [(CNChangeHistoryLegacyResultEnumerator *)self _fetchNextBatch];
  }

  v5 = [(CNChangeHistoryLegacyResultEnumerator *)self changes];
  v6 = [v5 dequeue];

  return v6;
}

- (void)_fetchNextBatch
{
  v3 = [(CNChangeHistoryLegacyResultEnumerator *)self batchFetchQueue];
  v7 = [v3 dequeue];

  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    v4 = [(CNChangeHistoryLegacyResultEnumerator *)self refillStrategy];
    v5 = [v4 objectsRepresentedByBatch:v7];

    v6 = [(CNChangeHistoryLegacyResultEnumerator *)self changes];
    [v6 enqueueObjectsFromArray:v5];
  }
}

@end