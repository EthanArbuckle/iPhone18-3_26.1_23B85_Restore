@interface VNImageNeuralHashprintObservation
- (BOOL)isEqual:(id)equal;
- (VNImageNeuralHashprintObservation)initWithCoder:(id)coder;
- (VNImageNeuralHashprintObservation)initWithOriginatingRequestSpecifier:(id)specifier imageNeuralHashprint:(id)hashprint;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNImageNeuralHashprintObservation

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
    v10.super_class = VNImageNeuralHashprintObservation;
    if ([(VNObservation *)&v10 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = equalCopy;
      imageNeuralHashprint = [(VNImageNeuralHashprintObservation *)self imageNeuralHashprint];
      imageNeuralHashprint2 = [(VNImageNeuralHashprintObservation *)v5 imageNeuralHashprint];
      v8 = [imageNeuralHashprint isEqual:imageNeuralHashprint2];
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
  v7.super_class = VNImageNeuralHashprintObservation;
  v3 = [(VNObservation *)&v7 hash];
  imageNeuralHashprint = [(VNImageNeuralHashprintObservation *)self imageNeuralHashprint];
  v5 = [imageNeuralHashprint hash] ^ __ROR8__(v3, 51);

  return v5;
}

- (id)vn_cloneObject
{
  v7.receiver = self;
  v7.super_class = VNImageNeuralHashprintObservation;
  vn_cloneObject = [(VNObservation *)&v7 vn_cloneObject];
  if (vn_cloneObject)
  {
    v4 = [(VN6Ac6Cyl5O5oK19HboyMBR *)self->_imageNeuralHashprint copy];
    v5 = vn_cloneObject[12];
    vn_cloneObject[12] = v4;
  }

  return vn_cloneObject;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = VNImageNeuralHashprintObservation;
  [(VNObservation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy vn_encodeCodingVersion:0 forKey:@"VNImageNeuralHashprintObservation"];
  [coderCopy encodeObject:self->_imageNeuralHashprint forKey:@"nrlHshPrnt"];
}

- (VNImageNeuralHashprintObservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = VNImageNeuralHashprintObservation;
  v5 = [(VNObservation *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy vn_decodeCodingVersionForKey:@"VNImageNeuralHashprintObservation"];
    if (!v6)
    {
      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nrlHshPrnt"];
      imageNeuralHashprint = v5->_imageNeuralHashprint;
      v5->_imageNeuralHashprint = v10;

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

- (VNImageNeuralHashprintObservation)initWithOriginatingRequestSpecifier:(id)specifier imageNeuralHashprint:(id)hashprint
{
  specifierCopy = specifier;
  hashprintCopy = hashprint;
  v13.receiver = self;
  v13.super_class = VNImageNeuralHashprintObservation;
  v8 = [(VNObservation *)&v13 initWithOriginatingRequestSpecifier:specifierCopy];
  if (v8)
  {
    v9 = [hashprintCopy copy];
    imageNeuralHashprint = v8->_imageNeuralHashprint;
    v8->_imageNeuralHashprint = v9;

    v11 = v8;
  }

  return v8;
}

@end