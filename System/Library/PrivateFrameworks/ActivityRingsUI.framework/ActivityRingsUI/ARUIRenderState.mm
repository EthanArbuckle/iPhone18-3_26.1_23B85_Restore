@interface ARUIRenderState
- (ARUIRenderState)initWithDevice:(id)device library:(id)library;
@end

@implementation ARUIRenderState

- (ARUIRenderState)initWithDevice:(id)device library:(id)library
{
  deviceCopy = device;
  libraryCopy = library;
  v13.receiver = self;
  v13.super_class = ARUIRenderState;
  v8 = [(ARUIRenderState *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v10 = [(ARUIRenderState *)v8 renderPipelineDescriptorFromLibrary:libraryCopy];
    v11 = [deviceCopy newRenderPipelineStateWithDescriptor:v10 error:0];
    [(ARUIRenderState *)v9 setRenderPipelineState:v11];
  }

  return v9;
}

@end