@interface _SCNCoderMaterialPropertyTextureProviderHelper
- (id)cachedTextureWithURL:(id)a3 token:(id *)a4 didFallbackToDefaultTexture:(BOOL *)a5;
- (void)dealloc;
- (void)initWithDevice:(void *)a1;
@end

@implementation _SCNCoderMaterialPropertyTextureProviderHelper

- (void)dealloc
{
  CFRelease(self->_engineContext);
  v3.receiver = self;
  v3.super_class = _SCNCoderMaterialPropertyTextureProviderHelper;
  [(_SCNCoderMaterialPropertyTextureProviderHelper *)&v3 dealloc];
}

- (id)cachedTextureWithURL:(id)a3 token:(id *)a4 didFallbackToDefaultTexture:(BOOL *)a5
{
  if (a4)
  {
    *a4 = 0;
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __105___SCNCoderMaterialPropertyTextureProviderHelper_cachedTextureWithURL_token_didFallbackToDefaultTexture___block_invoke;
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

- (void)initWithDevice:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v6.receiver = a1;
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