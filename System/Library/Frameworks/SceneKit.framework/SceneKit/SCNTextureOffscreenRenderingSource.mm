@interface SCNTextureOffscreenRenderingSource
- (__C3DTexture)__prepareFramebufferWithSize:(CGSize)a3 withEngineContext:(__C3DEngineContext *)a4 textureSampler:(__C3DTextureSampler *)a5 needsStencil:(BOOL)a6;
- (void)_bindFramebuffer:(__C3DEngineContext *)a3;
- (void)_buildMipmaps:(__C3DEngineContext *)a3;
- (void)_createFramebufferWithEngineContext:(__C3DEngineContext *)a3 size:(CGSize)a4;
- (void)_unbindFramebuffer:(__C3DEngineContext *)a3;
- (void)cleanup:(__C3DRendererContext *)a3;
@end

@implementation SCNTextureOffscreenRenderingSource

- (void)cleanup:(__C3DRendererContext *)a3
{
  framebuffer = self->_framebuffer;
  if (framebuffer)
  {
    C3DRendererContextDeleteFramebuffer(a3, framebuffer, 1);
    CFRelease(self->_framebuffer);
  }

  self->_framebufferSize.width = 0.0;
}

- (void)_createFramebufferWithEngineContext:(__C3DEngineContext *)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = ![(SCNTextureSource *)self supportsMetal]&& C3DEngineContextGetRenderContext(a3) != 0;
  v7 = [(SCNTextureSource *)self prefersGL3]|| v6;
  v8 = [(SCNTextureSource *)self rendererContextForTextureSourceWithEngineContext:a3];
  v9 = v8;
  framebuffer = self->_framebuffer;
  if (framebuffer)
  {
    C3DRendererContextDeleteFramebuffer(v8, framebuffer, 1);
    v11 = self->_framebuffer;
    if (v11)
    {
      CFRelease(v11);
      self->_framebuffer = 0;
    }
  }

  if (v7)
  {
    if ((width & 0xB) != 0)
    {
      width = ((width & 0xFFFFFFFC) + 4);
    }

    v12 = 0x8000000;
  }

  else
  {
    v12 = 0;
  }

  v13 = C3DFramebufferCreate();
  self->_framebuffer = v13;
  v14.f64[0] = width;
  v14.f64[1] = height;
  C3DFramebufferSetSize(v13, COERCE_DOUBLE(vcvt_f32_f64(vrndpq_f64(v14))));
  v15 = C3DRenderTargetDescriptionMake(1u, 1);
  C3DFramebufferAddRenderTargetDescription(self->_framebuffer, 0, v15 & 0xFFFFFFFFF7FFFFFFLL | v12);
  v16 = self->_framebuffer;

  C3DRendererContextSetupFramebuffer(v9, v16);
}

- (__C3DTexture)__prepareFramebufferWithSize:(CGSize)a3 withEngineContext:(__C3DEngineContext *)a4 textureSampler:(__C3DTextureSampler *)a5 needsStencil:(BOOL)a6
{
  height = a3.height;
  width = a3.width;
  p_framebufferSize = &self->_framebufferSize;
  if (a3.width != self->_framebufferSize.width || a3.height != self->_framebufferSize.height)
  {
    [(SCNTextureSource *)self setMTLTextureCache:0, a5, a6];
    [(SCNTextureSource *)self setGlTextureCache:0];
    p_framebufferSize->width = width;
    p_framebufferSize->height = height;
    WrapModeS = C3DTextureSamplerGetWrapModeS(a5);
    WrapModeT = C3DTextureSamplerGetWrapModeT(a5);
    if ((WrapModeS & 0xFFFFFFFD) != 1 || (WrapModeT & 0xFFFFFFFD) != 1 || C3DTextureSamplerUseMipmaps(a5))
    {
      width = C3DMakePowerOfTwo(width);
      height = C3DMakePowerOfTwo(height);
    }

    [(SCNTextureOffscreenRenderingSource *)self _createFramebufferWithEngineContext:a4 size:width, height];
  }

  framebuffer = self->_framebuffer;

  return C3DFramebufferGetTextureWithSlot(framebuffer, 0);
}

- (void)_buildMipmaps:(__C3DEngineContext *)a3
{
  if (!C3DEngineContextGetRenderContext(a3))
  {
    v5 = [(SCNTextureSource *)self rendererContextForTextureSourceWithEngineContext:a3];
    TextureWithSlot = C3DFramebufferGetTextureWithSlot(self->_framebuffer, 0);
    if (TextureWithSlot)
    {
      v7 = TextureWithSlot;
      if (!C3DTextureGetIOSurface(TextureWithSlot))
      {
        TargetMode = C3DTextureGetTargetMode(v7);
        ID = C3DTextureGetID(v7);
        _C3DRendererContextBindTextureGL(v5, TargetMode, ID);

        glGenerateMipmap(TargetMode);
      }
    }
  }
}

- (void)_bindFramebuffer:(__C3DEngineContext *)a3
{
  v4 = [(SCNTextureSource *)self rendererContextForTextureSourceWithEngineContext:a3];
  framebuffer = self->_framebuffer;

  C3DRendererContextBindFramebuffer(v4, framebuffer);
}

- (void)_unbindFramebuffer:(__C3DEngineContext *)a3
{
  v3 = [(SCNTextureSource *)self rendererContextForTextureSourceWithEngineContext:a3];

  C3DRendererContextUnbindFramebuffer(v3);
}

@end