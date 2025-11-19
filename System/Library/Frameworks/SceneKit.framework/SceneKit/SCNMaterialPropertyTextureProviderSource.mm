@interface SCNMaterialPropertyTextureProviderSource
- (id)cachedTextureWithURL:(id)a3 token:(id *)a4 didFallbackToDefaultTexture:(BOOL *)a5;
- (id)metalTextureWithEngineContext:(__C3DEngineContext *)a3 textureSampler:(__C3DTextureSampler *)a4 nextFrameTime:(double *)a5 status:(id *)a6;
- (void)connectToProxy:(__C3DImageProxy *)a3;
- (void)dealloc;
- (void)renderWithEngineContext:(__C3DEngineContext *)a3 textureSampler:(__C3DTextureSampler *)a4 nextFrameTime:(double *)a5;
- (void)setTextureProvider:(id)a3;
@end

@implementation SCNMaterialPropertyTextureProviderSource

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNMaterialPropertyTextureProviderSource;
  [(SCNTextureSource *)&v3 dealloc];
}

- (void)setTextureProvider:(id)a3
{
  if (self->_textureProvider != a3)
  {

    self->_texture = 0;
    self->_textureProvider = a3;
  }
}

- (void)connectToProxy:(__C3DImageProxy *)a3
{
  C3DImageProxySetSource(a3, self, 0);
  v4[0] = xmmword_282DC3B80;
  v4[1] = *&off_282DC3B90;
  C3DImageProxySetCallbacks(a3, v4);
}

- (id)metalTextureWithEngineContext:(__C3DEngineContext *)a3 textureSampler:(__C3DTextureSampler *)a4 nextFrameTime:(double *)a5 status:(id *)a6
{
  self->_engineContext = a3;
  RenderContext = C3DEngineContextGetRenderContext(a3);
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

  a6->var0 = v10;
  a6->var1 = 1;
  __renderToTexture(self->_textureProvider, self->_texture, self, v9);
  return self->_texture;
}

- (void)renderWithEngineContext:(__C3DEngineContext *)a3 textureSampler:(__C3DTextureSampler *)a4 nextFrameTime:(double *)a5
{
  self->_engineContext = a3;
  RenderContext = C3DEngineContextGetRenderContext(a3);
  textureProvider = self->_textureProvider;
  texture = self->_texture;

  __renderToTexture(textureProvider, texture, self, RenderContext);
}

- (id)cachedTextureWithURL:(id)a3 token:(id *)a4 didFallbackToDefaultTexture:(BOOL *)a5
{
  if (a4)
  {
    *a4 = 0;
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __99__SCNMaterialPropertyTextureProviderSource_cachedTextureWithURL_token_didFallbackToDefaultTexture___block_invoke;
  v17[3] = &unk_2782FD090;
  v17[4] = a3;
  IfNeededForSource = C3DImageCopyCachedImageOrCreateIfNeededForSource(a3, 1, v17);
  v10 = IfNeededForSource;
  if (a4)
  {
    *a4 = IfNeededForSource;
  }

  v16 = 0;
  RenderContext = C3DEngineContextGetRenderContext(self->_engineContext);
  v12 = [(SCNMTLRenderContext *)RenderContext resourceManager];
  v13 = [v12 renderResourceForImage:v10 sampler:C3DTextureSamplerGetDefault() options:0 engineContext:self->_engineContext didFallbackToDefaultTexture:&v16];
  CFAutorelease(v10);
  if (v16)
  {
    v14 = [(SCNMTLRenderContext *)RenderContext resourceManagerMonitor];
    if (v14)
    {
      [v14 renderContext:RenderContext didFallbackToDefaultTextureForSource:a3 message:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"SCNMaterialPropertyTextureProviderHelper could not find texture for %@", a3)}];
    }
  }

  if (a5)
  {
    *a5 = v16;
  }

  return v13;
}

@end