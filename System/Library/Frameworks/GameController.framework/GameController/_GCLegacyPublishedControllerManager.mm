@interface _GCLegacyPublishedControllerManager
- (_GCLegacyPublishedControllerManager)init;
- (_GCLegacyPublishedControllerManager)initWithDeviceSessionConfiguration:(id)configuration queue:(id)queue environment:(id)environment;
- (id)activateWithSession:(id)session environment:(id)environment options:(unint64_t)options;
- (id)invalidateWithSession:(id)session environment:(id)environment;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation _GCLegacyPublishedControllerManager

- (_GCLegacyPublishedControllerManager)initWithDeviceSessionConfiguration:(id)configuration queue:(id)queue environment:(id)environment
{
  objc_storeStrong(&self->_sessionQueue, queue);
  queueCopy = queue;
  v8 = objc_opt_new();
  devices = self->_devices;
  self->_devices = v8;

  return self;
}

- (_GCLegacyPublishedControllerManager)init
{
  [(_GCLegacyPublishedControllerManager *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)activateWithSession:(id)session environment:(id)environment options:(unint64_t)options
{
  v6 = +[_GCLegacyPublishedControllerStore sharedInstance];
  [v6 addObserver:self forKeyPath:@"publishedControllers" options:7 context:0];

  v7 = MEMORY[0x1E69A06D0];
  null = [MEMORY[0x1E695DFB0] null];
  v9 = [v7 futureWithResult:null];

  return v9;
}

- (id)invalidateWithSession:(id)session environment:(id)environment
{
  v5 = +[_GCLegacyPublishedControllerStore sharedInstance];
  [v5 removeObserver:self forKeyPath:@"publishedControllers" context:0];

  v6 = MEMORY[0x1E69A06D0];
  null = [MEMORY[0x1E695DFB0] null];
  v8 = [v6 futureWithResult:null];

  return v8;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  objectCopy = object;
  v13 = +[_GCLegacyPublishedControllerStore sharedInstance];

  if (v13 == objectCopy)
  {
    v14 = [pathCopy isEqualToString:@"publishedControllers"];

    if (v14)
    {
      v15 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4E8]];
      unsignedIntegerValue = [v15 unsignedIntegerValue];

      v17 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
      v18 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A500]];
      sessionQueue = self->_sessionQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __86___GCLegacyPublishedControllerManager_observeValueForKeyPath_ofObject_change_context___block_invoke;
      block[3] = &unk_1E841AC00;
      v25 = unsignedIntegerValue;
      v26 = a2;
      block[4] = self;
      v23 = v17;
      v24 = v18;
      v20 = v18;
      v21 = v17;
      dispatch_async(sessionQueue, block);
    }
  }

  else
  {
  }
}

@end