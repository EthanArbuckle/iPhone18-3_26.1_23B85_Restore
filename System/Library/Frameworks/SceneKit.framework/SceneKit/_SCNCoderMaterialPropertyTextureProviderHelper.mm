@interface _SCNCoderMaterialPropertyTextureProviderHelper
- (id)cachedTextureWithURL:(id)l token:(id *)token didFallbackToDefaultTexture:(BOOL *)texture;
- (void)dealloc;
- (void)initWithDevice:(void *)device;
@end

@implementation _SCNCoderMaterialPropertyTextureProviderHelper

- (void)dealloc
{
  CFRelease(self->_engineContext);
  v3.receiver = self;
  v3.super_class = _SCNCoderMaterialPropertyTextureProviderHelper;
  [(_SCNCoderMaterialPropertyTextureProviderHelper *)&v3 dealloc];
}

- (id)cachedTextureWithURL:(id)l token:(id *)token didFallbackToDefaultTexture:(BOOL *)texture
{
  if (token)
  {
    *token = 0;
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __105___SCNCoderMaterialPropertyTextureProviderHelper_cachedTextureWithURL_token_didFallbackToDefaultTexture___block_invoke;
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

- (void)initWithDevice:(void *)device
{
  if (!device)
  {
    return 0;
  }

  v6.receiver = device;
  v6.super_class = _SCNCoderMaterialPropertyTextureProviderHelper;
  v3 = objc_msgSendSuper2(&v6, sel_init);
  if (v3)
  {
    v3[1] = C3DEngineContextCreateWithOptions();
    v4 = [[SCNMTLRenderContext alloc] initWithDevice:a2 engineContext:v3[1]];
    C3DEngineContextSetRenderContext(v3[1], v4);
  }

  return v3;
}

@end