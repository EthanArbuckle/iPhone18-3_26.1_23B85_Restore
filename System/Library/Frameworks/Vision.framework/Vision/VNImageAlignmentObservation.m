@interface VNImageAlignmentObservation
- (BOOL)isEqual:(id)a3;
- (CGAffineTransform)alignmentTransform;
- (VNImageAlignmentObservation)initWithCoder:(id)a3;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setAlignmentTransform:(CGAffineTransform *)a3;
@end

@implementation VNImageAlignmentObservation

- (void)setAlignmentTransform:(CGAffineTransform *)a3
{
  v3 = MEMORY[0x1E695DF30];
  v6 = NSStringFromSelector(a2);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 raise:*MEMORY[0x1E696A778] format:{@"%@ is not supported by %@", v6, v5}];
}

- (CGAffineTransform)alignmentTransform
{
  v3 = MEMORY[0x1E695EFD0];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v4;
  *&retstr->tx = *(v3 + 32);
  return self;
}

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
    v13.super_class = VNImageAlignmentObservation;
    if ([(VNObservation *)&v13 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = v4;
      v6 = [(VNImageAlignmentObservation *)self referenceImageSignature];
      v7 = [(VNImageAlignmentObservation *)v5 referenceImageSignature];
      v8 = VisionCoreEqualOrNilObjects();

      if (v8)
      {
        v9 = [(VNImageAlignmentObservation *)self floatingImageSignature];
        v10 = [(VNImageAlignmentObservation *)v5 floatingImageSignature];
        v11 = VisionCoreEqualOrNilObjects();
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
  v9.super_class = VNImageAlignmentObservation;
  v3 = [(VNObservation *)&v9 hash];
  v4 = [(VNImageAlignmentObservation *)self referenceImageSignature];
  v5 = [v4 hash];

  v6 = [(VNImageAlignmentObservation *)self floatingImageSignature];
  v7 = [v6 hash] ^ __ROR8__(v5 ^ __ROR8__(v3, 51), 51);

  return v7;
}

- (id)vn_cloneObject
{
  v6.receiver = self;
  v6.super_class = VNImageAlignmentObservation;
  v3 = [(VNObservation *)&v6 vn_cloneObject];
  v4 = v3;
  if (v3)
  {
    [v3 setReferenceImageSignature:self->_referenceImageSignature];
    [v4 setFloatingImageSignature:self->_floatingImageSignature];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = VNImageAlignmentObservation;
  [(VNObservation *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_referenceImageSignature forKey:@"referenceImageSignature"];
  [v4 encodeObject:self->_floatingImageSignature forKey:@"floatingImageSignature"];
}

- (VNImageAlignmentObservation)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = VNImageAlignmentObservation;
  v5 = [(VNObservation *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"referenceImageSignature"];
    referenceImageSignature = v5->_referenceImageSignature;
    v5->_referenceImageSignature = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"floatingImageSignature"];
    floatingImageSignature = v5->_floatingImageSignature;
    v5->_floatingImageSignature = v8;

    v10 = v5;
  }

  return v5;
}

@end