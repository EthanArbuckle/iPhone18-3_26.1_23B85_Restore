@interface ARUIRingsRenderState
- (ARUIRingsRenderState)initWithDevice:(id)a3 library:(id)a4;
- (ARUIRingsRenderState)initWithPipelineLibrary:(id)a3;
@end

@implementation ARUIRingsRenderState

- (ARUIRingsRenderState)initWithDevice:(id)a3 library:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = ARUIRingsRenderState;
  v8 = [(ARUIRingsRenderState *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v10 = [(ARUIRingsRenderState *)v8 renderPipelineDescriptorFromLibrary:v7];
    v11 = [v6 newRenderPipelineStateWithDescriptor:v10 error:0];
    [(ARUIRingsRenderState *)v9 setRenderPipelineState:v11];
    [(ARUIRingsRenderState *)v9 didInitialize];
  }

  return v9;
}

- (ARUIRingsRenderState)initWithPipelineLibrary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ARUIRingsRenderState;
  v5 = [(ARUIRingsRenderState *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(ARUIRingsRenderState *)v5 name];
    v8 = [v4 newRenderPipelineStateWithName:v7 options:0 reflection:0 error:0];

    [(ARUIRingsRenderState *)v6 setRenderPipelineState:v8];
    [(ARUIRingsRenderState *)v6 didInitialize];
  }

  return v6;
}

@end