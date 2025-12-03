@interface SCNTextureUIKitSource
- (CGSize)layerSizeInPixels;
- (SCNTextureUIKitSource)init;
- (__C3DTexture)textureWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time;
- (double)layerContentsScaleFactor;
- (void)_layerTreeDidUpdate;
- (void)cleanup:(__C3DRendererContext *)cleanup;
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
  superlayer = [(CALayer *)self->_uiWindowLayer superlayer];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

  [defaultCenter addObserver:self selector:sel__layerTreeDidUpdate name:@"SCNLayerTreeDidChange" object:superlayer];
}

- (void)cleanup:(__C3DRendererContext *)cleanup
{
  v3.receiver = self;
  v3.super_class = SCNTextureUIKitSource;
  [(SCNTextureCoreAnimationSource *)&v3 cleanup:cleanup];
}

- (double)layerContentsScaleFactor
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];

  [mainScreen scale];
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

- (__C3DTexture)textureWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time
{
  [MEMORY[0x277CD9FF0] flush];
  v10.receiver = self;
  v10.super_class = SCNTextureUIKitSource;
  return [(SCNTextureCoreAnimationSource *)&v10 textureWithEngineContext:context textureSampler:sampler nextFrameTime:time];
}

- (void)_layerTreeDidUpdate
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  source = self->_source;

  [defaultCenter postNotificationName:@"SCNUITreeDidChange" object:source];
}

@end