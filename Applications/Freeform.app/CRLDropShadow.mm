@interface CRLDropShadow
- (BOOL)isEqual:(id)a3;
- (CGImage)newShadowImageForRep:(id)a3 withUnscaledSize:(CGSize)a4 viewScale:(double)a5 drawSelector:(SEL)a6 unflipped:(BOOL)a7;
- (CGRect)boundsForRep:(id)a3;
- (CGRect)boundsInNaturalSpaceForRep:(id)a3;
- (CRLDropShadow)initWithAngle:(double)a3 offset:(double)a4 radius:(double)a5 opacity:(double)a6 color:(id)a7 enabled:(BOOL)a8;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)newShadowClampedForSwatches;
- (unint64_t)hash;
@end

@implementation CRLDropShadow

- (CRLDropShadow)initWithAngle:(double)a3 offset:(double)a4 radius:(double)a5 opacity:(double)a6 color:(id)a7 enabled:(BOOL)a8
{
  v9.receiver = self;
  v9.super_class = CRLDropShadow;
  return [(CRLShadow *)&v9 i_initWithOpacity:a7 color:a8 angle:a6 offset:a3 radius:a4 enabled:a5];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v4 = a3;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, v4);

  if (v6)
  {
    v9.receiver = self;
    v9.super_class = CRLDropShadow;
    v7 = [(CRLShadow *)&v9 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = CRLDropShadow;
  return [(CRLShadow *)&v3 hash];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CRLMutableDropShadow alloc];
  [(CRLShadow *)self angle];
  v6 = v5;
  [(CRLShadow *)self offset];
  v8 = v7;
  [(CRLShadow *)self radius];
  v10 = v9;
  [(CRLShadow *)self opacity];
  v12 = v11;
  v13 = [(CRLShadow *)self color];
  v14 = [(CRLDropShadow *)v4 initWithAngle:v13 offset:[(CRLShadow *)self isEnabled] radius:v6 opacity:v8 color:v10 enabled:v12];

  return v14;
}

- (id)newShadowClampedForSwatches
{
  [(CRLShadow *)self radius];
  v4 = v3;
  [(CRLShadow *)self offset];
  v6 = v4 + v5;
  [(CRLShadow *)self radius];
  v8 = v7;
  [(CRLShadow *)self offset];
  v10 = v9;
  if (v6 > 10.0)
  {
    v8 = v8 * (10.0 / v6);
    v10 = v9 * (10.0 / v6);
  }

  v11 = [CRLDropShadow alloc];
  [(CRLShadow *)self angle];
  v13 = v12;
  [(CRLShadow *)self opacity];
  v15 = v14;
  v16 = [(CRLShadow *)self color];
  v17 = [(CRLDropShadow *)v11 initWithAngle:v16 offset:[(CRLShadow *)self isEnabled] radius:v13 opacity:v10 color:v8 enabled:v15];

  return v17;
}

- (CGRect)boundsInNaturalSpaceForRep:(id)a3
{
  v3 = [a3 layout];
  [v3 shadowedNaturalBoundsWithoutOffset];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)boundsForRep:(id)a3
{
  v3 = [a3 layout];
  [v3 shadowedNaturalBoundsWithoutOffset];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGImage)newShadowImageForRep:(id)a3 withUnscaledSize:(CGSize)a4 viewScale:(double)a5 drawSelector:(SEL)a6 unflipped:(BOOL)a7
{
  v7 = a7;
  height = a4.height;
  width = a4.width;
  v13 = a3;
  v14 = fmin(a5, 1.0);
  v15 = sub_10011F340(width, height, v14);
  v17 = sub_100122154(v15, v16);
  v19 = v18;
  v20 = sub_10011ECB4();
  v24 = sub_1001221E0(v20, v21, v22, v23);
  Image = 0;
  if (v26 != 0.0)
  {
    v29 = v27;
    if (v27 != 0.0)
    {
      v30 = v24;
      v31 = v26;
      Image = 0;
      v32 = ceil(fmax(v17, v26));
      if (v32 > 0.0 && ceil(fmax(v19, v27)) > 0.0)
      {
        v33 = v25;
        v34 = [(CRLShadow *)self color];
        v35 = [v34 CGColor];

        v36 = sub_10050DF80(11, v31, v29);
        if (v36)
        {
          v37 = v36;
          v77 = a6;
          v38 = [v13 layout];
          v39 = v38;
          v40 = v35;
          if (v38)
          {
            [v38 transformInRoot];
          }

          else
          {
            v80 = 0u;
            v81 = 0u;
            v79 = 0u;
          }

          v41 = sub_100139980(&v79);
          sub_10050F218(v37, v41);

          v42 = [v13 canvas];
          v43 = [v42 isPrinting];
          v44 = [v13 canvas];
          v45 = [v44 isDrawingIntoPDF];
          v46 = [v13 canvas];
          [v46 contentsScale];
          sub_10050DE7C(v37, v43, v45, 1, 0, v47);

          [(CRLShadow *)self radius];
          v49 = v14 * v48;
          CGContextTranslateCTM(v37, -v30, -v33);
          CGContextTranslateCTM(v37, -(v32 + v14 * 10.0), -0.0);
          if (v7)
          {
            v80 = 0u;
            v81 = 0u;
            v79 = 0u;
            v50 = [v13 layout];
            v51 = [v50 geometry];
            v52 = v51;
            if (v51)
            {
              [v51 transform];
            }

            else
            {
              v80 = 0u;
              v81 = 0u;
              v79 = 0u;
            }

            if (sub_10011FBE4(*&v79, *&v80, *(&v79 + 1), *(&v80 + 1)) > 0.0)
            {
              transform.a = -1.0;
              transform.b = 0.0;
              transform.c = 0.0;
              transform.d = 1.0;
              transform.tx = v17;
              transform.ty = 0.0;
              CGContextConcatCTM(v37, &transform);
            }

            transform.b = 0.0;
            transform.c = 0.0;
            transform.a = 1.0;
            *&transform.d = xmmword_101464D00;
            transform.ty = v19;
            CGContextConcatCTM(v37, &transform);
          }

          v82.height = 0.0;
          v82.width = v32 + v14 * 10.0;
          CGContextSetShadowWithColor(v37, v82, v49, v40);
          CGContextTranslateCTM(v37, v49, v49);
          CGContextScaleCTM(v37, v14, v14);
          if ([v13 canDrawShadowInOneStepWithChildren:1])
          {
            [v13 performSelector:v77 withObject:v37];
          }

          else
          {
            [v13 naturalBounds];
            v54 = v53;
            v56 = v55;
            sub_10011ECB4();
            v58 = v57;
            v60 = v59;
            v61 = sub_100121E8C(v54, v56, 2048.0, 2048.0);
            if (v61 > 0.0 && v62 > 0.0)
            {
              v63 = v61 / v58;
              v64 = v62 / v60;
              v65 = CGLayerCreateWithContext(v37, *&v61, 0);
              Context = CGLayerGetContext(v65);
              v67 = [v13 layout];
              v68 = v67;
              if (v67)
              {
                [v67 transformInRoot];
              }

              else
              {
                v80 = 0u;
                v81 = 0u;
                v79 = 0u;
              }

              v69 = sub_100139980(&v79);
              sub_10050F218(Context, v69);

              v70 = [v13 canvas];
              v71 = [v70 isPrinting];
              v72 = [v13 canvas];
              v73 = [v72 isDrawingIntoPDF];
              v74 = [v13 canvas];
              [v74 contentsScale];
              sub_10050DE7C(Context, v71, v73, 0, 0, v75);

              CGContextScaleCTM(Context, v63, v64);
              [v13 performSelector:v77 withObject:Context];
              sub_10050D814(Context);
              v83.origin.x = sub_10011ECB4();
              CGContextDrawLayerInRect(v37, v83, v65);
              CGLayerRelease(v65);
            }
          }

          Image = CGBitmapContextCreateImage(v37);
          sub_10050D814(v37);
          CGContextRelease(v37);
        }

        else
        {
          Image = 0;
        }
      }
    }
  }

  return Image;
}

@end