@interface SCNOffscreenRenderer
+ (SCNOffscreenRenderer)offscreenRendererWithContext:(id)a3 size:(CGSize)a4;
+ (SCNOffscreenRenderer)offscreenRendererWithDevice:(id)a3 sceneRendererDelegate:(id)a4 size:(CGSize)a5;
- (BOOL)_usesSpecificMainPassClearColorForRenderer:(id)a3 clearColor:;
- (BOOL)_wantsCustomMainPassPostProcessForRenderer:(id)a3;
- (CGSize)size;
- (id)_renderer:(id)a3 subdivDataForHash:(id)a4;
- (id)snapshot;
- (unsigned)textureID;
- (void)_encodeCustomMainPassPostProcessForRenderer:(id)a3 atTime:(double)a4 helper:(id)a5;
- (void)_renderer:(id)a3 didApplyAnimationsAtTime:(double)a4;
- (void)_renderer:(id)a3 didApplyConstraintsAtTime:(double)a4;
- (void)_renderer:(id)a3 didBuildSubdivDataForHash:(id)a4 dataProvider:(id)a5;
- (void)_renderer:(id)a3 didRenderScene:(id)a4 atTime:(double)a5;
- (void)_renderer:(id)a3 didSimulatePhysicsAtTime:(double)a4;
- (void)_renderer:(id)a3 updateAtTime:(double)a4;
- (void)_renderer:(id)a3 willRenderScene:(id)a4 atTime:(double)a5;
- (void)setSize:(CGSize)a3;
@end

@implementation SCNOffscreenRenderer

+ (SCNOffscreenRenderer)offscreenRendererWithContext:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = [[a1 alloc] _initWithOptions:0 isPrivateRenderer:0 privateRendererOwner:0 clearsOnDraw:1 context:a3 renderingAPI:1];
  [v6 _setupOffscreenRendererWithSize:{width, height}];

  return v6;
}

+ (SCNOffscreenRenderer)offscreenRendererWithDevice:(id)a3 sceneRendererDelegate:(id)a4 size:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v8 = a3;
  if (a3 || (v8 = [SCNView deviceForOptions:?]) != 0)
  {
    v10 = [[a1 alloc] _initWithOptions:0 isPrivateRenderer:0 privateRendererOwner:0 clearsOnDraw:1 context:v8 renderingAPI:0];
    *(v10 + 448) = a4;
    if (a4)
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

    return [a1 offscreenRendererWithContext:0 size:{width, height}];
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

- (void)setSize:(CGSize)a3
{
  height = a3.height;
  v4 = vmovn_s64(vcvtq_u64_f64(vrndpq_f64(a3)));
  v5 = vmvn_s8(vceq_s32(*self->super._anon_58, v4));
  if ((vpmax_u32(v5, v5).u32[0] & 0x80000000) != 0)
  {
    *(&self->super + 121) |= 1u;
    *self->super._anon_58 = v4;
  }
}

- (void)_renderer:(id)a3 updateAtTime:(double)a4
{
  if (*&self->_sceneRendererDelegateDelegationConformance)
  {
    [(_SCNSceneRendererDelegate *)self->_sceneRendererDelegate _renderer:a3 updateAtTime:a4];
  }
}

- (void)_renderer:(id)a3 didApplyAnimationsAtTime:(double)a4
{
  if ((*&self->_sceneRendererDelegateDelegationConformance & 2) != 0)
  {
    [(_SCNSceneRendererDelegate *)self->_sceneRendererDelegate _renderer:a3 didApplyAnimationsAtTime:a4];
  }
}

- (void)_renderer:(id)a3 didSimulatePhysicsAtTime:(double)a4
{
  if ((*&self->_sceneRendererDelegateDelegationConformance & 4) != 0)
  {
    [(_SCNSceneRendererDelegate *)self->_sceneRendererDelegate _renderer:a3 didSimulatePhysicsAtTime:a4];
  }
}

- (void)_renderer:(id)a3 didApplyConstraintsAtTime:(double)a4
{
  if ((*&self->_sceneRendererDelegateDelegationConformance & 8) != 0)
  {
    [(_SCNSceneRendererDelegate *)self->_sceneRendererDelegate _renderer:a3 didApplyConstraintsAtTime:a4];
  }
}

- (void)_renderer:(id)a3 willRenderScene:(id)a4 atTime:(double)a5
{
  if ((*&self->_sceneRendererDelegateDelegationConformance & 0x10) != 0)
  {
    [(_SCNSceneRendererDelegate *)self->_sceneRendererDelegate _renderer:a3 willRenderScene:a4 atTime:a5];
  }
}

- (void)_renderer:(id)a3 didRenderScene:(id)a4 atTime:(double)a5
{
  if ((*&self->_sceneRendererDelegateDelegationConformance & 0x20) != 0)
  {
    [(_SCNSceneRendererDelegate *)self->_sceneRendererDelegate _renderer:a3 didRenderScene:a4 atTime:a5];
  }
}

- (void)_renderer:(id)a3 didBuildSubdivDataForHash:(id)a4 dataProvider:(id)a5
{
  if ((*&self->_sceneRendererDelegateDelegationConformance & 0x80) != 0)
  {
    [(_SCNSceneRendererDelegate *)self->_sceneRendererDelegate _renderer:a3 didBuildSubdivDataForHash:a4 dataProvider:a5];
  }
}

- (id)_renderer:(id)a3 subdivDataForHash:(id)a4
{
  if ((*&self->_sceneRendererDelegateDelegationConformance & 0x100) != 0)
  {
    return [(_SCNSceneRendererDelegate *)self->_sceneRendererDelegate _renderer:a3 subdivDataForHash:a4];
  }

  else
  {
    return 0;
  }
}

- (BOOL)_wantsCustomMainPassPostProcessForRenderer:(id)a3
{
  if ((*&self->_sceneRendererDelegateDelegationConformance & 0x200) != 0)
  {
    return [(_SCNSceneRendererDelegate *)self->_sceneRendererDelegate _wantsCustomMainPassPostProcessForRenderer:a3];
  }

  else
  {
    return 0;
  }
}

- (BOOL)_usesSpecificMainPassClearColorForRenderer:(id)a3 clearColor:
{
  if ((*&self->_sceneRendererDelegateDelegationConformance & 0x200) != 0)
  {
    return [(_SCNSceneRendererDelegate *)self->_sceneRendererDelegate _usesSpecificMainPassClearColorForRenderer:a3 clearColor:?];
  }

  else
  {
    return 0;
  }
}

- (void)_encodeCustomMainPassPostProcessForRenderer:(id)a3 atTime:(double)a4 helper:(id)a5
{
  if ((*&self->_sceneRendererDelegateDelegationConformance & 0x200) != 0)
  {
    [(_SCNSceneRendererDelegate *)self->_sceneRendererDelegate _encodeCustomMainPassPostProcessForRenderer:a3 atTime:a5 helper:a4];
  }
}

@end