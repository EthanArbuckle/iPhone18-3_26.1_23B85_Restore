@interface _CNSpotlightIndexingLogger
- (_CNSpotlightIndexingLogger)init;
- (id)_stringForSpotlightError:(id)error willRetry:(BOOL)retry;
- (void)deferringReindexAsFailedToPrepareForReindexing;
- (void)didNotFinishIndexingForDeltaSyncWithError:(id)error;
- (void)didNotFinishIndexingForFullSyncWithError:(id)error;
- (void)failedToBeginIndexBatchWithSpotlight:(id)spotlight;
- (void)failedToCreateSearchableItemForContactIdentifier:(id)identifier;
- (void)failedToCreateUnarchiverForClientStateWithError:(id)error;
- (void)failedToDeleteAllSearchableItemsWithSpotlight:(id)spotlight willRetry:(BOOL)retry;
- (void)failedToEndIndexBatchWithSpotlight:(id)spotlight willRetry:(BOOL)retry;
- (void)failedToFetchClientStateFromSpotlight:(id)spotlight willRetry:(BOOL)retry;
- (void)failedToFetchContactForContactIdentifier:(id)identifier;
- (void)failedToFetchSearchableForContactIdentifiers:(id)identifiers error:(id)error;
- (void)failedToGetBuildVersionWithError:(int64_t)error;
- (void)failedToJournalItemIdentifiersForDeletionWithSpotlight:(id)spotlight identifiers:(id)identifiers willRetry:(BOOL)retry;
- (void)failedToJournalSearchableItemsForIndexingWithSpotlight:(id)spotlight identifiers:(id)identifiers willRetry:(BOOL)retry;
- (void)failedToUnarchiveClientStateData:(id)data;
- (void)finishedBatchIndexWithUpdateIdentifiers:(id)identifiers deleteIdentifiers:(id)deleteIdentifiers;
- (void)finishedIndexingForDeltaSyncWithUpdateCount:(unint64_t)count deleteCount:(unint64_t)deleteCount;
- (void)finishedIndexingForFullSyncWithCount:(unint64_t)count;
- (void)indexingContacts:(id)contacts;
- (void)noContactChangesToIndex;
- (void)reindexingAllSearchableItems:(id)items;
- (void)reindexingSearchableItemsWithIdentifiers:(id)identifiers;
- (void)unexpectedChangeHistoryError:(id)error;
- (void)verifiedIndexWithSummmary:(id)summmary;
- (void)verifyingIndex:(id)index;
- (void)willBatchIndexForDeltaSyncWithUpdateCount:(unint64_t)count deleteCount:(unint64_t)deleteCount;
- (void)willBatchIndexForFullSyncWithCount:(unint64_t)count lastOffset:(int64_t)offset doneFullSync:(BOOL)sync;
- (void)willIndexAsBuildVersionChanged;
- (void)willReindexAsChangeHistoryIsTruncated;
- (void)willReindexAsFailedToFetchChangeHistoryWithError:(id)error;
- (void)willReindexAsFailedToFetchClientState;
- (void)willReindexAsIndexVersionChangedFrom:(int64_t)from to:(int64_t)to;
- (void)willReindexAsSnapshotAnchorChangedFrom:(id)from to:(id)to;
- (void)willReindexItemsWithIdentifiers:(id)identifiers;
- (void)willResumeIndexingAfterOffset:(int64_t)offset;
- (void)willResumeReindexingAsNotFinished;
- (void)willStartIndexingWithClientState:(id)state;
@end

@implementation _CNSpotlightIndexingLogger

- (_CNSpotlightIndexingLogger)init
{
  v9.receiver = self;
  v9.super_class = _CNSpotlightIndexingLogger;
  v2 = [(_CNSpotlightIndexingLogger *)&v9 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.contacts", "SpotlightIndexing");
    log = v2->_log;
    v2->_log = v3;

    v5 = os_log_create("com.apple.contacts", "SpotlightIndexingSummary");
    summaryLog = v2->_summaryLog;
    v2->_summaryLog = v5;

    v7 = v2;
  }

  return v2;
}

- (void)indexingContacts:(id)contacts
{
  contactsCopy = contacts;
  v5 = os_signpost_id_generate(self->_log);
  v6 = self->_log;
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1954A0000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Indexing Contacts", "", buf, 2u);
  }

  v8 = _os_activity_create(&dword_1954A0000, "IndexingContacts", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47___CNSpotlightIndexingLogger_indexingContacts___block_invoke;
  aBlock[3] = &unk_1E7412A88;
  v19 = v8;
  v9 = v8;
  v10 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47___CNSpotlightIndexingLogger_indexingContacts___block_invoke_2;
  block[3] = &unk_1E7412DD0;
  v11 = contactsCopy;
  v16 = v11;
  v17 = v10;
  v12 = v10;
  os_activity_apply(v9, block);

  v13 = self->_log;
  v14 = v13;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1954A0000, v14, OS_SIGNPOST_INTERVAL_END, v5, "Indexing Contacts", "", buf, 2u);
  }
}

- (void)reindexingAllSearchableItems:(id)items
{
  itemsCopy = items;
  v5 = os_signpost_id_generate(self->_log);
  v6 = self->_log;
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1954A0000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Reindexing All Searchable Items", "", buf, 2u);
  }

  v8 = _os_activity_create(&dword_1954A0000, "ReindexingAllSearchableItems", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59___CNSpotlightIndexingLogger_reindexingAllSearchableItems___block_invoke;
  aBlock[3] = &unk_1E7412A88;
  v19 = v8;
  v9 = v8;
  v10 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59___CNSpotlightIndexingLogger_reindexingAllSearchableItems___block_invoke_2;
  block[3] = &unk_1E7412DD0;
  v11 = itemsCopy;
  v16 = v11;
  v17 = v10;
  v12 = v10;
  os_activity_apply(v9, block);

  v13 = self->_log;
  v14 = v13;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1954A0000, v14, OS_SIGNPOST_INTERVAL_END, v5, "Reindexing All Searchable Items", "", buf, 2u);
  }
}

- (void)reindexingSearchableItemsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = os_signpost_id_generate(self->_log);
  v6 = self->_log;
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1954A0000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Reindexing Searchable Items with Identifiers", "", buf, 2u);
  }

  v8 = _os_activity_create(&dword_1954A0000, "ReindexingSearchableItemsWithIdentifiers", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71___CNSpotlightIndexingLogger_reindexingSearchableItemsWithIdentifiers___block_invoke;
  aBlock[3] = &unk_1E7412A88;
  v19 = v8;
  v9 = v8;
  v10 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71___CNSpotlightIndexingLogger_reindexingSearchableItemsWithIdentifiers___block_invoke_2;
  block[3] = &unk_1E7412DD0;
  v11 = identifiersCopy;
  v16 = v11;
  v17 = v10;
  v12 = v10;
  os_activity_apply(v9, block);

  v13 = self->_log;
  v14 = v13;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1954A0000, v14, OS_SIGNPOST_INTERVAL_END, v5, "Reindexing Searchable Items with Identifiers", "", buf, 2u);
  }
}

- (void)verifyingIndex:(id)index
{
  indexCopy = index;
  v5 = os_signpost_id_generate(self->_log);
  v6 = self->_log;
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1954A0000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Verifying Index", "", buf, 2u);
  }

  v8 = _os_activity_create(&dword_1954A0000, "VerifyingIndex", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45___CNSpotlightIndexingLogger_verifyingIndex___block_invoke;
  aBlock[3] = &unk_1E7412A88;
  v19 = v8;
  v9 = v8;
  v10 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45___CNSpotlightIndexingLogger_verifyingIndex___block_invoke_2;
  block[3] = &unk_1E7412DD0;
  v11 = indexCopy;
  v16 = v11;
  v17 = v10;
  v12 = v10;
  os_activity_apply(v9, block);

  v13 = self->_log;
  v14 = v13;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1954A0000, v14, OS_SIGNPOST_INTERVAL_END, v5, "Verifying Index", "", buf, 2u);
  }
}

- (void)noContactChangesToIndex
{
  v2 = [(_CNSpotlightIndexingLogger *)self log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1954A0000, v2, OS_LOG_TYPE_DEFAULT, "No contact changes to index", v3, 2u);
  }
}

- (void)willReindexItemsWithIdentifiers:(id)identifiers
{
  v10 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v5 = [(_CNSpotlightIndexingLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134218242;
    v7 = [identifiersCopy count];
    v8 = 2114;
    v9 = identifiersCopy;
    _os_log_impl(&dword_1954A0000, v5, OS_LOG_TYPE_DEFAULT, "Will reindex items with identifiers(%ld): %{public}@", &v6, 0x16u);
  }
}

- (void)deferringReindexAsFailedToPrepareForReindexing
{
  v2 = [(_CNSpotlightIndexingLogger *)self log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [(_CNSpotlightIndexingLogger *)v2 deferringReindexAsFailedToPrepareForReindexing:v3];
  }
}

- (void)willStartIndexingWithClientState:(id)state
{
  v8 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v5 = [(_CNSpotlightIndexingLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = stateCopy;
    _os_log_impl(&dword_1954A0000, v5, OS_LOG_TYPE_DEFAULT, "Will start indexing with client state: %@", &v6, 0xCu);
  }
}

- (void)willBatchIndexForFullSyncWithCount:(unint64_t)count lastOffset:(int64_t)offset doneFullSync:(BOOL)sync
{
  syncCopy = sync;
  v16 = *MEMORY[0x1E69E9840];
  v8 = [(_CNSpotlightIndexingLogger *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = &stru_1F094DAB0;
    v10 = 134218498;
    countCopy = count;
    if (syncCopy)
    {
      v9 = @", final batch!";
    }

    v12 = 2048;
    offsetCopy = offset;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_1954A0000, v8, OS_LOG_TYPE_DEFAULT, "Will full sync batch index %li items with last offset %li%@", &v10, 0x20u);
  }
}

- (void)willBatchIndexForDeltaSyncWithUpdateCount:(unint64_t)count deleteCount:(unint64_t)deleteCount
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = [(_CNSpotlightIndexingLogger *)self log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218240;
    countCopy = count;
    v9 = 2048;
    deleteCountCopy = deleteCount;
    _os_log_impl(&dword_1954A0000, v6, OS_LOG_TYPE_DEFAULT, "Will delta sync batch index %li update items and %li delete items", &v7, 0x16u);
  }
}

- (void)willReindexAsFailedToFetchChangeHistoryWithError:(id)error
{
  errorCopy = error;
  v5 = [(_CNSpotlightIndexingLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_CNSpotlightIndexingLogger willReindexAsFailedToFetchChangeHistoryWithError:];
  }
}

- (void)willReindexAsChangeHistoryIsTruncated
{
  v2 = [(_CNSpotlightIndexingLogger *)self log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [(_CNSpotlightIndexingLogger *)v2 willReindexAsChangeHistoryIsTruncated:v3];
  }
}

- (void)willReindexAsFailedToFetchClientState
{
  v2 = [(_CNSpotlightIndexingLogger *)self log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [(_CNSpotlightIndexingLogger *)v2 willReindexAsFailedToFetchClientState:v3];
  }
}

- (void)willResumeReindexingAsNotFinished
{
  v2 = [(_CNSpotlightIndexingLogger *)self log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1954A0000, v2, OS_LOG_TYPE_DEFAULT, "Will resume reindexing as previous attempt did not finish", v3, 2u);
  }
}

- (void)willReindexAsIndexVersionChangedFrom:(int64_t)from to:(int64_t)to
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = [(_CNSpotlightIndexingLogger *)self log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218240;
    fromCopy = from;
    v9 = 2048;
    toCopy = to;
    _os_log_impl(&dword_1954A0000, v6, OS_LOG_TYPE_DEFAULT, "Will reindex as index version has changed from %li to %li", &v7, 0x16u);
  }
}

- (void)willReindexAsSnapshotAnchorChangedFrom:(id)from to:(id)to
{
  v13 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  toCopy = to;
  v8 = [(_CNSpotlightIndexingLogger *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = fromCopy;
    v11 = 2112;
    v12 = toCopy;
    _os_log_impl(&dword_1954A0000, v8, OS_LOG_TYPE_DEFAULT, "Will reindex as the snapshot anchor has changed from %@ to %@", &v9, 0x16u);
  }
}

- (void)willResumeIndexingAfterOffset:(int64_t)offset
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = [(_CNSpotlightIndexingLogger *)self log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    offsetCopy = offset;
    _os_log_impl(&dword_1954A0000, v4, OS_LOG_TYPE_DEFAULT, "Will resume the reindex after offset %li", &v5, 0xCu);
  }
}

- (void)willIndexAsBuildVersionChanged
{
  v2 = [(_CNSpotlightIndexingLogger *)self log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1954A0000, v2, OS_LOG_TYPE_DEFAULT, "Will index as build version changed.", v3, 2u);
  }
}

- (void)failedToCreateSearchableItemForContactIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(_CNSpotlightIndexingLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_CNSpotlightIndexingLogger failedToCreateSearchableItemForContactIdentifier:];
  }
}

- (void)failedToFetchContactForContactIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(_CNSpotlightIndexingLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_CNSpotlightIndexingLogger failedToFetchContactForContactIdentifier:];
  }
}

- (void)failedToFetchSearchableForContactIdentifiers:(id)identifiers error:(id)error
{
  identifiersCopy = identifiers;
  errorCopy = error;
  v8 = [(_CNSpotlightIndexingLogger *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(_CNSpotlightIndexingLogger *)identifiersCopy failedToFetchSearchableForContactIdentifiers:errorCopy error:v8];
  }
}

- (id)_stringForSpotlightError:(id)error willRetry:(BOOL)retry
{
  v4 = @"%@";
  if (retry)
  {
    v4 = @"will retry, %@";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:v4, error];
}

- (void)failedToFetchClientStateFromSpotlight:(id)spotlight willRetry:(BOOL)retry
{
  retryCopy = retry;
  v11 = *MEMORY[0x1E69E9840];
  spotlightCopy = spotlight;
  v7 = [(_CNSpotlightIndexingLogger *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = [(_CNSpotlightIndexingLogger *)self _stringForSpotlightError:spotlightCopy willRetry:retryCopy];
    v9 = 138543362;
    v10 = v8;
    _os_log_error_impl(&dword_1954A0000, v7, OS_LOG_TYPE_ERROR, "Failed to fetch client state from CoreSpotlight, %{public}@", &v9, 0xCu);
  }
}

- (void)failedToBeginIndexBatchWithSpotlight:(id)spotlight
{
  spotlightCopy = spotlight;
  v5 = [(_CNSpotlightIndexingLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_CNSpotlightIndexingLogger failedToBeginIndexBatchWithSpotlight:];
  }
}

- (void)failedToEndIndexBatchWithSpotlight:(id)spotlight willRetry:(BOOL)retry
{
  retryCopy = retry;
  v11 = *MEMORY[0x1E69E9840];
  spotlightCopy = spotlight;
  v7 = [(_CNSpotlightIndexingLogger *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = [(_CNSpotlightIndexingLogger *)self _stringForSpotlightError:spotlightCopy willRetry:retryCopy];
    v9 = 138543362;
    v10 = v8;
    _os_log_error_impl(&dword_1954A0000, v7, OS_LOG_TYPE_ERROR, "Failed to end index batch with CoreSpotlight, %{public}@", &v9, 0xCu);
  }
}

- (void)failedToJournalSearchableItemsForIndexingWithSpotlight:(id)spotlight identifiers:(id)identifiers willRetry:(BOOL)retry
{
  retryCopy = retry;
  v18 = *MEMORY[0x1E69E9840];
  spotlightCopy = spotlight;
  identifiersCopy = identifiers;
  v10 = [(_CNSpotlightIndexingLogger *)self log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = [(_CNSpotlightIndexingLogger *)self _stringForSpotlightError:spotlightCopy willRetry:retryCopy];
    v12 = 138412802;
    v13 = v11;
    v14 = 2048;
    v15 = [identifiersCopy count];
    v16 = 2114;
    v17 = identifiersCopy;
    _os_log_error_impl(&dword_1954A0000, v10, OS_LOG_TYPE_ERROR, "Failed to journal searchable items for indexing with CoreSpotlight, %@ \nidentifiers(%ld) %{public}@", &v12, 0x20u);
  }
}

- (void)failedToJournalItemIdentifiersForDeletionWithSpotlight:(id)spotlight identifiers:(id)identifiers willRetry:(BOOL)retry
{
  retryCopy = retry;
  v18 = *MEMORY[0x1E69E9840];
  spotlightCopy = spotlight;
  identifiersCopy = identifiers;
  v10 = [(_CNSpotlightIndexingLogger *)self log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = [(_CNSpotlightIndexingLogger *)self _stringForSpotlightError:spotlightCopy willRetry:retryCopy];
    v12 = 138543874;
    v13 = v11;
    v14 = 2048;
    v15 = [identifiersCopy count];
    v16 = 2114;
    v17 = identifiersCopy;
    _os_log_error_impl(&dword_1954A0000, v10, OS_LOG_TYPE_ERROR, "Failed to journal searchable item identifiers for deletion with CoreSpotlight,%{public}@ \nidentifiers(%ld) %{public}@", &v12, 0x20u);
  }
}

- (void)failedToDeleteAllSearchableItemsWithSpotlight:(id)spotlight willRetry:(BOOL)retry
{
  retryCopy = retry;
  v11 = *MEMORY[0x1E69E9840];
  spotlightCopy = spotlight;
  v7 = [(_CNSpotlightIndexingLogger *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = [(_CNSpotlightIndexingLogger *)self _stringForSpotlightError:spotlightCopy willRetry:retryCopy];
    v9 = 138543362;
    v10 = v8;
    _os_log_error_impl(&dword_1954A0000, v7, OS_LOG_TYPE_ERROR, "Failed to delete all searchable items with CoreSpotlight, %{public}@", &v9, 0xCu);
  }
}

- (void)failedToUnarchiveClientStateData:(id)data
{
  dataCopy = data;
  v5 = [(_CNSpotlightIndexingLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_CNSpotlightIndexingLogger failedToUnarchiveClientStateData:];
  }
}

- (void)failedToCreateUnarchiverForClientStateWithError:(id)error
{
  errorCopy = error;
  v5 = [(_CNSpotlightIndexingLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_CNSpotlightIndexingLogger failedToCreateUnarchiverForClientStateWithError:];
  }
}

- (void)failedToGetBuildVersionWithError:(int64_t)error
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = [(_CNSpotlightIndexingLogger *)self log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    errorCopy = error;
    _os_log_impl(&dword_1954A0000, v4, OS_LOG_TYPE_DEFAULT, "Failed to get the build version, kMGError %li", &v5, 0xCu);
  }
}

- (void)finishedIndexingForFullSyncWithCount:(unint64_t)count
{
  v7 = *MEMORY[0x1E69E9840];
  summaryLog = [(_CNSpotlightIndexingLogger *)self summaryLog];
  if (os_log_type_enabled(summaryLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    countCopy = count;
    _os_log_impl(&dword_1954A0000, summaryLog, OS_LOG_TYPE_DEFAULT, "Finished indexing for full sync with %ld contacts", &v5, 0xCu);
  }
}

- (void)finishedIndexingForDeltaSyncWithUpdateCount:(unint64_t)count deleteCount:(unint64_t)deleteCount
{
  v11 = *MEMORY[0x1E69E9840];
  summaryLog = [(_CNSpotlightIndexingLogger *)self summaryLog];
  if (os_log_type_enabled(summaryLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218240;
    countCopy = count;
    v9 = 2048;
    deleteCountCopy = deleteCount;
    _os_log_impl(&dword_1954A0000, summaryLog, OS_LOG_TYPE_DEFAULT, "Finished indexing for delta sync with %li updates and %li deletes", &v7, 0x16u);
  }
}

- (void)finishedBatchIndexWithUpdateIdentifiers:(id)identifiers deleteIdentifiers:(id)deleteIdentifiers
{
  v17 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  deleteIdentifiersCopy = deleteIdentifiers;
  summaryLog = [(_CNSpotlightIndexingLogger *)self summaryLog];
  if (os_log_type_enabled(summaryLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218754;
    v10 = [identifiersCopy count];
    v11 = 2114;
    v12 = identifiersCopy;
    v13 = 2048;
    v14 = [deleteIdentifiersCopy count];
    v15 = 2114;
    v16 = deleteIdentifiersCopy;
    _os_log_impl(&dword_1954A0000, summaryLog, OS_LOG_TYPE_DEFAULT, "Finished batch index \nupdateIdentifiers(%ld) \n%{public}@ \ndeleteIdentifiers(%ld) \n%{public}@", &v9, 0x2Au);
  }
}

- (void)didNotFinishIndexingForFullSyncWithError:(id)error
{
  errorCopy = error;
  summaryLog = [(_CNSpotlightIndexingLogger *)self summaryLog];
  if (os_log_type_enabled(summaryLog, OS_LOG_TYPE_ERROR))
  {
    [_CNSpotlightIndexingLogger didNotFinishIndexingForFullSyncWithError:];
  }
}

- (void)didNotFinishIndexingForDeltaSyncWithError:(id)error
{
  errorCopy = error;
  summaryLog = [(_CNSpotlightIndexingLogger *)self summaryLog];
  if (os_log_type_enabled(summaryLog, OS_LOG_TYPE_ERROR))
  {
    [_CNSpotlightIndexingLogger didNotFinishIndexingForDeltaSyncWithError:];
  }
}

- (void)verifiedIndexWithSummmary:(id)summmary
{
  v8 = *MEMORY[0x1E69E9840];
  summmaryCopy = summmary;
  summaryLog = [(_CNSpotlightIndexingLogger *)self summaryLog];
  if (os_log_type_enabled(summaryLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = summmaryCopy;
    _os_log_impl(&dword_1954A0000, summaryLog, OS_LOG_TYPE_DEFAULT, "Verified index, summary: \n%{public}@", &v6, 0xCu);
  }
}

- (void)unexpectedChangeHistoryError:(id)error
{
  v8 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = [(_CNSpotlightIndexingLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138477827;
    v7 = errorCopy;
    _os_log_impl(&dword_1954A0000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to fetch from change history, got unexpected error: %{private}@", &v6, 0xCu);
  }
}

- (void)failedToFetchSearchableForContactIdentifiers:(NSObject *)a3 error:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  [a1 count];
  OUTLINED_FUNCTION_1();
  v7 = 2114;
  v8 = a1;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1954A0000, a3, OS_LOG_TYPE_ERROR, "Failed to fetch searchable items for contact identifiers(%ld) %{public}@, error: %@", v6, 0x20u);
}

@end