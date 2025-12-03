@interface VNRecognizedPoints3DObservation
- (BOOL)isEqual:(id)equal;
- (VNRecognizedPoints3DObservation)initWithCoder:(id)coder;
- (VNRecognizedPoints3DObservation)initWithOriginatingRequestSpecifier:(id)specifier keypointsReturningObject:(id)object;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNRecognizedPoints3DObservation

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = VNRecognizedPoints3DObservation;
  return [(VNRecognizedPoints3DSpecifier *)self->_specifier hash]^ __ROR8__([(VNObservation *)&v3 hash], 51);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = VNRecognizedPoints3DObservation;
  if ([(VNObservation *)&v8 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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
  vn_cloneObject = [(VNObservation *)&v7 vn_cloneObject];
  if (vn_cloneObject)
  {
    v4 = [(VNRecognizedPoints3DSpecifier *)self->_specifier copy];
    v5 = vn_cloneObject[12];
    vn_cloneObject[12] = v4;
  }

  return vn_cloneObject;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6.receiver = self;
  v6.super_class = VNRecognizedPoints3DObservation;
  [(VNObservation *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_specifier forKey:@"3DPtSpec"];
  objc_autoreleasePoolPop(v5);
}

- (VNRecognizedPoints3DObservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = VNRecognizedPoints3DObservation;
  v5 = [(VNObservation *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"3DPtSpec"];
    specifier = v5->_specifier;
    v5->_specifier = v6;
  }

  return v5;
}

- (VNRecognizedPoints3DObservation)initWithOriginatingRequestSpecifier:(id)specifier keypointsReturningObject:(id)object
{
  specifierCopy = specifier;
  objectCopy = object;
  v13.receiver = self;
  v13.super_class = VNRecognizedPoints3DObservation;
  v8 = [(VNObservation *)&v13 initWithOriginatingRequestSpecifier:specifierCopy];
  if (v8)
  {
    if ([objectCopy isMemberOfClass:objc_opt_class()])
    {
      v9 = [[VNHumanBodyPose3DSpecifier alloc] initWithHumanBody3DOutput:objectCopy originatingRequestSpecifier:specifierCopy];
      specifier = v8->_specifier;
      v8->_specifier = &v9->super;
    }

    v11 = v8;
  }

  return v8;
}

@end