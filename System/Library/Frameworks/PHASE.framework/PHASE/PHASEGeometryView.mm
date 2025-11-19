@interface PHASEGeometryView
+ (void)geometryViewWithObject:(id)a3 index:(unint64_t)a4 callback:(id)a5;
+ (void)geometryViewWithObject:index:callback:;
- (PHASEEngine)engine;
- (PHASEGeometryView)init;
- (PHASEGeometryView)initWithEngine:(id)a3 handle:(Handle64)a4;
@end

@implementation PHASEGeometryView

- (PHASEGeometryView)init
{
  v3.receiver = self;
  v3.super_class = PHASEGeometryView;
  return [(PHASEGeometryView *)&v3 init];
}

- (PHASEGeometryView)initWithEngine:(id)a3 handle:(Handle64)a4
{
  v6 = a3;
  v9.receiver = self;
  v9.super_class = PHASEGeometryView;
  v7 = [(PHASEGeometryView *)&v9 init];
  objc_storeWeak(&v7->_engine, v6);
  v7->_geoShapeHandle = a4;

  return v7;
}

+ (void)geometryViewWithObject:(id)a3 index:(unint64_t)a4 callback:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  if (v7)
  {
    v9 = [v7 engine];
    if (v9)
    {

      v10 = [v7 geoShapeHandles];
      if ([v10 count] > a4)
      {

        v11 = [v7 geoShapeHandles];
        v12 = [v11 objectAtIndexedSubscript:a4];
        [v12 unsignedLongLongValue];

        v13 = [v7 engine];
        v14 = _Block_copy(v8);
        [v7 engine];
        [objc_claimAutoreleasedReturnValue() implementation];
        v15 = v13;
        _Block_copy(v14);
        v16 = 0;
        operator new();
      }

      __assert_rtn("+[PHASEGeometryView geometryViewWithObject:index:callback:]", "PHASEGeometryView.mm", 286, "index < object.geoShapeHandles.count");
    }

    __assert_rtn("+[PHASEGeometryView geometryViewWithObject:index:callback:]", "PHASEGeometryView.mm", 284, "object.engine");
  }

  __assert_rtn("+[PHASEGeometryView geometryViewWithObject:index:callback:]", "PHASEGeometryView.mm", 283, "object");
}

- (PHASEEngine)engine
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  return WeakRetained;
}

+ (void)geometryViewWithObject:index:callback:
{
  if (!*a3)
  {
    goto LABEL_5;
  }

  if (*a2 == 2)
  {
    v4 = [[PHASEVoxelTreeView alloc] initWithEngine:a1[2] shapeHandle:a1[1] voxelTreeInfo:*a3];
    goto LABEL_7;
  }

  if (*a2 != 1)
  {
LABEL_5:
    v5 = 0;
    goto LABEL_8;
  }

  v4 = [[PHASEMeshView alloc] initWithEngine:a1[2] handle:a1[1]];
LABEL_7:
  v5 = v4;
LABEL_8:
  v6 = v5;
  (*(a1[3] + 16))();
}

@end