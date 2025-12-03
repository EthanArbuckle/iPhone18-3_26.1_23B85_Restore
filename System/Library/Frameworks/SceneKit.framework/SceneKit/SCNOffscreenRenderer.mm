@interface SCNOffscreenRenderer
+ (SCNOffscreenRenderer)offscreenRendererWithContext:(id)context size:(CGSize)size;
+ (SCNOffscreenRenderer)offscreenRendererWithDevice:(id)device sceneRendererDelegate:(id)delegate size:(CGSize)size;
- (BOOL)_usesSpecificMainPassClearColorForRenderer:(id)renderer clearColor:;
- (BOOL)_wantsCustomMainPassPostProcessForRenderer:(id)renderer;
- (CGSize)size;
- (id)_renderer:(id)_renderer subdivDataForHash:(id)hash;
- (id)snapshot;
- (unsigned)textureID;
- (void)_encodeCustomMainPassPostProcessForRenderer:(id)renderer atTime:(double)time helper:(id)helper;
- (void)_renderer:(id)_renderer didApplyAnimationsAtTime:(double)time;
- (void)_renderer:(id)_renderer didApplyConstraintsAtTime:(double)time;
- (void)_renderer:(id)_renderer didBuildSubdivDataForHash:(id)hash dataProvider:(id)provider;
- (void)_renderer:(id)_renderer didRenderScene:(id)scene atTime:(double)time;
- (void)_renderer:(id)_renderer didSimulatePhysicsAtTime:(double)time;
- (void)_renderer:(id)_renderer updateAtTime:(double)time;
- (void)_renderer:(id)_renderer willRenderScene:(id)scene atTime:(double)time;
- (void)setSize:(CGSize)size;
@end

@implementation SCNOffscreenRenderer

+ (SCNOffscreenRenderer)offscreenRendererWithContext:(id)context size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = [[self alloc] _initWithOptions:0 isPrivateRenderer:0 privateRendererOwner:0 clearsOnDraw:1 context:context renderingAPI:1];
  [v6 _setupOffscreenRendererWithSize:{width, height}];

  return v6;
}

+ (SCNOffscreenRenderer)offscreenRendererWithDevice:(id)device sceneRendererDelegate:(id)delegate size:(CGSize)size
{
  height = size.height;
  width = size.width;
  deviceCopy = device;
  if (device || (deviceCopy = [SCNView deviceForOptions:?]) != 0)
  {
    v10 = [[self alloc] _initWithOptions:0 isPrivateRenderer:0 privateRendererOwner:0 clearsOnDraw:1 context:deviceCopy renderingAPI:0];
    *(v10 + 448) = delegate;
    if (delegate)
    {
      *(v10 + 456) = *(v10 + 456) & 0xFFFE | objc_opt_respondsToSelector() & 1;
      if (objc_opt_respondsToSelector())
      {
        v11 = 2;
      }

      else
      {
        v11 = 0;
      }

      *(v10 + 456) = *(v10 + 456) & 0xFFFD | v11;
      if (objc_opt_respondsToSelector())
      {
        v12 = 4;
      }

      else
      {
        v12 = 0;
      }

      *(v10 + 456) = *(v10 + 456) & 0xFFFB | v12;
      if (objc_opt_respondsToSelector())
      {
        v13 = 8;
      }

      else
      {
        v13 = 0;
      }

      *(v10 + 456) = *(v10 + 456) & 0xFFF7 | v13;
      if (objc_opt_respondsToSelector())
      {
        v14 = 16;
      }

      else
      {
        v14 = 0;
      }

      *(v10 + 456) = *(v10 + 456) & 0xFFEF | v14;
      if (objc_opt_respondsToSelector())
      {
        v15 = 32;
      }

      else
      {
        v15 = 0;
      }

      *(v10 + 456) = *(v10 + 456) & 0xFFDF | v15;
      if (objc_opt_respondsToSelector())
      {
        v16 = 128;
      }

      else
      {
        v16 = 0;
      }

      *(v10 + 456) = *(v10 + 456) & 0xFF7F | v16;
      if (objc_opt_respondsToSelector())
      {
        v17 = 256;
      }

      else
      {
        v17 = 0;
      }

      *(v10 + 456) = *(v10 + 456) & 0xFEFF | v17;
      if (objc_opt_respondsToSelector())
      {
        v18 = 64;
      }

      else
      {
        v18 = 0;
      }

      *(v10 + 456) = *(v10 + 456) & 0xFFBF | v18;
      [v10 set_wantsSceneRendererDelegationMessages:1];
    }

    [v10 _setupOffscreenRendererWithSize:{width, height}];

    return v10;
  }

  else
  {

    return [self offscreenRendererWithContext:0 size:{width, height}];
  }
}

- (id)snapshot
{
  v4 = COERCE_DOUBLE(vcvt_f32_u32(*self->super._anon_58));
  LODWORD(v2) = HIDWORD(v4);
  [(SCNRenderer *)self set_viewport:0.0, 0.0, v4, v2];

  return [(SCNRenderer *)self snapshotAtTime:0.0];
}

- (unsigned)textureID
{
  [(SCNRenderer *)self _prepareRenderTarget];
  TextureWithSlot = C3DFramebufferGetTextureWithSlot(self->super._framebufferInfo.frameBuffer, 0);

  return C3DTextureGetID(TextureWithSlot);
}

- (CGSize)size
{
  v2 = *self->super._anon_58;
  v3 = HIDWORD(*self->super._anon_58);
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setSize:(CGSize)size
{
  height = size.height;
  v4 = vmovn_s64(vcvtq_u64_f64(vrndpq_f64(size)));
  v5 = vmvn_s8(vceq_s32(*self->super._anon_58, v4));
  if ((vpmax_u32(v5, v5).u32[0] & 0x80000000) != 0)
  {
    *(&self->super + 121) |= 1u;
    *self->super._anon_58 = v4;
  }
}

- (void)_renderer:(id)_renderer updateAtTime:(double)time
{
  if (*&self->_sceneRendererDelegateDelegationConformance)
  {
    [(_SCNSceneRendererDelegate *)self->_sceneRendererDelegate _renderer:_renderer updateAtTime:time];
  }
}

- (void)_renderer:(id)_renderer didApplyAnimationsAtTime:(double)time
{
  if ((*&self->_sceneRendererDelegateDelegationConformance & 2) != 0)
  {
    [(_SCNSceneRendererDelegate *)self->_sceneRendererDelegate _renderer:_renderer didApplyAnimationsAtTime:time];
  }
}

- (void)_renderer:(id)_renderer didSimulatePhysicsAtTime:(double)time
{
  if ((*&self->_sceneRendererDelegateDelegationConformance & 4) != 0)
  {
    [(_SCNSceneRendererDelegate *)self->_sceneRendererDelegate _renderer:_renderer didSimulatePhysicsAtTime:time];
  }
}

- (void)_renderer:(id)_renderer didApplyConstraintsAtTime:(double)time
{
  if ((*&self->_sceneRendererDelegateDelegationConformance & 8) != 0)
  {
    [(_SCNSceneRendererDelegate *)self->_sceneRendererDelegate _renderer:_renderer didApplyConstraintsAtTime:time];
  }
}

- (void)_renderer:(id)_renderer willRenderScene:(id)scene atTime:(double)time
{
  if ((*&self->_sceneRendererDelegateDelegationConformance & 0x10) != 0)
  {
    [(_SCNSceneRendererDelegate *)self->_sceneRendererDelegate _renderer:_renderer willRenderScene:scene atTime:time];
  }
}

- (void)_renderer:(id)_renderer didRenderScene:(id)scene atTime:(double)time
{
  if ((*&self->_sceneRendererDelegateDelegationConformance & 0x20) != 0)
  {
    [(_SCNSceneRendererDelegate *)self->_sceneRendererDelegate _renderer:_renderer didRenderScene:scene atTime:time];
  }
}

- (void)_renderer:(id)_renderer didBuildSubdivDataForHash:(id)hash dataProvider:(id)provider
{
  if ((*&self->_sceneRendererDelegateDelegationConformance & 0x80) != 0)
  {
    [(_SCNSceneRendererDelegate *)self->_sceneRendererDelegate _renderer:_renderer didBuildSubdivDataForHash:hash dataProvider:provider];
  }
}

- (id)_renderer:(id)_renderer subdivDataForHash:(id)hash
{
  if ((*&self->_sceneRendererDelegateDelegationConformance & 0x100) != 0)
  {
    return [(_SCNSceneRendererDelegate *)self->_sceneRendererDelegate _renderer:_renderer subdivDataForHash:hash];
  }

  else
  {
    return 0;
  }
}

- (BOOL)_wantsCustomMainPassPostProcessForRenderer:(id)renderer
{
  if ((*&self->_sceneRendererDelegateDelegationConformance & 0x200) != 0)
  {
    return [(_SCNSceneRendererDelegate *)self->_sceneRendererDelegate _wantsCustomMainPassPostProcessForRenderer:renderer];
  }

  else
  {
    return 0;
  }
}

- (BOOL)_usesSpecificMainPassClearColorForRenderer:(id)renderer clearColor:
{
  if ((*&self->_sceneRendererDelegateDelegationConformance & 0x200) != 0)
  {
    return [(_SCNSceneRendererDelegate *)self->_sceneRendererDelegate _usesSpecificMainPassClearColorForRenderer:renderer clearColor:?];
  }

  else
  {
    return 0;
  }
}

- (void)_encodeCustomMainPassPostProcessForRenderer:(id)renderer atTime:(double)time helper:(id)helper
{
  if ((*&self->_sceneRendererDelegateDelegationConformance & 0x200) != 0)
  {
    [(_SCNSceneRendererDelegate *)self->_sceneRendererDelegate _encodeCustomMainPassPostProcessForRenderer:renderer atTime:helper helper:time];
  }
}

@end