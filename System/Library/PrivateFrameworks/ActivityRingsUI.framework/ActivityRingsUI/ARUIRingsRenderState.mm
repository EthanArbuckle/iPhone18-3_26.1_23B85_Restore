@interface ARUIRingsRenderState
- (ARUIRingsRenderState)initWithDevice:(id)device library:(id)library;
- (ARUIRingsRenderState)initWithPipelineLibrary:(id)library;
@end

@implementation ARUIRingsRenderState

- (ARUIRingsRenderState)initWithDevice:(id)device library:(id)library
{
  deviceCopy = device;
  libraryCopy = library;
  v13.receiver = self;
  v13.super_class = ARUIRingsRenderState;
  v8 = [(ARUIRingsRenderState *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v10 = [(ARUIRingsRenderState *)v8 renderPipelineDescriptorFromLibrary:libraryCopy];
    v11 = [deviceCopy newRenderPipelineStateWithDescriptor:v10 error:0];
    [(ARUIRingsRenderState *)v9 setRenderPipelineState:v11];
    [(ARUIRingsRenderState *)v9 didInitialize];
  }

  return v9;
}

- (ARUIRingsRenderState)initWithPipelineLibrary:(id)library
{
  libraryCopy = library;
  v10.receiver = self;
  v10.super_class = ARUIRingsRenderState;
  v5 = [(ARUIRingsRenderState *)&v10 init];
  v6 = v5;
  if (v5)
  {
    name = [(ARUIRingsRenderState *)v5 name];
    v8 = [libraryCopy newRenderPipelineStateWithName:name options:0 reflection:0 error:0];

    [(ARUIRingsRenderState *)v6 setRenderPipelineState:v8];
    [(ARUIRingsRenderState *)v6 didInitialize];
  }

  return v6;
}

@end