@interface PHASEMeshView
- (PHASEMeshView)init;
- (PHASEMeshView)initWithEngine:(id)a3 handle:(Handle64)a4;
@end

@implementation PHASEMeshView

- (PHASEMeshView)init
{
  v3.receiver = self;
  v3.super_class = PHASEMeshView;
  return [(PHASEGeometryView *)&v3 init];
}

- (PHASEMeshView)initWithEngine:(id)a3 handle:(Handle64)a4
{
  v5.receiver = self;
  v5.super_class = PHASEMeshView;
  return [(PHASEGeometryView *)&v5 initWithEngine:a3 handle:a4.mData];
}

@end