@interface RPBroadcastController
- (BOOL)isBroadcasting;
- (BOOL)isPaused;
- (NSURL)broadcastURL;
- (RPBroadcastController)initWithCurrentSession;
- (RPBroadcastController)initWithExtensionBundleID:(id)a3 broadcastURL:(id)a4;
- (id)delegate;
- (void)finishBroadcastWithHandler:(void *)handler;
- (void)finishSystemBroadcastWithHandler:(id)a3;
- (void)pauseBroadcast;
- (void)resumeBroadcast;
- (void)setBroadcastURL:(id)a3;
- (void)startBroadcastWithHandler:(void *)handler;
- (void)startSystemBroadcastWithHandler:(id)a3;
@end

@implementation RPBroadcastController

- (RPBroadcastController)initWithExtensionBundleID:(id)a3 broadcastURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = RPBroadcastController;
  v9 = [(RPBroadcastController *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_broadcastExtensionBundleID, a3);
    v11 = +[RPScreenRecorder sharedRecorder];
    [v11 setBroadcastURL:v8];
  }

  return v10;
}

- (RPBroadcastController)initWithCurrentSession
{
  v5.receiver = self;
  v5.super_class = RPBroadcastController;
  v2 = [(RPBroadcastController *)&v5 init];
  if (v2)
  {
    v3 = +[RPScreenRecorder sharedRecorder];
    [v3 setActiveBroadcastController:v2];
  }

  return v2;
}

- (BOOL)isBroadcasting
{
  v2 = +[RPScreenRecorder sharedRecorder];
  v3 = [v2 isRecording];

  return v3;
}

- (BOOL)isPaused
{
  v2 = +[RPScreenRecorder sharedRecorder];
  v3 = [v2 isPaused];

  return v3;
}

- (NSURL)broadcastURL
{
  v2 = +[RPScreenRecorder sharedRecorder];
  v3 = [v2 broadcastURL];

  return v3;
}

- (void)setBroadcastURL:(id)a3
{
  v3 = a3;
  v4 = +[RPScreenRecorder sharedRecorder];
  [v4 setBroadcastURL:v3];
}

- (void)startBroadcastWithHandler:(void *)handler
{
  v4 = handler;
  v5 = +[RPScreenRecorder sharedRecorder];
  [v5 setActiveBroadcastController:self];

  v6 = +[RPScreenRecorder sharedRecorder];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__RPBroadcastController_startBroadcastWithHandler___block_invoke;
  v8[3] = &unk_278B61DE8;
  v9 = v4;
  v7 = v4;
  [v6 startInAppBroadcastWithHandler:v8];
}

- (void)pauseBroadcast
{
  v3 = +[RPScreenRecorder sharedRecorder];
  [v3 setActiveBroadcastController:self];

  v4 = +[RPScreenRecorder sharedRecorder];
  [v4 pauseInAppBroadcast];
}

- (void)resumeBroadcast
{
  v3 = +[RPScreenRecorder sharedRecorder];
  [v3 setActiveBroadcastController:self];

  v4 = +[RPScreenRecorder sharedRecorder];
  [v4 resumeInAppBroadcast];
}

- (void)finishBroadcastWithHandler:(void *)handler
{
  v4 = handler;
  v5 = +[RPScreenRecorder sharedRecorder];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__RPBroadcastController_finishBroadcastWithHandler___block_invoke;
  v7[3] = &unk_278B62510;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 stopInAppBroadcastWithHandler:v7];
}

void __52__RPBroadcastController_finishBroadcastWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = a2;
  v6 = +[RPScreenRecorder sharedRecorder];
  [v6 setActiveBroadcastController:0];

  [*(a1 + 32) setServiceInfo:v5];
  (*(*(a1 + 40) + 16))();
}

- (void)startSystemBroadcastWithHandler:(id)a3
{
  v4 = a3;
  v5 = +[RPScreenRecorder sharedRecorder];
  [v5 setActiveBroadcastController:self];

  v6 = +[RPScreenRecorder sharedRecorder];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__RPBroadcastController_startSystemBroadcastWithHandler___block_invoke;
  v8[3] = &unk_278B61DE8;
  v9 = v4;
  v7 = v4;
  [v6 startSystemBroadcastWithHandler:v8];
}

- (void)finishSystemBroadcastWithHandler:(id)a3
{
  v4 = a3;
  v5 = +[RPScreenRecorder sharedRecorder];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__RPBroadcastController_finishSystemBroadcastWithHandler___block_invoke;
  v7[3] = &unk_278B62510;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 stopSystemBroadcastWithHandler:v7];
}

void __58__RPBroadcastController_finishSystemBroadcastWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = a2;
  v6 = +[RPScreenRecorder sharedRecorder];
  [v6 setActiveBroadcastController:0];

  [*(a1 + 32) setServiceInfo:v5];
  (*(*(a1 + 40) + 16))();
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end