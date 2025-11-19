@interface PHASEVoxelTreeView
- (PHASEVoxelTreeView)init;
- (PHASEVoxelTreeView)initWithEngine:(id)a3 shapeHandle:(Handle64)a4 voxelTreeInfo:(const void *)a5;
- (id)levelViewWithIndex:(unint64_t)a3 inLevelIndex:(unint64_t)a4;
@end

@implementation PHASEVoxelTreeView

- (PHASEVoxelTreeView)init
{
  v3.receiver = self;
  v3.super_class = PHASEVoxelTreeView;
  return [(PHASEGeometryView *)&v3 init];
}

- (PHASEVoxelTreeView)initWithEngine:(id)a3 shapeHandle:(Handle64)a4 voxelTreeInfo:(const void *)a5
{
  v8 = a3;
  if (!v8)
  {
    v17 = "engine";
    v18 = 228;
    goto LABEL_9;
  }

  if (!a5)
  {
    v17 = "voxelTreeInfo";
    v18 = 229;
LABEL_9:
    __assert_rtn("[PHASEVoxelTreeView initWithEngine:shapeHandle:voxelTreeInfo:]", "PHASEGeometryView.mm", v18, v17);
  }

  v9 = *(a5 + 5);
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:v9];
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      v12 = [[PHASESubtreeView alloc] initWithEngine:v8 shapeHandle:a4.mData voxelTreeInfo:a5 subtreeIndex:i];
      [v10 setObject:v12 atIndexedSubscript:i];
    }
  }

  v19.receiver = self;
  v19.super_class = PHASEVoxelTreeView;
  v13 = [(PHASEGeometryView *)&v19 initWithEngine:v8 handle:a4.mData];
  v14 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  subtrees = v13->_subtrees;
  v13->_subtrees = v14;

  return v13;
}

- (id)levelViewWithIndex:(unint64_t)a3 inLevelIndex:(unint64_t)a4
{
  if ([(NSArray *)self->_subtrees count]<= a3)
  {
    v12 = 0;
  }

  else
  {
    v7 = [(NSArray *)self->_subtrees objectAtIndexedSubscript:a3];
    v8 = v7;
    if (v7 && ([v7 levels], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v10 > a4))
    {
      v11 = [v8 levels];
      v12 = [v11 objectAtIndexedSubscript:a4];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

@end