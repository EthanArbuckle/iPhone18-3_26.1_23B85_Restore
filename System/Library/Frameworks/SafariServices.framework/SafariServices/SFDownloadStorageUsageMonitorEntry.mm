@interface SFDownloadStorageUsageMonitorEntry
- (SFDownloadStorageUsageMonitorEntry)initWithIdentifier:(id)identifier;
- (SFDownloadStorageUsageMonitorEntryDelegate)delegate;
- (void)_didGainProgress:(id)progress;
- (void)_didLoseProgress:(id)progress;
- (void)_updateProgressSubscriptionWithData:(id)data;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)updateWithDictionaryRepresentation:(id)representation;
@end

@implementation SFDownloadStorageUsageMonitorEntry

- (SFDownloadStorageUsageMonitorEntry)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [(SFDownloadStorageUsageMonitorEntry *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
    v8 = v7;
  }

  return v7;
}

- (void)_didGainProgress:(id)progress
{
  progressCopy = progress;
  fileOperationKind = [progressCopy fileOperationKind];
  v6 = [fileOperationKind isEqualToString:*MEMORY[0x1E696A848]];

  if (v6)
  {
    objc_storeStrong(&self->_progress, progress);
    [progressCopy addObserver:self forKeyPath:@"completedUnitCount" options:1 context:entryProgressCompletedUnitCountKVOContext];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (entryProgressCompletedUnitCountKVOContext == context)
  {
    self->_cachedUsage = [(NSProgress *)self->_progress completedUnitCount:path];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained entryDidChangeUsage:self];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SFDownloadStorageUsageMonitorEntry;
    [(SFDownloadStorageUsageMonitorEntry *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)_didLoseProgress:(id)progress
{
  progress = self->_progress;
  if (progress == progress)
  {
    [(NSProgress *)progress removeObserver:self forKeyPath:@"completedUnitCount" context:entryProgressCompletedUnitCountKVOContext];
    v5 = self->_progress;
    self->_progress = 0;

    v6 = _SFSafariContainerURL();
    v14 = [v6 URLByAppendingPathComponent:@"/" isDirectory:1];

    v7 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:self->_destinationPath isDirectory:0 relativeToURL:v14];
    cachedUsage = self->_cachedUsage;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [v7 path];
    v11 = [defaultManager attributesOfItemAtPath:path error:0];
    v12 = [v11 safari_numberForKey:*MEMORY[0x1E696A3B8]];
    self->_cachedUsage = [v12 integerValue];

    if (cachedUsage != self->_cachedUsage)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained entryDidChangeUsage:self];
    }
  }
}

- (void)_updateProgressSubscriptionWithData:(id)data
{
  dataCopy = data;
  progressSubscriber = self->_progressSubscriber;
  if (progressSubscriber)
  {
    if (self->_progress)
    {
      [(SFDownloadStorageUsageMonitorEntry *)self _didLoseProgress:self->_progress];
      progressSubscriber = self->_progressSubscriber;
    }

    [MEMORY[0x1E696AE38] removeSubscriber:progressSubscriber];
    v7 = self->_progressSubscriber;
    self->_progressSubscriber = 0;
  }

  objc_storeStrong(&self->_progressData, data);
  if (dataCopy)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DFF8]) initByResolvingBookmarkData:dataCopy options:0 relativeToURL:0 bookmarkDataIsStale:0 error:0];
    if (v8)
    {
      v9 = v8;
      objc_initWeak(&location, self);
      v10 = MEMORY[0x1E696AE38];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __74__SFDownloadStorageUsageMonitorEntry__updateProgressSubscriptionWithData___block_invoke;
      v13[3] = &unk_1E84902C0;
      objc_copyWeak(&v14, &location);
      v11 = [v10 addSubscriberForFileURL:v9 withPublishingHandler:v13];
      v12 = self->_progressSubscriber;
      self->_progressSubscriber = v11;

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }
}

id __74__SFDownloadStorageUsageMonitorEntry__updateProgressSubscriptionWithData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didGainProgress:v3];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__SFDownloadStorageUsageMonitorEntry__updateProgressSubscriptionWithData___block_invoke_2;
  v8[3] = &unk_1E8490298;
  objc_copyWeak(&v10, (a1 + 32));
  v9 = v3;
  v5 = v3;
  v6 = _Block_copy(v8);

  objc_destroyWeak(&v10);

  return v6;
}

void __74__SFDownloadStorageUsageMonitorEntry__updateProgressSubscriptionWithData___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didLoseProgress:*(a1 + 32)];
}

- (void)updateWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy safari_stringForKey:@"Path"];
  destinationPath = self->_destinationPath;
  self->_destinationPath = v5;

  v17 = [representationCopy safari_dataForKey:@"PlaceholderBookmarkData"];

  if ((WBSIsEqual() & 1) == 0)
  {
    [(SFDownloadStorageUsageMonitorEntry *)self _updateProgressSubscriptionWithData:v17];
  }

  if (!self->_progress)
  {
    cachedUsage = self->_cachedUsage;
    v8 = self->_destinationPath;
    if (v8)
    {
      v9 = _SFSafariContainerURL();
      v10 = [v9 URLByAppendingPathComponent:@"/" isDirectory:1];

      v11 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:self->_destinationPath isDirectory:0 relativeToURL:v10];
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      path = [v11 path];
      v14 = [defaultManager attributesOfItemAtPath:path error:0];
      v15 = [v14 safari_numberForKey:*MEMORY[0x1E696A3B8]];
      self->_cachedUsage = [v15 integerValue];

      v8 = self->_cachedUsage;
    }

    else
    {
      self->_cachedUsage = 0;
    }

    if (v8 != cachedUsage)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained entryDidChangeUsage:self];
    }
  }
}

- (SFDownloadStorageUsageMonitorEntryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end