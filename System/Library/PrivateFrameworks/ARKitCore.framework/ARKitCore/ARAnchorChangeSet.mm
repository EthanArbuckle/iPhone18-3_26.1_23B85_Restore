@interface ARAnchorChangeSet
- (ARAnchorChangeSet)initWithAddedAnchors:(id)a3 updatedAnchors:(id)a4 removedAnchors:(id)a5 externalAnchors:(id)a6;
@end

@implementation ARAnchorChangeSet

- (ARAnchorChangeSet)initWithAddedAnchors:(id)a3 updatedAnchors:(id)a4 removedAnchors:(id)a5 externalAnchors:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = ARAnchorChangeSet;
  v14 = [(ARAnchorChangeSet *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    addedAnchors = v14->_addedAnchors;
    v14->_addedAnchors = v15;

    v17 = [v11 copy];
    updatedAnchors = v14->_updatedAnchors;
    v14->_updatedAnchors = v17;

    v19 = [v12 copy];
    removedAnchors = v14->_removedAnchors;
    v14->_removedAnchors = v19;

    v21 = [v13 copy];
    externalAnchors = v14->_externalAnchors;
    v14->_externalAnchors = v21;
  }

  return v14;
}

@end