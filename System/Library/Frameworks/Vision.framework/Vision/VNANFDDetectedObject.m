@interface VNANFDDetectedObject
- (VNANFDDetectedObject)initWithObjectType:(int64_t)a3 boundingBox:(CGRect)a4 confidence:(float)a5 rotationAngle:(float)a6 yawAngle:(float)a7 pitchAngle:(float)a8 labelKey:(int)a9 groupId:(int)a10;
- (id)description;
@end

@implementation VNANFDDetectedObject

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13.receiver = self;
  v13.super_class = VNANFDDetectedObject;
  v4 = [(VNEspressoDetectedObject *)&v13 description];
  v5 = [(VNANFDDetectedObject *)self labelKey];
  [(VNANFDDetectedObject *)self rotationAngle];
  v7 = v6;
  [(VNANFDDetectedObject *)self yawAngle];
  v9 = v8;
  [(VNANFDDetectedObject *)self pitchAngle];
  v11 = [v3 initWithFormat:@"%@ labelKey = %d; rotationAngle = %f; yawAngle = %f, pitchAngle = %f, groupID = %d", v4, v5, v7, v9, v10, -[VNANFDDetectedObject groupId](self, "groupId")];

  return v11;
}

- (VNANFDDetectedObject)initWithObjectType:(int64_t)a3 boundingBox:(CGRect)a4 confidence:(float)a5 rotationAngle:(float)a6 yawAngle:(float)a7 pitchAngle:(float)a8 labelKey:(int)a9 groupId:(int)a10
{
  v19.receiver = self;
  v19.super_class = VNANFDDetectedObject;
  v15 = [(VNEspressoDetectedObject *)&v19 initWithObjectType:a3 boundingBox:a4.origin.x confidence:a4.origin.y, a4.size.width, a4.size.height];
  v16 = v15;
  if (v15)
  {
    v15->_rotationAngle = a6;
    v15->_yawAngle = a7;
    v15->_pitchAngle = a8;
    v15->_labelKey = a9;
    v15->_groupId = a10;
    v17 = v15;
  }

  return v16;
}

@end