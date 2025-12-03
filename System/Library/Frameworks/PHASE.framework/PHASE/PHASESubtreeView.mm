@interface PHASESubtreeView
- (PHASEEngine)engine;
- (PHASESubtreeView)init;
- (PHASESubtreeView)initWithEngine:(id)engine shapeHandle:(Handle64)handle voxelTreeInfo:(const void *)info subtreeIndex:(int64_t)index;
@end

@implementation PHASESubtreeView

- (PHASESubtreeView)init
{
  v3.receiver = self;
  v3.super_class = PHASESubtreeView;
  return [(PHASESubtreeView *)&v3 init];
}

- (PHASESubtreeView)initWithEngine:(id)engine shapeHandle:(Handle64)handle voxelTreeInfo:(const void *)info subtreeIndex:(int64_t)index
{
  engineCopy = engine;
  if (!engineCopy)
  {
    __assert_rtn("[PHASESubtreeView initWithEngine:shapeHandle:voxelTreeInfo:subtreeIndex:]", "PHASEGeometryView.mm", 190, "engine");
  }

  v11 = *(*info + 48 * index + 40);
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:v11];
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      v14 = [[PHASEVoxelLevelView alloc] initWithEngine:engineCopy shapeHandle:handle.mData voxelTreeInfo:info subtreeIndex:index levelIndex:i];
      [v12 setObject:v14 atIndexedSubscript:i];
    }
  }

  v19.receiver = self;
  v19.super_class = PHASESubtreeView;
  v15 = [(PHASESubtreeView *)&v19 init];
  objc_storeWeak(&v15->_engine, engineCopy);
  v15->_geoShapeHandle = handle;
  v15->_subtreeIndex = index;
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