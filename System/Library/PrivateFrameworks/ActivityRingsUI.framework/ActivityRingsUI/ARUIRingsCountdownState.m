@interface ARUIRingsCountdownState
- (BOOL)shouldRunStateForRing:(id)a3;
- (id)renderPipelineDescriptorFromLibrary:(id)a3;
@end

@implementation ARUIRingsCountdownState

- (id)renderPipelineDescriptorFromLibrary:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 newFunctionWithName:@"vertex_shader"];
  [v5 setVertexFunction:v6];

  v7 = [v4 newFunctionWithName:@"fragment_countdown_fillcolor"];
  [v5 setFragmentFunction:v7];

  v8 = [v5 colorAttachments];
  v9 = [v8 objectAtIndexedSubscript:0];
  [v9 setPixelFormat:80];

  [v5 configureForSourceOverBlending];
  v10 = [(ARUIRingsCountdownState *)self name];
  [v5 setLabel:v10];

  return v5;
}

- (BOOL)shouldRunStateForRing:(id)a3
{
  v3 = a3;
  [v3 percentage];
  if (v4 == *&ARUIRingPercentageValueNoRing || ([v3 thickness], !ARUIFloatGreater(v5, 0.0)))
  {
    v7 = 0;
  }

  else
  {
    [v3 opacity];
    v7 = ARUIFloatGreater(v6, 0.0);
  }

  return v7;
}

@end