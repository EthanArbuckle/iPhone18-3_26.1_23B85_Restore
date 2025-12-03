@interface VNImageTranslationAlignmentObservation
- (BOOL)isEqual:(id)equal;
- (CGAffineTransform)alignmentTransform;
- (CGAffineTransform)alignmentTransformInTopLeftOrigin:(SEL)origin orientation:(BOOL)orientation;
- (VNImageTranslationAlignmentObservation)init;
- (VNImageTranslationAlignmentObservation)initWithCoder:(id)coder;
- (id)description;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setAlignmentTransform:(CGAffineTransform *)transform;
@end

@implementation VNImageTranslationAlignmentObservation

- (void)setAlignmentTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_alignmentTransform.a = *&transform->a;
  *&self->_alignmentTransform.c = v4;
  *&self->_alignmentTransform.tx = v3;
}

- (CGAffineTransform)alignmentTransform
{
  v3 = *&self[2].tx;
  *&retstr->a = *&self[2].c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[3].a;
  return self;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12.receiver = self;
  v12.super_class = VNImageTranslationAlignmentObservation;
  v4 = [(VNObservation *)&v12 description];
  [(VNImageTranslationAlignmentObservation *)self alignmentTransform];
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"[%g %g %g %g %g %g]", v8, v9, v10, v11];
  v6 = [v3 initWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = VNImageTranslationAlignmentObservation;
    if ([(VNImageAlignmentObservation *)&v10 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = equalCopy;
      [(VNImageTranslationAlignmentObservation *)self alignmentTransform];
      if (v5)
      {
        [(VNImageTranslationAlignmentObservation *)v5 alignmentTransform];
      }

      else
      {
        memset(&v8, 0, sizeof(v8));
      }

      v6 = CGAffineTransformEqualToTransform(&t1, &v8);
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = VNImageTranslationAlignmentObservation;
  v3 = [(VNImageAlignmentObservation *)&v6 hash];
  [(VNImageTranslationAlignmentObservation *)self alignmentTransform];
  return VNHashCGAffineTransform(&v5) ^ __ROR8__(v3, 51);
}

- (id)vn_cloneObject
{
  v7.receiver = self;
  v7.super_class = VNImageTranslationAlignmentObservation;
  vn_cloneObject = [(VNImageAlignmentObservation *)&v7 vn_cloneObject];
  if (vn_cloneObject)
  {
    v5 = *&self->_alignmentTransform.c;
    v4 = *&self->_alignmentTransform.tx;
    vn_cloneObject[7] = *&self->_alignmentTransform.a;
    vn_cloneObject[8] = v5;
    vn_cloneObject[9] = v4;
  }

  return vn_cloneObject;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = VNImageTranslationAlignmentObservation;
  [(VNImageAlignmentObservation *)&v7 encodeWithCoder:coderCopy];
  v5 = *&self->_alignmentTransform.c;
  v6[0] = *&self->_alignmentTransform.a;
  v6[1] = v5;
  v6[2] = *&self->_alignmentTransform.tx;
  [coderCopy vn_encodeCGAffineTransform:v6 forKey:@"alignmentTransform"];
}

- (VNImageTranslationAlignmentObservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = VNImageTranslationAlignmentObservation;
  v5 = [(VNImageAlignmentObservation *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    if (coderCopy)
    {
      [coderCopy vn_decodeCGAffineTransformForKey:@"alignmentTransform"];
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
      v8 = 0u;
    }

    *&v5->_alignmentTransform.a = v8;
    *&v5->_alignmentTransform.c = v9;
    *&v5->_alignmentTransform.tx = v10;
    v6 = v5;
  }

  return v5;
}

- (VNImageTranslationAlignmentObservation)init
{
  v8.receiver = self;
  v8.super_class = VNImageTranslationAlignmentObservation;
  v2 = [(VNObservation *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v5 = *(MEMORY[0x1E695EFD0] + 16);
    v4 = *(MEMORY[0x1E695EFD0] + 32);
    *&v2->_alignmentTransform.a = *MEMORY[0x1E695EFD0];
    *&v2->_alignmentTransform.c = v5;
    *&v2->_alignmentTransform.tx = v4;
    v6 = v2;
  }

  return v3;
}

- (CGAffineTransform)alignmentTransformInTopLeftOrigin:(SEL)origin orientation:(BOOL)orientation
{
  orientationCopy = orientation;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  [(VNImageTranslationAlignmentObservation *)self alignmentTransform];
  v8 = v15;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  VNAffineTransformForVisionToTopLeftOriginOrientation(orientationCopy, a5, &v10);
  return CGAffineTransformMakeTranslation(retstr, *&v12 + *(&v8 + 1) * *&v11 + *&v10 * *&v8, *(&v12 + 1) + *(&v8 + 1) * *(&v11 + 1) + *(&v10 + 1) * *&v8);
}

@end