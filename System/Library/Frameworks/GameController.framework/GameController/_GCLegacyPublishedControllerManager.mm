@interface _GCLegacyPublishedControllerManager
- (_GCLegacyPublishedControllerManager)init;
- (_GCLegacyPublishedControllerManager)initWithDeviceSessionConfiguration:(id)a3 queue:(id)a4 environment:(id)a5;
- (id)activateWithSession:(id)a3 environment:(id)a4 options:(unint64_t)a5;
- (id)invalidateWithSession:(id)a3 environment:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation _GCLegacyPublishedControllerManager

- (_GCLegacyPublishedControllerManager)initWithDeviceSessionConfiguration:(id)a3 queue:(id)a4 environment:(id)a5
{
  objc_storeStrong(&self->_sessionQueue, a4);
  v7 = a4;
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

- (id)activateWithSession:(id)a3 environment:(id)a4 options:(unint64_t)a5
{
  v6 = +[_GCLegacyPublishedControllerStore sharedInstance];
  [v6 addObserver:self forKeyPath:@"publishedControllers" options:7 context:0];

  v7 = MEMORY[0x1E69A06D0];
  v8 = [MEMORY[0x1E695DFB0] null];
  v9 = [v7 futureWithResult:v8];

  return v9;
}

- (id)invalidateWithSession:(id)a3 environment:(id)a4
{
  v5 = +[_GCLegacyPublishedControllerStore sharedInstance];
  [v5 removeObserver:self forKeyPath:@"publishedControllers" context:0];

  v6 = MEMORY[0x1E69A06D0];
  v7 = [MEMORY[0x1E695DFB0] null];
  v8 = [v6 futureWithResult:v7];

  return v8;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a4;
  v13 = +[_GCLegacyPublishedControllerStore sharedInstance];

  if (v13 == v12)
  {
    v14 = [v10 isEqualToString:@"publishedControllers"];

    if (v14)
    {
      v15 = [v11 objectForKeyedSubscript:*MEMORY[0x1E696A4E8]];
      v16 = [v15 unsignedIntegerValue];

      v17 = [v11 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
      v18 = [v11 objectForKeyedSubscript:*MEMORY[0x1E696A500]];
      sessionQueue = self->_sessionQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __86___GCLegacyPublishedControllerManager_observeValueForKeyPath_ofObject_change_context___block_invoke;
      block[3] = &unk_1E841AC00;
      v25 = v16;
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