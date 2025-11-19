@interface CVAFilterRenderStagelight
- (CVAFilterRenderStagelight)initWithFigMetalContext:(id)a3 error:(id *)a4;
- (void)encodeToCommandBuffer:(id)a3 srcColorTex:(id)a4 srcAlphaTex:(id)a5 dstYTex:(id)a6 dstUVTex:(id)a7 stageLightProxyLut:(id)a8 stageLightLut:(id)a9 blackBackgroundIntensity:(float)a10 vignetteIntensity:(float)a11;
@end

@implementation CVAFilterRenderStagelight

- (void)encodeToCommandBuffer:(id)a3 srcColorTex:(id)a4 srcAlphaTex:(id)a5 dstYTex:(id)a6 dstUVTex:(id)a7 stageLightProxyLut:(id)a8 stageLightLut:(id)a9 blackBackgroundIntensity:(float)a10 vignetteIntensity:(float)a11
{
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a9;
  v31 = v19;
  v26 = [v20 width];
  v27 = [v20 height];
  *v35 = a10;
  *&v35[1] = tanf((((fmaxf(a11 * 100.0, 0.1) * 3.1416) / -180.0) + 3.1416) * 0.5) * 0.5;
  v35[2] = 1065353216;
  v28 = [v19 computeCommandEncoder];
  v29 = v28;
  if (v24 && v25)
  {
    [v28 setLabel:@"_renderingStageLightKernel_bothCubes"];
    v30 = 8;
  }

  else if (v24)
  {
    [v28 setLabel:@"_renderingStageLightKernel_proxyCube"];
    v30 = 16;
  }

  else if (v25)
  {
    [v28 setLabel:@"_renderingStageLightKernel_cube"];
    v30 = 24;
  }

  else
  {
    [v28 setLabel:@"_renderingStageLightKernel_noCube"];
    v30 = 32;
  }

  [v29 setComputePipelineState:*(&self->super.isa + v30)];
  [v29 setTexture:v20 atIndex:0];
  [v29 setTexture:v21 atIndex:1];
  [v29 setTexture:v22 atIndex:2];
  [v29 setTexture:v23 atIndex:3];
  [v29 setTexture:v24 atIndex:4];
  [v29 setTexture:v25 atIndex:5];
  [v29 setBytes:v35 length:12 atIndex:0];
  v34[0] = ((v26 >> 1) + 15) >> 4;
  v34[1] = ((v27 >> 1) + 15) >> 4;
  v34[2] = 1;
  v32 = xmmword_1DED747F0;
  v33 = 1;
  [v29 dispatchThreadgroups:v34 threadsPerThreadgroup:&v32];
  [v29 endEncoding];
}

- (CVAFilterRenderStagelight)initWithFigMetalContext:(id)a3 error:(id *)a4
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = CVAFilterRenderStagelight;
  v6 = [(CVAFilterRenderStagelight *)&v15 init];
  if (v6)
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    label = v6->_label;
    v6->_label = v8;

    v10 = objc_opt_new();
    v11 = [v10 copy];
    v14 = 257;
    [v11 setConstantValue:&v14 + 1 type:53 withName:@"kUseStageLightProxyCube"];
    [v11 setConstantValue:&v14 type:53 withName:@"kUseStageLightCube"];
    sub_1DED422A0(&v6->_renderingStageLightKernel_bothCubes, v5, @"renderStageLight", v11);
    if (!v6->_renderingStageLightKernel_bothCubes)
    {
      goto LABEL_7;
    }

    v14 = 256;
    [v11 setConstantValue:&v14 + 1 type:53 withName:@"kUseStageLightProxyCube"];
    [v11 setConstantValue:&v14 type:53 withName:@"kUseStageLightCube"];
    sub_1DED422A0(&v6->_renderingStageLightKernel_proxyCube, v5, @"renderStageLight", v11);
    if (!v6->_renderingStageLightKernel_proxyCube)
    {
      goto LABEL_7;
    }

    v14 = 1;
    [v11 setConstantValue:&v14 + 1 type:53 withName:@"kUseStageLightProxyCube"];
    [v11 setConstantValue:&v14 type:53 withName:@"kUseStageLightCube"];
    sub_1DED422A0(&v6->_renderingStageLightKernel_cube, v5, @"renderStageLight", v11);
    if (!v6->_renderingStageLightKernel_cube)
    {
      goto LABEL_7;
    }

    v14 = 0;
    [v11 setConstantValue:&v14 + 1 type:53 withName:@"kUseStageLightProxyCube"];
    [v11 setConstantValue:&v14 type:53 withName:@"kUseStageLightCube"];
    sub_1DED422A0(&v6->_renderingStageLightKernel_noCube, v5, @"renderStageLight", v11);
    if (v6->_renderingStageLightKernel_noCube)
    {
      v12 = v6;
    }

    else
    {
LABEL_7:
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end