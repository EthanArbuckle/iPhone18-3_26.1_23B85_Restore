@interface CRLMetalContext
- (CGColorSpace)destinationColorSpace;
- (CGSize)viewportSize;
- (CRLMetalContext)initWithEnvironment:(id)a3;
- (CRLMetalShader)shader;
- (MTLCommandBuffer)commandBuffer;
- (MTLCommandQueue)commandQueue;
- (MTLDevice)device;
- (MTLRenderCommandEncoder)renderEncoder;
- (MTLRenderPassDescriptor)passDescriptor;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CRLMetalContext

- (CRLMetalContext)initWithEnvironment:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CRLMetalContext;
  v6 = [(CRLMetalContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_environment, a3);
  }

  return v7;
}

- (MTLDevice)device
{
  v2 = [(CRLMetalContext *)self environment];
  v3 = [v2 device];

  return v3;
}

- (MTLCommandQueue)commandQueue
{
  v2 = [(CRLMetalContext *)self environment];
  v3 = [v2 commandQueue];

  return v3;
}

- (CGColorSpace)destinationColorSpace
{
  v2 = [(CRLMetalContext *)self environment];
  v3 = [v2 destinationColorSpace];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
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