@interface ARUIRenderState
- (ARUIRenderState)initWithDevice:(id)a3 library:(id)a4;
@end

@implementation ARUIRenderState

- (ARUIRenderState)initWithDevice:(id)a3 library:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = ARUIRenderState;
  v8 = [(ARUIRenderState *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v10 = [(ARUIRenderState *)v8 renderPipelineDescriptorFromLibrary:v7];
    v11 = [v6 newRenderPipelineStateWithDescriptor:v10 error:0];
    [(ARUIRenderState *)v9 setRenderPipelineState:v11];
  }

  return v9;
}

@end