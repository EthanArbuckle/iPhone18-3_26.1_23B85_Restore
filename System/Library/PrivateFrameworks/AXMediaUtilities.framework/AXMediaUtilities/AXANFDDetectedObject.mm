@interface AXANFDDetectedObject
- (AXANFDDetectedObject)initWithObjectType:(int64_t)a3 boundingBox:(CGRect)a4 confidence:(float)a5 rotationAngle:(float)a6 yawAngle:(float)a7 labelKey:(int)a8;
@end

@implementation AXANFDDetectedObject

- (AXANFDDetectedObject)initWithObjectType:(int64_t)a3 boundingBox:(CGRect)a4 confidence:(float)a5 rotationAngle:(float)a6 yawAngle:(float)a7 labelKey:(int)a8
{
  v15.receiver = self;
  v15.super_class = AXANFDDetectedObject;
  v11 = [(AXVNEspressoDetectedObject *)&v15 initWithObjectType:a3 boundingBox:a4.origin.x confidence:a4.origin.y, a4.size.width, a4.size.height];
  v12 = v11;
  if (v11)
  {
    v11->_rotationAngle = a6;
    v11->_yawAngle = a7;
    v11->_labelKey = a8;
    v13 = v11;
  }

  return v12;
}

@end