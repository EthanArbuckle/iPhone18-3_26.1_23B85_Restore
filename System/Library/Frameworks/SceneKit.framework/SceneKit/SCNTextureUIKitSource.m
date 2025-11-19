@interface SCNTextureUIKitSource
- (CGSize)layerSizeInPixels;
- (SCNTextureUIKitSource)init;
- (__C3DTexture)textureWithEngineContext:(__C3DEngineContext *)a3 textureSampler:(__C3DTextureSampler *)a4 nextFrameTime:(double *)a5;
- (double)layerContentsScaleFactor;
- (void)_layerTreeDidUpdate;
- (void)cleanup:(__C3DRendererContext *)a3;
- (void)dealloc;
- (void)setup;
@end

@implementation SCNTextureUIKitSource

- (SCNTextureUIKitSource)init
{
  v3.receiver = self;
  v3.super_class = SCNTextureUIKitSource;
  result = [(SCNTextureUIKitSource *)&v3 init];
  if (result)
  {
    atomic_fetch_add(gSCNTextureUIKitSourceInstanceCount, 1u);
  }

  return result;
}

- (void)dealloc
{
  atomic_fetch_add(gSCNTextureUIKitSourceInstanceCount, 0xFFFFFFFF);
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  uiWindow = self->_uiWindow;
  uiView = self->_uiView;
  self->_uiWindow = 0;
  self->_uiView = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__SCNTextureUIKitSource_dealloc__block_invoke;
  block[3] = &unk_2782FC790;
  block[4] = uiWindow;
  block[5] = uiView;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v5.receiver = self;
  v5.super_class = SCNTextureUIKitSource;
  [(SCNTextureCoreAnimationSource *)&v5 dealloc];
}

void __32__SCNTextureUIKitSource_dealloc__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
}

- (void)setup
{
  v3 = [(CALayer *)self->_uiWindowLayer superlayer];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];

  [v4 addObserver:self selector:sel__layerTreeDidUpdate name:@"SCNLayerTreeDidChange" object:v3];
}

- (void)cleanup:(__C3DRendererContext *)a3
{
  v3.receiver = self;
  v3.super_class = SCNTextureUIKitSource;
  [(SCNTextureCoreAnimationSource *)&v3 cleanup:a3];
}

- (double)layerContentsScaleFactor
{
  v2 = [MEMORY[0x277D759A0] mainScreen];

  [v2 scale];
  return result;
}

- (CGSize)layerSizeInPixels
{
  [(CALayer *)self->_uiWindowLayer bounds];
  v4 = v3;
  v6 = v5;
  [(SCNTextureUIKitSource *)self layerContentsScaleFactor];
  v8 = v7 * v6;
  if (v7 == 0.0)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    v9 = v7 * v4;
  }

  result.height = v8;
  result.width = v9;
  return result;
}

- (__C3DTexture)textureWithEngineContext:(__C3DEngineContext *)a3 textureSampler:(__C3DTextureSampler *)a4 nextFrameTime:(double *)a5
{
  [MEMORY[0x277CD9FF0] flush];
  v10.receiver = self;
  v10.super_class = SCNTextureUIKitSource;
  return [(SCNTextureCoreAnimationSource *)&v10 textureWithEngineContext:a3 textureSampler:a4 nextFrameTime:a5];
}

- (void)_layerTreeDidUpdate
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  source = self->_source;

  [v3 postNotificationName:@"SCNUITreeDidChange" object:source];
}

@end