@interface VNRecognizedPoints3DObservation
- (BOOL)isEqual:(id)a3;
- (VNRecognizedPoints3DObservation)initWithCoder:(id)a3;
- (VNRecognizedPoints3DObservation)initWithOriginatingRequestSpecifier:(id)a3 keypointsReturningObject:(id)a4;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNRecognizedPoints3DObservation

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = VNRecognizedPoints3DObservation;
  return [(VNRecognizedPoints3DSpecifier *)self->_specifier hash]^ __ROR8__([(VNObservation *)&v3 hash], 51);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = VNRecognizedPoints3DObservation;
  if ([(VNObservation *)&v8 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = self->_specifier;
    v6 = VisionCoreEqualOrNilObjects();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)vn_cloneObject
{
  v7.receiver = self;
  v7.super_class = VNRecognizedPoints3DObservation;
  v3 = [(VNObservation *)&v7 vn_cloneObject];
  if (v3)
  {
    v4 = [(VNRecognizedPoints3DSpecifier *)self->_specifier copy];
    v5 = v3[12];
    v3[12] = v4;
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6.receiver = self;
  v6.super_class = VNRecognizedPoints3DObservation;
  [(VNObservation *)&v6 encodeWithCoder:v4];
  [v4 encodeObject:self->_specifier forKey:@"3DPtSpec"];
  objc_autoreleasePoolPop(v5);
}

- (VNRecognizedPoints3DObservation)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VNRecognizedPoints3DObservation;
  v5 = [(VNObservation *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"3DPtSpec"];
    specifier = v5->_specifier;
    v5->_specifier = v6;
  }

  return v5;
}

- (VNRecognizedPoints3DObservation)initWithOriginatingRequestSpecifier:(id)a3 keypointsReturningObject:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = VNRecognizedPoints3DObservation;
  v8 = [(VNObservation *)&v13 initWithOriginatingRequestSpecifier:v6];
  if (v8)
  {
    if ([v7 isMemberOfClass:objc_opt_class()])
    {
      v9 = [[VNHumanBodyPose3DSpecifier alloc] initWithHumanBody3DOutput:v7 originatingRequestSpecifier:v6];
      specifier = v8->_specifier;
      v8->_specifier = &v9->super;
    }

    v11 = v8;
  }

  return v8;
}

@end