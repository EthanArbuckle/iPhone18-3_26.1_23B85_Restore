@interface CRLMetalContext
- (CGColorSpace)destinationColorSpace;
- (CGSize)viewportSize;
- (CRLMetalContext)initWithEnvironment:(id)environment;
- (CRLMetalShader)shader;
- (MTLCommandBuffer)commandBuffer;
- (MTLCommandQueue)commandQueue;
- (MTLDevice)device;
- (MTLRenderCommandEncoder)renderEncoder;
- (MTLRenderPassDescriptor)passDescriptor;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CRLMetalContext

- (CRLMetalContext)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v9.receiver = self;
  v9.super_class = CRLMetalContext;
  v6 = [(CRLMetalContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_environment, environment);
  }

  return v7;
}

- (MTLDevice)device
{
  environment = [(CRLMetalContext *)self environment];
  device = [environment device];

  return device;
}

- (MTLCommandQueue)commandQueue
{
  environment = [(CRLMetalContext *)self environment];
  commandQueue = [environment commandQueue];

  return commandQueue;
}

- (CGColorSpace)destinationColorSpace
{
  environment = [(CRLMetalContext *)self environment];
  destinationColorSpace = [environment destinationColorSpace];

  return destinationColorSpace;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CRLMetalContext alloc] initWithEnvironment:self->_environment];
  [(CRLMetalContext *)v4 setPixelFormat:self->_pixelFormat];
  [(CRLMetalContext *)v4 setViewportSize:self->_viewportSize.width, self->_viewportSize.height];
  [(CRLMetalContext *)v4 setCurrentBuffer:self->_currentBuffer];
  WeakRetained = objc_loadWeakRetained(&self->_commandBuffer);
  [(CRLMetalContext *)v4 setCommandBuffer:WeakRetained];

  v6 = objc_loadWeakRetained(&self->_passDescriptor);
  [(CRLMetalContext *)v4 setPassDescriptor:v6];

  v7 = objc_loadWeakRetained(&self->_shader);
  [(CRLMetalContext *)v4 setShader:v7];

  v8 = objc_loadWeakRetained(&self->_renderEncoder);
  [(CRLMetalContext *)v4 setRenderEncoder:v8];

  return v4;
}

- (CGSize)viewportSize
{
  width = self->_viewportSize.width;
  height = self->_viewportSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (MTLCommandBuffer)commandBuffer
{
  WeakRetained = objc_loadWeakRetained(&self->_commandBuffer);

  return WeakRetained;
}

- (MTLRenderPassDescriptor)passDescriptor
{
  WeakRetained = objc_loadWeakRetained(&self->_passDescriptor);

  return WeakRetained;
}

- (CRLMetalShader)shader
{
  WeakRetained = objc_loadWeakRetained(&self->_shader);

  return WeakRetained;
}

- (MTLRenderCommandEncoder)renderEncoder
{
  WeakRetained = objc_loadWeakRetained(&self->_renderEncoder);

  return WeakRetained;
}

@end