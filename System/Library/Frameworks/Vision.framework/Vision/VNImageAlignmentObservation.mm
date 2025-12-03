@interface VNImageAlignmentObservation
- (BOOL)isEqual:(id)equal;
- (CGAffineTransform)alignmentTransform;
- (VNImageAlignmentObservation)initWithCoder:(id)coder;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setAlignmentTransform:(CGAffineTransform *)transform;
@end

@implementation VNImageAlignmentObservation

- (void)setAlignmentTransform:(CGAffineTransform *)transform
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
    v13.super_class = VNImageAlignmentObservation;
    if ([(VNObservation *)&v13 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = equalCopy;
      referenceImageSignature = [(VNImageAlignmentObservation *)self referenceImageSignature];
      referenceImageSignature2 = [(VNImageAlignmentObservation *)v5 referenceImageSignature];
      v8 = VisionCoreEqualOrNilObjects();

      if (v8)
      {
        floatingImageSignature = [(VNImageAlignmentObservation *)self floatingImageSignature];
        floatingImageSignature2 = [(VNImageAlignmentObservation *)v5 floatingImageSignature];
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
  referenceImageSignature = [(VNImageAlignmentObservation *)self referenceImageSignature];
  v5 = [referenceImageSignature hash];

  floatingImageSignature = [(VNImageAlignmentObservation *)self floatingImageSignature];
  v7 = [floatingImageSignature hash] ^ __ROR8__(v5 ^ __ROR8__(v3, 51), 51);

  return v7;
}

- (id)vn_cloneObject
{
  v6.receiver = self;
  v6.super_class = VNImageAlignmentObservation;
  vn_cloneObject = [(VNObservation *)&v6 vn_cloneObject];
  v4 = vn_cloneObject;
  if (vn_cloneObject)
  {
    [vn_cloneObject setReferenceImageSignature:self->_referenceImageSignature];
    [v4 setFloatingImageSignature:self->_floatingImageSignature];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = VNImageAlignmentObservation;
  [(VNObservation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_referenceImageSignature forKey:@"referenceImageSignature"];
  [coderCopy encodeObject:self->_floatingImageSignature forKey:@"floatingImageSignature"];
}

- (VNImageAlignmentObservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = VNImageAlignmentObservation;
  v5 = [(VNObservation *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"referenceImageSignature"];
    referenceImageSignature = v5->_referenceImageSignature;
    v5->_referenceImageSignature = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"floatingImageSignature"];
    floatingImageSignature = v5->_floatingImageSignature;
    v5->_floatingImageSignature = v8;

    v10 = v5;
  }

  return v5;
}

@end