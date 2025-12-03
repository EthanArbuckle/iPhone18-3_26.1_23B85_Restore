@interface SCNPassContext
- (MTLCommandBuffer)commandBuffer;
- (MTLCommandQueue)commandQueue;
- (MTLDevice)device;
- (id)inputTextureWithName:(id)name;
- (id)outputTextureWithName:(id)name;
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

- (id)inputTextureWithName:(id)name
{
  var5 = self->_context->var0[1].var5;
  uTF8String = [name UTF8String];

  return C3DPassGetInputTextureNamed(var5, uTF8String);
}

- (id)outputTextureWithName:(id)name
{
  var5 = self->_context->var0[1].var5;
  uTF8String = [name UTF8String];

  return C3DPassGetOutputTextureNamed(var5, uTF8String);
}

@end