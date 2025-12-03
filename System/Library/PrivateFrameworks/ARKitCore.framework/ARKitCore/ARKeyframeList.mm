@interface ARKeyframeList
- (void)dealloc;
- (void)setKeyframeList:(CV3DReconKeyframeList *)list updatedAnchors:(id)anchors removedAnchors:(id)removedAnchors timestamp:(double)timestamp;
@end

@implementation ARKeyframeList

- (void)setKeyframeList:(CV3DReconKeyframeList *)list updatedAnchors:(id)anchors removedAnchors:(id)removedAnchors timestamp:(double)timestamp
{
  anchorsCopy = anchors;
  removedAnchorsCopy = removedAnchors;
  if (self->_keyframeList)
  {
    CV3DReconKeyframeListRelease();
  }

  self->_timestamp = timestamp;
  self->_keyframeList = list;
  [(ARKeyframeList *)self setUpdatedAnchors:anchorsCopy];
  [(ARKeyframeList *)self setRemovedAnchors:removedAnchorsCopy];
  if (self->_keyframeList)
  {
    CV3DReconKeyframeListRetain();
  }
}

- (void)dealloc
{
  CV3DReconKeyframeListRelease();
  v3.receiver = self;
  v3.super_class = ARKeyframeList;
  [(ARKeyframeList *)&v3 dealloc];
}

@end