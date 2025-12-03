@interface ARUIRingsEmptyState
- (id)renderPipelineDescriptorFromLibrary:(id)library;
@end

@implementation ARUIRingsEmptyState

- (id)renderPipelineDescriptorFromLibrary:(id)library
{
  libraryCopy = library;
  v5 = objc_opt_new();
  v6 = [libraryCopy newFunctionWithName:@"vertex_shader"];
  [v5 setVertexFunction:v6];

  v7 = [libraryCopy newFunctionWithName:@"fragment_emptycolor"];
  [v5 setFragmentFunction:v7];

  colorAttachments = [v5 colorAttachments];
  v9 = [colorAttachments objectAtIndexedSubscript:0];
  [v9 setPixelFormat:80];

  [v5 configureForSourceOverBlending];
  name = [(ARUIRingsEmptyState *)self name];
  [v5 setLabel:name];

  return v5;
}

@end