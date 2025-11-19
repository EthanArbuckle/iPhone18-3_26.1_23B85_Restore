@interface VNImageRegistration
+ (BOOL)computeTransform:(CGAffineTransform *)a3 forRegisteringImageSignature:(id)a4 withSignature:(id)a5 minimumOverlap:(float)a6 error:(id *)a7;
@end

@implementation VNImageRegistration

+ (BOOL)computeTransform:(CGAffineTransform *)a3 forRegisteringImageSignature:(id)a4 withSignature:(id)a5 minimumOverlap:(float)a6 error:(id *)a7
{
  v11 = a4;
  v12 = a5;
  v13 = [v11 signature];
  v14 = [v12 signature];
  v15 = v14;
  v29 = 0;
  v30 = 0;
  v16 = *(v13 + 8);
  if (v16 >= v14[1])
  {
    v16 = v14[1];
  }

  v17 = (v16 * a6);
  v26.a = 0.0;
  *&v26.b = &v26;
  *&v26.c = 0x2000000000;
  *&v26.d = 4736;
  v31 = &v30;
  v32 = 0x2000000000;
  v33 = 4736;
  v18 = *(v13 + 40);
  v19 = v14[5];
  if (v18 >= v19)
  {
    v20 = v14[5];
  }

  else
  {
    v20 = *(v13 + 40);
  }

  Projections_computeShiftBruteForce(*(v13 + 32), v18, (v13 + 48), v14[4], v19, v14 + 6, (v20 * a6), &v29 + 1, &v28);
  *(*&v26.b + 24) = 4736;
  Projections_computeShiftBruteForce(*v13, *(v13 + 8), (v13 + 16), *v15, *(v15 + 2), v15 + 2, v17, &v29, &v27);
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
    if (a3)
    {
      CGAffineTransformMakeTranslation(&v26, -*(&v21 + 1), *&v21);
      v24 = *&v26.c;
      *&a3->a = *&v26.a;
      *&a3->c = v24;
      *&a3->tx = *&v26.tx;
    }
  }

  else if (a7)
  {
    *a7 = VNErrorForCVMLStatus(v23);
  }

  return v22 == 4736;
}

@end