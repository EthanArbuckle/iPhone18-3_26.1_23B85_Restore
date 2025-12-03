@interface VNAnimalObservation
- (BOOL)isEqual:(id)equal;
- (VNAnimalObservation)initWithAnimalprint:(id)animalprint confidence:(float)confidence;
- (VNAnimalObservation)initWithCoder:(id)coder;
- (VNAnimalObservation)initWithOriginatingRequestSpecifier:(id)specifier boundingBox:(CGRect)box confidence:(float)confidence labels:(id)labels groupId:(id)id animalprint:(id)animalprint;
- (id)VNEntityIdentificationModelPrintWithOriginatingRequestSpecifier:(id)specifier error:(id *)error;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNAnimalObservation

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = VNAnimalObservation;
    if ([(VNRecognizedObjectObservation *)&v10 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = equalCopy;
      animalprint = [(VNAnimalObservation *)self animalprint];
      animalprint2 = [(VNAnimalObservation *)v5 animalprint];
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
  animalprint = [(VNAnimalObservation *)self animalprint];
  v5 = [animalprint hash] ^ __ROR8__(v3, 51);

  return v5;
}

- (id)vn_cloneObject
{
  v7.receiver = self;
  v7.super_class = VNAnimalObservation;
  vn_cloneObject = [(VNRecognizedObjectObservation *)&v7 vn_cloneObject];
  if (vn_cloneObject)
  {
    v4 = [(VNAnimalprint *)self->_animalprint copy];
    v5 = vn_cloneObject[22];
    vn_cloneObject[22] = v4;
  }

  return vn_cloneObject;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = VNAnimalObservation;
  [(VNRecognizedObjectObservation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy vn_encodeCodingVersion:0 forKey:@"VNAnimalObservation"];
  [coderCopy encodeObject:self->_animalprint forKey:@"anmlPrnt"];
}

- (VNAnimalObservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = VNAnimalObservation;
  v5 = [(VNRecognizedObjectObservation *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy vn_decodeCodingVersionForKey:@"VNAnimalObservation"];
    if (!v6)
    {
      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"anmlPrnt"];
      animalprint = v5->_animalprint;
      v5->_animalprint = v10;

      v9 = v5;
      goto LABEL_6;
    }

    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to unarchive %@ object due to coding version mismatch: Currently supported: %u; encoded: %u", objc_opt_class(), 0, v6];
    v8 = [VNError errorForInternalErrorWithLocalizedDescription:v7];
    [coderCopy failWithError:v8];
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (VNAnimalObservation)initWithOriginatingRequestSpecifier:(id)specifier boundingBox:(CGRect)box confidence:(float)confidence labels:(id)labels groupId:(id)id animalprint:(id)animalprint
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  specifierCopy = specifier;
  labelsCopy = labels;
  idCopy = id;
  animalprintCopy = animalprint;
  v27.receiver = self;
  v27.super_class = VNAnimalObservation;
  *&v21 = confidence;
  v22 = [(VNRecognizedObjectObservation *)&v27 initWithOriginatingRequestSpecifier:specifierCopy boundingBox:labelsCopy confidence:0 labels:idCopy segmentationMask:x groupId:y, width, height, v21];
  if (v22)
  {
    v23 = [animalprintCopy copy];
    animalprint = v22->_animalprint;
    v22->_animalprint = v23;

    v25 = v22;
  }

  return v22;
}

- (VNAnimalObservation)initWithAnimalprint:(id)animalprint confidence:(float)confidence
{
  animalprintCopy = animalprint;
  originatingRequestSpecifier = [animalprintCopy originatingRequestSpecifier];
  *&v8 = confidence;
  v9 = [(VNAnimalObservation *)self initWithOriginatingRequestSpecifier:originatingRequestSpecifier boundingBox:MEMORY[0x1E695E0F0] confidence:0 labels:animalprintCopy groupId:0.0 animalprint:0.0, 1.0, 1.0, v8];

  return v9;
}

- (id)VNEntityIdentificationModelPrintWithOriginatingRequestSpecifier:(id)specifier error:(id *)error
{
  specifierCopy = specifier;
  animalprint = [(VNAnimalObservation *)self animalprint];
  v8 = _validatedEntityPrintOriginatingRequestSpecifierCompatibility(self, @"animalprint", animalprint, specifierCopy, error);

  return v8;
}

@end