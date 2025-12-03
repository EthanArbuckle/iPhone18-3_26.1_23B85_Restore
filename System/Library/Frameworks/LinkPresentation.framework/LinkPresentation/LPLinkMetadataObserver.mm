@interface LPLinkMetadataObserver
- (LPLinkMetadataObserver)initWithMetadata:(id)metadata callback:(id)callback;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)stopObserving;
@end

@implementation LPLinkMetadataObserver

- (LPLinkMetadataObserver)initWithMetadata:(id)metadata callback:(id)callback
{
  metadataCopy = metadata;
  callbackCopy = callback;
  v15.receiver = self;
  v15.super_class = LPLinkMetadataObserver;
  v9 = [(LPLinkMetadataObserver *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_metadata, metadata);
    v11 = _Block_copy(callbackCopy);
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (observerContext == context && !self->_hasScheduledCallback)
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