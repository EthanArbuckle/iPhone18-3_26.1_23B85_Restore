@interface ARAnchorChangeSet
- (ARAnchorChangeSet)initWithAddedAnchors:(id)anchors updatedAnchors:(id)updatedAnchors removedAnchors:(id)removedAnchors externalAnchors:(id)externalAnchors;
@end

@implementation ARAnchorChangeSet

- (ARAnchorChangeSet)initWithAddedAnchors:(id)anchors updatedAnchors:(id)updatedAnchors removedAnchors:(id)removedAnchors externalAnchors:(id)externalAnchors
{
  anchorsCopy = anchors;
  updatedAnchorsCopy = updatedAnchors;
  removedAnchorsCopy = removedAnchors;
  externalAnchorsCopy = externalAnchors;
  v24.receiver = self;
  v24.super_class = ARAnchorChangeSet;
  v14 = [(ARAnchorChangeSet *)&v24 init];
  if (v14)
  {
    v15 = [anchorsCopy copy];
    addedAnchors = v14->_addedAnchors;
    v14->_addedAnchors = v15;

    v17 = [updatedAnchorsCopy copy];
    updatedAnchors = v14->_updatedAnchors;
    v14->_updatedAnchors = v17;

    v19 = [removedAnchorsCopy copy];
    removedAnchors = v14->_removedAnchors;
    v14->_removedAnchors = v19;

    v21 = [externalAnchorsCopy copy];
    externalAnchors = v14->_externalAnchors;
    v14->_externalAnchors = v21;
  }

  return v14;
}

@end