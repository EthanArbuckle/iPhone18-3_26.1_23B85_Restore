@interface CVAFilterDistanceTransform
- (CVAFilterDistanceTransform)initWithFigMetalContext:(id)context textureSize:(id *)size error:(id *)error;
- (void)encodeToCommandBuffer:(id)buffer sourceTexture:(id)texture destinationTexture:(id)destinationTexture;
@end

@implementation CVAFilterDistanceTransform

- (void)encodeToCommandBuffer:(id)buffer sourceTexture:(id)texture destinationTexture:(id)destinationTexture
{
  bufferCopy = buffer;
  textureCopy = texture;
  destinationTextureCopy = destinationTexture;
  width = [textureCopy width];
  if (width != -[MTLTexture width](self->_closestSites, "width") || (v13 = [textureCopy height], v13 != -[MTLTexture height](self->_closestSites, "height")))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CVAFilterDistanceTransform.mm" lineNumber:67 description:@"sourceTexture dimensions do not match"];
  }

  width2 = [destinationTextureCopy width];
  if (width2 != -[MTLTexture width](self->_closestSites, "width") || (v15 = [destinationTextureCopy height], v15 != -[MTLTexture height](self->_closestSites, "height")))
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"CVAFilterDistanceTransform.mm" lineNumber:69 description:@"destinationTexture dimensions do not match"];
  }

  if ([textureCopy pixelFormat] != 13)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"CVAFilterDistanceTransform.mm" lineNumber:70 description:@"sourceTexture pixel format should be R8Uint"];
  }

  if ([destinationTextureCopy pixelFormat] != 25)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"CVAFilterDistanceTransform.mm" lineNumber:72 description:@"destinationTexture pixel format should be R16Float"];
  }

  width3 = [textureCopy width];
  height = [textureCopy height];
  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  [computeCommandEncoder setLabel:@"_closestSitesKernel"];
  [computeCommandEncoder setComputePipelineState:self->_closestSitesKernel];
  [computeCommandEncoder setTexture:textureCopy atIndex:0];
  [computeCommandEncoder setTexture:self->_closestSites atIndex:1];
  v19 = (width3 + 15) >> 4;
  v20 = (height + 15) >> 4;
  v28 = v19;
  v29 = v20;
  v30 = 1;
  v26 = xmmword_1DED747F0;
  v27 = 1;
  [computeCommandEncoder dispatchThreadgroups:&v28 threadsPerThreadgroup:&v26];
  [computeCommandEncoder endEncoding];
  computeCommandEncoder2 = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder2 setLabel:@"_distanceTransformKernel"];
  [computeCommandEncoder2 setComputePipelineState:self->_distanceTransformKernel];
  [computeCommandEncoder2 setTexture:self->_closestSites atIndex:0];
  [computeCommandEncoder2 setTexture:destinationTextureCopy atIndex:1];
  v28 = v19;
  v29 = v20;
  v30 = 1;
  v26 = xmmword_1DED747F0;
  v27 = 1;
  [computeCommandEncoder2 dispatchThreadgroups:&v28 threadsPerThreadgroup:&v26];
  [computeCommandEncoder2 endEncoding];
}

- (CVAFilterDistanceTransform)initWithFigMetalContext:(id)context textureSize:(id *)size error:(id *)error
{
  contextCopy = context;
  v21.receiver = self;
  v21.super_class = CVAFilterDistanceTransform;
  v9 = [(CVAFilterDistanceTransform *)&v21 init];
  label = v9->_label;
  v9->_label = @"CVAFilterDistanceTransform";

  device = [contextCopy device];
  device = v9->_device;
  v9->_device = device;

  library = [contextCopy library];
  library = v9->_library;
  v9->_library = library;

  pipelineLibrary = [contextCopy pipelineLibrary];
  pipelineLibrary = v9->_pipelineLibrary;
  v9->_pipelineLibrary = pipelineLibrary;

  v17 = sub_1DED6FDC8(v9->_device, 24, size->var0, size->var1, 0, error);
  closestSites = v9->_closestSites;
  v9->_closestSites = v17;

  if (v9->_closestSites && (sub_1DED422A0(&v9->_closestSitesKernel, contextCopy, @"distanceTransformProximalSites", 0), v9->_closestSitesKernel) && (sub_1DED422A0(&v9->_distanceTransformKernel, contextCopy, @"distanceTransformFromProximalSites", 0), v9->_distanceTransformKernel))
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