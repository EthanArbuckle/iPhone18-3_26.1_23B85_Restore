@interface PHASESubtreeView
- (PHASEEngine)engine;
- (PHASESubtreeView)init;
- (PHASESubtreeView)initWithEngine:(id)a3 shapeHandle:(Handle64)a4 voxelTreeInfo:(const void *)a5 subtreeIndex:(int64_t)a6;
@end

@implementation PHASESubtreeView

- (PHASESubtreeView)init
{
  v3.receiver = self;
  v3.super_class = PHASESubtreeView;
  return [(PHASESubtreeView *)&v3 init];
}

- (PHASESubtreeView)initWithEngine:(id)a3 shapeHandle:(Handle64)a4 voxelTreeInfo:(const void *)a5 subtreeIndex:(int64_t)a6
{
  v10 = a3;
  if (!v10)
  {
    __assert_rtn("[PHASESubtreeView initWithEngine:shapeHandle:voxelTreeInfo:subtreeIndex:]", "PHASEGeometryView.mm", 190, "engine");
  }

  v11 = *(*a5 + 48 * a6 + 40);
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:v11];
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      v14 = [[PHASEVoxelLevelView alloc] initWithEngine:v10 shapeHandle:a4.mData voxelTreeInfo:a5 subtreeIndex:a6 levelIndex:i];
      [v12 setObject:v14 atIndexedSubscript:i];
    }
  }

  v19.receiver = self;
  v19.super_class = PHASESubtreeView;
  v15 = [(PHASESubtreeView *)&v19 init];
  objc_storeWeak(&v15->_engine, v10);
  v15->_geoShapeHandle = a4;
  v15->_subtreeIndex = a6;
  v16 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
  levels = v15->_levels;
  v15->_levels = v16;

  return v15;
}

- (PHASEEngine)engine
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  return WeakRetained;
}

@end