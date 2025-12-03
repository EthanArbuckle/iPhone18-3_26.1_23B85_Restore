@interface CVAFilterRenderComposite
- (CVAFilterRenderComposite)initWithFigMetalContext:(id)context error:(id *)error;
- (void)encodeColorCubesToCommandBuffer:(id)buffer sdofYTexture:(id)texture sdofUVTexture:(id)vTexture alphaTexture:(id)alphaTexture fgColorLut:(id)lut bgColorLut:(id)colorLut dstColorTex:(id)tex dstColorTex_plane1:(id)self0;
@end

@implementation CVAFilterRenderComposite

- (void)encodeColorCubesToCommandBuffer:(id)buffer sdofYTexture:(id)texture sdofUVTexture:(id)vTexture alphaTexture:(id)alphaTexture fgColorLut:(id)lut bgColorLut:(id)colorLut dstColorTex:(id)tex dstColorTex_plane1:(id)self0
{
  bufferCopy = buffer;
  textureCopy = texture;
  vTextureCopy = vTexture;
  alphaTextureCopy = alphaTexture;
  lutCopy = lut;
  colorLutCopy = colorLut;
  texCopy = tex;
  tex_plane1Copy = tex_plane1;
  width = [textureCopy width];
  height = [textureCopy height];
  if (lutCopy && colorLutCopy)
  {
    v25 = height;
    v28 = bufferCopy;
    computeCommandEncoder = [bufferCopy computeCommandEncoder];
    [computeCommandEncoder setLabel:@"_renderingCompositeApplyColorCubes"];
    [computeCommandEncoder setComputePipelineState:self->_renderingCompositeApplyColorCubes];
    [computeCommandEncoder setTexture:textureCopy atIndex:0];
    [computeCommandEncoder setTexture:vTextureCopy atIndex:1];
    [computeCommandEncoder setTexture:alphaTextureCopy atIndex:2];
    [computeCommandEncoder setTexture:colorLutCopy atIndex:3];
    [computeCommandEncoder setTexture:lutCopy atIndex:4];
    [computeCommandEncoder setTexture:texCopy atIndex:5];
    [computeCommandEncoder setTexture:tex_plane1Copy atIndex:6];
    v32[0] = ((width >> 1) + 15) >> 4;
    v32[1] = ((v25 >> 1) + 15) >> 4;
    v32[2] = 1;
    v30 = xmmword_1DED747F0;
    v31 = 1;
    [computeCommandEncoder dispatchThreadgroups:v32 threadsPerThreadgroup:&v30];
    [computeCommandEncoder endEncoding];

    bufferCopy = v28;
  }

  else
  {
    blitCommandEncoder = [bufferCopy blitCommandEncoder];
    [blitCommandEncoder copyFromTexture:textureCopy toTexture:texCopy];
    [blitCommandEncoder copyFromTexture:vTextureCopy toTexture:tex_plane1Copy];
    [blitCommandEncoder endEncoding];
  }
}

- (CVAFilterRenderComposite)initWithFigMetalContext:(id)context error:(id *)error
{
  contextCopy = context;
  v24.receiver = self;
  v24.super_class = CVAFilterRenderComposite;
  v6 = [(CVAFilterRenderComposite *)&v24 init];
  if (v6)
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    label = v6->_label;
    v6->_label = v8;

    v10 = objc_opt_new();
    v11 = [v10 copy];
    v23 = 0;
    [v11 setConstantValue:&v23 + 1 type:53 withName:@"kUseBgLut"];
    [v11 setConstantValue:&v23 type:53 withName:@"kUseFgLut"];
    sub_1DED422A0(&v6->_renderingCompositeFixUpAddNoiseKernel, contextCopy, @"compositeFixupAndAddNoise", v11);
    renderingCompositeFixUpAddNoiseKernel = v6->_renderingCompositeFixUpAddNoiseKernel;

    if (!renderingCompositeFixUpAddNoiseKernel)
    {
      goto LABEL_8;
    }

    v13 = [v10 copy];
    v23 = 257;
    [v13 setConstantValue:&v23 + 1 type:53 withName:@"kUseBgLut"];
    [v13 setConstantValue:&v23 type:53 withName:@"kUseFgLut"];
    sub_1DED422A0(&v6->_renderingCompositeApplyColorCubes, contextCopy, @"compositeApplyColorCubes", v13);
    renderingCompositeApplyColorCubes = v6->_renderingCompositeApplyColorCubes;

    if (!renderingCompositeApplyColorCubes)
    {
      goto LABEL_8;
    }

    v15 = [v10 copy];
    v23 = 256;
    [v15 setConstantValue:&v23 + 1 type:53 withName:@"kUseBgLut"];
    [v15 setConstantValue:&v23 type:53 withName:@"kUseFgLut"];
    sub_1DED422A0(&v6->_renderingCompositeFixupAndBGColorMapKernel, contextCopy, @"compositeFixupAndAddNoise", v15);
    renderingCompositeFixupAndBGColorMapKernel = v6->_renderingCompositeFixupAndBGColorMapKernel;

    if (!renderingCompositeFixupAndBGColorMapKernel)
    {
      goto LABEL_8;
    }

    v17 = [v10 copy];
    v23 = 1;
    [v17 setConstantValue:&v23 + 1 type:53 withName:@"kUseBgLut"];
    [v17 setConstantValue:&v23 type:53 withName:@"kUseFgLut"];
    sub_1DED422A0(&v6->_renderingCompositeFixupAndFGColorMapKernel, contextCopy, @"compositeFixupAndAddNoise", v17);
    renderingCompositeFixupAndFGColorMapKernel = v6->_renderingCompositeFixupAndFGColorMapKernel;

    if (!renderingCompositeFixupAndFGColorMapKernel)
    {
      goto LABEL_8;
    }

    v19 = [v10 copy];
    v23 = 257;
    [v19 setConstantValue:&v23 + 1 type:53 withName:@"kUseBgLut"];
    [v19 setConstantValue:&v23 type:53 withName:@"kUseFgLut"];
    sub_1DED422A0(&v6->_renderingCompositeFixupAndColorMapKernel, contextCopy, @"compositeFixupAndAddNoise", v19);
    renderingCompositeFixupAndColorMapKernel = v6->_renderingCompositeFixupAndColorMapKernel;

    if (renderingCompositeFixupAndColorMapKernel)
    {
      v21 = v6;
    }

    else
    {
LABEL_8:
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

@end