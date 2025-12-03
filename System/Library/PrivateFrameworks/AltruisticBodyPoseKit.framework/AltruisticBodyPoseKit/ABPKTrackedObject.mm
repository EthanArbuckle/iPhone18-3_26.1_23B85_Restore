@interface ABPKTrackedObject
- (ABPKTrackedObject)initWithObjectID:(unint64_t)d category:(id)category boundingBox:(CGRect)box confidence:(unint64_t)confidence;
- (CGRect)boundingBox;
@end

@implementation ABPKTrackedObject

- (ABPKTrackedObject)initWithObjectID:(unint64_t)d category:(id)category boundingBox:(CGRect)box confidence:(unint64_t)confidence
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  categoryCopy = category;
  v18.receiver = self;
  v18.super_class = ABPKTrackedObject;
  v15 = [(ABPKTrackedObject *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_objectID = d;
    objc_storeStrong(&v15->_category, category);
    v16->_boundingBox.origin.x = x;
    v16->_boundingBox.origin.y = y;
    v16->_boundingBox.size.width = width;
    v16->_boundingBox.size.height = height;
    v16->_confidence = confidence;
  }

  return v16;
}

- (CGRect)boundingBox
{
  x = self->_boundingBox.origin.x;
  y = self->_boundingBox.origin.y;
  width = self->_boundingBox.size.width;
  height = self->_boundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end