@interface VNHumanObservation
- (BOOL)isEqual:(id)a3;
- (VNHumanObservation)initWithCoder:(id)a3;
- (VNHumanObservation)initWithOriginatingRequestSpecifier:(id)a3 boundingBox:(CGRect)a4 upperBodyOnly:(BOOL)a5 confidence:(float)a6;
- (id)VNEntityIdentificationModelPrintWithOriginatingRequestSpecifier:(id)a3 error:(id *)a4;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setTorsoprint:(id)a3;
@end

@implementation VNHumanObservation

- (id)VNEntityIdentificationModelPrintWithOriginatingRequestSpecifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(VNHumanObservation *)self torsoprint];
  v8 = _validatedEntityPrintOriginatingRequestSpecifierCompatibility(self, @"torsoprint", v7, v6, a4);

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = VNHumanObservation;
    if ([(VNDetectedObjectObservation *)&v12 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = v4;
      v6 = [(VNHumanObservation *)self torsoprint];
      v7 = [(VNHumanObservation *)v5 torsoprint];
      v8 = VisionCoreEqualOrNilObjects();

      if (v8)
      {
        v9 = [(VNHumanObservation *)self upperBodyOnly];
        v10 = v9 ^ [(VNHumanObservation *)v5 upperBodyOnly]^ 1;
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
  v4 = [(VNHumanObservation *)self torsoprint];
  v5 = [v4 hash] ^ __ROR8__(v3, 51);

  v6 = [(VNHumanObservation *)self upperBodyOnly];
  v7 = 21845;
  if (v6)
  {
    v7 = 43690;
  }

  return v7 ^ __ROR8__(v5, 51);
}

- (id)vn_cloneObject
{
  v7.receiver = self;
  v7.super_class = VNHumanObservation;
  v3 = [(VNDetectedObjectObservation *)&v7 vn_cloneObject];
  if (v3)
  {
    v4 = [(VNTorsoprint *)self->_torsoprint copy];
    v5 = *(v3 + 160);
    *(v3 + 160) = v4;

    *(v3 + 168) = self->_upperBodyOnly;
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = VNHumanObservation;
  [(VNDetectedObjectObservation *)&v5 encodeWithCoder:v4];
  [v4 vn_encodeCodingVersion:0 forKey:@"VNHumanObservation"];
  [v4 encodeObject:self->_torsoprint forKey:@"trsPrnt"];
  [v4 encodeBool:self->_upperBodyOnly forKey:@"upBdyOnly"];
}

- (VNHumanObservation)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = VNHumanObservation;
  v5 = [(VNDetectedObjectObservation *)&v13 initWithCoder:v4];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [v4 vn_decodeCodingVersionForKey:@"VNHumanObservation"];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to unarchive %@ object due to coding version mismatch: Currently supported: %u; encoded: %u", objc_opt_class(), 0, v6];
    v8 = [VNError errorForInternalErrorWithLocalizedDescription:v7];
    [v4 failWithError:v8];

LABEL_4:
    v9 = 0;
    goto LABEL_8;
  }

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trsPrnt"];
  torsoprint = v5->_torsoprint;
  v5->_torsoprint = v10;

  v5->_upperBodyOnly = 1;
  if ([v4 containsValueForKey:@"upBdyOnly"])
  {
    v5->_upperBodyOnly = [v4 decodeBoolForKey:@"upBdyOnly"];
  }

  v9 = v5;
LABEL_8:

  return v9;
}

- (VNHumanObservation)initWithOriginatingRequestSpecifier:(id)a3 boundingBox:(CGRect)a4 upperBodyOnly:(BOOL)a5 confidence:(float)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3;
  v20.receiver = self;
  v20.super_class = VNHumanObservation;
  v14 = [(VNDetectedObjectObservation *)&v20 initWithOriginatingRequestSpecifier:v13 boundingBox:x, y, width, height];
  v16 = v14;
  if (v14)
  {
    *&v15 = a6;
    [(VNObservation *)v14 setConfidence:v15];
    torsoprint = v16->_torsoprint;
    v16->_torsoprint = 0;

    v16->_upperBodyOnly = a5;
    v18 = v16;
  }

  return v16;
}

- (void)setTorsoprint:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  torsoprint = self->_torsoprint;
  self->_torsoprint = v4;
}

@end