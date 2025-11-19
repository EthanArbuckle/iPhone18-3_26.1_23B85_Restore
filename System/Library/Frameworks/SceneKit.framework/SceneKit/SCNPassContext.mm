@interface SCNPassContext
- (MTLCommandBuffer)commandBuffer;
- (MTLCommandQueue)commandQueue;
- (MTLDevice)device;
- (id)inputTextureWithName:(id)a3;
- (id)outputTextureWithName:(id)a3;
@end

@implementation SCNPassContext

- (MTLCommandQueue)commandQueue
{
  RenderContext = C3DEngineContextGetRenderContext(self->_context->var3);

  return [(SCNMTLRenderContext *)RenderContext commandQueue];
}

- (MTLCommandBuffer)commandBuffer
{
  RenderContext = C3DEngineContextGetRenderContext(self->_context->var3);

  return [(SCNMTLRenderContext *)RenderContext currentCommandBuffer];
}

- (MTLDevice)device
{
  RenderContext = C3DEngineContextGetRenderContext(self->_context->var3);

  return [(SCNMTLRenderContext *)RenderContext device];
}

- (id)inputTextureWithName:(id)a3
{
  var5 = self->_context->var0[1].var5;
  v4 = [a3 UTF8String];

  return C3DPassGetInputTextureNamed(var5, v4);
}

- (id)outputTextureWithName:(id)a3
{
  var5 = self->_context->var0[1].var5;
  v4 = [a3 UTF8String];

  return C3DPassGetOutputTextureNamed(var5, v4);
}

@end