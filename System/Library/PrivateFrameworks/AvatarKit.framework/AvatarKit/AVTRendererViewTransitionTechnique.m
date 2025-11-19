@interface AVTRendererViewTransitionTechnique
- (AVTRendererViewTransitionTechnique)initWithWorldRenderer:(id)a3;
- (void)encodeTechniqueCommandsForRenderer:(id)a3 atTime:(double)a4 helper:(id)a5;
- (void)rebuildRenderPipelineStateIfNeededForPixelFormat:(unint64_t)a3;
- (void)setFramebufferTextureOpacity:(float)a3;
- (void)setSnapshotTexture:(id)a3;
@end

@implementation AVTRendererViewTransitionTechnique

- (AVTRendererViewTransitionTechnique)initWithWorldRenderer:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = AVTRendererViewTransitionTechnique;
  v5 = [(AVTRendererViewTransitionTechnique *)&v20 init];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [AVTRendererViewTransitionTechnique initWithWorldRenderer:];
    }

    v6 = v4;
    v7 = [v6 backgroundColor];
    v8 = [v7 CGColor];

    Components = CGColorGetComponents(v8);
    ColorSpace = CGColorGetColorSpace(v8);
    Model = CGColorSpaceGetModel(ColorSpace);
    if (Model)
    {
      if (Model != kCGColorSpaceModelRGB)
      {
LABEL_8:
        v13 = [v6 device];
        v14 = [AVTMetalHelper helperForDevice:v13];
        helper = v5->_helper;
        v5->_helper = v14;

        __copy_assignment_8_8_t0w72_s72_s80_t88w8(&v5->_renderPipelineStateDescriptor, &kAVTMetalHelperRenderPipelineStateDescriptorOpaque);
        vertexFunctionName = v5->_renderPipelineStateDescriptor.vertexFunctionName;
        v5->_renderPipelineStateDescriptor.vertexFunctionName = @"avt_view_transition_vertex";

        fragmentFunctionName = v5->_renderPipelineStateDescriptor.fragmentFunctionName;
        v5->_renderPipelineStateDescriptor.fragmentFunctionName = @"avt_view_transition_generic_fragment";

        v18 = [v6 pixelFormat];
        [(AVTRendererViewTransitionTechnique *)v5 rebuildRenderPipelineStateIfNeededForPixelFormat:v18];

        goto LABEL_9;
      }

      v12 = 3;
    }

    else
    {
      v12 = 1;
    }

    v5->_viewIsOpaque = Components[v12] >= 1.0;
    goto LABEL_8;
  }

LABEL_9:

  return v5;
}

- (void)setFramebufferTextureOpacity:(float)a3
{
  if (self->_framebufferTextureOpacity != a3)
  {
    self->_framebufferTextureOpacity = a3;
  }
}

- (void)setSnapshotTexture:(id)a3
{
  v5 = a3;
  snapshotTexture = self->_snapshotTexture;
  p_snapshotTexture = &self->_snapshotTexture;
  if (snapshotTexture != v5)
  {
    v8 = v5;
    objc_storeStrong(p_snapshotTexture, a3);
    v5 = v8;
  }
}

- (void)rebuildRenderPipelineStateIfNeededForPixelFormat:(unint64_t)a3
{
  if (self->_renderPipelineStateDescriptor.color0PixelFormat != a3)
  {
    v20 = v3;
    v21 = v4;
    self->_renderPipelineStateDescriptor.color0PixelFormat = a3;
    helper = self->_helper;
    v7 = *&self->_renderPipelineStateDescriptor.colorAlphaBlendOperation;
    v15[2] = *&self->_renderPipelineStateDescriptor.colorSourceRGBBlendFactor;
    v15[3] = v7;
    colorDestinationAlphaBlendFactor = self->_renderPipelineStateDescriptor.colorDestinationAlphaBlendFactor;
    v8 = *&self->_renderPipelineStateDescriptor.colorBlendingEnabled;
    v15[0] = *&self->_renderPipelineStateDescriptor.color0PixelFormat;
    v15[1] = v8;
    v9 = self->_renderPipelineStateDescriptor.vertexFunctionName;
    v17 = v9;
    v10 = self->_renderPipelineStateDescriptor.fragmentFunctionName;
    rasterSampleCount = self->_renderPipelineStateDescriptor.rasterSampleCount;
    v18 = v10;
    v19 = rasterSampleCount;
    if (helper)
    {
      v12 = [(AVTMetalHelper *)helper renderPipelineStateWithDescriptor:v15];
    }

    else
    {
      v13 = v10;

      v12 = 0;
    }

    renderPipelineState = self->_renderPipelineState;
    self->_renderPipelineState = v12;
  }
}

- (void)encodeTechniqueCommandsForRenderer:(id)a3 atTime:(double)a4 helper:(id)a5
{
  v6 = a5;
  if ([(AVTRendererViewTransitionTechnique *)self techniqueIsActive])
  {
    v7 = [v6 destinationTexture];
    -[AVTRendererViewTransitionTechnique rebuildRenderPipelineStateIfNeededForPixelFormat:](self, "rebuildRenderPipelineStateIfNeededForPixelFormat:", [v7 pixelFormat]);

    v10 = 0;
    LOBYTE(v10) = self->_viewIsOpaque;
    HIDWORD(v10) = LODWORD(self->_framebufferTextureOpacity);
    v8 = [v6 renderCommandEncoder];
    v9 = [v6 mainPassColorTextureAtIndex:0];
    [v8 pushDebugGroup:@"[AvatarKit] View transition"];
    [v8 setRenderPipelineState:self->_renderPipelineState];
    [v8 setFragmentTexture:self->_snapshotTexture atIndex:0];
    [v8 setFragmentTexture:v9 atIndex:1];
    [v8 setFragmentBytes:&v10 length:8 atIndex:0];
    [v8 drawPrimitives:4 vertexStart:0 vertexCount:4];
    [v8 popDebugGroup];
  }
}

@end