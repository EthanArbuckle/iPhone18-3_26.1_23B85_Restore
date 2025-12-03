@interface AXANFDDetectedObject
- (AXANFDDetectedObject)initWithObjectType:(int64_t)type boundingBox:(CGRect)box confidence:(float)confidence rotationAngle:(float)angle yawAngle:(float)yawAngle labelKey:(int)key;
@end

@implementation AXANFDDetectedObject

- (AXANFDDetectedObject)initWithObjectType:(int64_t)type boundingBox:(CGRect)box confidence:(float)confidence rotationAngle:(float)angle yawAngle:(float)yawAngle labelKey:(int)key
{
  v15.receiver = self;
  v15.super_class = AXANFDDetectedObject;
  v11 = [(AXVNEspressoDetectedObject *)&v15 initWithObjectType:type boundingBox:box.origin.x confidence:box.origin.y, box.size.width, box.size.height];
  v12 = v11;
  if (v11)
  {
    v11->_rotationAngle = angle;
    v11->_yawAngle = yawAngle;
    v11->_labelKey = key;
    v13 = v11;
  }

  return v12;
}

@end