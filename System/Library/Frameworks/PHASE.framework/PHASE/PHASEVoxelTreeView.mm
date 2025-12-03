@interface PHASEVoxelTreeView
- (PHASEVoxelTreeView)init;
- (PHASEVoxelTreeView)initWithEngine:(id)engine shapeHandle:(Handle64)handle voxelTreeInfo:(const void *)info;
- (id)levelViewWithIndex:(unint64_t)index inLevelIndex:(unint64_t)levelIndex;
@end

@implementation PHASEVoxelTreeView

- (PHASEVoxelTreeView)init
{
  v3.receiver = self;
  v3.super_class = PHASEVoxelTreeView;
  return [(PHASEGeometryView *)&v3 init];
}

- (PHASEVoxelTreeView)initWithEngine:(id)engine shapeHandle:(Handle64)handle voxelTreeInfo:(const void *)info
{
  engineCopy = engine;
  if (!engineCopy)
  {
    v17 = "engine";
    v18 = 228;
    goto LABEL_9;
  }

  if (!info)
  {
    v17 = "voxelTreeInfo";
    v18 = 229;
LABEL_9:
    __assert_rtn("[PHASEVoxelTreeView initWithEngine:shapeHandle:voxelTreeInfo:]", "PHASEGeometryView.mm", v18, v17);
  }

  v9 = *(info + 5);
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:v9];
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      v12 = [[PHASESubtreeView alloc] initWithEngine:engineCopy shapeHandle:handle.mData voxelTreeInfo:info subtreeIndex:i];
      [v10 setObject:v12 atIndexedSubscript:i];
    }
  }

  v19.receiver = self;
  v19.super_class = PHASEVoxelTreeView;
  v13 = [(PHASEGeometryView *)&v19 initWithEngine:engineCopy handle:handle.mData];
  v14 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  subtrees = v13->_subtrees;
  v13->_subtrees = v14;

  return v13;
}

- (id)levelViewWithIndex:(unint64_t)index inLevelIndex:(unint64_t)levelIndex
{
  if ([(NSArray *)self->_subtrees count]<= index)
  {
    v12 = 0;
  }

  else
  {
    v7 = [(NSArray *)self->_subtrees objectAtIndexedSubscript:index];
    v8 = v7;
    if (v7 && ([v7 levels], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v10 > levelIndex))
    {
      levels = [v8 levels];
      v12 = [levels objectAtIndexedSubscript:levelIndex];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

@end