@interface AXVNEspressoDetectedObject
- (AXVNEspressoDetectedObject)initWithObjectType:(int64_t)type boundingBox:(CGRect)box confidence:(float)confidence;
- (CGPoint)center;
- (CGRect)bounds;
@end

@implementation AXVNEspressoDetectedObject

- (AXVNEspressoDetectedObject)initWithObjectType:(int64_t)type boundingBox:(CGRect)box confidence:(float)confidence
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  v15.receiver = self;
  v15.super_class = AXVNEspressoDetectedObject;
  v11 = [(AXVNEspressoDetectedObject *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v11->_objectType = type;
    v11->_bounds.origin.x = x;
    v11->_bounds.origin.y = y;
    v11->_bounds.size.width = width;
    v11->_bounds.size.height = height;
    v11->_confidence = confidence;
    v13 = v11;
  }

  return v12;
}

- (CGPoint)center
{
  [(AXVNEspressoDetectedObject *)self bounds];
  v4 = v3 + v2 * 0.5;
  v7 = v6 + v5 * 0.5;
  result.y = v7;
  result.x = v4;
  return result;
}

- (CGRect)bounds
{
  objc_copyStruct(v6, &self->_bounds, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end