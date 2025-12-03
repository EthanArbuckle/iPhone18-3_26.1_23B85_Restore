@interface AVTRendererViewTransitionTechnique
- (AVTRendererViewTransitionTechnique)initWithWorldRenderer:(id)renderer;
- (void)encodeTechniqueCommandsForRenderer:(id)renderer atTime:(double)time helper:(id)helper;
- (void)rebuildRenderPipelineStateIfNeededForPixelFormat:(unint64_t)format;
- (void)setFramebufferTextureOpacity:(float)opacity;
- (void)setSnapshotTexture:(id)texture;
@end

@implementation AVTRendererViewTransitionTechnique

- (AVTRendererViewTransitionTechnique)initWithWorldRenderer:(id)renderer
{
  rendererCopy = renderer;
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

    v6 = rendererCopy;
    backgroundColor = [v6 backgroundColor];
    cGColor = [backgroundColor CGColor];

    Components = CGColorGetComponents(cGColor);
    ColorSpace = CGColorGetColorSpace(cGColor);
    Model = CGColorSpaceGetModel(ColorSpace);
    if (Model)
    {
      if (Model != kCGColorSpaceModelRGB)
      {
LABEL_8:
        device = [v6 device];
        v14 = [AVTMetalHelper helperForDevice:device];
        helper = v5->_helper;
        v5->_helper = v14;

        __copy_assignment_8_8_t0w72_s72_s80_t88w8(&v5->_renderPipelineStateDescriptor, &kAVTMetalHelperRenderPipelineStateDescriptorOpaque);
        vertexFunctionName = v5->_renderPipelineStateDescriptor.vertexFunctionName;
        v5->_renderPipelineStateDescriptor.vertexFunctionName = @"avt_view_transition_vertex";

        fragmentFunctionName = v5->_renderPipelineStateDescriptor.fragmentFunctionName;
        v5->_renderPipelineStateDescriptor.fragmentFunctionName = @"avt_view_transition_generic_fragment";

        pixelFormat = [v6 pixelFormat];
        [(AVTRendererViewTransitionTechnique *)v5 rebuildRenderPipelineStateIfNeededForPixelFormat:pixelFormat];

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

- (void)setFramebufferTextureOpacity:(float)opacity
{
  if (self->_framebufferTextureOpacity != opacity)
  {
    self->_framebufferTextureOpacity = opacity;
  }
}

- (void)setSnapshotTexture:(id)texture
{
  textureCopy = texture;
  snapshotTexture = self->_snapshotTexture;
  p_snapshotTexture = &self->_snapshotTexture;
  if (snapshotTexture != textureCopy)
  {
    v8 = textureCopy;
    objc_storeStrong(p_snapshotTexture, texture);
    textureCopy = v8;
  }
}

- (void)rebuildRenderPipelineStateIfNeededForPixelFormat:(unint64_t)format
{
  if (self->_renderPipelineStateDescriptor.color0PixelFormat != format)
  {
    v20 = v3;
    v21 = v4;
    self->_renderPipelineStateDescriptor.color0PixelFormat = format;
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

- (void)encodeTechniqueCommandsForRenderer:(id)renderer atTime:(double)time helper:(id)helper
{
  helperCopy = helper;
  if ([(AVTRendererViewTransitionTechnique *)self techniqueIsActive])
  {
    destinationTexture = [helperCopy destinationTexture];
    -[AVTRendererViewTransitionTechnique rebuildRenderPipelineStateIfNeededForPixelFormat:](self, "rebuildRenderPipelineStateIfNeededForPixelFormat:", [destinationTexture pixelFormat]);

    v10 = 0;
    LOBYTE(v10) = self->_viewIsOpaque;
    HIDWORD(v10) = LODWORD(self->_framebufferTextureOpacity);
    renderCommandEncoder = [helperCopy renderCommandEncoder];
    v9 = [helperCopy mainPassColorTextureAtIndex:0];
    [renderCommandEncoder pushDebugGroup:@"[AvatarKit] View transition"];
    [renderCommandEncoder setRenderPipelineState:self->_renderPipelineState];
    [renderCommandEncoder setFragmentTexture:self->_snapshotTexture atIndex:0];
    [renderCommandEncoder setFragmentTexture:v9 atIndex:1];
    [renderCommandEncoder setFragmentBytes:&v10 length:8 atIndex:0];
    [renderCommandEncoder drawPrimitives:4 vertexStart:0 vertexCount:4];
    [renderCommandEncoder popDebugGroup];
  }
}

@end