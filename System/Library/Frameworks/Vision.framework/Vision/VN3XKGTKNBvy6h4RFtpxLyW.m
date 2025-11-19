@interface VN3XKGTKNBvy6h4RFtpxLyW
- (BOOL)isEqual:(id)a3;
- (VN3XKGTKNBvy6h4RFtpxLyW)initWithCoder:(id)a3;
- (VN3XKGTKNBvy6h4RFtpxLyW)initWithOriginatingRequestSpecifier:(id)a3 imageSignatureprint:(id)a4 imageSignatureHash:(id)a5;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VN3XKGTKNBvy6h4RFtpxLyW

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = VN3XKGTKNBvy6h4RFtpxLyW;
    if ([(VNObservation *)&v13 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = v4;
      v6 = [(VN3XKGTKNBvy6h4RFtpxLyW *)self imageSignatureprint];
      v7 = [(VN3XKGTKNBvy6h4RFtpxLyW *)v5 imageSignatureprint];
      v8 = [v6 isEqual:v7];

      if (v8)
      {
        v9 = [(VN3XKGTKNBvy6h4RFtpxLyW *)self imageSignatureHash];
        v10 = [(VN3XKGTKNBvy6h4RFtpxLyW *)v5 imageSignatureHash];
        v11 = [v9 isEqual:v10];
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
  v4 = [(VN3XKGTKNBvy6h4RFtpxLyW *)self imageSignatureprint];
  v5 = [v4 hash];

  v6 = [(VN3XKGTKNBvy6h4RFtpxLyW *)self imageSignatureHash];
  v7 = [v6 hash] ^ __ROR8__(v5 ^ __ROR8__(v3, 51), 51);

  return v7;
}

- (id)vn_cloneObject
{
  v9.receiver = self;
  v9.super_class = VN3XKGTKNBvy6h4RFtpxLyW;
  v3 = [(VNObservation *)&v9 vn_cloneObject];
  if (v3)
  {
    v4 = [(VN6Ac6Cyl5O5oK19HboyMBR *)self->_imageSignatureprint copy];
    v5 = v3[12];
    v3[12] = v4;

    v6 = [(VN6B8mkraBUpwUqskMYPtS3 *)self->_imageSignatureHash copy];
    v7 = v3[13];
    v3[13] = v6;
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = VN3XKGTKNBvy6h4RFtpxLyW;
  [(VNObservation *)&v5 encodeWithCoder:v4];
  [v4 vn_encodeCodingVersion:0 forKey:@"VNImageHashSignatureObservation"];
  [v4 encodeObject:self->_imageSignatureprint forKey:@"sgnPrnt"];
  [v4 encodeObject:self->_imageSignatureHash forKey:@"sgnHash"];
}

- (VN3XKGTKNBvy6h4RFtpxLyW)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = VN3XKGTKNBvy6h4RFtpxLyW;
  v5 = [(VNObservation *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 vn_decodeCodingVersionForKey:@"VNImageHashSignatureObservation"];
    if (!v6)
    {
      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sgnPrnt"];
      imageSignatureprint = v5->_imageSignatureprint;
      v5->_imageSignatureprint = v10;

      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sgnHash"];
      imageSignatureHash = v5->_imageSignatureHash;
      v5->_imageSignatureHash = v12;

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

- (VN3XKGTKNBvy6h4RFtpxLyW)initWithOriginatingRequestSpecifier:(id)a3 imageSignatureprint:(id)a4 imageSignatureHash:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = VN3XKGTKNBvy6h4RFtpxLyW;
  v11 = [(VNObservation *)&v18 initWithOriginatingRequestSpecifier:v8];
  if (v11)
  {
    v12 = [v9 copy];
    imageSignatureprint = v11->_imageSignatureprint;
    v11->_imageSignatureprint = v12;

    v14 = [v10 copy];
    imageSignatureHash = v11->_imageSignatureHash;
    v11->_imageSignatureHash = v14;

    v16 = v11;
  }

  return v11;
}

@end