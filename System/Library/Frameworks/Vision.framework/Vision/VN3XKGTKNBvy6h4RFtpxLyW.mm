@interface VN3XKGTKNBvy6h4RFtpxLyW
- (BOOL)isEqual:(id)equal;
- (VN3XKGTKNBvy6h4RFtpxLyW)initWithCoder:(id)coder;
- (VN3XKGTKNBvy6h4RFtpxLyW)initWithOriginatingRequestSpecifier:(id)specifier imageSignatureprint:(id)signatureprint imageSignatureHash:(id)hash;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VN3XKGTKNBvy6h4RFtpxLyW

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = VN3XKGTKNBvy6h4RFtpxLyW;
    if ([(VNObservation *)&v13 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = equalCopy;
      imageSignatureprint = [(VN3XKGTKNBvy6h4RFtpxLyW *)self imageSignatureprint];
      imageSignatureprint2 = [(VN3XKGTKNBvy6h4RFtpxLyW *)v5 imageSignatureprint];
      v8 = [imageSignatureprint isEqual:imageSignatureprint2];

      if (v8)
      {
        imageSignatureHash = [(VN3XKGTKNBvy6h4RFtpxLyW *)self imageSignatureHash];
        imageSignatureHash2 = [(VN3XKGTKNBvy6h4RFtpxLyW *)v5 imageSignatureHash];
        v11 = [imageSignatureHash isEqual:imageSignatureHash2];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = VN3XKGTKNBvy6h4RFtpxLyW;
  v3 = [(VNObservation *)&v9 hash];
  imageSignatureprint = [(VN3XKGTKNBvy6h4RFtpxLyW *)self imageSignatureprint];
  v5 = [imageSignatureprint hash];

  imageSignatureHash = [(VN3XKGTKNBvy6h4RFtpxLyW *)self imageSignatureHash];
  v7 = [imageSignatureHash hash] ^ __ROR8__(v5 ^ __ROR8__(v3, 51), 51);

  return v7;
}

- (id)vn_cloneObject
{
  v9.receiver = self;
  v9.super_class = VN3XKGTKNBvy6h4RFtpxLyW;
  vn_cloneObject = [(VNObservation *)&v9 vn_cloneObject];
  if (vn_cloneObject)
  {
    v4 = [(VN6Ac6Cyl5O5oK19HboyMBR *)self->_imageSignatureprint copy];
    v5 = vn_cloneObject[12];
    vn_cloneObject[12] = v4;

    v6 = [(VN6B8mkraBUpwUqskMYPtS3 *)self->_imageSignatureHash copy];
    v7 = vn_cloneObject[13];
    vn_cloneObject[13] = v6;
  }

  return vn_cloneObject;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = VN3XKGTKNBvy6h4RFtpxLyW;
  [(VNObservation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy vn_encodeCodingVersion:0 forKey:@"VNImageHashSignatureObservation"];
  [coderCopy encodeObject:self->_imageSignatureprint forKey:@"sgnPrnt"];
  [coderCopy encodeObject:self->_imageSignatureHash forKey:@"sgnHash"];
}

- (VN3XKGTKNBvy6h4RFtpxLyW)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = VN3XKGTKNBvy6h4RFtpxLyW;
  v5 = [(VNObservation *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy vn_decodeCodingVersionForKey:@"VNImageHashSignatureObservation"];
    if (!v6)
    {
      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sgnPrnt"];
      imageSignatureprint = v5->_imageSignatureprint;
      v5->_imageSignatureprint = v10;

      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sgnHash"];
      imageSignatureHash = v5->_imageSignatureHash;
      v5->_imageSignatureHash = v12;

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

- (VN3XKGTKNBvy6h4RFtpxLyW)initWithOriginatingRequestSpecifier:(id)specifier imageSignatureprint:(id)signatureprint imageSignatureHash:(id)hash
{
  specifierCopy = specifier;
  signatureprintCopy = signatureprint;
  hashCopy = hash;
  v18.receiver = self;
  v18.super_class = VN3XKGTKNBvy6h4RFtpxLyW;
  v11 = [(VNObservation *)&v18 initWithOriginatingRequestSpecifier:specifierCopy];
  if (v11)
  {
    v12 = [signatureprintCopy copy];
    imageSignatureprint = v11->_imageSignatureprint;
    v11->_imageSignatureprint = v12;

    v14 = [hashCopy copy];
    imageSignatureHash = v11->_imageSignatureHash;
    v11->_imageSignatureHash = v14;

    v16 = v11;
  }

  return v11;
}

@end