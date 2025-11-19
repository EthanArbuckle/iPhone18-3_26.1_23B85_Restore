@interface CVAFilterRenderComposite
- (CVAFilterRenderComposite)initWithFigMetalContext:(id)a3 error:(id *)a4;
- (void)encodeColorCubesToCommandBuffer:(id)a3 sdofYTexture:(id)a4 sdofUVTexture:(id)a5 alphaTexture:(id)a6 fgColorLut:(id)a7 bgColorLut:(id)a8 dstColorTex:(id)a9 dstColorTex_plane1:(id)a10;
@end

@implementation CVAFilterRenderComposite

- (void)encodeColorCubesToCommandBuffer:(id)a3 sdofYTexture:(id)a4 sdofUVTexture:(id)a5 alphaTexture:(id)a6 fgColorLut:(id)a7 bgColorLut:(id)a8 dstColorTex:(id)a9 dstColorTex_plane1:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v29 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = [v17 width];
  v24 = [v17 height];
  if (v19 && v20)
  {
    v25 = v24;
    v28 = v16;
    v26 = [v16 computeCommandEncoder];
    [v26 setLabel:@"_renderingCompositeApplyColorCubes"];
    [v26 setComputePipelineState:self->_renderingCompositeApplyColorCubes];
    [v26 setTexture:v17 atIndex:0];
    [v26 setTexture:v18 atIndex:1];
    [v26 setTexture:v29 atIndex:2];
    [v26 setTexture:v20 atIndex:3];
    [v26 setTexture:v19 atIndex:4];
    [v26 setTexture:v21 atIndex:5];
    [v26 setTexture:v22 atIndex:6];
    v32[0] = ((v23 >> 1) + 15) >> 4;
    v32[1] = ((v25 >> 1) + 15) >> 4;
    v32[2] = 1;
    v30 = xmmword_1DED747F0;
    v31 = 1;
    [v26 dispatchThreadgroups:v32 threadsPerThreadgroup:&v30];
    [v26 endEncoding];

    v16 = v28;
  }

  else
  {
    v27 = [v16 blitCommandEncoder];
    [v27 copyFromTexture:v17 toTexture:v21];
    [v27 copyFromTexture:v18 toTexture:v22];
    [v27 endEncoding];
  }
}

- (CVAFilterRenderComposite)initWithFigMetalContext:(id)a3 error:(id *)a4
{
  v5 = a3;
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
    sub_1DED422A0(&v6->_renderingCompositeFixUpAddNoiseKernel, v5, @"compositeFixupAndAddNoise", v11);
    renderingCompositeFixUpAddNoiseKernel = v6->_renderingCompositeFixUpAddNoiseKernel;

    if (!renderingCompositeFixUpAddNoiseKernel)
    {
      goto LABEL_8;
    }

    v13 = [v10 copy];
    v23 = 257;
    [v13 setConstantValue:&v23 + 1 type:53 withName:@"kUseBgLut"];
    [v13 setConstantValue:&v23 type:53 withName:@"kUseFgLut"];
    sub_1DED422A0(&v6->_renderingCompositeApplyColorCubes, v5, @"compositeApplyColorCubes", v13);
    renderingCompositeApplyColorCubes = v6->_renderingCompositeApplyColorCubes;

    if (!renderingCompositeApplyColorCubes)
    {
      goto LABEL_8;
    }

    v15 = [v10 copy];
    v23 = 256;
    [v15 setConstantValue:&v23 + 1 type:53 withName:@"kUseBgLut"];
    [v15 setConstantValue:&v23 type:53 withName:@"kUseFgLut"];
    sub_1DED422A0(&v6->_renderingCompositeFixupAndBGColorMapKernel, v5, @"compositeFixupAndAddNoise", v15);
    renderingCompositeFixupAndBGColorMapKernel = v6->_renderingCompositeFixupAndBGColorMapKernel;

    if (!renderingCompositeFixupAndBGColorMapKernel)
    {
      goto LABEL_8;
    }

    v17 = [v10 copy];
    v23 = 1;
    [v17 setConstantValue:&v23 + 1 type:53 withName:@"kUseBgLut"];
    [v17 setConstantValue:&v23 type:53 withName:@"kUseFgLut"];
    sub_1DED422A0(&v6->_renderingCompositeFixupAndFGColorMapKernel, v5, @"compositeFixupAndAddNoise", v17);
    renderingCompositeFixupAndFGColorMapKernel = v6->_renderingCompositeFixupAndFGColorMapKernel;

    if (!renderingCompositeFixupAndFGColorMapKernel)
    {
      goto LABEL_8;
    }

    v19 = [v10 copy];
    v23 = 257;
    [v19 setConstantValue:&v23 + 1 type:53 withName:@"kUseBgLut"];
    [v19 setConstantValue:&v23 type:53 withName:@"kUseFgLut"];
    sub_1DED422A0(&v6->_renderingCompositeFixupAndColorMapKernel, v5, @"compositeFixupAndAddNoise", v19);
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