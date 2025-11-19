@interface FPExtensionCollectionDSCopySubscriber
- (FPExtensionCollectionDSCopySubscriber)init;
- (void)markObserving;
- (void)startMonitoringWithURL:(id)a3 publishingHandler:(id)a4;
- (void)stopMonitoring;
@end

@implementation FPExtensionCollectionDSCopySubscriber

- (FPExtensionCollectionDSCopySubscriber)init
{
  v7.receiver = self;
  v7.super_class = FPExtensionCollectionDSCopySubscriber;
  v2 = [(FPExtensionCollectionDSCopySubscriber *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.FileProvider.ItemCollection.progress-queue", v3);
    dsCopySubscriberQueue = v2->_dsCopySubscriberQueue;
    v2->_dsCopySubscriberQueue = v4;
  }

  return v2;
}

- (void)markObserving
{
  dsCopySubscriberQueue = self->_dsCopySubscriberQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__FPExtensionCollectionDSCopySubscriber_markObserving__block_invoke;
  block[3] = &unk_1E79399B0;
  block[4] = self;
  dispatch_async(dsCopySubscriberQueue, block);
}

- (void)startMonitoringWithURL:(id)a3 publishingHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  dsCopySubscriberQueue = self->_dsCopySubscriberQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__FPExtensionCollectionDSCopySubscriber_startMonitoringWithURL_publishingHandler___block_invoke;
  block[3] = &unk_1E7939210;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dsCopySubscriberQueue, block);
}

void *__82__FPExtensionCollectionDSCopySubscriber_startMonitoringWithURL_publishingHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(a1 + 40);
    if (!*(v3 + 8) && *(v3 + 25) == 1)
    {
      result = [result startAccessingSecurityScopedResource];
      *(*(a1 + 40) + 24) = result;
      v4 = *(a1 + 40);
      if (*(v4 + 24) == 1)
      {
        objc_storeStrong((v4 + 16), *(a1 + 32));
        v5 = [MEMORY[0x1E696AE38] addSubscriberForFileURL:*(*(a1 + 40) + 16) withPublishingHandler:*(a1 + 48)];
        v6 = *(a1 + 40);
        v7 = *(v6 + 8);
        *(v6 + 8) = v5;

        return MEMORY[0x1EEE66BB8]();
      }
    }
  }

  return result;
}

- (void)stopMonitoring
{
  dsCopySubscriberQueue = self->_dsCopySubscriberQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__FPExtensionCollectionDSCopySubscriber_stopMonitoring__block_invoke;
  block[3] = &unk_1E79399B0;
  block[4] = self;
  dispatch_async(dsCopySubscriberQueue, block);
}

void __55__FPExtensionCollectionDSCopySubscriber_stopMonitoring__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8))
  {
    [MEMORY[0x1E696AE38] removeSubscriber:?];
    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    *(v3 + 8) = 0;

    v2 = *(a1 + 32);
  }

  if (*(v2 + 24) == 1)
  {
    [*(v2 + 16) stopAccessingSecurityScopedResource];
    *(*(a1 + 32) + 24) = 0;
    v2 = *(a1 + 32);
  }

  v5 = *(v2 + 16);
  *(v2 + 16) = 0;

  *(*(a1 + 32) + 25) = 0;
}

@end