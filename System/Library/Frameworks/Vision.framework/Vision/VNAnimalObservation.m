@interface VNAnimalObservation
- (BOOL)isEqual:(id)a3;
- (VNAnimalObservation)initWithAnimalprint:(id)a3 confidence:(float)a4;
- (VNAnimalObservation)initWithCoder:(id)a3;
- (VNAnimalObservation)initWithOriginatingRequestSpecifier:(id)a3 boundingBox:(CGRect)a4 confidence:(float)a5 labels:(id)a6 groupId:(id)a7 animalprint:(id)a8;
- (id)VNEntityIdentificationModelPrintWithOriginatingRequestSpecifier:(id)a3 error:(id *)a4;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNAnimalObservation

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = VNAnimalObservation;
    if ([(VNRecognizedObjectObservation *)&v10 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = v4;
      v6 = [(VNAnimalObservation *)self animalprint];
      v7 = [(VNAnimalObservation *)v5 animalprint];
      v8 = VisionCoreEqualOrNilObjects();
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = VNAnimalObservation;
  v3 = [(VNRecognizedObjectObservation *)&v7 hash];
  v4 = [(VNAnimalObservation *)self animalprint];
  v5 = [v4 hash] ^ __ROR8__(v3, 51);

  return v5;
}

- (id)vn_cloneObject
{
  v7.receiver = self;
  v7.super_class = VNAnimalObservation;
  v3 = [(VNRecognizedObjectObservation *)&v7 vn_cloneObject];
  if (v3)
  {
    v4 = [(VNAnimalprint *)self->_animalprint copy];
    v5 = v3[22];
    v3[22] = v4;
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = VNAnimalObservation;
  [(VNRecognizedObjectObservation *)&v5 encodeWithCoder:v4];
  [v4 vn_encodeCodingVersion:0 forKey:@"VNAnimalObservation"];
  [v4 encodeObject:self->_animalprint forKey:@"anmlPrnt"];
}

- (VNAnimalObservation)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = VNAnimalObservation;
  v5 = [(VNRecognizedObjectObservation *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 vn_decodeCodingVersionForKey:@"VNAnimalObservation"];
    if (!v6)
    {
      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"anmlPrnt"];
      animalprint = v5->_animalprint;
      v5->_animalprint = v10;

      v9 = v5;
      goto LABEL_6;
    }

    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to unarchive %@ object due to coding version mismatch: Currently supported: %u; encoded: %u", objc_opt_class(), 0, v6];
    v8 = [VNError errorForInternalErrorWithLocalizedDescription:v7];
    [v4 failWithError:v8];
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (VNAnimalObservation)initWithOriginatingRequestSpecifier:(id)a3 boundingBox:(CGRect)a4 confidence:(float)a5 labels:(id)a6 groupId:(id)a7 animalprint:(id)a8
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v17 = a3;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v27.receiver = self;
  v27.super_class = VNAnimalObservation;
  *&v21 = a5;
  v22 = [(VNRecognizedObjectObservation *)&v27 initWithOriginatingRequestSpecifier:v17 boundingBox:v18 confidence:0 labels:v19 segmentationMask:x groupId:y, width, height, v21];
  if (v22)
  {
    v23 = [v20 copy];
    animalprint = v22->_animalprint;
    v22->_animalprint = v23;

    v25 = v22;
  }

  return v22;
}

- (VNAnimalObservation)initWithAnimalprint:(id)a3 confidence:(float)a4
{
  v6 = a3;
  v7 = [v6 originatingRequestSpecifier];
  *&v8 = a4;
  v9 = [(VNAnimalObservation *)self initWithOriginatingRequestSpecifier:v7 boundingBox:MEMORY[0x1E695E0F0] confidence:0 labels:v6 groupId:0.0 animalprint:0.0, 1.0, 1.0, v8];

  return v9;
}

- (id)VNEntityIdentificationModelPrintWithOriginatingRequestSpecifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(VNAnimalObservation *)self animalprint];
  v8 = _validatedEntityPrintOriginatingRequestSpecifierCompatibility(self, @"animalprint", v7, v6, a4);

  return v8;
}

@end