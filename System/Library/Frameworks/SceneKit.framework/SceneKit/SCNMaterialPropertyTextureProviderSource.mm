@interface SCNMaterialPropertyTextureProviderSource
- (id)cachedTextureWithURL:(id)l token:(id *)token didFallbackToDefaultTexture:(BOOL *)texture;
- (id)metalTextureWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time status:(id *)status;
- (void)connectToProxy:(__C3DImageProxy *)proxy;
- (void)dealloc;
- (void)renderWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time;
- (void)setTextureProvider:(id)provider;
@end

@implementation SCNMaterialPropertyTextureProviderSource

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNMaterialPropertyTextureProviderSource;
  [(SCNTextureSource *)&v3 dealloc];
}

- (void)setTextureProvider:(id)provider
{
  if (self->_textureProvider != provider)
  {

    self->_texture = 0;
    self->_textureProvider = provider;
  }
}

- (void)connectToProxy:(__C3DImageProxy *)proxy
{
  C3DImageProxySetSource(proxy, self, 0);
  v4[0] = xmmword_282DC3B80;
  v4[1] = *&off_282DC3B90;
  C3DImageProxySetCallbacks(proxy, v4);
}

- (id)metalTextureWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time status:(id *)status
{
  self->_engineContext = context;
  RenderContext = C3DEngineContextGetRenderContext(context);
  v9 = RenderContext;
  if (self->_texture)
  {
    v10 = 0;
  }

  else
  {
    self->_texture = [(SCNMaterialPropertyTextureProvider *)self->_textureProvider newTextureForDevice:[(SCNMTLRenderContext *)RenderContext device]];
    v10 = 1;
  }

  status->var0 = v10;
  status->var1 = 1;
  __renderToTexture(self->_textureProvider, self->_texture, self, v9);
  return self->_texture;
}

- (void)renderWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time
{
  self->_engineContext = context;
  RenderContext = C3DEngineContextGetRenderContext(context);
  textureProvider = self->_textureProvider;
  texture = self->_texture;

  __renderToTexture(textureProvider, texture, self, RenderContext);
}

- (id)cachedTextureWithURL:(id)l token:(id *)token didFallbackToDefaultTexture:(BOOL *)texture
{
  if (token)
  {
    *token = 0;
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __99__SCNMaterialPropertyTextureProviderSource_cachedTextureWithURL_token_didFallbackToDefaultTexture___block_invoke;
  v17[3] = &unk_2782FD090;
  v17[4] = l;
  IfNeededForSource = C3DImageCopyCachedImageOrCreateIfNeededForSource(l, 1, v17);
  v10 = IfNeededForSource;
  if (token)
  {
    *token = IfNeededForSource;
  }

  v16 = 0;
  RenderContext = C3DEngineContextGetRenderContext(self->_engineContext);
  resourceManager = [(SCNMTLRenderContext *)RenderContext resourceManager];
  v13 = [resourceManager renderResourceForImage:v10 sampler:C3DTextureSamplerGetDefault() options:0 engineContext:self->_engineContext didFallbackToDefaultTexture:&v16];
  CFAutorelease(v10);
  if (v16)
  {
    resourceManagerMonitor = [(SCNMTLRenderContext *)RenderContext resourceManagerMonitor];
    if (resourceManagerMonitor)
    {
      [resourceManagerMonitor renderContext:RenderContext didFallbackToDefaultTextureForSource:l message:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"SCNMaterialPropertyTextureProviderHelper could not find texture for %@", l)}];
    }
  }

  if (texture)
  {
    *texture = v16;
  }

  return v13;
}

@end