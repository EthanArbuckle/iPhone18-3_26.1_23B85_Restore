@interface ARMeshList
- (void)dealloc;
- (void)setMeshList:(CV3DReconMeshList *)list updatedAnchors:(id)anchors removedAnchors:(id)removedAnchors timestamp:(double)timestamp;
@end

@implementation ARMeshList

- (void)setMeshList:(CV3DReconMeshList *)list updatedAnchors:(id)anchors removedAnchors:(id)removedAnchors timestamp:(double)timestamp
{
  anchorsCopy = anchors;
  removedAnchorsCopy = removedAnchors;
  if (self->_meshList)
  {
    CV3DReconMeshListRelease();
  }

  self->_timestamp = timestamp;
  self->_meshList = list;
  [(ARMeshList *)self setUpdatedAnchors:anchorsCopy];
  [(ARMeshList *)self setRemovedAnchors:removedAnchorsCopy];
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