@interface ANLocalPlaybackSession
+ (id)stringForPlaybackState:(unint64_t)state;
- (ANLocalPlaybackSession)initWithEndpointIdentifier:(id)identifier;
- (ANLocalPlaybackSessionDelegate)delegate;
- (NSDictionary)lastPlayedAnnouncementInfo;
- (unint64_t)playbackState;
- (void)announcementsStateUpdate:(unint64_t)update;
- (void)announcementsWillStartPlaying:(unint64_t)playing;
- (void)checkInWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)didReceiveAnnouncement:(id)announcement forGroupID:(id)d;
- (void)didUpdatePlaybackInfo:(id)info;
- (void)invalidate;
- (void)lastPlayedAnnouncementInfoWithCompletion:(id)completion;
- (void)managerDidInterruptConnection:(id)connection;
- (void)managerDidInvalidateConnection:(id)connection;
- (void)managerDidPerformDaemonCheckIn:(id)in;
- (void)nextAnnouncementWithCompletionHandler:(id)handler;
- (void)playAnnouncementsWithIDs:(id)ds options:(unint64_t)options completionHandler:(id)handler;
- (void)playAnnouncementsWithOptions:(unint64_t)options completionHandler:(id)handler;
- (void)playAnnouncementsWithOptions:(unint64_t)options startingAt:(id)at completionHandler:(id)handler;
- (void)previousAnnouncementWithCompletionHandler:(id)handler;
- (void)sendPlaybackCommand:(id)command completionHandler:(id)handler;
- (void)setDelegate:(id)delegate;
- (void)stopPlayingAnnouncementsWithCompletionHandler:(id)handler;
@end

@implementation ANLocalPlaybackSession

- (ANLocalPlaybackSession)initWithEndpointIdentifier:(id)identifier
{
  v32 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v27.receiver = self;
  v27.super_class = ANLocalPlaybackSession;
  v6 = [(ANLocalPlaybackSession *)&v27 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_endpointIdentifier, identifier);
    lastPlayedAnnouncementInfo = v7->_lastPlayedAnnouncementInfo;
    v7->_lastPlayedAnnouncementInfo = MEMORY[0x277CBEC10];

    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v10 = dispatch_queue_create("com.apple.announce.localplaybacksession", v9);
    serialQueue = v7->_serialQueue;
    v7->_serialQueue = v10;

    v12 = ANLogHandleLocalPlaybackSession();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v29 = &stru_2836DAA20;
      v30 = 2112;
      v31 = @"com.apple.announced.localplaybacksession";
      _os_log_impl(&dword_2237C8000, v12, OS_LOG_TYPE_DEFAULT, "%@Creating Connection to Service: %@", buf, 0x16u);
    }

    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v13 setWithObjects:{v14, v15, v16, v17, objc_opt_class(), 0}];
    v19 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2836E9388];
    [v19 setClasses:v18 forSelector:sel_lastPlayedAnnouncementInfoForEndpointID_completionHandler_ argumentIndex:0 ofReply:1];
    v20 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2836E3590];
    [v20 setClass:objc_opt_class() forSelector:sel_didReceiveAnnouncement_forGroupID_ argumentIndex:0 ofReply:0];
    [v20 setClasses:v18 forSelector:sel_didUpdatePlaybackInfo_ argumentIndex:0 ofReply:0];
    v21 = objc_opt_new();
    delegateProxy = v7->_delegateProxy;
    v7->_delegateProxy = v21;

    [(ANLocalPlaybackSessionInterfaceDelegateProxy *)v7->_delegateProxy setDelegate:v7];
    v23 = [[ANXPCManager alloc] initWithMachServiceName:@"com.apple.announced.localplaybacksession" remoteObjectInterface:v19 exportedInterface:v20 exportedObject:v7->_delegateProxy];
    xpcManager = v7->_xpcManager;
    v7->_xpcManager = v23;

    [(ANXPCManager *)v7->_xpcManager setDelegate:v7];
    [(ANXPCManager *)v7->_xpcManager setCheckInProvider:v7];
    [(ANXPCManager *)v7->_xpcManager addCheckInObserver:v7];
  }

  v25 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)dealloc
{
  [(ANLocalPlaybackSession *)self invalidate];
  v3.receiver = self;
  v3.super_class = ANLocalPlaybackSession;
  [(ANLocalPlaybackSession *)&v3 dealloc];
}

- (void)invalidate
{
  objc_storeWeak(&self->_delegate, 0);
  xpcManager = [(ANLocalPlaybackSession *)self xpcManager];
  connection = [xpcManager connection];
  [connection invalidate];
}

- (void)setDelegate:(id)delegate
{
  v11 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  v5 = ANLogHandleLocalPlaybackSession();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = &stru_2836DAA20;
    v9 = 2112;
    v10 = delegateCopy;
    _os_log_impl(&dword_2237C8000, v5, OS_LOG_TYPE_DEFAULT, "%@Delegate set to %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)sendPlaybackCommand:(id)command completionHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  handlerCopy = handler;
  v8 = ANLogHandleLocalPlaybackSession();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = &stru_2836DAA20;
    v22 = 2114;
    v23 = commandCopy;
    _os_log_impl(&dword_2237C8000, v8, OS_LOG_TYPE_DEFAULT, "%@Sending Playback Command: %{public}@", buf, 0x16u);
  }

  xpcManager = [(ANLocalPlaybackSession *)self xpcManager];
  connection = [xpcManager connection];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __64__ANLocalPlaybackSession_sendPlaybackCommand_completionHandler___block_invoke;
  v18[3] = &unk_2784E1F20;
  v11 = handlerCopy;
  v19 = v11;
  v12 = [connection remoteObjectProxyWithErrorHandler:v18];
  endpointIdentifier = [(ANLocalPlaybackSession *)self endpointIdentifier];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __64__ANLocalPlaybackSession_sendPlaybackCommand_completionHandler___block_invoke_91;
  v16[3] = &unk_2784E1F20;
  v17 = v11;
  v14 = v11;
  [v12 sendPlaybackCommand:commandCopy forEndpointID:endpointIdentifier completionHandler:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __64__ANLocalPlaybackSession_sendPlaybackCommand_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ANLogHandleLocalPlaybackSession();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412802;
    v8 = &stru_2836DAA20;
    v9 = 2080;
    v10 = "[ANLocalPlaybackSession sendPlaybackCommand:completionHandler:]_block_invoke";
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_2237C8000, v4, OS_LOG_TYPE_ERROR, "%@%s: %@", &v7, 0x20u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __64__ANLocalPlaybackSession_sendPlaybackCommand_completionHandler___block_invoke_91(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = ANLogHandleLocalPlaybackSession();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412802;
      v8 = &stru_2836DAA20;
      v9 = 2080;
      v10 = "[ANLocalPlaybackSession sendPlaybackCommand:completionHandler:]_block_invoke";
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_2237C8000, v4, OS_LOG_TYPE_ERROR, "%@%s: %@", &v7, 0x20u);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)playAnnouncementsWithOptions:(unint64_t)options completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [ANPlaybackCommand playCommandWithOptions:options announcementIdentifiers:MEMORY[0x277CBEBF8]];
  [(ANLocalPlaybackSession *)self sendPlaybackCommand:v7 completionHandler:handlerCopy];
}

- (void)playAnnouncementsWithIDs:(id)ds options:(unint64_t)options completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = [ANPlaybackCommand playCommandWithOptions:options announcementIdentifiers:ds];
  [(ANLocalPlaybackSession *)self sendPlaybackCommand:v9 completionHandler:handlerCopy];
}

- (void)playAnnouncementsWithOptions:(unint64_t)options startingAt:(id)at completionHandler:(id)handler
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (at)
  {
    v20[0] = at;
    v9 = MEMORY[0x277CBEA60];
    handlerCopy = handler;
    atCopy = at;
    v12 = [v9 arrayWithObjects:v20 count:1];
  }

  else
  {
    handlerCopy2 = handler;
    v14 = 0;
    v15 = ANLogHandleLocalPlaybackSession();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = 138412290;
      v19 = &stru_2836DAA20;
      _os_log_impl(&dword_2237C8000, v15, OS_LOG_TYPE_ERROR, "%@Client did not supply a Start Announcement ID", &v18, 0xCu);
    }

    v12 = MEMORY[0x277CBEBF8];
  }

  v16 = [ANPlaybackCommand playCommandWithOptions:options announcementIdentifiers:v12];

  [(ANLocalPlaybackSession *)self sendPlaybackCommand:v16 completionHandler:handler];
  v17 = *MEMORY[0x277D85DE8];
}

- (void)stopPlayingAnnouncementsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[ANPlaybackCommand stopCommand];
  [(ANLocalPlaybackSession *)self sendPlaybackCommand:v5 completionHandler:handlerCopy];
}

- (void)nextAnnouncementWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[ANPlaybackCommand nextCommand];
  [(ANLocalPlaybackSession *)self sendPlaybackCommand:v5 completionHandler:handlerCopy];
}

- (void)previousAnnouncementWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[ANPlaybackCommand previousCommand];
  [(ANLocalPlaybackSession *)self sendPlaybackCommand:v5 completionHandler:handlerCopy];
}

- (void)lastPlayedAnnouncementInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy_;
  v10[4] = __Block_byref_object_dispose_;
  v11 = 0;
  serialQueue = [(ANLocalPlaybackSession *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__ANLocalPlaybackSession_lastPlayedAnnouncementInfoWithCompletion___block_invoke;
  block[3] = &unk_2784E1F70;
  v8 = completionCopy;
  v9 = v10;
  block[4] = self;
  v6 = completionCopy;
  dispatch_async(serialQueue, block);

  _Block_object_dispose(v10, 8);
}

void __67__ANLocalPlaybackSession_lastPlayedAnnouncementInfoWithCompletion___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = ANLogHandleLocalPlaybackSession();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 138412546;
    v15 = &stru_2836DAA20;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_2237C8000, v5, OS_LOG_TYPE_DEFAULT, "%@Playback Info (async): %@", buf, 0x16u);
  }

  v7 = dispatch_get_global_queue(2, 0);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__ANLocalPlaybackSession_lastPlayedAnnouncementInfoWithCompletion___block_invoke_94;
  v11[3] = &unk_2784E1F48;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v12 = v8;
  v13 = v9;
  dispatch_async(v7, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (NSDictionary)lastPlayedAnnouncementInfo
{
  v20 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  serialQueue = [(ANLocalPlaybackSession *)self serialQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__ANLocalPlaybackSession_lastPlayedAnnouncementInfo__block_invoke;
  v9[3] = &unk_2784E1F98;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(serialQueue, v9);

  v4 = ANLogHandleLocalPlaybackSession();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v11[5];
    *buf = 138412546;
    v17 = &stru_2836DAA20;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_2237C8000, v4, OS_LOG_TYPE_DEFAULT, "%@Playback Info (sync): %@", buf, 0x16u);
  }

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t __52__ANLocalPlaybackSession_lastPlayedAnnouncementInfo__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

+ (id)stringForPlaybackState:(unint64_t)state
{
  if (state > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_2784E2118[state];
  }
}

- (unint64_t)playbackState
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = ANLogHandleLocalPlaybackSession();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = &stru_2836DAA20;
    _os_log_impl(&dword_2237C8000, v3, OS_LOG_TYPE_DEFAULT, "%@Getting playback state", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v16 = 0x2020000000;
  v17 = 0;
  serialQueue = [(ANLocalPlaybackSession *)self serialQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39__ANLocalPlaybackSession_playbackState__block_invoke;
  v10[3] = &unk_2784E1F98;
  v10[4] = self;
  v10[5] = &buf;
  dispatch_sync(serialQueue, v10);

  v5 = ANLogHandleLocalPlaybackSession();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(&buf + 1) + 24);
    *v11 = 138412546;
    v12 = &stru_2836DAA20;
    v13 = 2048;
    v14 = v6;
    _os_log_impl(&dword_2237C8000, v5, OS_LOG_TYPE_DEFAULT, "%@Playback state (sync): %lu", v11, 0x16u);
  }

  v7 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)announcementsWillStartPlaying:(unint64_t)playing
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = ANLogHandleLocalPlaybackSession();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v18 = &stru_2836DAA20;
    v19 = 2080;
    v20 = "[ANLocalPlaybackSession announcementsWillStartPlaying:]";
    v21 = 2048;
    playingCopy = playing;
    _os_log_impl(&dword_2237C8000, v5, OS_LOG_TYPE_DEFAULT, "%@%s, time is %lld", buf, 0x20u);
  }

  delegate = [(ANLocalPlaybackSession *)self delegate];
  if ([delegate conformsToProtocol:&unk_2836E6850])
  {
    delegate2 = [(ANLocalPlaybackSession *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      objc_initWeak(buf, self);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __56__ANLocalPlaybackSession_announcementsWillStartPlaying___block_invoke;
      v15[3] = &unk_2784E1FC0;
      objc_copyWeak(v16, buf);
      v16[1] = playing;
      [ANUtils asyncDispatchOnGlobalQueue:v15];
      objc_destroyWeak(v16);
      objc_destroyWeak(buf);
    }
  }

  else
  {
  }

  delegate3 = [(ANLocalPlaybackSession *)self delegate];
  if ([delegate3 conformsToProtocol:&unk_2836E6850])
  {
    delegate4 = [(ANLocalPlaybackSession *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      objc_initWeak(buf, self);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __56__ANLocalPlaybackSession_announcementsWillStartPlaying___block_invoke_2;
      v13[3] = &unk_2784E1FC0;
      objc_copyWeak(v14, buf);
      v14[1] = playing;
      [ANUtils asyncDispatchOnGlobalQueue:v13];
      objc_destroyWeak(v14);
      objc_destroyWeak(buf);
    }
  }

  else
  {
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __56__ANLocalPlaybackSession_announcementsWillStartPlaying___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  [v2 announcementsWillStartPlaying:*(a1 + 40)];
}

void __56__ANLocalPlaybackSession_announcementsWillStartPlaying___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  [v2 session:WeakRetained willStartPlayingAtMachTime:*(a1 + 40)];
}

- (void)announcementsStateUpdate:(unint64_t)update
{
  v25 = *MEMORY[0x277D85DE8];
  serialQueue = [(ANLocalPlaybackSession *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__ANLocalPlaybackSession_announcementsStateUpdate___block_invoke;
  block[3] = &unk_2784E1FE8;
  block[4] = self;
  block[5] = update;
  dispatch_async(serialQueue, block);

  v6 = ANLogHandleLocalPlaybackSession();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v20 = &stru_2836DAA20;
    v21 = 2080;
    v22 = "[ANLocalPlaybackSession announcementsStateUpdate:]";
    v23 = 2048;
    updateCopy = update;
    _os_log_impl(&dword_2237C8000, v6, OS_LOG_TYPE_DEFAULT, "%@%s, state is %lu", buf, 0x20u);
  }

  delegate = [(ANLocalPlaybackSession *)self delegate];
  if ([delegate conformsToProtocol:&unk_2836E6850])
  {
    delegate2 = [(ANLocalPlaybackSession *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      objc_initWeak(buf, self);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __51__ANLocalPlaybackSession_announcementsStateUpdate___block_invoke_127;
      v16[3] = &unk_2784E1FC0;
      objc_copyWeak(v17, buf);
      v17[1] = update;
      [ANUtils asyncDispatchOnGlobalQueue:v16];
      objc_destroyWeak(v17);
      objc_destroyWeak(buf);
    }
  }

  else
  {
  }

  delegate3 = [(ANLocalPlaybackSession *)self delegate];
  if ([delegate3 conformsToProtocol:&unk_2836E6850])
  {
    delegate4 = [(ANLocalPlaybackSession *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      objc_initWeak(buf, self);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __51__ANLocalPlaybackSession_announcementsStateUpdate___block_invoke_2;
      v14[3] = &unk_2784E1FC0;
      objc_copyWeak(v15, buf);
      v15[1] = update;
      [ANUtils asyncDispatchOnGlobalQueue:v14];
      objc_destroyWeak(v15);
      objc_destroyWeak(buf);
    }
  }

  else
  {
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __51__ANLocalPlaybackSession_announcementsStateUpdate___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = ANLogHandleLocalPlaybackSession();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5 = 138412546;
    v6 = &stru_2836DAA20;
    v7 = 2048;
    v8 = v3;
    _os_log_impl(&dword_2237C8000, v2, OS_LOG_TYPE_DEFAULT, "%@Updating Playback State: %lu", &v5, 0x16u);
  }

  *(*(a1 + 32) + 16) = *(a1 + 40);
  v4 = *MEMORY[0x277D85DE8];
}

void __51__ANLocalPlaybackSession_announcementsStateUpdate___block_invoke_127(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  [v2 announcementsStateUpdate:*(a1 + 40)];
}

void __51__ANLocalPlaybackSession_announcementsStateUpdate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  [v2 session:WeakRetained didUpdatePlaybackState:*(a1 + 40)];
}

- (void)didUpdatePlaybackInfo:(id)info
{
  infoCopy = info;
  serialQueue = [(ANLocalPlaybackSession *)self serialQueue];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __48__ANLocalPlaybackSession_didUpdatePlaybackInfo___block_invoke;
  v13 = &unk_2784E2010;
  v6 = infoCopy;
  v14 = v6;
  selfCopy = self;
  dispatch_async(serialQueue, &v10);

  delegate2 = [(ANLocalPlaybackSession *)self delegate:v10];
  if (![delegate2 conformsToProtocol:&unk_2836E6850])
  {
    goto LABEL_4;
  }

  delegate = [(ANLocalPlaybackSession *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(ANLocalPlaybackSession *)self delegate];
    [delegate2 session:self didUpdatePlaybackInfo:v6];
LABEL_4:
  }
}

void __48__ANLocalPlaybackSession_didUpdatePlaybackInfo___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = ANLogHandleLocalPlaybackSession();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412546;
    v6 = &stru_2836DAA20;
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_2237C8000, v2, OS_LOG_TYPE_DEFAULT, "%@Updating Playback Info: %@", &v5, 0x16u);
  }

  objc_storeStrong((*(a1 + 40) + 8), *(a1 + 32));
  v4 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveAnnouncement:(id)announcement forGroupID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  announcementCopy = announcement;
  dCopy = d;
  v8 = ANLogHandleLocalPlaybackSession();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = &stru_2836DAA20;
    v18 = 2112;
    v19 = announcementCopy;
    _os_log_impl(&dword_2237C8000, v8, OS_LOG_TYPE_DEFAULT, "%@Received announcement: %@", buf, 0x16u);
  }

  delegate = [(ANLocalPlaybackSession *)self delegate];
  if ([delegate conformsToProtocol:&unk_2836E6850])
  {
    delegate2 = [(ANLocalPlaybackSession *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      objc_initWeak(buf, self);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __60__ANLocalPlaybackSession_didReceiveAnnouncement_forGroupID___block_invoke;
      v13[3] = &unk_2784E2038;
      objc_copyWeak(&v15, buf);
      v14 = announcementCopy;
      [ANUtils asyncDispatchOnGlobalQueue:v13];

      objc_destroyWeak(&v15);
      objc_destroyWeak(buf);
    }
  }

  else
  {
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __60__ANLocalPlaybackSession_didReceiveAnnouncement_forGroupID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  [v2 session:WeakRetained didReceiveAnnouncement:*(a1 + 32)];
}

- (void)managerDidInterruptConnection:(id)connection
{
  connectionCopy = connection;
  delegate = [(ANLocalPlaybackSession *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__ANLocalPlaybackSession_managerDidInterruptConnection___block_invoke;
    v11[3] = &unk_2784E2060;
    objc_copyWeak(&v12, &location);
    [ANUtils asyncDispatchOnGlobalQueue:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  delegate2 = [(ANLocalPlaybackSession *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __56__ANLocalPlaybackSession_managerDidInterruptConnection___block_invoke_2;
    v9[3] = &unk_2784E2060;
    objc_copyWeak(&v10, &location);
    [ANUtils asyncDispatchOnGlobalQueue:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __56__ANLocalPlaybackSession_managerDidInterruptConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 connectionInterrupted];
}

void __56__ANLocalPlaybackSession_managerDidInterruptConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 sessionInterrupted:WeakRetained];
}

- (void)managerDidInvalidateConnection:(id)connection
{
  connectionCopy = connection;
  delegate = [(ANLocalPlaybackSession *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __57__ANLocalPlaybackSession_managerDidInvalidateConnection___block_invoke;
    v11[3] = &unk_2784E2060;
    objc_copyWeak(&v12, &location);
    [ANUtils asyncDispatchOnGlobalQueue:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  delegate2 = [(ANLocalPlaybackSession *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __57__ANLocalPlaybackSession_managerDidInvalidateConnection___block_invoke_2;
    v9[3] = &unk_2784E2060;
    objc_copyWeak(&v10, &location);
    [ANUtils asyncDispatchOnGlobalQueue:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __57__ANLocalPlaybackSession_managerDidInvalidateConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 connectionInvalidated];
}

void __57__ANLocalPlaybackSession_managerDidInvalidateConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 sessionInvalidated:WeakRetained];
}

- (void)checkInWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  xpcManager = [(ANLocalPlaybackSession *)self xpcManager];
  connection = [xpcManager connection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__ANLocalPlaybackSession_checkInWithCompletionHandler___block_invoke;
  v13[3] = &unk_2784E1F20;
  v7 = handlerCopy;
  v14 = v7;
  v8 = [connection remoteObjectProxyWithErrorHandler:v13];
  endpointIdentifier = [(ANLocalPlaybackSession *)self endpointIdentifier];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__ANLocalPlaybackSession_checkInWithCompletionHandler___block_invoke_2;
  v11[3] = &unk_2784E2088;
  v12 = v7;
  v10 = v7;
  [v8 resumeWithEndpointID:endpointIdentifier completionHandler:v11];
}

- (void)managerDidPerformDaemonCheckIn:(id)in
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = ANLogHandleLocalPlaybackSession();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = &stru_2836DAA20;
    _os_log_impl(&dword_2237C8000, v4, OS_LOG_TYPE_DEFAULT, "%@Fetching latest playback info", buf, 0xCu);
  }

  xpcManager = [(ANLocalPlaybackSession *)self xpcManager];
  connection = [xpcManager connection];
  v7 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_1];
  endpointIdentifier = [(ANLocalPlaybackSession *)self endpointIdentifier];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __57__ANLocalPlaybackSession_managerDidPerformDaemonCheckIn___block_invoke_135;
  v16[3] = &unk_2784E20D0;
  v16[4] = self;
  [v7 lastPlayedAnnouncementInfoForEndpointID:endpointIdentifier completionHandler:v16];

  v9 = ANLogHandleLocalPlaybackSession();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = &stru_2836DAA20;
    _os_log_impl(&dword_2237C8000, v9, OS_LOG_TYPE_DEFAULT, "%@Fetching latest playback state", buf, 0xCu);
  }

  xpcManager2 = [(ANLocalPlaybackSession *)self xpcManager];
  connection2 = [xpcManager2 connection];
  v12 = [connection2 remoteObjectProxyWithErrorHandler:&__block_literal_global_139];
  endpointIdentifier2 = [(ANLocalPlaybackSession *)self endpointIdentifier];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__ANLocalPlaybackSession_managerDidPerformDaemonCheckIn___block_invoke_140;
  v15[3] = &unk_2784E20F8;
  v15[4] = self;
  [v12 playbackStateForEndpointID:endpointIdentifier2 completionHandler:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __57__ANLocalPlaybackSession_managerDidPerformDaemonCheckIn___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = ANLogHandleLocalPlaybackSession();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412802;
    v6 = &stru_2836DAA20;
    v7 = 2080;
    v8 = "[ANLocalPlaybackSession managerDidPerformDaemonCheckIn:]_block_invoke";
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_2237C8000, v3, OS_LOG_TYPE_ERROR, "%@%s: %@", &v5, 0x20u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __57__ANLocalPlaybackSession_managerDidPerformDaemonCheckIn___block_invoke_137(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = ANLogHandleLocalPlaybackSession();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412802;
    v6 = &stru_2836DAA20;
    v7 = 2080;
    v8 = "[ANLocalPlaybackSession managerDidPerformDaemonCheckIn:]_block_invoke";
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_2237C8000, v3, OS_LOG_TYPE_ERROR, "%@%s: %@", &v5, 0x20u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (ANLocalPlaybackSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end