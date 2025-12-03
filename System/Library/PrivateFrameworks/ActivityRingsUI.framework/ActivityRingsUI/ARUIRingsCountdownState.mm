@interface ARUIRingsCountdownState
- (BOOL)shouldRunStateForRing:(id)ring;
- (id)renderPipelineDescriptorFromLibrary:(id)library;
@end

@implementation ARUIRingsCountdownState

- (id)renderPipelineDescriptorFromLibrary:(id)library
{
  libraryCopy = library;
  v5 = objc_opt_new();
  v6 = [libraryCopy newFunctionWithName:@"vertex_shader"];
  [v5 setVertexFunction:v6];

  v7 = [libraryCopy newFunctionWithName:@"fragment_countdown_fillcolor"];
  [v5 setFragmentFunction:v7];

  colorAttachments = [v5 colorAttachments];
  v9 = [colorAttachments objectAtIndexedSubscript:0];
  [v9 setPixelFormat:80];

  [v5 configureForSourceOverBlending];
  name = [(ARUIRingsCountdownState *)self name];
  [v5 setLabel:name];

  return v5;
}

- (BOOL)shouldRunStateForRing:(id)ring
{
  ringCopy = ring;
  [ringCopy percentage];
  if (v4 == *&ARUIRingPercentageValueNoRing || ([ringCopy thickness], !ARUIFloatGreater(v5, 0.0)))
  {
    v7 = 0;
  }

  else
  {
    [ringCopy opacity];
    v7 = ARUIFloatGreater(v6, 0.0);
  }

  return v7;
}

@end