@interface ASVInlinePreview
+ (id)getService;
+ (void)_kill:(int)_kill;
+ (void)debugGetMemoryUsage:(id)usage;
+ (void)remoteInstanceCount:(id)count;
- (ASVInlinePreview)initWithFrame:(CGRect)frame;
- (id)_createErrorLayer;
- (id)inlineTouchesFromUITouches:(id)touches;
- (void)_getCameraTransform:(id)transform;
- (void)centerLayerInParent:(id)parent;
- (void)commonInitWithFrame:(CGRect)frame;
- (void)createFullscreenInstanceWithInitialFrame:(CGRect)frame previewOptions:(id)options completionHandler:(id)handler;
- (void)dealloc;
- (void)getCameraTransform:(id)transform;
- (void)getSharedInlineServiceFailable:(id)failable;
- (void)observeDismissFullscreenWithCompletionHandler:(id)handler;
- (void)preparePreviewOfFileAtURL:(id)l completionHandler:(id)handler;
- (void)sendTeardownEvent;
- (void)setCameraTransform:(ASVInlinePreview *)self;
- (void)setFrameWithinFencedTransaction:(CGRect)transaction;
- (void)setIsPlaying:(BOOL)playing reply:(id)reply;
- (void)setWantsDebugColors:(BOOL)colors;
- (void)setupRemoteConnectionWithCompletionHandler:(id)handler;
- (void)showErrorLayer;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)updateFrame:(CGRect)frame completionHandler:(id)handler;
- (void)updateLayout;
- (void)updateRuntimeStateFrom:(id)from;
@end

@implementation ASVInlinePreview

- (void)commonInitWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ++_instanceCount;
  self->_duration = 0.0;
  v8 = objc_opt_new();
  layer = self->_layer;
  self->_layer = v8;

  [(CALayer *)self->_layer setFrame:x, y, width, height];
  _createErrorLayer = [(ASVInlinePreview *)self _createErrorLayer];
  errorLayer = self->_errorLayer;
  self->_errorLayer = _createErrorLayer;

  [(CALayer *)self->_errorLayer setHidden:1];
  [(CALayer *)self->_layer addSublayer:self->_errorLayer];
  v15 = [MEMORY[0x277D75348] colorWithRed:0.235294118 green:0.235294118 blue:0.262745098 alpha:0.6];
  v12 = [[CAActivityIndicatorLayer alloc] initWithColor:v15];
  spinnerLayer = self->_spinnerLayer;
  self->_spinnerLayer = v12;

  [(CAActivityIndicatorLayer *)self->_spinnerLayer setFrame:0.0, 0.0, 20.0, 20.0];
  [(CALayer *)self->_layer addSublayer:self->_spinnerLayer];
  [(ASVInlinePreview *)self updateLayout];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_showErrorLayer name:@"ASVConnectionInterrupted" object:0];
}

- (void)dealloc
{
  v3 = _asvLogHandle;
  if (!_asvLogHandle)
  {
    ASVInitLogging();
    v3 = _asvLogHandle;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_241215000, v3, OS_LOG_TYPE_INFO, "#Inline: dealloc: invalidating _animationUpdateTimer", buf, 2u);
  }

  [(NSTimer *)self->_animationUpdateTimer invalidate];
  [(ASVInlinePreview *)self sendTeardownEvent];
  --_instanceCount;
  v4.receiver = self;
  v4.super_class = ASVInlinePreview;
  [(ASVInlinePreview *)&v4 dealloc];
}

+ (id)getService
{
  v2 = +[ASVInlinePreviewFactory shared];
  sharedInlineService = [v2 sharedInlineService];

  if (sharedInlineService)
  {
    v4 = +[ASVInlinePreviewFactory shared];
    sharedInlineService2 = [v4 sharedInlineService];
  }

  else
  {
    v6 = _asvLogHandle;
    if (!_asvLogHandle)
    {
      ASVInitLogging();
      v6 = _asvLogHandle;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_241215000, v6, OS_LOG_TYPE_INFO, "#Inline: Extension not launched", v8, 2u);
    }

    sharedInlineService2 = 0;
  }

  return sharedInlineService2;
}

- (void)sendTeardownEvent
{
  v3 = +[ASVInlinePreview getService];
  if (v3)
  {
    uuid = [(ASVInlinePreview *)self uuid];
    [v3 teardownInlinePreviewWithUUID:uuid completion:&__block_literal_global_2];
  }

  else
  {
    v5 = _asvLogHandle;
    if (!_asvLogHandle)
    {
      ASVInitLogging();
      v5 = _asvLogHandle;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_241215000, v5, OS_LOG_TYPE_INFO, "#Inline: Couldn't get service", v6, 2u);
    }
  }
}

void __46__ASVInlinePreview_Private__sendTeardownEvent__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = _asvLogHandle;
  if (!_asvLogHandle)
  {
    ASVInitLogging();
    v3 = _asvLogHandle;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_241215000, v3, OS_LOG_TYPE_INFO, "#Inline: Successfully teardown %@", &v4, 0xCu);
  }
}

+ (void)remoteInstanceCount:(id)count
{
  countCopy = count;
  v4 = _asvLogHandle;
  if (!_asvLogHandle)
  {
    ASVInitLogging();
    v4 = _asvLogHandle;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_241215000, v4, OS_LOG_TYPE_INFO, "#Inline: Get remoteInstanceCount", buf, 2u);
  }

  v5 = +[ASVInlinePreview getService];
  if (v5)
  {
    v6 = objc_opt_new();
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49__ASVInlinePreview_Private__remoteInstanceCount___block_invoke;
    v8[3] = &unk_278CCAD98;
    v9 = countCopy;
    [v5 sendARQLEvent:&unk_285313458 forUUID:v6 completion:v8];
  }

  else
  {
    v7 = _asvLogHandle;
    if (!_asvLogHandle)
    {
      ASVInitLogging();
      v7 = _asvLogHandle;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241215000, v7, OS_LOG_TYPE_INFO, "#Inline: Couldn't get service", buf, 2u);
    }

    (*(countCopy + 2))(countCopy, 0);
  }
}

void __49__ASVInlinePreview_Private__remoteInstanceCount___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _asvLogHandle;
  if (!_asvLogHandle)
  {
    ASVInitLogging();
    v7 = _asvLogHandle;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_241215000, v7, OS_LOG_TYPE_INFO, "#Inline: replyPayload: %@", &v11, 0xCu);
  }

  v8 = [v5 objectForKey:@"instanceCount"];
  v9 = v8;
  if (v8)
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), [v8 intValue]);
  }

  else
  {
    v10 = _asvLogHandle;
    if (!_asvLogHandle)
    {
      ASVInitLogging();
      v10 = _asvLogHandle;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_241215000, v10, OS_LOG_TYPE_ERROR, "#Inline: Couldn't get remoteInstanceCount", &v11, 2u);
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), 0xFFFFFFFFLL);
  }
}

+ (void)debugGetMemoryUsage:(id)usage
{
  usageCopy = usage;
  v4 = +[ASVInlinePreview getService];
  if (v4)
  {
    v5 = objc_opt_new();
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __49__ASVInlinePreview_Private__debugGetMemoryUsage___block_invoke;
    v7[3] = &unk_278CCAD98;
    v8 = usageCopy;
    [v4 sendARQLEvent:&unk_285313480 forUUID:v5 completion:v7];
  }

  else
  {
    v6 = _asvLogHandle;
    if (!_asvLogHandle)
    {
      ASVInitLogging();
      v6 = _asvLogHandle;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241215000, v6, OS_LOG_TYPE_INFO, "#Inline: Couldn't get service", buf, 2u);
    }

    (*(usageCopy + 2))(usageCopy, 0, 0);
  }
}

void __49__ASVInlinePreview_Private__debugGetMemoryUsage___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 objectForKey:@"processMemoryLimit"];
  v4 = [v3 objectForKey:@"currentMemoryFootprint"];

  (*(*(a1 + 32) + 16))(*(a1 + 32), [v5 integerValue], objc_msgSend(v4, "integerValue"));
}

- (void)updateLayout
{
  [(ASVInlinePreview *)self centerLayerInParent:self->_spinnerLayer];
  errorLayer = self->_errorLayer;

  [(ASVInlinePreview *)self centerLayerInParent:errorLayer];
}

- (void)centerLayerInParent:(id)parent
{
  parentCopy = parent;
  superlayer = [parentCopy superlayer];
  v4 = superlayer;
  if (superlayer)
  {
    [superlayer bounds];
    v6 = v5;
    [parentCopy bounds];
    v8 = (v6 - v7) * 0.5;
    [v4 bounds];
    v10 = v9;
    [parentCopy bounds];
    v12 = (v10 - v11) * 0.5;
    [parentCopy bounds];
    v14 = v13;
    [parentCopy bounds];
    [parentCopy setFrame:{v8, v12, v14}];
  }
}

- (void)showErrorLayer
{
  v3 = _asvLogHandle;
  if (!_asvLogHandle)
  {
    ASVInitLogging();
    v3 = _asvLogHandle;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_241215000, v3, OS_LOG_TYPE_INFO, "#Inline: showErrorLayer called", buf, 2u);
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__ASVInlinePreview_Private__showErrorLayer__block_invoke;
  v4[3] = &unk_278CCADC0;
  v4[4] = self;
  ASVRunInMainThread(v4);
}

uint64_t __43__ASVInlinePreview_Private__showErrorLayer__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 88) stopAnimating];
  [*(*(a1 + 32) + 96) setHidden:0];
  v2 = *(a1 + 32);

  return [v2 updateLayout];
}

- (id)_createErrorLayer
{
  v2 = objc_opt_new();
  [v2 setName:@"CircleMask"];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [v2 setBackgroundColor:{objc_msgSend(blackColor, "CGColor")}];

  [v2 setFrame:{0.0, 0.0, 60.0, 60.0}];
  [v2 bounds];
  [v2 setCornerRadius:v4 * 0.5];
  v5 = objc_alloc_init(MEMORY[0x277CFFFA0]);
  [v5 setFrame:{0.0, 0.0, 60.0, 60.0}];
  [v5 setName:@"CircleMaterial"];
  [v5 setRecipe:*MEMORY[0x277CFFF18]];
  [v5 setWeighting:1.0];
  [v5 setMask:v2];
  v6 = [MEMORY[0x277D755D0] configurationWithPointSize:22.5];
  v7 = [MEMORY[0x277D755B8] systemImageNamed:@"arkit.badge.xmark" withConfiguration:v6];
  [v7 size];
  v9 = v8;
  v11 = v10;
  cGImage = [v7 CGImage];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [whiteColor CGColor];

  v14 = objc_opt_new();
  [v14 setContentsGravity:*MEMORY[0x277CDA710]];
  [v14 setName:@"IconMask"];
  [v14 setContents:cGImage];
  [v14 setFrame:{0.0, 0.0, v9, v11}];
  v15 = objc_alloc_init(MEMORY[0x277CFFFA0]);
  [v15 setFrame:{(60.0 - v9) * 0.5 + 2.5, (60.0 - v11) * 0.5, v9, v11}];
  [v15 setName:@"IconMaterial"];
  [v15 setRecipe:*MEMORY[0x277CFFF20]];
  [v15 setWeighting:1.0];
  [v15 setMask:v14];
  [v5 addSublayer:v15];

  return v5;
}

void __46__ASVInlinePreview_Private__setEnableShadows___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _asvLogHandle;
  if (!_asvLogHandle)
  {
    ASVInitLogging();
    v7 = _asvLogHandle;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v10[0] = 67109120;
    v10[1] = v8;
    _os_log_impl(&dword_241215000, v7, OS_LOG_TYPE_INFO, "#Inline: setEnableShadows: %d", v10, 8u);
  }

  v9 = [v6 uuid];
  [v5 inlinePreview:v9 setEnableShadows:*(a1 + 32)];
}

- (void)setIsPlaying:(BOOL)playing reply:(id)reply
{
  replyCopy = reply;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__ASVInlinePreview_Private__setIsPlaying_reply___block_invoke;
  v8[3] = &unk_278CCAE30;
  playingCopy = playing;
  v8[4] = self;
  v9 = replyCopy;
  v7 = replyCopy;
  [(ASVInlinePreview *)self getSharedInlineServiceFailable:v8];
}

void __48__ASVInlinePreview_Private__setIsPlaying_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _asvLogHandle;
  if (!_asvLogHandle)
  {
    ASVInitLogging();
    v7 = _asvLogHandle;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 48);
    *buf = 67109120;
    v20 = v8;
    _os_log_impl(&dword_241215000, v7, OS_LOG_TYPE_INFO, "#Inline: setIsPlaying: %d", buf, 8u);
  }

  v17[1] = @"isPlaying";
  v18[0] = @"isPlaying";
  v17[0] = @"request";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
  v18[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v11 = [*(a1 + 32) uuid];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __48__ASVInlinePreview_Private__setIsPlaying_reply___block_invoke_77;
  v14[3] = &unk_278CCAE08;
  v12 = *(a1 + 40);
  v15 = v10;
  v16 = v12;
  v14[4] = *(a1 + 32);
  v13 = v10;
  [v5 sendARQLEvent:v13 forUUID:v11 completion:v14];
}

void __48__ASVInlinePreview_Private__setIsPlaying_reply___block_invoke_77(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKeyedSubscript:@"error"];
  if (v3)
  {
    v4 = _asvLogHandle;
    if (!_asvLogHandle)
    {
      ASVInitLogging();
      v4 = _asvLogHandle;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_241215000, v4, OS_LOG_TYPE_ERROR, "#Inline: Unable to setIsPlaying. Error: %@", &v5, 0xCu);
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), [*(a1 + 32) isPlaying], v3);
  }

  else
  {
    [*(a1 + 32) updateRuntimeStateFrom:*(a1 + 40)];
    (*(*(a1 + 48) + 16))(*(a1 + 48), [*(a1 + 32) isPlaying], 0);
  }
}

void __42__ASVInlinePreview_Private__setIsLooping___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _asvLogHandle;
  if (!_asvLogHandle)
  {
    ASVInitLogging();
    v7 = _asvLogHandle;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v10[0] = 67109120;
    v10[1] = v8;
    _os_log_impl(&dword_241215000, v7, OS_LOG_TYPE_INFO, "#Inline: setIsLooping: %d", v10, 8u);
  }

  v9 = [v6 uuid];
  [v5 inlinePreview:v9 setIsLooping:*(a1 + 32)];
}

void __40__ASVInlinePreview_Private__setIsMuted___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _asvLogHandle;
  if (!_asvLogHandle)
  {
    ASVInitLogging();
    v7 = _asvLogHandle;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v10[0] = 67109120;
    v10[1] = v8;
    _os_log_impl(&dword_241215000, v7, OS_LOG_TYPE_INFO, "#Inline: setIsMuted: %d", v10, 8u);
  }

  v9 = [v6 uuid];
  [v5 inlinePreview:v9 setIsMuted:*(a1 + 32)];
}

void __55__ASVInlinePreview_Private__setAnimationObserverBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __55__ASVInlinePreview_Private__setAnimationObserverBlock___block_invoke_2;
    v5[3] = &unk_278CCAEA8;
    objc_copyWeak(&v6, (a1 + 32));
    [WeakRetained getSharedInlineServiceFailable:v5];
    objc_destroyWeak(&v6);
  }
}

void __55__ASVInlinePreview_Private__setAnimationObserverBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 uuid];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__ASVInlinePreview_Private__setAnimationObserverBlock___block_invoke_3;
  v8[3] = &unk_278CCAE80;
  objc_copyWeak(&v9, (a1 + 32));
  [v5 sendARQLEvent:&unk_2853134A8 forUUID:v7 completion:v8];

  objc_destroyWeak(&v9);
}

void __55__ASVInlinePreview_Private__setAnimationObserverBlock___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__ASVInlinePreview_Private__setAnimationObserverBlock___block_invoke_4;
  v8[3] = &unk_278CCAE58;
  objc_copyWeak(&v10, (a1 + 32));
  v7 = v5;
  v9 = v7;
  ASVRunInMainThread(v8);

  objc_destroyWeak(&v10);
}

void __55__ASVInlinePreview_Private__setAnimationObserverBlock___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && WeakRetained[8])
  {
    v5 = WeakRetained;
    [WeakRetained updateRuntimeStateFrom:*(a1 + 32)];
    v3 = v5[8];
    v4 = [v5 isPlaying];
    [v5 currentTime];
    (*(v3 + 16))(v3, v4);
    WeakRetained = v5;
  }
}

void __44__ASVInlinePreview_Private__setCurrentTime___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 uuid];
  [v5 inlinePreview:v6 setCurrentTime:*(a1 + 32)];
}

- (void)_getCameraTransform:(id)transform
{
  transformCopy = transform;
  v5 = _asvLogHandle;
  if (!_asvLogHandle)
  {
    ASVInitLogging();
    v5 = _asvLogHandle;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_241215000, v5, OS_LOG_TYPE_INFO, "#Inline: _getCameraTransform() called", buf, 2u);
  }

  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.AssetViewer.ASVInlinePreview" code:5 userInfo:0];
  cameraTransformReply = [(ASVInlinePreview *)self cameraTransformReply];

  if (cameraTransformReply)
  {
    cameraTransformReply2 = [(ASVInlinePreview *)self cameraTransformReply];
    (cameraTransformReply2)[2](cameraTransformReply2, v6, 0);
  }

  [(ASVInlinePreview *)self setCameraTransformReply:transformCopy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__ASVInlinePreview_Private___getCameraTransform___block_invoke;
  v9[3] = &unk_278CCAF40;
  v9[4] = self;
  [(ASVInlinePreview *)self getSharedInlineServiceFailable:v9];
}

void __49__ASVInlinePreview_Private___getCameraTransform___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 uuid];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__ASVInlinePreview_Private___getCameraTransform___block_invoke_2;
  v6[3] = &unk_278CCAF18;
  v6[4] = *(a1 + 32);
  [v4 sendARQLEvent:&unk_2853134D0 forUUID:v5 completion:v6];
}

void __49__ASVInlinePreview_Private___getCameraTransform___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _asvLogHandle;
  if (!_asvLogHandle)
  {
    ASVInitLogging();
    v7 = _asvLogHandle;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_241215000, v7, OS_LOG_TYPE_INFO, "#Inline: _getCameraTransform() received reply", v8, 2u);
  }

  [*(a1 + 32) updateRuntimeStateFrom:v5];
}

- (void)setCameraTransform:(ASVInlinePreview *)self
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__ASVInlinePreview_Private__setCameraTransform___block_invoke;
  v3[3] = &__block_descriptor_48_e51_v24__0___ARQLInlineService3__8__ASVInlinePreview_16l;
  v4 = v2;
  [(ASVInlinePreview *)self getSharedInlineServiceFailable:v3];
}

void __48__ASVInlinePreview_Private__setCameraTransform___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _asvLogHandle;
  if (!_asvLogHandle)
  {
    ASVInitLogging();
    v7 = _asvLogHandle;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = COERCE_FLOAT(HIDWORD(*(a1 + 32)));
    v9 = COERCE_FLOAT(*(a1 + 32));
    v10 = COERCE_FLOAT(*(a1 + 40));
    v14 = 134218496;
    v15 = v8;
    v16 = 2048;
    v17 = v9;
    v18 = 2048;
    v19 = v10;
    _os_log_impl(&dword_241215000, v7, OS_LOG_TYPE_INFO, "#Inline: setCameraYaw: %g, %g, %g", &v14, 0x20u);
  }

  v11 = [v6 uuid];
  LODWORD(v12) = HIDWORD(*(a1 + 32));
  LODWORD(v13) = *(a1 + 40);
  [v5 inlinePreview:v11 setCameraYaw:&unk_2853134F8 pitch:v12 scale:*(a1 + 32) options:v13];
}

- (void)updateRuntimeStateFrom:(id)from
{
  fromCopy = from;
  v4 = [fromCopy objectForKey:@"duration"];
  if (v4)
  {
    [(ASVInlinePreview *)self willChangeValueForKey:@"duration"];
    [v4 doubleValue];
    self->_duration = v5;
    [(ASVInlinePreview *)self didChangeValueForKey:@"duration"];
  }

  v6 = [fromCopy objectForKey:@"isPlaying"];
  if (v6)
  {
    [(ASVInlinePreview *)self willChangeValueForKey:@"isPlaying"];
    self->_isPlaying = [v6 BOOLValue];
    [(ASVInlinePreview *)self didChangeValueForKey:@"isPlaying"];
  }

  v7 = [fromCopy objectForKey:@"hasAudio"];
  if (v7)
  {
    [(ASVInlinePreview *)self willChangeValueForKey:@"hasAudio"];
    self->_hasAudio = [v7 BOOLValue];
    [(ASVInlinePreview *)self didChangeValueForKey:@"hasAudio"];
  }

  v8 = [fromCopy objectForKey:@"currentTime"];
  if (v8)
  {
    [(ASVInlinePreview *)self willChangeValueForKey:@"currentTime"];
    [v8 doubleValue];
    self->_currentTime = v9;
    [(ASVInlinePreview *)self didChangeValueForKey:@"currentTime"];
  }

  v10 = [fromCopy objectForKey:@"yaw"];
  v11 = [fromCopy objectForKey:@"pitch"];
  v12 = [fromCopy objectForKey:@"scale"];
  v13 = v12;
  if (v10)
  {
    if (v11)
    {
      if (v12)
      {
        [v11 floatValue];
        v21 = v14;
        [v10 floatValue];
        v20 = v15;
        [v13 floatValue];
        v16 = v21;
        DWORD1(v16) = v20;
        DWORD2(v16) = v17;
        *self->_cameraTransform = v16;
        cameraTransformReply = [(ASVInlinePreview *)self cameraTransformReply];

        if (cameraTransformReply)
        {
          cameraTransformReply2 = [(ASVInlinePreview *)self cameraTransformReply];
          cameraTransformReply2[2](cameraTransformReply2, 0, *self->_cameraTransform);

          [(ASVInlinePreview *)self setCameraTransformReply:0];
        }
      }
    }
  }
}

- (ASVInlinePreview)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v12.receiver = self;
  v12.super_class = ASVInlinePreview;
  v7 = [(ASVInlinePreview *)&v12 init];
  if (v7)
  {
    v8 = objc_opt_new();
    uuid = v7->_uuid;
    v7->_uuid = v8;

    v7->_resizeLayerImmediately = 1;
    [(ASVInlinePreview *)v7 commonInitWithFrame:x, y, width, height];
    v10 = v7;
  }

  return v7;
}

- (void)getSharedInlineServiceFailable:(id)failable
{
  failableCopy = failable;
  v5 = +[ASVInlinePreviewFactory shared];
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__ASVInlinePreview_getSharedInlineServiceFailable___block_invoke;
  v8[3] = &unk_278CCB570;
  objc_copyWeak(&v11, &location);
  v6 = failableCopy;
  v10 = v6;
  v7 = v5;
  v9 = v7;
  [v7 getSharedInlineServiceWithCompletionHandler:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __51__ASVInlinePreview_getSharedInlineServiceFailable___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = _asvLogHandle;
      if (!_asvLogHandle)
      {
        ASVInitLogging();
        v5 = _asvLogHandle;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 138412290;
        v9 = v3;
        _os_log_impl(&dword_241215000, v5, OS_LOG_TYPE_ERROR, "#Inline: getSharedInlineServiceFailable: Unable to get shared service, error: %@", &v8, 0xCu);
      }
    }

    else
    {
      v6 = *(a1 + 40);
      v7 = [*(a1 + 32) sharedInlineService];
      (*(v6 + 16))(v6, v7, WeakRetained);
    }
  }
}

- (void)setupRemoteConnectionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[ASVInlinePreviewFactory shared];
  objc_initWeak(&location, self);
  [(CALayer *)self->_layer bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__ASVInlinePreview_setupRemoteConnectionWithCompletionHandler___block_invoke;
  v16[3] = &unk_278CCB5E8;
  objc_copyWeak(v19, &location);
  v14 = handlerCopy;
  v18 = v14;
  v19[1] = v7;
  v19[2] = v9;
  v19[3] = v11;
  v19[4] = v13;
  v15 = v5;
  v17 = v15;
  [v15 getSharedInlineServiceWithCompletionHandler:v16];

  objc_destroyWeak(v19);
  objc_destroyWeak(&location);
}

void __63__ASVInlinePreview_setupRemoteConnectionWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = _asvLogHandle;
  if (v3)
  {
    if (!_asvLogHandle)
    {
      ASVInitLogging();
      v5 = _asvLogHandle;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v3;
      _os_log_impl(&dword_241215000, v5, OS_LOG_TYPE_ERROR, "#Inline: Unable to getSharedInlineServiceWithCompletionHandler, error: %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
    [WeakRetained showErrorLayer];
  }

  else
  {
    if (!_asvLogHandle)
    {
      ASVInitLogging();
      v5 = _asvLogHandle;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 56);
      v7 = *(a1 + 64);
      v8 = *(a1 + 72);
      v9 = *(a1 + 80);
      v10 = v5;
      v23.origin.x = v6;
      v23.origin.y = v7;
      v23.size.width = v8;
      v23.size.height = v9;
      v11 = NSStringFromCGRect(v23);
      *buf = 138412290;
      v21 = v11;
      _os_log_impl(&dword_241215000, v10, OS_LOG_TYPE_INFO, "#Inline: setupRemoteConnectionWithCompletionHandler, frame: %@", buf, 0xCu);
    }

    v12 = [*(a1 + 32) sharedInlineService];
    v13 = WeakRetained[1];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __63__ASVInlinePreview_setupRemoteConnectionWithCompletionHandler___block_invoke_2;
    v15[3] = &unk_278CCB5C0;
    objc_copyWeak(&v17, (a1 + 48));
    v16 = *(a1 + 40);
    v14 = *(a1 + 72);
    v18 = *(a1 + 56);
    v19 = v14;
    [v12 createInlinePreviewWithUUID:v13 initialBounds:v15 contextIdReply:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];

    objc_destroyWeak(&v17);
  }
}

void __63__ASVInlinePreview_setupRemoteConnectionWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, int a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v8)
  {
    v10 = _asvLogHandle;
    if (!_asvLogHandle)
    {
      ASVInitLogging();
      v10 = _asvLogHandle;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v8;
      _os_log_impl(&dword_241215000, v10, OS_LOG_TYPE_ERROR, "#Inline: Unable to create remote context, error: %@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
    [WeakRetained showErrorLayer];
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__ASVInlinePreview_setupRemoteConnectionWithCompletionHandler___block_invoke_3;
    v12[3] = &unk_278CCB598;
    objc_copyWeak(&v14, (a1 + 40));
    v17 = a3;
    v11 = *(a1 + 64);
    v15 = *(a1 + 48);
    v16 = v11;
    v13 = *(a1 + 32);
    ASVRunInMainThread(v12);

    objc_destroyWeak(&v14);
  }
}

void __63__ASVInlinePreview_setupRemoteConnectionWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [MEMORY[0x277CD9EE0] layer];
  [v3 setContextId:*(a1 + 80)];
  [v3 setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v4 = _asvLogHandle;
  if (!_asvLogHandle)
  {
    ASVInitLogging();
    v4 = _asvLogHandle;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    [v3 frame];
    v6 = NSStringFromCGRect(v12);
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_241215000, v5, OS_LOG_TYPE_INFO, "#Inline: layerHost.frame: %@", &v9, 0xCu);
  }

  [v3 setAllowsHitTesting:0];
  v7 = WeakRetained[2];
  WeakRetained[2] = v3;
  v8 = v3;

  (*(*(a1 + 32) + 16))();
}

- (void)preparePreviewOfFileAtURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  [(CAActivityIndicatorLayer *)self->_spinnerLayer startAnimating];
  v8 = +[ASVInlinePreviewFactory shared];
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__ASVInlinePreview_preparePreviewOfFileAtURL_completionHandler___block_invoke;
  v12[3] = &unk_278CCB6B0;
  objc_copyWeak(&v17, &location);
  v9 = handlerCopy;
  v16 = v9;
  v10 = lCopy;
  v13 = v10;
  v11 = v8;
  v14 = v11;
  selfCopy = self;
  [v11 getSharedInlineServiceWithCompletionHandler:v12];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __64__ASVInlinePreview_preparePreviewOfFileAtURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (v3)
  {
    v5 = _asvLogHandle;
    if (!_asvLogHandle)
    {
      ASVInitLogging();
      v5 = _asvLogHandle;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v3;
      _os_log_impl(&dword_241215000, v5, OS_LOG_TYPE_ERROR, "#Inline: Unable to getSharedInlineServiceWithCompletionHandler, error: %@", buf, 0xCu);
    }

    (*(*(a1 + 56) + 16))();
    [WeakRetained showErrorLayer];
  }

  else
  {
    v6 = *(a1 + 32);
    v15 = 0;
    v7 = [MEMORY[0x277CDAA38] wrapperWithURL:v6 readonly:1 error:&v15];
    v8 = v15;
    v9 = _asvLogHandle;
    if (v8)
    {
      if (!_asvLogHandle)
      {
        ASVInitLogging();
        v9 = _asvLogHandle;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v17 = v8;
        _os_log_impl(&dword_241215000, v9, OS_LOG_TYPE_ERROR, "#Inline: Unable to extend file sandbox to extension, error: %@", buf, 0xCu);
      }

      (*(*(a1 + 56) + 16))();
      [WeakRetained showErrorLayer];
    }

    else
    {
      if (!_asvLogHandle)
      {
        ASVInitLogging();
        v9 = _asvLogHandle;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_241215000, v9, OS_LOG_TYPE_INFO, "#Inline: calling prepareInlinePreviewWithScopedURLWrapperAttributes", buf, 2u);
      }

      v10 = [*(a1 + 40) sharedInlineService];
      v11 = *(*(a1 + 48) + 8);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __64__ASVInlinePreview_preparePreviewOfFileAtURL_completionHandler___block_invoke_8;
      v12[3] = &unk_278CCB688;
      objc_copyWeak(&v14, (a1 + 64));
      v13 = *(a1 + 56);
      [v10 prepareInlinePreviewWithScopedURLWrapperAttributes:v7 forUUID:v11 completion:v12];

      objc_destroyWeak(&v14);
    }
  }
}

void __64__ASVInlinePreview_preparePreviewOfFileAtURL_completionHandler___block_invoke_8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__ASVInlinePreview_preparePreviewOfFileAtURL_completionHandler___block_invoke_2;
  v12[3] = &unk_278CCB660;
  objc_copyWeak(&v16, (a1 + 40));
  v10 = v9;
  v13 = v10;
  v15 = *(a1 + 32);
  v11 = v8;
  v14 = v11;
  ASVRunInMainThread(v12);

  objc_destroyWeak(&v16);
}

void __64__ASVInlinePreview_preparePreviewOfFileAtURL_completionHandler___block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (*(a1 + 32))
  {
    v4 = _asvLogHandle;
    if (!_asvLogHandle)
    {
      ASVInitLogging();
      v4 = _asvLogHandle;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      *buf = 138412290;
      v26 = v5;
      _os_log_impl(&dword_241215000, v4, OS_LOG_TYPE_ERROR, "#Inline: Unable to load file for inline preview, error: %@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
    [v3 showErrorLayer];
  }

  else
  {
    v6 = [WeakRetained spinnerLayer];
    [v6 stopAnimating];

    [v3[5] addSublayer:v3[2]];
    [v3 updateLayout];
    [v3 updateRuntimeStateFrom:*(a1 + 40)];
    *(v3 + 32) = 0;
    [v3[5] bounds];
    v8 = v7;
    v10 = v9;
    [v3[2] bounds];
    if (v8 != v12 || v10 != v11)
    {
      v14 = _asvLogHandle;
      if (!_asvLogHandle)
      {
        ASVInitLogging();
        v14 = _asvLogHandle;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_241215000, v14, OS_LOG_TYPE_INFO, "#Inline: Frame was changed during loading - resizing...", buf, 2u);
      }

      [v3[5] bounds];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __64__ASVInlinePreview_preparePreviewOfFileAtURL_completionHandler___block_invoke_9;
      v23[3] = &unk_278CCB638;
      objc_copyWeak(&v24, (a1 + 56));
      [v3 updateFrame:v23 completionHandler:{v16, v18, v20, v22}];
      objc_destroyWeak(&v24);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __64__ASVInlinePreview_preparePreviewOfFileAtURL_completionHandler___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__ASVInlinePreview_preparePreviewOfFileAtURL_completionHandler___block_invoke_2_10;
  v7[3] = &unk_278CCB610;
  objc_copyWeak(&v8, (a1 + 32));
  ASVRunInMainThread(v7);
  [v5 invalidate];
  objc_destroyWeak(&v8);
}

void __64__ASVInlinePreview_preparePreviewOfFileAtURL_completionHandler___block_invoke_2_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[5] bounds];
  [WeakRetained setFrameWithinFencedTransaction:?];
}

- (void)createFullscreenInstanceWithInitialFrame:(CGRect)frame previewOptions:(id)options completionHandler:(id)handler
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  optionsCopy = options;
  handlerCopy = handler;
  if (self->_fullscreenService)
  {
    [ASVInlinePreview createFullscreenInstanceWithInitialFrame:a2 previewOptions:self completionHandler:?];
  }

  v14 = +[ASVInlinePreviewFactory shared];
  objc_initWeak(&location, self);
  uuid = self->_uuid;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __94__ASVInlinePreview_createFullscreenInstanceWithInitialFrame_previewOptions_completionHandler___block_invoke;
  v17[3] = &unk_278CCB700;
  objc_copyWeak(v19, &location);
  v16 = handlerCopy;
  v18 = v16;
  v19[1] = a2;
  [v14 createFullscreenInstanceWithUUID:uuid initialFrame:optionsCopy previewOptions:v17 completionHandler:{x, y, width, height}];

  objc_destroyWeak(v19);
  objc_destroyWeak(&location);
}

void __94__ASVInlinePreview_createFullscreenInstanceWithInitialFrame_previewOptions_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __94__ASVInlinePreview_createFullscreenInstanceWithInitialFrame_previewOptions_completionHandler___block_invoke_2;
  v19[3] = &unk_278CCB6D8;
  objc_copyWeak(v25, (a1 + 40));
  v13 = v12;
  v20 = v13;
  v14 = v9;
  v21 = v14;
  v15 = v10;
  v22 = v15;
  v16 = *(a1 + 32);
  v17 = *(a1 + 48);
  v24 = v16;
  v25[1] = v17;
  v18 = v11;
  v23 = v18;
  ASVRunInMainThread(v19);

  objc_destroyWeak(v25);
}

void __94__ASVInlinePreview_createFullscreenInstanceWithInitialFrame_previewOptions_completionHandler___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (!*(a1 + 32) && *(a1 + 40) && (v6 = *(a1 + 48)) != 0)
  {
    if (WeakRetained[3])
    {
      __94__ASVInlinePreview_createFullscreenInstanceWithInitialFrame_previewOptions_completionHandler___block_invoke_2_cold_1();
      v6 = *v11;
    }

    objc_storeStrong(v3 + 3, v6);
    v7 = [MEMORY[0x277CD9E90] handleFromXPCRepresentation:*(a1 + 56)];
    if (v7)
    {
      v8 = [[ASVInlineHostViewController alloc] initWithUUID:v3[1] child:*(a1 + 40) fullscreenInlineService:*(a1 + 48) canonicalWebPageURL:v3[6]];
      v9 = *(*(a1 + 64) + 16);
    }

    else
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.AssetViewer.ASVInlinePreview" code:3 userInfo:0];
      v10 = _asvLogHandle;
      if (!_asvLogHandle)
      {
        ASVInitLogging();
        v10 = _asvLogHandle;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v11 = 138412290;
        *&v11[4] = v8;
        _os_log_impl(&dword_241215000, v10, OS_LOG_TYPE_ERROR, "#Inline: Didn't receive fence handler when creating fullscreen instance, error: %@", v11, 0xCu);
      }

      v9 = *(*(a1 + 64) + 16);
    }

    v9();
  }

  else
  {
    v4 = _asvLogHandle;
    if (!_asvLogHandle)
    {
      ASVInitLogging();
      v4 = _asvLogHandle;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      *v11 = 138412290;
      *&v11[4] = v5;
      _os_log_impl(&dword_241215000, v4, OS_LOG_TYPE_ERROR, "#Inline: Unable to create fullscreen instance, error: %@", v11, 0xCu);
    }

    (*(*(a1 + 64) + 16))();
  }
}

- (void)observeDismissFullscreenWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (!self->_fullscreenService)
  {
    [(ASVInlinePreview *)a2 observeDismissFullscreenWithCompletionHandler:?];
  }

  objc_initWeak(&location, self);
  fullscreenService = self->_fullscreenService;
  uuid = self->_uuid;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__ASVInlinePreview_observeDismissFullscreenWithCompletionHandler___block_invoke;
  v9[3] = &unk_278CCB728;
  objc_copyWeak(v11, &location);
  v8 = handlerCopy;
  v10 = v8;
  v11[1] = a2;
  [(ARQLInlineService2 *)fullscreenService observeReturnedToInlineForUUID:uuid fenceHandleCompletion:v9];

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __66__ASVInlinePreview_observeDismissFullscreenWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v6)
  {
    v9 = [MEMORY[0x277CD9E90] handleFromXPCRepresentation:v6];
    (*(*(a1 + 32) + 16))();
    v10 = _asvLogHandle;
    if (!_asvLogHandle)
    {
      ASVInitLogging();
      v10 = _asvLogHandle;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v13 = 138412290;
      *&v13[4] = v7;
      _os_log_impl(&dword_241215000, v10, OS_LOG_TYPE_INFO, "#Inline: return to inline payload: %@", v13, 0xCu);
    }

    v11 = WeakRetained[3];
    if (!v11)
    {
      __66__ASVInlinePreview_observeDismissFullscreenWithCompletionHandler___block_invoke_cold_1();
      v11 = *v13;
    }

    WeakRetained[3] = 0;
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.AssetViewer.ASVInlinePreview" code:3 userInfo:0];
    v12 = _asvLogHandle;
    if (!_asvLogHandle)
    {
      ASVInitLogging();
      v12 = _asvLogHandle;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v13 = 138412290;
      *&v13[4] = v9;
      _os_log_impl(&dword_241215000, v12, OS_LOG_TYPE_ERROR, "#Inline: No CAFenceHandle when returning to inline, error: %@", v13, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)updateFrame:(CGRect)frame completionHandler:(id)handler
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v34 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v10 = _asvLogHandle;
  if (!_asvLogHandle)
  {
    ASVInitLogging();
    v10 = _asvLogHandle;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    v12 = NSStringFromCGRect(v35);
    [(CALayer *)self->_layer bounds];
    v13 = NSStringFromCGRect(v36);
    *buf = 138412546;
    v31 = v12;
    v32 = 2112;
    v33 = v13;
    _os_log_impl(&dword_241215000, v11, OS_LOG_TYPE_INFO, "#Inline: updateFrame called - newFrame: %@, oldFrame: %@", buf, 0x16u);
  }

  fullscreenService = self->_fullscreenService;
  if (!fullscreenService)
  {
    [(CALayerHost *)self->_layerHost bounds];
    if (width == v16 && height == v15)
    {
      v18 = _asvLogHandle;
      if (!_asvLogHandle)
      {
        ASVInitLogging();
        v18 = _asvLogHandle;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = v18;
        v37.origin.x = x;
        v37.origin.y = y;
        v37.size.width = width;
        v37.size.height = height;
        v20 = NSStringFromCGRect(v37);
        [(CALayer *)self->_layer bounds];
        v21 = NSStringFromCGRect(v38);
        *buf = 138412546;
        v31 = v20;
        v32 = 2112;
        v33 = v21;
        _os_log_impl(&dword_241215000, v19, OS_LOG_TYPE_INFO, "#Inline: Trying to updateFrame while in inline, but new bounds size is the same as current. newFrame: %@, oldFrame: %@", buf, 0x16u);
      }
    }
  }

  if (self->_resizeLayerImmediately)
  {
    v22 = _asvLogHandle;
    if (!_asvLogHandle)
    {
      ASVInitLogging();
      v22 = _asvLogHandle;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241215000, v22, OS_LOG_TYPE_INFO, "#Inline: Updating bounds immediately since showing error or spinner", buf, 2u);
    }

    [(ASVInlinePreview *)self setFrameWithinFencedTransaction:x, y, width, height];
  }

  v23 = +[ASVInlinePreviewFactory shared];
  sharedInlineService = [v23 sharedInlineService];
  uuid = self->_uuid;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __50__ASVInlinePreview_updateFrame_completionHandler___block_invoke;
  v27[3] = &unk_278CCB750;
  v28 = handlerCopy;
  v29 = fullscreenService == 0;
  v26 = handlerCopy;
  [sharedInlineService updateBounds:uuid forUUID:v27 fenceHandleCompletion:{x, y, width, height}];
}

void __50__ASVInlinePreview_updateFrame_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = _asvLogHandle;
    if (!_asvLogHandle)
    {
      ASVInitLogging();
      v10 = _asvLogHandle;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v9;
      _os_log_impl(&dword_241215000, v10, OS_LOG_TYPE_ERROR, "#Inline: Error while updating frame, error: %@", &v14, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v11 = [MEMORY[0x277CD9E90] handleFromXPCRepresentation:v8];
    if (v8 || (*(a1 + 40) & 1) == 0)
    {
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.AssetViewer.ASVInlinePreview" code:3 userInfo:0];
      v13 = _asvLogHandle;
      if (!_asvLogHandle)
      {
        ASVInitLogging();
        v13 = _asvLogHandle;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = 138412290;
        v15 = v12;
        _os_log_impl(&dword_241215000, v13, OS_LOG_TYPE_ERROR, "#Inline: No CAFenceHandle when updating frame, error: %@", &v14, 0xCu);
      }

      (*(*(a1 + 32) + 16))();
    }
  }
}

- (void)setFrameWithinFencedTransaction:(CGRect)transaction
{
  height = transaction.size.height;
  width = transaction.size.width;
  y = transaction.origin.y;
  x = transaction.origin.x;
  v13 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v8 = _asvLogHandle;
  if (!_asvLogHandle)
  {
    ASVInitLogging();
    v8 = _asvLogHandle;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    v10 = NSStringFromCGRect(v14);
    v11 = 138412290;
    v12 = v10;
    _os_log_impl(&dword_241215000, v9, OS_LOG_TYPE_INFO, "#Inline: Setting frame %@ to root and child layers", &v11, 0xCu);
  }

  [(CALayer *)self->_layer setFrame:x, y, width, height];
  [(CALayer *)self->_layer bounds];
  [(CALayerHost *)self->_layerHost setFrame:?];
  [(ASVInlinePreview *)self updateLayout];
}

- (id)inlineTouchesFromUITouches:(id)touches
{
  v21 = *MEMORY[0x277D85DE8];
  touchesCopy = touches;
  v6 = [MEMORY[0x277CBEB58] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = touchesCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = objc_alloc(MEMORY[0x277CDAA30]);
        v14 = [v13 initWithUITouch:{v12, v16}];
        [v6 addObject:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  if (![v6 count])
  {
    [(ASVInlinePreview *)a2 inlineTouchesFromUITouches:?];
  }

  return v6;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  v6 = +[ASVInlinePreviewFactory shared];
  v7 = [(ASVInlinePreview *)self inlineTouchesFromUITouches:beganCopy];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__ASVInlinePreview_touchesBegan_withEvent___block_invoke;
  v10[3] = &unk_278CCB778;
  v11 = v6;
  v12 = v7;
  selfCopy = self;
  v8 = v7;
  v9 = v6;
  [v9 getSharedInlineServiceWithCompletionHandler:v10];
}

void __43__ASVInlinePreview_touchesBegan_withEvent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sharedInlineService];
  [v2 touchesBegan:*(a1 + 40) forUUID:*(*(a1 + 48) + 8)];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  v6 = +[ASVInlinePreviewFactory shared];
  v7 = [(ASVInlinePreview *)self inlineTouchesFromUITouches:movedCopy];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__ASVInlinePreview_touchesMoved_withEvent___block_invoke;
  v10[3] = &unk_278CCB778;
  v11 = v6;
  v12 = v7;
  selfCopy = self;
  v8 = v7;
  v9 = v6;
  [v9 getSharedInlineServiceWithCompletionHandler:v10];
}

void __43__ASVInlinePreview_touchesMoved_withEvent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sharedInlineService];
  [v2 touchesMoved:*(a1 + 40) forUUID:*(*(a1 + 48) + 8)];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v24 = *MEMORY[0x277D85DE8];
  endedCopy = ended;
  v6 = +[ASVInlinePreviewFactory shared];
  v7 = [(ASVInlinePreview *)self inlineTouchesFromUITouches:endedCopy];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __43__ASVInlinePreview_touchesEnded_withEvent___block_invoke;
  v19[3] = &unk_278CCB778;
  v8 = v6;
  v20 = v8;
  v9 = v7;
  v21 = v9;
  selfCopy = self;
  [v8 getSharedInlineServiceWithCompletionHandler:v19];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = endedCopy;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [MEMORY[0x277CDAA30] removeUIDForUITouch:{*(*(&v15 + 1) + 8 * v14++), v15}];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

void __43__ASVInlinePreview_touchesEnded_withEvent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sharedInlineService];
  [v2 touchesEnded:*(a1 + 40) forUUID:*(*(a1 + 48) + 8)];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v23 = *MEMORY[0x277D85DE8];
  cancelledCopy = cancelled;
  v6 = +[ASVInlinePreviewFactory shared];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __47__ASVInlinePreview_touchesCancelled_withEvent___block_invoke;
  v18[3] = &unk_278CCB778;
  v7 = v6;
  v19 = v7;
  selfCopy = self;
  v8 = cancelledCopy;
  v21 = v8;
  [v7 getSharedInlineServiceWithCompletionHandler:v18];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [MEMORY[0x277CDAA30] removeUIDForUITouch:{*(*(&v14 + 1) + 8 * v13++), v14}];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v11);
  }
}

void __47__ASVInlinePreview_touchesCancelled_withEvent___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) sharedInlineService];
  v2 = [*(a1 + 40) inlineTouchesFromUITouches:*(a1 + 48)];
  [v3 touchesCancelled:v2 forUUID:*(*(a1 + 40) + 8)];
}

- (void)getCameraTransform:(id)transform
{
  transformCopy = transform;
  v5 = _asvLogHandle;
  if (!_asvLogHandle)
  {
    ASVInitLogging();
    v5 = _asvLogHandle;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_241215000, v5, OS_LOG_TYPE_INFO, "#Inline: getCameraTransform() called", v6, 2u);
  }

  [(ASVInlinePreview *)self _getCameraTransform:transformCopy];
}

+ (void)_kill:(int)_kill
{
  v3 = *&_kill;
  v8 = *MEMORY[0x277D85DE8];
  v4 = _asvLogHandle;
  if (!_asvLogHandle)
  {
    ASVInitLogging();
    v4 = _asvLogHandle;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109120;
    v7[1] = v3;
    _os_log_impl(&dword_241215000, v4, OS_LOG_TYPE_INFO, "#Inline: Killing inline preview service, signal: %d", v7, 8u);
  }

  v5 = +[ASVInlinePreviewFactory shared];
  extension = [v5 extension];
  [extension _kill:v3];
}

- (void)setWantsDebugColors:(BOOL)colors
{
  p_layerHost = &self->_layerHost;
  layerHost = self->_layerHost;
  if (colors)
  {
    [(CALayerHost *)layerHost setBorderWidth:2.0];
    orangeColor = [MEMORY[0x277D75348] orangeColor];
    -[CALayerHost setBorderColor:](self->_layerHost, "setBorderColor:", [orangeColor CGColor]);

    purpleColor = [MEMORY[0x277D75348] purpleColor];
    -[CALayerHost setBackgroundColor:](self->_layerHost, "setBackgroundColor:", [purpleColor CGColor]);

    layer = self->_layer;
    p_layer = &self->_layer;
    [(CALayer *)layer setBorderWidth:2.0];
    blueColor = [MEMORY[0x277D75348] blueColor];
    -[CALayer setBorderColor:](*p_layer, "setBorderColor:", [blueColor CGColor]);

    greenColor = [MEMORY[0x277D75348] greenColor];
  }

  else
  {
    [(CALayerHost *)layerHost setBorderWidth:0.0];
    greenColor = [MEMORY[0x277D75348] clearColor];
    p_layer = p_layerHost;
  }

  v13 = greenColor;
  v12 = greenColor;
  -[CALayer setBackgroundColor:](*p_layer, "setBackgroundColor:", [v13 CGColor]);
}

- (void)createFullscreenInstanceWithInitialFrame:(uint64_t)a1 previewOptions:(uint64_t)a2 completionHandler:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASVInlinePreview_iOS.m" lineNumber:187 description:@"A fullscreen instance already exists"];
}

void __94__ASVInlinePreview_createFullscreenInstanceWithInitialFrame_previewOptions_completionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_0();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:*(v3 + 80) object:v2 file:@"ASVInlinePreview_iOS.m" lineNumber:201 description:@"A fullscreen instance already exists"];

  *v0 = *v1;
}

- (void)observeDismissFullscreenWithCompletionHandler:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASVInlinePreview_iOS.m" lineNumber:221 description:@"_fullscreenService should not be nil before observing dismiss fullscreen"];
}

void __66__ASVInlinePreview_observeDismissFullscreenWithCompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:*(v3 + 48) object:v2 file:@"ASVInlinePreview_iOS.m" lineNumber:238 description:@"_fullscreenService should not be nil before setting it nil"];

  *v0 = *v1;
}

- (void)inlineTouchesFromUITouches:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASVInlinePreview_iOS.m" lineNumber:303 description:@"arqlTouches shound not return zero"];
}

@end