@interface PHASEVoxelLevelView
- (PHASEEngine)engine;
- (PHASEVoxelLevelView)init;
- (PHASEVoxelLevelView)initWithEngine:(id)a3 shapeHandle:(Handle64)a4 voxelTreeInfo:(const void *)a5 subtreeIndex:(int64_t)a6 levelIndex:(int64_t)a7;
- (void)getVoxelsWithCallback:;
- (void)getVoxelsWithCallback:(id)a3;
@end

@implementation PHASEVoxelLevelView

- (PHASEVoxelLevelView)init
{
  v3.receiver = self;
  v3.super_class = PHASEVoxelLevelView;
  return [(PHASEVoxelLevelView *)&v3 init];
}

- (PHASEVoxelLevelView)initWithEngine:(id)a3 shapeHandle:(Handle64)a4 voxelTreeInfo:(const void *)a5 subtreeIndex:(int64_t)a6 levelIndex:(int64_t)a7
{
  v12 = a3;
  if (!v12)
  {
    __assert_rtn("[PHASEVoxelLevelView initWithEngine:shapeHandle:voxelTreeInfo:subtreeIndex:levelIndex:]", "PHASEGeometryView.mm", 144, "engine");
  }

  v13 = *(*a5 + 48 * a6);
  v17.receiver = self;
  v17.super_class = PHASEVoxelLevelView;
  v14 = [(PHASEVoxelLevelView *)&v17 init];
  v15 = (v13 + 48 * a7);
  objc_storeWeak(&v14->_engine, v12);
  v14->_geoShapeHandle = a4;
  v14->_subtreeIndex = a6;
  v14->_levelIndex = a7;
  *v14->_dimensions = v15[2];
  *v14->_offset = *v15;
  *v14->_voxelSize = v15[1];

  return v14;
}

- (void)getVoxelsWithCallback:(id)a3
{
  v11[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _Block_copy(v4);
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v7 = *([WeakRetained implementation] + 368);
  v8.mData = [(PHASEVoxelLevelView *)self geoShapeHandle];
  v9 = [(PHASEVoxelLevelView *)self subtreeIndex];
  v10 = [(PHASEVoxelLevelView *)self levelIndex];
  v11[0] = &unk_284D35ED0;
  v11[1] = _Block_copy(v5);
  v11[3] = v11;
  (*(*v7 + 432))(v7, v8, v9, v10, v11);
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
  (*(*(a1 + 8) + 16))();
}

@end