@interface CVAFilterRenderStagelight
- (CVAFilterRenderStagelight)initWithFigMetalContext:(id)context error:(id *)error;
- (void)encodeToCommandBuffer:(id)buffer srcColorTex:(id)tex srcAlphaTex:(id)alphaTex dstYTex:(id)yTex dstUVTex:(id)vTex stageLightProxyLut:(id)lut stageLightLut:(id)lightLut blackBackgroundIntensity:(float)self0 vignetteIntensity:(float)self1;
@end

@implementation CVAFilterRenderStagelight

- (void)encodeToCommandBuffer:(id)buffer srcColorTex:(id)tex srcAlphaTex:(id)alphaTex dstYTex:(id)yTex dstUVTex:(id)vTex stageLightProxyLut:(id)lut stageLightLut:(id)lightLut blackBackgroundIntensity:(float)self0 vignetteIntensity:(float)self1
{
  bufferCopy = buffer;
  texCopy = tex;
  alphaTexCopy = alphaTex;
  yTexCopy = yTex;
  vTexCopy = vTex;
  lutCopy = lut;
  lightLutCopy = lightLut;
  v31 = bufferCopy;
  width = [texCopy width];
  height = [texCopy height];
  *v35 = intensity;
  *&v35[1] = tanf((((fmaxf(vignetteIntensity * 100.0, 0.1) * 3.1416) / -180.0) + 3.1416) * 0.5) * 0.5;
  v35[2] = 1065353216;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  v29 = computeCommandEncoder;
  if (lutCopy && lightLutCopy)
  {
    [computeCommandEncoder setLabel:@"_renderingStageLightKernel_bothCubes"];
    v30 = 8;
  }

  else if (lutCopy)
  {
    [computeCommandEncoder setLabel:@"_renderingStageLightKernel_proxyCube"];
    v30 = 16;
  }

  else if (lightLutCopy)
  {
    [computeCommandEncoder setLabel:@"_renderingStageLightKernel_cube"];
    v30 = 24;
  }

  else
  {
    [computeCommandEncoder setLabel:@"_renderingStageLightKernel_noCube"];
    v30 = 32;
  }

  [v29 setComputePipelineState:*(&self->super.isa + v30)];
  [v29 setTexture:texCopy atIndex:0];
  [v29 setTexture:alphaTexCopy atIndex:1];
  [v29 setTexture:yTexCopy atIndex:2];
  [v29 setTexture:vTexCopy atIndex:3];
  [v29 setTexture:lutCopy atIndex:4];
  [v29 setTexture:lightLutCopy atIndex:5];
  [v29 setBytes:v35 length:12 atIndex:0];
  v34[0] = ((width >> 1) + 15) >> 4;
  v34[1] = ((height >> 1) + 15) >> 4;
  v34[2] = 1;
  v32 = xmmword_1DED747F0;
  v33 = 1;
  [v29 dispatchThreadgroups:v34 threadsPerThreadgroup:&v32];
  [v29 endEncoding];
}

- (CVAFilterRenderStagelight)initWithFigMetalContext:(id)context error:(id *)error
{
  contextCopy = context;
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
    sub_1DED422A0(&v6->_renderingStageLightKernel_bothCubes, contextCopy, @"renderStageLight", v11);
    if (!v6->_renderingStageLightKernel_bothCubes)
    {
      goto LABEL_7;
    }

    v14 = 256;
    [v11 setConstantValue:&v14 + 1 type:53 withName:@"kUseStageLightProxyCube"];
    [v11 setConstantValue:&v14 type:53 withName:@"kUseStageLightCube"];
    sub_1DED422A0(&v6->_renderingStageLightKernel_proxyCube, contextCopy, @"renderStageLight", v11);
    if (!v6->_renderingStageLightKernel_proxyCube)
    {
      goto LABEL_7;
    }

    v14 = 1;
    [v11 setConstantValue:&v14 + 1 type:53 withName:@"kUseStageLightProxyCube"];
    [v11 setConstantValue:&v14 type:53 withName:@"kUseStageLightCube"];
    sub_1DED422A0(&v6->_renderingStageLightKernel_cube, contextCopy, @"renderStageLight", v11);
    if (!v6->_renderingStageLightKernel_cube)
    {
      goto LABEL_7;
    }

    v14 = 0;
    [v11 setConstantValue:&v14 + 1 type:53 withName:@"kUseStageLightProxyCube"];
    [v11 setConstantValue:&v14 type:53 withName:@"kUseStageLightCube"];
    sub_1DED422A0(&v6->_renderingStageLightKernel_noCube, contextCopy, @"renderStageLight", v11);
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