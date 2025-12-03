@interface PHASEGeometryView
+ (void)geometryViewWithObject:(id)object index:(unint64_t)index callback:(id)callback;
+ (void)geometryViewWithObject:index:callback:;
- (PHASEEngine)engine;
- (PHASEGeometryView)init;
- (PHASEGeometryView)initWithEngine:(id)engine handle:(Handle64)handle;
@end

@implementation PHASEGeometryView

- (PHASEGeometryView)init
{
  v3.receiver = self;
  v3.super_class = PHASEGeometryView;
  return [(PHASEGeometryView *)&v3 init];
}

- (PHASEGeometryView)initWithEngine:(id)engine handle:(Handle64)handle
{
  engineCopy = engine;
  v9.receiver = self;
  v9.super_class = PHASEGeometryView;
  v7 = [(PHASEGeometryView *)&v9 init];
  objc_storeWeak(&v7->_engine, engineCopy);
  v7->_geoShapeHandle = handle;

  return v7;
}

+ (void)geometryViewWithObject:(id)object index:(unint64_t)index callback:(id)callback
{
  v17 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  callbackCopy = callback;
  if (objectCopy)
  {
    engine = [objectCopy engine];
    if (engine)
    {

      geoShapeHandles = [objectCopy geoShapeHandles];
      if ([geoShapeHandles count] > index)
      {

        geoShapeHandles2 = [objectCopy geoShapeHandles];
        v12 = [geoShapeHandles2 objectAtIndexedSubscript:index];
        [v12 unsignedLongLongValue];

        engine2 = [objectCopy engine];
        v14 = _Block_copy(callbackCopy);
        [objectCopy engine];
        [objc_claimAutoreleasedReturnValue() implementation];
        v15 = engine2;
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
    v4 = [[PHASEVoxelTreeView alloc] initWithEngine:self[2] shapeHandle:self[1] voxelTreeInfo:*a3];
    goto LABEL_7;
  }

  if (*a2 != 1)
  {
LABEL_5:
    v5 = 0;
    goto LABEL_8;
  }

  v4 = [[PHASEMeshView alloc] initWithEngine:self[2] handle:self[1]];
LABEL_7:
  v5 = v4;
LABEL_8:
  v6 = v5;
  (*(self[3] + 16))();
}

@end