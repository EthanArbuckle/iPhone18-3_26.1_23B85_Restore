@interface AVHapticPlayer
+ (BOOL)isSupported;
+ (BOOL)supportsHaptics;
- (AVHapticPlayer)initWithOptions:(id)a3 error:(id *)a4;
- (BOOL)copyCustomAudioEvent:(unint64_t)a3 options:(id)a4 reply:(id)a5;
- (BOOL)createCustomAudioEvent:(id)a3 format:(id)a4 frames:(unint64_t)a5 options:(id)a6 reply:(id)a7;
- (BOOL)doInitWithOptions:(id)a3 error:(id *)a4;
- (BOOL)finishWithCompletionHandler:(id)a3;
- (BOOL)loadAndPrepareHapticSequenceFromData:(id)a3 reply:(id)a4;
- (BOOL)loadAndPrepareHapticSequenceFromEvents:(id)a3 reply:(id)a4;
- (BOOL)loadAndPrepareHapticSequenceFromVibePattern:(id)a3 reply:(id)a4;
- (BOOL)loadHapticEvent:(id)a3 reply:(id)a4;
- (BOOL)prepareHapticSequence:(unint64_t)a3 error:(id *)a4;
- (BOOL)referenceCustomAudioEvent:(unint64_t)a3 reply:(id)a4;
- (BOOL)releaseCustomAudioEvent:(unint64_t)a3 reply:(id)a4;
- (BOOL)removeChannel:(id)a3 error:(id *)a4;
- (BOOL)setBehavior:(unint64_t)a3 error:(id *)a4;
- (BOOL)setNumberOfChannels:(unint64_t)a3 error:(id *)a4;
- (BOOL)setSequenceLoopLength:(unint64_t)a3 length:(float)a4 error:(id *)a5;
- (BOOL)setSequencePlaybackRate:(unint64_t)a3 rate:(float)a4 error:(id *)a5;
- (NSArray)channels;
- (id)addChannel:(id *)a3;
- (id)connectionErrorHandler;
- (void)allocateRenderResourcesWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)deallocateRenderResources;
- (void)invalidateChannels;
- (void)prewarmWithCompletionHandler:(id)a3;
- (void)queryServerCapabilities:(id)a3 reply:(id)a4;
- (void)releaseChannels;
- (void)setConnectionErrorHandler:(id)a3;
- (void)startRunningWithCompletionHandler:(id)a3;
- (void)stopPrewarm;
- (void)stopRunning;
- (void)stopRunningWithCompletionHandler:(id)a3;
@end

@implementation AVHapticPlayer

+ (BOOL)supportsHaptics
{
  if (+[AVHapticPlayer supportsHaptics]::sCheckServer_Once != -1)
  {
    +[AVHapticPlayer supportsHaptics];
  }

  return +[AVHapticPlayer supportsHaptics]::sHapticsSupported;
}

uint64_t __33__AVHapticPlayer_supportsHaptics__block_invoke(PlatformUtilities_iOS *a1)
{
  result = PlatformUtilities_iOS::ProductSupportsClosedLoopHaptics(a1);
  +[AVHapticPlayer supportsHaptics]::sHapticsSupported = result;
  return result;
}

- (void)stopPrewarm
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  if (kAVHCScope)
  {
    v3 = *kAVHCScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  v5 = v3;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(AVHapticPlayer *)v2 client];
    *buf = 136315906;
    v12 = "AVHapticPlayer.mm";
    v13 = 1024;
    v14 = 665;
    v15 = 2080;
    v16 = "[AVHapticPlayer stopPrewarm]";
    v17 = 2048;
    v18 = [v6 clientID];
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: stop prewarm: clientID: 0x%lx", buf, 0x26u);
  }

LABEL_8:
  v7 = [(AVHapticPlayer *)v2 client];
  v8 = [v7 clientID] == -1;

  if (v8)
  {
    v10 = 0;
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 666, "[AVHapticPlayer stopPrewarm]", "self.client.clientID != kInvalidClientID", -4812, &v10);
  }

  else
  {
    [(AVHapticClient *)v2->_client stopPrewarm];
  }

  objc_sync_exit(v2);

  v9 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isSupported
{
  if (+[AVHapticPlayer supportsHaptics])
  {
    return 1;
  }

  return +[AVHapticPlayer supportsAudio];
}

- (BOOL)doInitWithOptions:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  stopRunningHandler = self->_stopRunningHandler;
  self->_stopRunningHandler = 0;

  self->_resourcesAllocated = 0;
  self->_behavior = 0;
  v8 = [[AVHapticClient alloc] initWithOptions:v6 error:a4];
  client = self->_client;
  self->_client = v8;

  v10 = self->_client;
  if (v10)
  {
    [(AVHapticClient *)v10 setConnectionCallback:&__block_literal_global_67_0];
  }

  else
  {
    if (kAVHCScope)
    {
      v11 = *kAVHCScope;
      if (!v11)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315650;
      v16 = "AVHapticPlayer.mm";
      v17 = 1024;
      v18 = 249;
      v19 = 2080;
      v20 = "[AVHapticPlayer doInitWithOptions:error:]";
      _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: exited with nil", &v15, 0x1Cu);
    }
  }

LABEL_10:

  v13 = *MEMORY[0x277D85DE8];
  return v10 != 0;
}

void __42__AVHapticPlayer_doInitWithOptions_error___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (kAVHCScope)
  {
    v3 = *kAVHCScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "AVHapticPlayer.mm";
    v8 = 1024;
    v9 = 253;
    v10 = 2080;
    v11 = "[AVHapticPlayer doInitWithOptions:error:]_block_invoke";
    _os_log_impl(&dword_21569A000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Connection error", &v6, 0x1Cu);
  }

LABEL_8:
  v5 = *MEMORY[0x277D85DE8];
}

- (AVHapticPlayer)initWithOptions:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (kAVHCScope)
  {
    v7 = *kAVHCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v16 = "AVHapticPlayer.mm";
    v17 = 1024;
    v18 = 275;
    v19 = 2080;
    v20 = "[AVHapticPlayer initWithOptions:error:]";
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d %s: initWithOptions entered", buf, 0x1Cu);
  }

LABEL_8:
  v14.receiver = self;
  v14.super_class = AVHapticPlayer;
  v9 = [(AVHapticPlayer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    if ([(AVHapticPlayer *)v9 doInitWithOptions:v6 error:a4])
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (kAVHCScope)
    {
      v10 = *kAVHCScope;
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v10 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v16 = "AVHapticPlayer.mm";
      v17 = 1024;
      v18 = 283;
      v19 = 2080;
      v20 = "[AVHapticPlayer initWithOptions:error:]";
      _os_log_impl(&dword_21569A000, &v10->super, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: initWithOptions exited", buf, 0x1Cu);
    }
  }

  v10 = 0;
LABEL_18:

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)dealloc
{
  v24 = *MEMORY[0x277D85DE8];
  if (kAVHCScope)
  {
    v3 = *kAVHCScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v17 = "AVHapticPlayer.mm";
    v18 = 1024;
    v19 = 290;
    v20 = 2080;
    v21 = "[AVHapticPlayer dealloc]";
    v22 = 2048;
    v23 = self;
    _os_log_impl(&dword_21569A000, v3, OS_LOG_TYPE_INFO, "%25s:%-5d %s: dealloc entered for player %p", buf, 0x26u);
  }

LABEL_8:
  [(AVHapticPlayer *)self releaseChannels];
  v5 = [(AVHapticPlayer *)self client];
  objc_sync_enter(v5);
  v6 = [(AVHapticPlayer *)self client];
  v7 = [v6 clientID] == -1;

  if (!v7)
  {
    v8 = [(AVHapticPlayer *)self client];
    [v8 stopRunning];
  }

  objc_sync_exit(v5);

  if (self->_resourcesAllocated)
  {
    self->_resourcesAllocated = 0;
    v9 = [(AVHapticPlayer *)self client];
    v10 = [v9 clientID] == -1;

    if (!v10)
    {
      [(AVHapticClient *)self->_client releaseResources];
    }

    [(AVHapticPlayer *)self invalidateChannels];
  }

  [(AVHapticClient *)self->_client disconnect];
  client = self->_client;
  self->_client = 0;

  if (kAVHCScope)
  {
    v12 = *kAVHCScope;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v12 = MEMORY[0x277D86220];
    v13 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v17 = "AVHapticPlayer.mm";
    v18 = 1024;
    v19 = 308;
    v20 = 2080;
    v21 = "[AVHapticPlayer dealloc]";
    _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_INFO, "%25s:%-5d %s: dealloc exited", buf, 0x1Cu);
  }

LABEL_21:
  v15.receiver = self;
  v15.super_class = AVHapticPlayer;
  [(AVHapticPlayer *)&v15 dealloc];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)queryServerCapabilities:(id)a3 reply:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (kAVHCScope)
  {
    v8 = *kAVHCScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  v10 = v8;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(AVHapticPlayer *)self client];
    *buf = 136315906;
    v18 = "AVHapticPlayer.mm";
    v19 = 1024;
    v20 = 313;
    v21 = 2080;
    v22 = "[AVHapticPlayer queryServerCapabilities:reply:]";
    v23 = 2048;
    v24 = [v11 clientID];
    _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: clientID: 0x%lx", buf, 0x26u);
  }

LABEL_8:
  client = self->_client;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__AVHapticPlayer_queryServerCapabilities_reply___block_invoke;
  v15[3] = &unk_2781C9958;
  v15[4] = self;
  v13 = v7;
  v16 = v13;
  [(AVHapticClient *)client queryServerCapabilities:v6 reply:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __48__AVHapticPlayer_queryServerCapabilities_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (kAVHCScope)
    {
      v7 = *kAVHCScope;
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    v9 = v7;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 32) client];
      v12 = 136315906;
      v13 = "AVHapticPlayer.mm";
      v14 = 1024;
      v15 = 315;
      v16 = 2080;
      v17 = "[AVHapticPlayer queryServerCapabilities:reply:]_block_invoke";
      v18 = 2048;
      v19 = [v10 clientID];
      _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: clientID: 0x%lx: call failed", &v12, 0x26u);
    }
  }

LABEL_9:
  (*(*(a1 + 40) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)setBehavior:(unint64_t)a3 error:(id *)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = self;
  objc_sync_enter(v6);
  if (kAVHCScope)
  {
    v7 = *kAVHCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(AVHapticPlayer *)v6 client];
    *buf = 136316162;
    v20 = "AVHapticPlayer.mm";
    v21 = 1024;
    v22 = 323;
    v23 = 2080;
    v24 = "[AVHapticPlayer setBehavior:error:]";
    v25 = 2048;
    v26 = [v10 clientID];
    v27 = 1024;
    v28 = a3;
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: clientID: 0x%lx behavior: %u", buf, 0x2Cu);
  }

LABEL_8:
  v11 = [(AVHapticPlayer *)v6 client];
  v12 = [v11 clientID] == -1;

  if (v12)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 324, "[AVHapticPlayer setBehavior:error:]", "self.client.clientID != kInvalidClientID", -4812, a4);
    LOBYTE(v13) = 0;
  }

  else if (v6->_behavior == a3)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    client = v6->_client;
    v18 = 0;
    v13 = [(AVHapticClient *)client setPlayerBehavior:a3 error:&v18];
    v15 = v18;
    if (v13)
    {
      v6->_behavior = a3;
    }

    else
    {
      v15 = v15;
      *a4 = v15;
    }
  }

  objc_sync_exit(v6);

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)setNumberOfChannels:(unint64_t)a3 error:(id *)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = self;
  objc_sync_enter(v6);
  if (kAVHCScope)
  {
    v7 = *kAVHCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [(AVHapticPlayer *)v6 client];
    *buf = 136316162;
    v37 = "AVHapticPlayer.mm";
    v38 = 1024;
    v39 = 382;
    v40 = 2080;
    v41 = "[AVHapticPlayer setNumberOfChannels:error:]";
    v42 = 2048;
    v43 = [v10 clientID];
    v44 = 1024;
    v45 = a3;
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_INFO, "%25s:%-5d %s: clientID: 0x%lx numberOfChannels: %u", buf, 0x2Cu);
  }

LABEL_8:
  v11 = [(AVHapticPlayer *)v6 client];
  v12 = [v11 clientID] == -1;

  if (v12)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 383, "[AVHapticPlayer setNumberOfChannels:error:]", "self.client.clientID != kInvalidClientID", -4812, a4);
    objc_sync_exit(v6);
    v14 = 0;
    v15 = v6;
    goto LABEL_31;
  }

  if (![(AVHapticClient *)v6->_client running])
  {
    [(AVHapticClient *)v6->_client clearAssignedChannels];
    client = v6->_client;
    v34 = 0;
    v17 = [(AVHapticClient *)client requestAssignedChannels:a3 error:&v34];
    v15 = v34;
    if (v17)
    {
      v29 = [(AVHapticClient *)v6->_client channelKeys];
      v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v19 = v29;
      v20 = [v19 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v20)
      {
        v21 = *v31;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v31 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = [[AVHapticPlayerChannel alloc] initWithChannelID:*(*(&v30 + 1) + 8 * i) client:v6->_client];
            [(NSMutableArray *)v18 addObject:v23];
          }

          v20 = [v19 countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v20);
      }

      [(AVHapticPlayer *)v6 releaseChannels];
      channelArray = v6->_channelArray;
      v6->_channelArray = v18;
    }

    goto LABEL_28;
  }

  if (!kAVHCScope)
  {
    v13 = MEMORY[0x277D86220];
    v25 = MEMORY[0x277D86220];
    goto LABEL_24;
  }

  v13 = *kAVHCScope;
  if (v13)
  {
LABEL_24:
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v37 = "AVHapticPlayer.mm";
      v38 = 1024;
      v39 = 398;
      v40 = 2080;
      v41 = "[AVHapticPlayer setNumberOfChannels:error:]";
      _os_log_impl(&dword_21569A000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Can't set channel count while player is running", buf, 0x1Cu);
    }
  }

  v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4806 userInfo:0];
LABEL_28:
  objc_sync_exit(v6);

  if (a4)
  {
    v26 = v15;
    *a4 = v15;
  }

  v14 = v15 == 0;
LABEL_31:

  v27 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)addChannel:(id *)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v41 = self;
  objc_sync_enter(v41);
  if (kAVHCScope)
  {
    v4 = *kAVHCScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  v6 = v4;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [(AVHapticPlayer *)v41 client];
    *buf = 136316162;
    v53 = "AVHapticPlayer.mm";
    v54 = 1024;
    v55 = 411;
    v56 = 2080;
    v57 = "[AVHapticPlayer addChannel:]";
    v58 = 2048;
    *v59 = v41;
    *&v59[8] = 2048;
    v60 = [v7 clientID];
    _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_INFO, "%25s:%-5d %s: player %p, clientID: 0x%lx", buf, 0x30u);
  }

LABEL_8:
  v8 = [(AVHapticPlayer *)v41 client];
  v9 = [v8 clientID] == -1;

  if (v9)
  {
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 413, "[AVHapticPlayer addChannel:]", "clientID invalid", -4812, a3);
    goto LABEL_13;
  }

  location = &v41->_channelArray;
  if (![(AVHapticClient *)v41->_client requestAssignedChannels:[(NSMutableArray *)v41->_channelArray count]+ 1 error:a3])
  {
LABEL_13:
    v12 = 0;
    goto LABEL_56;
  }

  v10 = [(AVHapticClient *)v41->_client channelKeys];
  if (*location)
  {
    v11 = *location;
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v13 = v11;
  v14 = [v11 count];
  v38 = [v10 count];
  if (kAVHCScope)
  {
    v15 = *kAVHCScope;
    if (!v15)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v15 = MEMORY[0x277D86220];
    v16 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v53 = "AVHapticPlayer.mm";
    v55 = 422;
    v56 = 2080;
    v54 = 1024;
    v57 = "[AVHapticPlayer addChannel:]";
    v58 = 1024;
    *v59 = v14;
    *&v59[4] = 1024;
    *&v59[6] = v38;
    _os_log_impl(&dword_21569A000, v15, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Total channels was %u, now %u", buf, 0x28u);
  }

LABEL_22:
  if (v38 != v14 + 1)
  {
    [AVHapticPlayer addChannel:];
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v10;
  v17 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v17)
  {
    v18 = *v47;
    while (1)
    {
      v19 = 0;
LABEL_26:
      if (*v47 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v46 + 1) + 8 * v19);
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v21 = v13;
      v22 = v13;
      v23 = [v22 countByEnumeratingWithState:&v42 objects:v50 count:16];
      if (!v23)
      {
        break;
      }

      v24 = *v43;
LABEL_30:
      v25 = 0;
      while (1)
      {
        if (*v43 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = [*(*(&v42 + 1) + 8 * v25) chanID];
        if (v26 == [v20 unsignedIntegerValue])
        {
          break;
        }

        if (v23 == ++v25)
        {
          v23 = [v22 countByEnumeratingWithState:&v42 objects:v50 count:16];
          if (v23)
          {
            goto LABEL_30;
          }

          goto LABEL_40;
        }
      }

      v13 = v21;
      if (++v19 != v17)
      {
        goto LABEL_26;
      }

      v17 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (!v17)
      {
        goto LABEL_48;
      }
    }

LABEL_40:

    v13 = v21;
    v27 = [[AVHapticPlayerChannel alloc] initWithChannelID:v20 client:v41->_client];
    if (kAVHCScope)
    {
      v28 = *kAVHCScope;
      if (!v28)
      {
LABEL_47:
        [v22 addObject:v27];

        goto LABEL_48;
      }
    }

    else
    {
      v28 = MEMORY[0x277D86220];
      v29 = MEMORY[0x277D86220];
    }

    v30 = v28;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v31 = [v20 unsignedIntegerValue];
      *buf = 136316162;
      v53 = "AVHapticPlayer.mm";
      v54 = 1024;
      v55 = 438;
      v56 = 2080;
      v57 = "[AVHapticPlayer addChannel:]";
      v58 = 2048;
      *v59 = v27;
      *&v59[8] = 1024;
      LODWORD(v60) = v31;
      _os_log_impl(&dword_21569A000, v30, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Adding new AVHapticPlayerChannel %p to end of array with channel ID %u", buf, 0x2Cu);
    }

    goto LABEL_47;
  }

LABEL_48:

  objc_storeStrong(location, v13);
  v12 = [*location objectAtIndex:v38 - 1];
  if (!kAVHCScope)
  {
    v32 = MEMORY[0x277D86220];
    v33 = MEMORY[0x277D86220];
    goto LABEL_52;
  }

  v32 = *kAVHCScope;
  if (v32)
  {
LABEL_52:
    v34 = v32;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v35 = [v12 chanID];
      *buf = 136316162;
      v53 = "AVHapticPlayer.mm";
      v54 = 1024;
      v55 = 444;
      v56 = 2080;
      v57 = "[AVHapticPlayer addChannel:]";
      v58 = 2048;
      *v59 = v12;
      *&v59[8] = 1024;
      LODWORD(v60) = v35;
      _os_log_impl(&dword_21569A000, v34, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Returning channel %p (ID %u)", buf, 0x2Cu);
    }
  }

LABEL_56:
  objc_sync_exit(v41);

  v36 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)removeChannel:(id)a3 error:(id *)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  if (kAVHCScope)
  {
    v8 = *kAVHCScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  v10 = v8;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [(AVHapticPlayer *)v7 client];
    v17 = 136316674;
    v18 = "AVHapticPlayer.mm";
    v19 = 1024;
    v20 = 455;
    v21 = 2080;
    v22 = "[AVHapticPlayer removeChannel:error:]";
    v23 = 2048;
    v24 = v7;
    v25 = 2048;
    v26 = [v11 clientID];
    v27 = 2048;
    v28 = v6;
    v29 = 1024;
    v30 = [v6 chanID];
    _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_INFO, "%25s:%-5d %s: player %p, clientID: 0x%lx channel %p (ID %u)", &v17, 0x40u);
  }

LABEL_8:
  if ([(NSMutableArray *)v7->_channelArray indexOfObject:v6]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)v7->_channelArray removeObject:v6];
    v13 = -[AVHapticClient removeAssignedChannelID:error:](v7->_client, "removeAssignedChannelID:error:", [v6 chanID], a4);
    [v6 invalidate];
    objc_sync_exit(v7);

    goto LABEL_20;
  }

  objc_sync_exit(v7);

  if (!kAVHCScope)
  {
    v12 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
    goto LABEL_14;
  }

  v12 = *kAVHCScope;
  if (v12)
  {
LABEL_14:
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315650;
      v18 = "AVHapticPlayer.mm";
      v19 = 1024;
      v20 = 463;
      v21 = 2080;
      v22 = "[AVHapticPlayer removeChannel:error:]";
      _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Channel not found on player", &v17, 0x1Cu);
    }
  }

  if (a4)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4804 userInfo:0];
    *a4 = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_20:

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

- (NSArray)channels
{
  if (self->_channelArray)
  {
    v3 = [MEMORY[0x277CBEA60] arrayWithArray:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setConnectionErrorHandler:(id)a3
{
  v4 = MEMORY[0x21606F540](a3, a2);
  connectionErrorHandler = self->_connectionErrorHandler;
  self->_connectionErrorHandler = v4;

  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__AVHapticPlayer_setConnectionErrorHandler___block_invoke;
  v6[3] = &unk_2781C8FE0;
  objc_copyWeak(&v7, &location);
  [(AVHapticClient *)self->_client setConnectionCallback:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __44__AVHapticPlayer_setConnectionErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained connectionErrorHandler];

    if (v5)
    {
      v6 = [v4 connectionErrorHandler];
      (v6)[2](v6, v7);
    }
  }
}

- (id)connectionErrorHandler
{
  v2 = MEMORY[0x21606F540](self->_connectionErrorHandler, a2);

  return v2;
}

- (void)invalidateChannels
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = v2->_channelArray;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v6++) invalidate];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  objc_sync_exit(v2);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)releaseChannels
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = v2->_channelArray;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v6++) invalidate];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  channelArray = v2->_channelArray;
  v2->_channelArray = 0;

  objc_sync_exit(v2);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)allocateRenderResourcesWithCompletionHandler:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (kAVHCScope)
  {
    v6 = *kAVHCScope;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  v8 = v6;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [(AVHapticPlayer *)v5 client];
    *buf = 136315906;
    v21 = "AVHapticPlayer.mm";
    v22 = 1024;
    v23 = 521;
    v24 = 2080;
    v25 = "[AVHapticPlayer allocateRenderResourcesWithCompletionHandler:]";
    v26 = 2048;
    v27 = [v9 clientID];
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d %s: allocating resources: clientID: 0x%lx", buf, 0x26u);
  }

LABEL_8:
  v10 = [(AVHapticPlayer *)v5 client];
  v11 = [v10 clientID] == -1;

  if (!v11)
  {
    if (!v5->_resourcesAllocated)
    {
      client = v5->_client;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __63__AVHapticPlayer_allocateRenderResourcesWithCompletionHandler___block_invoke;
      v17[3] = &unk_2781C9980;
      v17[4] = v5;
      v18 = v4;
      [(AVHapticClient *)client allocateResources:v17];

      goto LABEL_23;
    }

    if (kAVHCScope)
    {
      v12 = *kAVHCScope;
      if (!v12)
      {
LABEL_21:
        if (v4)
        {
          (*(v4 + 2))(v4, 0);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v12 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v21 = "AVHapticPlayer.mm";
      v22 = 1024;
      v23 = 532;
      v24 = 2080;
      v25 = "[AVHapticPlayer allocateRenderResourcesWithCompletionHandler:]";
      _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Resources already allocated -- just call completion handler", buf, 0x1Cu);
    }

    goto LABEL_21;
  }

  v19 = 0;
  _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 522, "[AVHapticPlayer allocateRenderResourcesWithCompletionHandler:]", "self.client.clientID != kInvalidClientID", -4812, &v19);
  v13 = v19;
  if (v4)
  {
    (*(v4 + 2))(v4, v13);
  }

LABEL_23:
  objc_sync_exit(v5);

  v16 = *MEMORY[0x277D85DE8];
}

void __63__AVHapticPlayer_allocateRenderResourcesWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    *(*(a1 + 32) + 16) = 1;
  }

  v4 = *(a1 + 40);
  v5 = v3;
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

- (void)deallocateRenderResources
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  if (kAVHCScope)
  {
    v3 = *kAVHCScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  v5 = v3;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(AVHapticPlayer *)v2 client];
    v10 = 136315906;
    v11 = "AVHapticPlayer.mm";
    v12 = 1024;
    v13 = 543;
    v14 = 2080;
    v15 = "[AVHapticPlayer deallocateRenderResources]";
    v16 = 2048;
    v17 = [v6 clientID];
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d %s: deallocating resources: clientID: 0x%lx", &v10, 0x26u);
  }

LABEL_8:
  if (v2->_resourcesAllocated)
  {
    v2->_resourcesAllocated = 0;
    [(AVHapticClient *)v2->_client releaseResources];
    [(AVHapticPlayer *)v2 invalidateChannels];
  }

  else
  {
    if (kAVHCScope)
    {
      v7 = *kAVHCScope;
      if (!v7)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v7 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315650;
      v11 = "AVHapticPlayer.mm";
      v12 = 1024;
      v13 = 550;
      v14 = 2080;
      v15 = "[AVHapticPlayer deallocateRenderResources]";
      _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Resources already deallocated -- noop", &v10, 0x1Cu);
    }
  }

LABEL_17:
  objc_sync_exit(v2);

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)loadHapticEvent:(id)a3 reply:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (kAVHCScope)
  {
    v8 = *kAVHCScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  v10 = v8;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(AVHapticPlayer *)self client];
    v15 = 136315906;
    v16 = "AVHapticPlayer.mm";
    v17 = 1024;
    v18 = 557;
    v19 = 2080;
    v20 = "[AVHapticPlayer loadHapticEvent:reply:]";
    v21 = 2048;
    v22 = [v11 clientID];
    _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: loading haptic event: clientID: 0x%lx", &v15, 0x26u);
  }

LABEL_8:
  v12 = [(AVHapticClient *)self->_client loadHapticEvent:v6 reply:v7];

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)createCustomAudioEvent:(id)a3 format:(id)a4 frames:(unint64_t)a5 options:(id)a6 reply:(id)a7
{
  v33 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (kAVHCScope)
  {
    v16 = *kAVHCScope;
    if (!v16)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v16 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
  }

  v18 = v16;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [(AVHapticPlayer *)self client];
    v23 = 136316162;
    v24 = "AVHapticPlayer.mm";
    v25 = 1024;
    v26 = 563;
    v27 = 2080;
    v28 = "[AVHapticPlayer createCustomAudioEvent:format:frames:options:reply:]";
    v29 = 2048;
    v30 = [v19 clientID];
    v31 = 2048;
    v32 = a5;
    _os_log_impl(&dword_21569A000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: creating custom audio event: clientID: 0x%lx, frameCount: %lu", &v23, 0x30u);
  }

LABEL_8:
  v20 = [(AVHapticClient *)self->_client createCustomAudioEvent:v12 format:v13 frames:a5 options:v14 reply:v15];

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (BOOL)copyCustomAudioEvent:(unint64_t)a3 options:(id)a4 reply:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  if (kAVHCScope)
  {
    v10 = *kAVHCScope;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  v12 = v10;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(AVHapticPlayer *)self client];
    v17 = 136316162;
    v18 = "AVHapticPlayer.mm";
    v19 = 1024;
    v20 = 569;
    v21 = 2080;
    v22 = "[AVHapticPlayer copyCustomAudioEvent:options:reply:]";
    v23 = 2048;
    v24 = [v13 clientID];
    v25 = 1024;
    v26 = a3;
    _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: copying custom audio event: clientID: 0x%lx, eventID: %u", &v17, 0x2Cu);
  }

LABEL_8:
  v14 = [(AVHapticClient *)self->_client copyCustomAudioEvent:a3 options:v8 reply:v9];

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)referenceCustomAudioEvent:(unint64_t)a3 reply:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (kAVHCScope)
  {
    v7 = *kAVHCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(AVHapticPlayer *)self client];
    v14 = 136315906;
    v15 = "AVHapticPlayer.mm";
    v16 = 1024;
    v17 = 575;
    v18 = 2080;
    v19 = "[AVHapticPlayer referenceCustomAudioEvent:reply:]";
    v20 = 2048;
    v21 = [v10 clientID];
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: referencing custom audio event: clientID: 0x%lx", &v14, 0x26u);
  }

LABEL_8:
  v11 = [(AVHapticClient *)self->_client referenceCustomAudioEvent:a3 reply:v6];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)releaseCustomAudioEvent:(unint64_t)a3 reply:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (kAVHCScope)
  {
    v7 = *kAVHCScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(AVHapticPlayer *)self client];
    v14 = 136315906;
    v15 = "AVHapticPlayer.mm";
    v16 = 1024;
    v17 = 581;
    v18 = 2080;
    v19 = "[AVHapticPlayer releaseCustomAudioEvent:reply:]";
    v20 = 2048;
    v21 = [v10 clientID];
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: releasing custom audio event: clientID: 0x%lx", &v14, 0x26u);
  }

LABEL_8:
  v11 = [(AVHapticClient *)self->_client releaseCustomAudioEvent:a3 reply:v6];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)loadAndPrepareHapticSequenceFromData:(id)a3 reply:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  if (kAVHCScope)
  {
    v9 = *kAVHCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  v11 = v9;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = [(AVHapticPlayer *)v8 client];
    v16 = 136315906;
    v17 = "AVHapticPlayer.mm";
    v18 = 1024;
    v19 = 589;
    v20 = 2080;
    v21 = "[AVHapticPlayer loadAndPrepareHapticSequenceFromData:reply:]";
    v22 = 2048;
    v23 = [v12 clientID];
    _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: loading haptic sequence from NSData: clientID: 0x%lx", &v16, 0x26u);
  }

LABEL_8:
  v13 = [(AVHapticClient *)v8->_client loadAndPrepareHapticSequenceFromData:v6 reply:v7];
  objc_sync_exit(v8);

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)loadAndPrepareHapticSequenceFromEvents:(id)a3 reply:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  if (kAVHCScope)
  {
    v9 = *kAVHCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  v11 = v9;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = [(AVHapticPlayer *)v8 client];
    v16 = 136315906;
    v17 = "AVHapticPlayer.mm";
    v18 = 1024;
    v19 = 599;
    v20 = 2080;
    v21 = "[AVHapticPlayer loadAndPrepareHapticSequenceFromEvents:reply:]";
    v22 = 2048;
    v23 = [v12 clientID];
    _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: loading and preparing haptic sequence from NSArray: clientID: 0x%lx", &v16, 0x26u);
  }

LABEL_8:
  v13 = [(AVHapticClient *)v8->_client loadAndPrepareHapticSequenceFromEvents:v6 reply:v7];
  objc_sync_exit(v8);

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)loadAndPrepareHapticSequenceFromVibePattern:(id)a3 reply:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  if (kAVHCScope)
  {
    v9 = *kAVHCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  v11 = v9;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = [(AVHapticPlayer *)v8 client];
    v16 = 136315906;
    v17 = "AVHapticPlayer.mm";
    v18 = 1024;
    v19 = 609;
    v20 = 2080;
    v21 = "[AVHapticPlayer loadAndPrepareHapticSequenceFromVibePattern:reply:]";
    v22 = 2048;
    v23 = [v12 clientID];
    _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: loading and preparing haptic pattern: clientID: 0x%lx", &v16, 0x26u);
  }

LABEL_8:
  v13 = [(AVHapticClient *)v8->_client loadAndPrepareHapticSequenceFromVibePattern:v6 reply:v7];
  objc_sync_exit(v8);

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)prepareHapticSequence:(unint64_t)a3 error:(id *)a4
{
  v4 = a3;
  v22 = *MEMORY[0x277D85DE8];
  if (kAVHCScope)
  {
    v6 = *kAVHCScope;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  v8 = v6;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [(AVHapticPlayer *)self client];
    v12 = 136316162;
    v13 = "AVHapticPlayer.mm";
    v14 = 1024;
    v15 = 618;
    v16 = 2080;
    v17 = "[AVHapticPlayer prepareHapticSequence:error:]";
    v18 = 1024;
    v19 = v4;
    v20 = 2048;
    v21 = [v9 clientID];
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: sequence %u already prepared for clientID: 0x%lx - NOOP", &v12, 0x2Cu);
  }

LABEL_8:
  v10 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)setSequenceLoopLength:(unint64_t)a3 length:(float)a4 error:(id *)a5
{
  v20 = *MEMORY[0x277D85DE8];
  if (kAVHCScope)
  {
    v9 = *kAVHCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315650;
    v15 = "AVHapticPlayer.mm";
    v16 = 1024;
    v17 = 638;
    v18 = 2080;
    v19 = "[AVHapticPlayer setSequenceLoopLength:length:error:]";
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: set sequence loop length: entered", &v14, 0x1Cu);
  }

LABEL_8:
  *&v10 = a4;
  result = [(AVHapticClient *)self->_client setSequenceLoopLength:a3 length:a5 error:v10];
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)setSequencePlaybackRate:(unint64_t)a3 rate:(float)a4 error:(id *)a5
{
  v20 = *MEMORY[0x277D85DE8];
  if (kAVHCScope)
  {
    v9 = *kAVHCScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315650;
    v15 = "AVHapticPlayer.mm";
    v16 = 1024;
    v17 = 644;
    v18 = 2080;
    v19 = "[AVHapticPlayer setSequencePlaybackRate:rate:error:]";
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: set sequence playback rate: entered", &v14, 0x1Cu);
  }

LABEL_8:
  *&v10 = a4;
  result = [(AVHapticClient *)self->_client setSequencePlaybackRate:a3 rate:a5 error:v10];
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)prewarmWithCompletionHandler:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (kAVHCScope)
  {
    v6 = *kAVHCScope;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  v8 = v6;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(AVHapticPlayer *)v5 client];
    *buf = 136315906;
    v19 = "AVHapticPlayer.mm";
    v20 = 1024;
    v21 = 651;
    v22 = 2080;
    v23 = "[AVHapticPlayer prewarmWithCompletionHandler:]";
    v24 = 2048;
    v25 = [v9 clientID];
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: prewarm: clientID: 0x%lx", buf, 0x26u);
  }

LABEL_8:
  v10 = [(AVHapticPlayer *)v5 client];
  v11 = [v10 clientID] == -1;

  if (v11)
  {
    v17 = 0;
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 652, "[AVHapticPlayer prewarmWithCompletionHandler:]", "self.client.clientID != kInvalidClientID", -4812, &v17);
    v13 = v17;
    if (v4)
    {
      v4[2](v4, v13);
    }
  }

  else
  {
    client = v5->_client;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __47__AVHapticPlayer_prewarmWithCompletionHandler___block_invoke;
    v15[3] = &unk_2781C9330;
    v16 = v4;
    [(AVHapticClient *)client prewarm:v15];
    v13 = v16;
  }

  objc_sync_exit(v5);
  v14 = *MEMORY[0x277D85DE8];
}

void __47__AVHapticPlayer_prewarmWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v4 = *kAVHCScope;
      if (v4)
      {
        v5 = v4;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          v8 = 136315906;
          v9 = "AVHapticPlayer.mm";
          v10 = 1024;
          v11 = 654;
          v12 = 2080;
          v13 = "[AVHapticPlayer prewarmWithCompletionHandler:]_block_invoke";
          v14 = 2112;
          v15 = v3;
          _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: reply block for _client prewarm: replyError: %@", &v8, 0x26u);
        }
      }
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)startRunningWithCompletionHandler:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(AVHapticPlayer *)v5 client];
  v7 = [v6 clientID];

  if (kAVHCScope)
  {
    v8 = *kAVHCScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v24 = "AVHapticPlayer.mm";
    v25 = 1024;
    v26 = 675;
    v27 = 2080;
    v28 = "[AVHapticPlayer startRunningWithCompletionHandler:]";
    v29 = 2048;
    v30 = v7;
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: start running: clientID: 0x%lx", buf, 0x26u);
  }

LABEL_8:
  v10 = [(AVHapticPlayer *)v5 client];
  v11 = [v10 clientID] == -1;

  if (!v11)
  {
    if (v5->_resourcesAllocated)
    {
      objc_initWeak(buf, v5);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __52__AVHapticPlayer_startRunningWithCompletionHandler___block_invoke;
      v20[3] = &unk_2781C99A8;
      v21[1] = v7;
      objc_copyWeak(v21, buf);
      [(AVHapticClient *)v5->_client setAsyncStopCallback:v20];
      client = v5->_client;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __52__AVHapticPlayer_startRunningWithCompletionHandler___block_invoke_77;
      v18[3] = &unk_2781C9330;
      v19 = v4;
      [(AVHapticClient *)client startRunning:v18];

      objc_destroyWeak(v21);
      objc_destroyWeak(buf);
      goto LABEL_24;
    }

    if (kAVHCScope)
    {
      v14 = *kAVHCScope;
      if (!v14)
      {
LABEL_21:
        v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4807 userInfo:0];
        if (v4)
        {
          (*(v4 + 2))(v4, v16);
        }

        goto LABEL_24;
      }
    }

    else
    {
      v14 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v24 = "AVHapticPlayer.mm";
      v25 = 1024;
      v26 = 715;
      v27 = 2080;
      v28 = "[AVHapticPlayer startRunningWithCompletionHandler:]";
      _os_log_impl(&dword_21569A000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Cannot start without allocating resources", buf, 0x1Cu);
    }

    goto LABEL_21;
  }

  v22 = 0;
  _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 676, "[AVHapticPlayer startRunningWithCompletionHandler:]", "self.client.clientID != kInvalidClientID", -4812, &v22);
  v13 = v22;
  if (v4)
  {
    (*(v4 + 2))(v4, v13);
  }

LABEL_24:
  objc_sync_exit(v5);

  v17 = *MEMORY[0x277D85DE8];
}

void __52__AVHapticPlayer_startRunningWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (kAVHCScope)
  {
    v4 = *kAVHCScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 40);
    v11 = 136316162;
    v12 = "AVHapticPlayer.mm";
    v13 = 1024;
    v14 = 681;
    v15 = 2080;
    v16 = "[AVHapticPlayer startRunningWithCompletionHandler:]_block_invoke";
    v17 = 2048;
    v18 = v6;
    v19 = 1024;
    v20 = a2;
    _os_log_impl(&dword_21569A000, v4, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Client 0x%lx asynchronously stopped for reason %d", &v11, 0x2Cu);
  }

LABEL_8:
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained stopRunningHandler];

  if (v8)
  {
    if ((a2 + 1) >= 5)
    {
      v9 = -2;
    }

    else
    {
      v9 = qword_2156F3A60[a2 + 1];
    }

    v8[2](v8, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __52__AVHapticPlayer_startRunningWithCompletionHandler___block_invoke_77(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v4 = *kAVHCScope;
      if (v4)
      {
        v5 = v4;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          v8 = 136315906;
          v9 = "AVHapticPlayer.mm";
          v10 = 1024;
          v11 = 707;
          v12 = 2080;
          v13 = "[AVHapticPlayer startRunningWithCompletionHandler:]_block_invoke";
          v14 = 2112;
          v15 = v3;
          _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: reply block for _client startRunning: replyError: %@", &v8, 0x26u);
        }
      }
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stopRunning
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  if (kAVHCScope)
  {
    v3 = *kAVHCScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  v5 = v3;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(AVHapticPlayer *)v2 client];
    *buf = 136315906;
    v12 = "AVHapticPlayer.mm";
    v13 = 1024;
    v14 = 727;
    v15 = 2080;
    v16 = "[AVHapticPlayer stopRunning]";
    v17 = 2048;
    v18 = [v6 clientID];
    _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: stop running: clientID: 0x%lx", buf, 0x26u);
  }

LABEL_8:
  v7 = [(AVHapticPlayer *)v2 client];
  v8 = [v7 clientID] == -1;

  if (v8)
  {
    v10 = 0;
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 728, "[AVHapticPlayer stopRunning]", "self.client.clientID != kInvalidClientID", -4812, &v10);
  }

  else if (v2->_resourcesAllocated)
  {
    [(AVHapticClient *)v2->_client stopRunning];
  }

  objc_sync_exit(v2);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)stopRunningWithCompletionHandler:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(AVHapticPlayer *)v5 client];
  v7 = [v6 clientID];

  if (kAVHCScope)
  {
    v8 = *kAVHCScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v21 = "AVHapticPlayer.mm";
    v22 = 1024;
    v23 = 739;
    v24 = 2080;
    v25 = "[AVHapticPlayer stopRunningWithCompletionHandler:]";
    v26 = 2048;
    v27 = v7;
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: stop running: clientID: 0x%lx", buf, 0x26u);
  }

LABEL_8:
  v10 = [(AVHapticPlayer *)v5 client];
  v11 = [v10 clientID] == -1;

  if (v11)
  {
    v19 = 0;
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 740, "[AVHapticPlayer stopRunningWithCompletionHandler:]", "self.client.clientID != kInvalidClientID", -4812, &v19);
    v13 = v19;
    if (v4)
    {
      v4[2](v4, v13);
    }

    goto LABEL_13;
  }

  if ([(AVHapticClient *)v5->_client running])
  {
    client = v5->_client;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __51__AVHapticPlayer_stopRunningWithCompletionHandler___block_invoke;
    v17[3] = &unk_2781C9330;
    v18 = v4;
    [(AVHapticClient *)client stopRunning:v17];
    v13 = v18;
LABEL_13:

    goto LABEL_23;
  }

  if (!kAVHCScope)
  {
    v14 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
    goto LABEL_18;
  }

  v14 = *kAVHCScope;
  if (v14)
  {
LABEL_18:
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v21 = "AVHapticPlayer.mm";
      v22 = 1024;
      v23 = 750;
      v24 = 2080;
      v25 = "[AVHapticPlayer stopRunningWithCompletionHandler:]";
      _os_log_impl(&dword_21569A000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client was not running - calling completion handler immediately", buf, 0x1Cu);
    }
  }

  if (v4)
  {
    v4[2](v4, 0);
  }

LABEL_23:
  objc_sync_exit(v5);

  v16 = *MEMORY[0x277D85DE8];
}

void __51__AVHapticPlayer_stopRunningWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (kAVHCScope)
  {
    if (*(kAVHCScope + 8))
    {
      v4 = *kAVHCScope;
      if (v4)
      {
        v5 = v4;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          v8 = 136315906;
          v9 = "AVHapticPlayer.mm";
          v10 = 1024;
          v11 = 743;
          v12 = 2080;
          v13 = "[AVHapticPlayer stopRunningWithCompletionHandler:]_block_invoke";
          v14 = 2112;
          v15 = v3;
          _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: reply block for _client stopRunning: replyError: %@", &v8, 0x26u);
        }
      }
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)finishWithCompletionHandler:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (kAVHCScope)
  {
    v6 = *kAVHCScope;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  v8 = v6;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(AVHapticPlayer *)v5 client];
    *buf = 136315906;
    v18 = "AVHapticPlayer.mm";
    v19 = 1024;
    v20 = 762;
    v21 = 2080;
    v22 = "[AVHapticPlayer finishWithCompletionHandler:]";
    v23 = 2048;
    v24 = [v9 clientID];
    _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: finish with comp handler: clientID: 0x%lx", buf, 0x26u);
  }

LABEL_8:
  v10 = [(AVHapticPlayer *)v5 client];
  v11 = [v10 clientID];

  if (v11 == -1)
  {
    v16 = 0;
    _Haptic_Check("/Library/Caches/com.apple.xbs/Sources/CoreHaptics/Source/AVHapticPlayer.mm", 763, "[AVHapticPlayer finishWithCompletionHandler:]", "self.client.clientID != kInvalidClientID", -4812, &v16);
    v13 = v16;
    if (v4)
    {
      v4[2](v4, v13);
    }

    v12 = 0;
  }

  else
  {
    v12 = [(AVHapticClient *)v5->_client finish:v4];
  }

  objc_sync_exit(v5);

  v14 = *MEMORY[0x277D85DE8];
  return v11 != -1 && v12;
}

- (void)addChannel:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v0 = 136315394;
    v1 = "AVHapticPlayer.mm";
    v2 = 1024;
    v3 = 423;
    _os_log_impl(&dword_21569A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE [(newChannelCount == oldChannelCount + 1) != 0 is false]: ", &v0, 0x12u);
  }

  __break(1u);
  AudioConverterPrepare();
}

@end