@interface PHASEVoxelLevelView
- (PHASEEngine)engine;
- (PHASEVoxelLevelView)init;
- (PHASEVoxelLevelView)initWithEngine:(id)engine shapeHandle:(Handle64)handle voxelTreeInfo:(const void *)info subtreeIndex:(int64_t)index levelIndex:(int64_t)levelIndex;
- (void)getVoxelsWithCallback:;
- (void)getVoxelsWithCallback:(id)callback;
@end

@implementation PHASEVoxelLevelView

- (PHASEVoxelLevelView)init
{
  v3.receiver = self;
  v3.super_class = PHASEVoxelLevelView;
  return [(PHASEVoxelLevelView *)&v3 init];
}

- (PHASEVoxelLevelView)initWithEngine:(id)engine shapeHandle:(Handle64)handle voxelTreeInfo:(const void *)info subtreeIndex:(int64_t)index levelIndex:(int64_t)levelIndex
{
  engineCopy = engine;
  if (!engineCopy)
  {
    __assert_rtn("[PHASEVoxelLevelView initWithEngine:shapeHandle:voxelTreeInfo:subtreeIndex:levelIndex:]", "PHASEGeometryView.mm", 144, "engine");
  }

  v13 = *(*info + 48 * index);
  v17.receiver = self;
  v17.super_class = PHASEVoxelLevelView;
  v14 = [(PHASEVoxelLevelView *)&v17 init];
  v15 = (v13 + 48 * levelIndex);
  objc_storeWeak(&v14->_engine, engineCopy);
  v14->_geoShapeHandle = handle;
  v14->_subtreeIndex = index;
  v14->_levelIndex = levelIndex;
  *v14->_dimensions = v15[2];
  *v14->_offset = *v15;
  *v14->_voxelSize = v15[1];

  return v14;
}

- (void)getVoxelsWithCallback:(id)callback
{
  v11[4] = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  v5 = _Block_copy(callbackCopy);
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v7 = *([WeakRetained implementation] + 368);
  v8.mData = [(PHASEVoxelLevelView *)self geoShapeHandle];
  subtreeIndex = [(PHASEVoxelLevelView *)self subtreeIndex];
  levelIndex = [(PHASEVoxelLevelView *)self levelIndex];
  v11[0] = &unk_284D35ED0;
  v11[1] = _Block_copy(v5);
  v11[3] = v11;
  (*(*v7 + 432))(v7, v8, subtreeIndex, levelIndex, v11);
  std::__function::__value_func<void ()(unsigned long,Phase::Vector<unsigned short,3ul> *)>::~__value_func[abi:ne200100](v11);
}

- (PHASEEngine)engine
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  return WeakRetained;
}

- (void)getVoxelsWithCallback:
{
  v4 = [[PHASEVoxelSet3D alloc] initWithPoints:*a3 count:*a2];
  (*(*(self + 8) + 16))();
}

@end