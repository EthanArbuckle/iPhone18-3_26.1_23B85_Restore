@interface VNHumanObservation
- (BOOL)isEqual:(id)equal;
- (VNHumanObservation)initWithCoder:(id)coder;
- (VNHumanObservation)initWithOriginatingRequestSpecifier:(id)specifier boundingBox:(CGRect)box upperBodyOnly:(BOOL)only confidence:(float)confidence;
- (id)VNEntityIdentificationModelPrintWithOriginatingRequestSpecifier:(id)specifier error:(id *)error;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setTorsoprint:(id)torsoprint;
@end

@implementation VNHumanObservation

- (id)VNEntityIdentificationModelPrintWithOriginatingRequestSpecifier:(id)specifier error:(id *)error
{
  specifierCopy = specifier;
  torsoprint = [(VNHumanObservation *)self torsoprint];
  v8 = _validatedEntityPrintOriginatingRequestSpecifierCompatibility(self, @"torsoprint", torsoprint, specifierCopy, error);

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = VNHumanObservation;
    if ([(VNDetectedObjectObservation *)&v12 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = equalCopy;
      torsoprint = [(VNHumanObservation *)self torsoprint];
      torsoprint2 = [(VNHumanObservation *)v5 torsoprint];
      v8 = VisionCoreEqualOrNilObjects();

      if (v8)
      {
        upperBodyOnly = [(VNHumanObservation *)self upperBodyOnly];
        v10 = upperBodyOnly ^ [(VNHumanObservation *)v5 upperBodyOnly]^ 1;
      }

      else
      {
        LOBYTE(v10) = 0;
      }
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = VNHumanObservation;
  v3 = [(VNDetectedObjectObservation *)&v9 hash];
  torsoprint = [(VNHumanObservation *)self torsoprint];
  v5 = [torsoprint hash] ^ __ROR8__(v3, 51);

  upperBodyOnly = [(VNHumanObservation *)self upperBodyOnly];
  v7 = 21845;
  if (upperBodyOnly)
  {
    v7 = 43690;
  }

  return v7 ^ __ROR8__(v5, 51);
}

- (id)vn_cloneObject
{
  v7.receiver = self;
  v7.super_class = VNHumanObservation;
  vn_cloneObject = [(VNDetectedObjectObservation *)&v7 vn_cloneObject];
  if (vn_cloneObject)
  {
    v4 = [(VNTorsoprint *)self->_torsoprint copy];
    v5 = *(vn_cloneObject + 160);
    *(vn_cloneObject + 160) = v4;

    *(vn_cloneObject + 168) = self->_upperBodyOnly;
  }

  return vn_cloneObject;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = VNHumanObservation;
  [(VNDetectedObjectObservation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy vn_encodeCodingVersion:0 forKey:@"VNHumanObservation"];
  [coderCopy encodeObject:self->_torsoprint forKey:@"trsPrnt"];
  [coderCopy encodeBool:self->_upperBodyOnly forKey:@"upBdyOnly"];
}

- (VNHumanObservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = VNHumanObservation;
  v5 = [(VNDetectedObjectObservation *)&v13 initWithCoder:coderCopy];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [coderCopy vn_decodeCodingVersionForKey:@"VNHumanObservation"];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to unarchive %@ object due to coding version mismatch: Currently supported: %u; encoded: %u", objc_opt_class(), 0, v6];
    v8 = [VNError errorForInternalErrorWithLocalizedDescription:v7];
    [coderCopy failWithError:v8];

LABEL_4:
    v9 = 0;
    goto LABEL_8;
  }

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trsPrnt"];
  torsoprint = v5->_torsoprint;
  v5->_torsoprint = v10;

  v5->_upperBodyOnly = 1;
  if ([coderCopy containsValueForKey:@"upBdyOnly"])
  {
    v5->_upperBodyOnly = [coderCopy decodeBoolForKey:@"upBdyOnly"];
  }

  v9 = v5;
LABEL_8:

  return v9;
}

- (VNHumanObservation)initWithOriginatingRequestSpecifier:(id)specifier boundingBox:(CGRect)box upperBodyOnly:(BOOL)only confidence:(float)confidence
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  specifierCopy = specifier;
  v20.receiver = self;
  v20.super_class = VNHumanObservation;
  height = [(VNDetectedObjectObservation *)&v20 initWithOriginatingRequestSpecifier:specifierCopy boundingBox:x, y, width, height];
  v16 = height;
  if (height)
  {
    *&v15 = confidence;
    [(VNObservation *)height setConfidence:v15];
    torsoprint = v16->_torsoprint;
    v16->_torsoprint = 0;

    v16->_upperBodyOnly = only;
    v18 = v16;
  }

  return v16;
}

- (void)setTorsoprint:(id)torsoprint
{
  torsoprintCopy = torsoprint;
  v4 = [torsoprintCopy copy];
  torsoprint = self->_torsoprint;
  self->_torsoprint = v4;
}

@end