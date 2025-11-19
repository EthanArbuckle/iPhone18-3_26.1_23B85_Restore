@interface LPLinkMetadataObserver
- (LPLinkMetadataObserver)initWithMetadata:(id)a3 callback:(id)a4;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)stopObserving;
@end

@implementation LPLinkMetadataObserver

- (LPLinkMetadataObserver)initWithMetadata:(id)a3 callback:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = LPLinkMetadataObserver;
  v9 = [(LPLinkMetadataObserver *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_metadata, a3);
    v11 = _Block_copy(v8);
    callback = v10->_callback;
    v10->_callback = v11;

    [(LPLinkMetadata *)v10->_metadata addObserver:v10 forKeyPath:@"_dummyPropertyForObservation" options:0 context:observerContext];
    v13 = v10;
  }

  return v10;
}

- (void)dealloc
{
  [(LPLinkMetadataObserver *)self stopObserving];
  v3.receiver = self;
  v3.super_class = LPLinkMetadataObserver;
  [(LPLinkMetadataObserver *)&v3 dealloc];
}

- (void)stopObserving
{
  [(LPLinkMetadata *)self->_metadata removeObserver:self forKeyPath:@"_dummyPropertyForObservation" context:observerContext];
  metadata = self->_metadata;
  self->_metadata = 0;

  callback = self->_callback;
  self->_callback = 0;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (observerContext == a6 && !self->_hasScheduledCallback)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__LPLinkMetadataObserver_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E7A35450;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    self->_hasScheduledCallback = 1;
  }
}

@end