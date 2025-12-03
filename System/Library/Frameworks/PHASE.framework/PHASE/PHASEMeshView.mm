@interface PHASEMeshView
- (PHASEMeshView)init;
- (PHASEMeshView)initWithEngine:(id)engine handle:(Handle64)handle;
@end

@implementation PHASEMeshView

- (PHASEMeshView)init
{
  v3.receiver = self;
  v3.super_class = PHASEMeshView;
  return [(PHASEGeometryView *)&v3 init];
}

- (PHASEMeshView)initWithEngine:(id)engine handle:(Handle64)handle
{
  v5.receiver = self;
  v5.super_class = PHASEMeshView;
  return [(PHASEGeometryView *)&v5 initWithEngine:engine handle:handle.mData];
}

@end