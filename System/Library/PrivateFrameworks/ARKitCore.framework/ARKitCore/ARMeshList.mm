@interface ARMeshList
- (void)dealloc;
- (void)setMeshList:(CV3DReconMeshList *)a3 updatedAnchors:(id)a4 removedAnchors:(id)a5 timestamp:(double)a6;
@end

@implementation ARMeshList

- (void)setMeshList:(CV3DReconMeshList *)a3 updatedAnchors:(id)a4 removedAnchors:(id)a5 timestamp:(double)a6
{
  v11 = a4;
  v10 = a5;
  if (self->_meshList)
  {
    CV3DReconMeshListRelease();
  }

  self->_timestamp = a6;
  self->_meshList = a3;
  [(ARMeshList *)self setUpdatedAnchors:v11];
  [(ARMeshList *)self setRemovedAnchors:v10];
  if (self->_meshList)
  {
    CV3DReconMeshListRetain();
  }
}

- (void)dealloc
{
  CV3DReconMeshListRelease();
  v3.receiver = self;
  v3.super_class = ARMeshList;
  [(ARMeshList *)&v3 dealloc];
}

@end