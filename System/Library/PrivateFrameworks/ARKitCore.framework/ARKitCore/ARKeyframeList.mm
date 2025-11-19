@interface ARKeyframeList
- (void)dealloc;
- (void)setKeyframeList:(CV3DReconKeyframeList *)a3 updatedAnchors:(id)a4 removedAnchors:(id)a5 timestamp:(double)a6;
@end

@implementation ARKeyframeList

- (void)setKeyframeList:(CV3DReconKeyframeList *)a3 updatedAnchors:(id)a4 removedAnchors:(id)a5 timestamp:(double)a6
{
  v11 = a4;
  v10 = a5;
  if (self->_keyframeList)
  {
    CV3DReconKeyframeListRelease();
  }

  self->_timestamp = a6;
  self->_keyframeList = a3;
  [(ARKeyframeList *)self setUpdatedAnchors:v11];
  [(ARKeyframeList *)self setRemovedAnchors:v10];
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