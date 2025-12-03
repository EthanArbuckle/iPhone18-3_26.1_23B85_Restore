@interface VNANFDDetectedObject
- (VNANFDDetectedObject)initWithObjectType:(int64_t)type boundingBox:(CGRect)box confidence:(float)confidence rotationAngle:(float)angle yawAngle:(float)yawAngle pitchAngle:(float)pitchAngle labelKey:(int)key groupId:(int)self0;
- (id)description;
@end

@implementation VNANFDDetectedObject

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13.receiver = self;
  v13.super_class = VNANFDDetectedObject;
  v4 = [(VNEspressoDetectedObject *)&v13 description];
  labelKey = [(VNANFDDetectedObject *)self labelKey];
  [(VNANFDDetectedObject *)self rotationAngle];
  v7 = v6;
  [(VNANFDDetectedObject *)self yawAngle];
  v9 = v8;
  [(VNANFDDetectedObject *)self pitchAngle];
  v11 = [v3 initWithFormat:@"%@ labelKey = %d; rotationAngle = %f; yawAngle = %f, pitchAngle = %f, groupID = %d", v4, labelKey, v7, v9, v10, -[VNANFDDetectedObject groupId](self, "groupId")];

  return v11;
}

- (VNANFDDetectedObject)initWithObjectType:(int64_t)type boundingBox:(CGRect)box confidence:(float)confidence rotationAngle:(float)angle yawAngle:(float)yawAngle pitchAngle:(float)pitchAngle labelKey:(int)key groupId:(int)self0
{
  v19.receiver = self;
  v19.super_class = VNANFDDetectedObject;
  v15 = [(VNEspressoDetectedObject *)&v19 initWithObjectType:type boundingBox:box.origin.x confidence:box.origin.y, box.size.width, box.size.height];
  v16 = v15;
  if (v15)
  {
    v15->_rotationAngle = angle;
    v15->_yawAngle = yawAngle;
    v15->_pitchAngle = pitchAngle;
    v15->_labelKey = key;
    v15->_groupId = id;
    v17 = v15;
  }

  return v16;
}

@end