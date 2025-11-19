@interface ABPKTrackedObject
- (ABPKTrackedObject)initWithObjectID:(unint64_t)a3 category:(id)a4 boundingBox:(CGRect)a5 confidence:(unint64_t)a6;
- (CGRect)boundingBox;
@end

@implementation ABPKTrackedObject

- (ABPKTrackedObject)initWithObjectID:(unint64_t)a3 category:(id)a4 boundingBox:(CGRect)a5 confidence:(unint64_t)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v14 = a4;
  v18.receiver = self;
  v18.super_class = ABPKTrackedObject;
  v15 = [(ABPKTrackedObject *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_objectID = a3;
    objc_storeStrong(&v15->_category, a4);
    v16->_boundingBox.origin.x = x;
    v16->_boundingBox.origin.y = y;
    v16->_boundingBox.size.width = width;
    v16->_boundingBox.size.height = height;
    v16->_confidence = a6;
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