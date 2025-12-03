@interface VNImageRegistration
+ (BOOL)computeTransform:(CGAffineTransform *)transform forRegisteringImageSignature:(id)signature withSignature:(id)withSignature minimumOverlap:(float)overlap error:(id *)error;
@end

@implementation VNImageRegistration

+ (BOOL)computeTransform:(CGAffineTransform *)transform forRegisteringImageSignature:(id)signature withSignature:(id)withSignature minimumOverlap:(float)overlap error:(id *)error
{
  signatureCopy = signature;
  withSignatureCopy = withSignature;
  signature = [signatureCopy signature];
  signature2 = [withSignatureCopy signature];
  v15 = signature2;
  v29 = 0;
  v30 = 0;
  v16 = *(signature + 8);
  if (v16 >= signature2[1])
  {
    v16 = signature2[1];
  }

  v17 = (v16 * overlap);
  v26.a = 0.0;
  *&v26.b = &v26;
  *&v26.c = 0x2000000000;
  *&v26.d = 4736;
  v31 = &v30;
  v32 = 0x2000000000;
  v33 = 4736;
  v18 = *(signature + 40);
  v19 = signature2[5];
  if (v18 >= v19)
  {
    v20 = signature2[5];
  }

  else
  {
    v20 = *(signature + 40);
  }

  Projections_computeShiftBruteForce(*(signature + 32), v18, (signature + 48), signature2[4], v19, signature2 + 6, (v20 * overlap), &v29 + 1, &v28);
  *(*&v26.b + 24) = 4736;
  Projections_computeShiftBruteForce(*signature, *(signature + 8), (signature + 16), *v15, *(v15 + 2), v15 + 2, v17, &v29, &v27);
  v31[3] = 4736;
  v21 = v29;
  v22 = *(*&v26.b + 24);
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v26, 8);
  if (v22 == 4736)
  {
    v23 = 4736;
  }

  else
  {
    v23 = 4710;
  }

  if (v22 == 4736)
  {
    if (transform)
    {
      CGAffineTransformMakeTranslation(&v26, -*(&v21 + 1), *&v21);
      v24 = *&v26.c;
      *&transform->a = *&v26.a;
      *&transform->c = v24;
      *&transform->tx = *&v26.tx;
    }
  }

  else if (error)
  {
    *error = VNErrorForCVMLStatus(v23);
  }

  return v22 == 4736;
}

@end