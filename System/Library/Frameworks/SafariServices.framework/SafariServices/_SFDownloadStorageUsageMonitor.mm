@interface _SFDownloadStorageUsageMonitor
- (_SFDownloadStorageUsageMonitor)init;
- (int64_t)usage;
- (void)_reloadDownloadHistory;
- (void)downloadFileContentsDidChange:(id)a3;
- (void)entryDidChangeUsage:(id)a3;
@end

@implementation _SFDownloadStorageUsageMonitor

- (_SFDownloadStorageUsageMonitor)init
{
  v17.receiver = self;
  v17.super_class = _SFDownloadStorageUsageMonitor;
  v2 = [(_SFDownloadStorageUsageMonitor *)&v17 init];
  if (v2)
  {
    v3 = [SFDownloadFile alloc];
    v4 = +[_SFDownloadManager defaultDownloadsHistoryURL];
    v5 = [(SFDownloadFile *)v3 initWithURL:v4];
    historyFile = v2->_historyFile;
    v2->_historyFile = v5;

    [(SFDownloadFile *)v2->_historyFile setDelegate:v2];
    v7 = dispatch_queue_create("_SFDownloadStorageUsageMonitor internal queue", 0);
    queue = v2->_queue;
    v2->_queue = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    entries = v2->_entries;
    v2->_entries = v9;

    v11 = v2->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38___SFDownloadStorageUsageMonitor_init__block_invoke;
    block[3] = &unk_1E848F810;
    v12 = v2;
    v16 = v12;
    dispatch_async(v11, block);
    v13 = v12;
  }

  return v2;
}

- (int64_t)usage
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39___SFDownloadStorageUsageMonitor_usage__block_invoke;
  v5[3] = &unk_1E84902F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_reloadDownloadHistory
{
  v39 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E696AAE8] safari_isMobileSafariInstalled])
  {
    v3 = [(SFDownloadFile *)self->_historyFile URL];
    v4 = [_SFDownloadManager downloadRepresentationsAtURL:v3];

    v5 = objc_alloc(MEMORY[0x1E695DFA8]);
    v6 = [(NSMutableDictionary *)self->_entries allKeys];
    v7 = [v5 initWithArray:v6];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v4;
    v8 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v34;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v34 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v33 + 1) + 8 * i);
          v13 = objc_alloc(MEMORY[0x1E696AFB0]);
          v14 = [v12 safari_stringForKey:@"Identifier"];
          v15 = [v13 initWithUUIDString:v14];

          v16 = [(NSMutableDictionary *)self->_entries objectForKeyedSubscript:v15];
          v17 = [(NSMutableDictionary *)self->_entries objectForKeyedSubscript:v15];

          if (!v17)
          {
            v18 = [[SFDownloadStorageUsageMonitorEntry alloc] initWithIdentifier:v15];

            [(SFDownloadStorageUsageMonitorEntry *)v18 setDelegate:self];
            [(NSMutableDictionary *)self->_entries setObject:v18 forKeyedSubscript:v15];
            v16 = v18;
          }

          [v16 updateWithDictionaryRepresentation:v12];
          [v7 removeObject:v15];
        }

        v9 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v9);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v19 = v7;
    v20 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = 0;
      v23 = *v30;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v30 != v23)
          {
            objc_enumerationMutation(v19);
          }

          v25 = *(*(&v29 + 1) + 8 * j);
          v26 = [(NSMutableDictionary *)self->_entries objectForKeyedSubscript:v25];
          v22 += [v26 cachedUsage];

          [(NSMutableDictionary *)self->_entries removeObjectForKey:v25];
        }

        v21 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v21);

      if (v22)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __56___SFDownloadStorageUsageMonitor__reloadDownloadHistory__block_invoke;
        block[3] = &unk_1E848F810;
        block[4] = self;
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }
    }

    else
    {
    }
  }
}

- (void)entryDidChangeUsage:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54___SFDownloadStorageUsageMonitor_entryDidChangeUsage___block_invoke;
  block[3] = &unk_1E848F810;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)downloadFileContentsDidChange:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64___SFDownloadStorageUsageMonitor_downloadFileContentsDidChange___block_invoke;
  block[3] = &unk_1E848F810;
  block[4] = self;
  dispatch_async(queue, block);
}

@end