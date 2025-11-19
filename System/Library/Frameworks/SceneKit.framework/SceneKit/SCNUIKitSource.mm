@interface SCNUIKitSource
- (SCNUIKitSource)init;
- (id)prepareWindowIfNeeded;
- (id)textureSource;
- (void)dealloc;
@end

@implementation SCNUIKitSource

- (SCNUIKitSource)init
{
  v3.receiver = self;
  v3.super_class = SCNUIKitSource;
  return [(SCNUIKitSource *)&v3 init];
}

- (id)prepareWindowIfNeeded
{
  if (!self->_uiWindow && !self->_windowPreparing)
  {
    self->_windowPreparing = 1;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    v5 = __39__SCNUIKitSource_prepareWindowIfNeeded__block_invoke;
    v6 = &unk_2782FB608;
    v7 = self;
    if (pthread_main_np() == 1)
    {
      v5(block);
    }

    else
    {
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  return self->_uiWindow;
}

void __39__SCNUIKitSource_prepareWindowIfNeeded__block_invoke(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "uiView")];
  v8 = [[_SCNSnapshotWindow alloc] initWithFrame:v2, v3, v4, v5];
  -[_SCNSnapshotWindow setWindowScene:](v8, "setWindowScene:", [objc_msgSend(gCurrentSCNViewEvent "window")]);
  [(_SCNSnapshotWindow *)v8 setHidden:1];
  LODWORD(v6) = 1.0;
  [(_SCNSnapshotWindow *)v8 setCharge:v6];
  [(_SCNSnapshotWindow *)v8 setWindowLevel:10000.0];
  -[_SCNSnapshotWindow addSubview:](v8, "addSubview:", [*(a1 + 32) uiView]);
  [objc_msgSend(-[_SCNSnapshotWindow subviews](v8 "subviews")];
  [(_SCNSnapshotWindow *)v8 setNeedsDisplay];
  *(*(a1 + 32) + 32) = [objc_msgSend(*(a1 + 32) "uiView")];
  *(*(a1 + 32) + 24) = [(_SCNSnapshotWindow *)v8 layer];
  v7 = [*(*(a1 + 32) + 24) superlayer];
  [v7 setValue:MEMORY[0x277CBEC38] forKey:@"SCN_isBackingUIView"];
  [*(a1 + 32) setUiWindow:v8];
  [(_SCNSnapshotWindow *)v8 setPosition:-10000.0, 0.0];
  [(_SCNSnapshotWindow *)v8 setHidden:0];
}

- (id)textureSource
{
  if (![(SCNUIKitSource *)self prepareWindowIfNeeded])
  {
    return 0;
  }

  v3 = objc_alloc_init(SCNTextureUIKitSource);
  [(SCNTextureUIKitSource *)v3 setUiView:[(SCNUIKitSource *)self uiView]];
  [(SCNTextureUIKitSource *)v3 setUiWindow:[(SCNUIKitSource *)self uiWindow]];
  [(SCNTextureUIKitSource *)v3 setUiWindowLayer:self->_uiWindowLayer];
  [(SCNTextureUIKitSource *)v3 setIsOpaque:self->_isOpaque];
  [(SCNTextureUIKitSource *)v3 setSource:self];
  [(SCNTextureUIKitSource *)v3 setup];
  return v3;
}

- (void)dealloc
{
  uiWindow = self->_uiWindow;
  uiView = self->_uiView;
  self->_uiWindow = 0;
  self->_uiView = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__SCNUIKitSource_dealloc__block_invoke;
  block[3] = &unk_2782FC790;
  block[4] = uiWindow;
  block[5] = uiView;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v5.receiver = self;
  v5.super_class = SCNUIKitSource;
  [(SCNUIKitSource *)&v5 dealloc];
}

void __25__SCNUIKitSource_dealloc__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
}

@end