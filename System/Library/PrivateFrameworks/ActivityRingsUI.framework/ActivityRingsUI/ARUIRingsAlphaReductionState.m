@interface ARUIRingsAlphaReductionState
- (id)renderPipelineDescriptorFromLibrary:(id)a3;
@end

@implementation ARUIRingsAlphaReductionState

- (id)renderPipelineDescriptorFromLibrary:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 newFunctionWithName:@"vertex_shader"];
  [v5 setVertexFunction:v6];

  v7 = [v4 newFunctionWithName:@"fragment_alpha_reduction"];
  [v5 setFragmentFunction:v7];

  v8 = [v5 colorAttachments];
  v9 = [v8 objectAtIndexedSubscript:0];
  [v9 setPixelFormat:80];

  [v5 configureForAlphaReductionBlending];
  v10 = [(ARUIRingsAlphaReductionState *)self name];
  [v5 setLabel:v10];

  return v5;
}

@end