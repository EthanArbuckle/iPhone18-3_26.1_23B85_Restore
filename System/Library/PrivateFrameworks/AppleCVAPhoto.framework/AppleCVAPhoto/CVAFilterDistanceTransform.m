@interface CVAFilterDistanceTransform
- (CVAFilterDistanceTransform)initWithFigMetalContext:(id)a3 textureSize:(id *)a4 error:(id *)a5;
- (void)encodeToCommandBuffer:(id)a3 sourceTexture:(id)a4 destinationTexture:(id)a5;
@end

@implementation CVAFilterDistanceTransform

- (void)encodeToCommandBuffer:(id)a3 sourceTexture:(id)a4 destinationTexture:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v10 width];
  if (v12 != -[MTLTexture width](self->_closestSites, "width") || (v13 = [v10 height], v13 != -[MTLTexture height](self->_closestSites, "height")))
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"CVAFilterDistanceTransform.mm" lineNumber:67 description:@"sourceTexture dimensions do not match"];
  }

  v14 = [v11 width];
  if (v14 != -[MTLTexture width](self->_closestSites, "width") || (v15 = [v11 height], v15 != -[MTLTexture height](self->_closestSites, "height")))
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"CVAFilterDistanceTransform.mm" lineNumber:69 description:@"destinationTexture dimensions do not match"];
  }

  if ([v10 pixelFormat] != 13)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"CVAFilterDistanceTransform.mm" lineNumber:70 description:@"sourceTexture pixel format should be R8Uint"];
  }

  if ([v11 pixelFormat] != 25)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"CVAFilterDistanceTransform.mm" lineNumber:72 description:@"destinationTexture pixel format should be R16Float"];
  }

  v16 = [v10 width];
  v17 = [v10 height];
  v18 = [v9 computeCommandEncoder];
  [v18 setLabel:@"_closestSitesKernel"];
  [v18 setComputePipelineState:self->_closestSitesKernel];
  [v18 setTexture:v10 atIndex:0];
  [v18 setTexture:self->_closestSites atIndex:1];
  v19 = (v16 + 15) >> 4;
  v20 = (v17 + 15) >> 4;
  v28 = v19;
  v29 = v20;
  v30 = 1;
  v26 = xmmword_1DED747F0;
  v27 = 1;
  [v18 dispatchThreadgroups:&v28 threadsPerThreadgroup:&v26];
  [v18 endEncoding];
  v21 = [v9 computeCommandEncoder];

  [v21 setLabel:@"_distanceTransformKernel"];
  [v21 setComputePipelineState:self->_distanceTransformKernel];
  [v21 setTexture:self->_closestSites atIndex:0];
  [v21 setTexture:v11 atIndex:1];
  v28 = v19;
  v29 = v20;
  v30 = 1;
  v26 = xmmword_1DED747F0;
  v27 = 1;
  [v21 dispatchThreadgroups:&v28 threadsPerThreadgroup:&v26];
  [v21 endEncoding];
}

- (CVAFilterDistanceTransform)initWithFigMetalContext:(id)a3 textureSize:(id *)a4 error:(id *)a5
{
  v8 = a3;
  v21.receiver = self;
  v21.super_class = CVAFilterDistanceTransform;
  v9 = [(CVAFilterDistanceTransform *)&v21 init];
  label = v9->_label;
  v9->_label = @"CVAFilterDistanceTransform";

  v11 = [v8 device];
  device = v9->_device;
  v9->_device = v11;

  v13 = [v8 library];
  library = v9->_library;
  v9->_library = v13;

  v15 = [v8 pipelineLibrary];
  pipelineLibrary = v9->_pipelineLibrary;
  v9->_pipelineLibrary = v15;

  v17 = sub_1DED6FDC8(v9->_device, 24, a4->var0, a4->var1, 0, a5);
  closestSites = v9->_closestSites;
  v9->_closestSites = v17;

  if (v9->_closestSites && (sub_1DED422A0(&v9->_closestSitesKernel, v8, @"distanceTransformProximalSites", 0), v9->_closestSitesKernel) && (sub_1DED422A0(&v9->_distanceTransformKernel, v8, @"distanceTransformFromProximalSites", 0), v9->_distanceTransformKernel))
  {
    v19 = v9;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end