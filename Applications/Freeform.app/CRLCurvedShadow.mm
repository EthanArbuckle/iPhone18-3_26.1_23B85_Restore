@interface CRLCurvedShadow
+ (id)curvedShadowWithOffset:(double)a3 angle:(double)a4 radius:(double)a5 curve:(double)a6 opacity:(double)a7 color:(id)a8 enabled:(BOOL)a9;
- (BOOL)isEqual:(id)a3;
- (CGImage)newShadowImageForRep:(id)a3 withUnscaledSize:(CGSize)a4 viewScale:(double)a5 drawSelector:(SEL)a6 unflipped:(BOOL)a7;
- (CGRect)boundsForRep:(id)a3;
- (CGRect)boundsInNaturalSpaceForRep:(id)a3;
- (CGRect)expandedBoundsForRect:(CGRect)a3;
- (CGRect)shadowBoundsForRect:(CGRect)a3 additionalTransform:(CGAffineTransform *)a4;
- (CRLCurvedShadow)initWithOffset:(double)a3 angle:(double)a4 radius:(double)a5 curve:(double)a6 opacity:(double)a7 color:(id)a8 enabled:(BOOL)a9;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)newShadowClampedForSwatches;
- (unint64_t)hash;
@end

@implementation CRLCurvedShadow

+ (id)curvedShadowWithOffset:(double)a3 angle:(double)a4 radius:(double)a5 curve:(double)a6 opacity:(double)a7 color:(id)a8 enabled:(BOOL)a9
{
  v9 = a9;
  v16 = a8;
  v17 = [[a1 alloc] initWithOffset:v16 angle:v9 radius:a3 curve:a4 opacity:a5 color:a6 enabled:a7];

  return v17;
}

- (CRLCurvedShadow)initWithOffset:(double)a3 angle:(double)a4 radius:(double)a5 curve:(double)a6 opacity:(double)a7 color:(id)a8 enabled:(BOOL)a9
{
  v9 = a9;
  v16 = a8;
  if (!v16)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135FC94();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135FCA8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135FD4C();
    }

    v17 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v17);
    }

    v18 = [NSString stringWithUTF8String:"[CRLCurvedShadow initWithOffset:angle:radius:curve:opacity:color:enabled:]"];
    v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCurvedShadow.m"];
    [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:47 isFatal:0 description:"invalid nil value for '%{public}s'", "color"];
  }

  v23.receiver = self;
  v23.super_class = CRLCurvedShadow;
  v20 = [(CRLShadow *)&v23 i_initWithOpacity:v16 color:v9 angle:a7 offset:a4 radius:a3 enabled:a5];
  v21 = v20;
  if (v20)
  {
    v20[7] = a6;
  }

  return v21;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [(CRLShadow *)self angle];
  v6 = v5;
  [(CRLShadow *)self offset];
  v8 = v7;
  [(CRLShadow *)self radius];
  v10 = v9;
  [(CRLShadow *)self opacity];
  v12 = v11;
  v13 = [(CRLShadow *)self color];
  v14 = [(CRLShadow *)self isEnabled];
  v15 = @"NO";
  if (v14)
  {
    v15 = @"YES";
  }

  v16 = v15;
  [(CRLCurvedShadow *)self curve];
  v18 = v17;
  v19 = [(CRLShadow *)self typeDescription];
  v20 = [NSString stringWithFormat:@"<%@ %p: angle=%g offset=%g radius=%g opacity=%g color=%p enabled=%@  curve=%f type=%@>", v4, self, v6, v8, v10, v12, v13, v16, v18, v19];

  return v20;
}

- (CGRect)expandedBoundsForRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(CRLCurvedShadow *)self paddingForCurveWithSize:a3.size.width, a3.size.height];
  v9 = v8;
  [(CRLCurvedShadow *)self paddingForBlur];
  v11 = -v10;
  v12 = -v10 - v9;
  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;

  return CGRectInset(*&v13, v11, v12);
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CRLMutableCurvedShadow alloc];
  [(CRLShadow *)self offset];
  v6 = v5;
  [(CRLShadow *)self angle];
  v8 = v7;
  [(CRLShadow *)self radius];
  v10 = v9;
  [(CRLCurvedShadow *)self curve];
  v12 = v11;
  [(CRLShadow *)self opacity];
  v14 = v13;
  v15 = [(CRLShadow *)self color];
  v16 = [(CRLCurvedShadow *)v4 initWithOffset:v15 angle:[(CRLShadow *)self isEnabled] radius:v6 curve:v8 opacity:v10 color:v12 enabled:v14];

  return v16;
}

- (id)newShadowClampedForSwatches
{
  [(CRLCurvedShadow *)self curve];
  v4 = sub_1004C3240(v3, -0.07, 0.07);
  [(CRLShadow *)self offset];
  v6 = sub_1004C3240(v5, -15.0, 3.0);
  v7 = [CRLCurvedShadow alloc];
  [(CRLShadow *)self angle];
  v9 = v8;
  [(CRLShadow *)self radius];
  v11 = v10;
  [(CRLShadow *)self opacity];
  v13 = v12;
  v14 = [(CRLShadow *)self color];
  v15 = [(CRLCurvedShadow *)v7 initWithOffset:v14 angle:[(CRLShadow *)self isEnabled] radius:v6 curve:v9 opacity:v11 color:v4 enabled:v13];

  return v15;
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

  if (v6 && (v12.receiver = self, v12.super_class = CRLCurvedShadow, [(CRLShadow *)&v12 isEqual:v6]))
  {
    [(CRLCurvedShadow *)self curve];
    v8 = v7;
    [v6 curve];
    v10 = v8 == v9 || vabdd_f64(v8, v9) < fabs(v9 * 0.000000999999997);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = CRLCurvedShadow;
  return [(CRLShadow *)&v3 hash];
}

- (CGRect)shadowBoundsForRect:(CGRect)a3 additionalTransform:(CGAffineTransform *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(CRLShadow *)self isEnabled])
  {
    v10 = *&a4->c;
    *&v29.a = *&a4->a;
    *&v29.c = v10;
    *&v29.tx = *&a4->tx;
    CGAffineTransformInvert(&v30, &v29);
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    v32 = CGRectApplyAffineTransform(v31, &v30);
    [(CRLCurvedShadow *)self expandedBoundsForRect:v32.origin.x, v32.origin.y, v32.size.width, v32.size.height];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [(CRLShadow *)self offsetDelta];
    r1 = height;
    v20 = v19;
    [(CRLShadow *)self offsetDelta];
    v22 = v21;
    v33.origin.x = v12;
    v33.origin.y = v14;
    v33.size.width = v16;
    v33.size.height = v18;
    v34 = CGRectOffset(v33, v20, v22);
    v23 = *&a4->c;
    *&v30.a = *&a4->a;
    *&v30.c = v23;
    *&v30.tx = *&a4->tx;
    v38 = CGRectApplyAffineTransform(v34, &v30);
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = r1;
    v36 = CGRectUnion(v35, v38);
    x = v36.origin.x;
    y = v36.origin.y;
    width = v36.size.width;
    height = v36.size.height;
  }

  v24 = x;
  v25 = y;
  v26 = width;
  v27 = height;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (CGRect)boundsInNaturalSpaceForRep:(id)a3
{
  v4 = [a3 styledLayout];
  v5 = [v4 geometryInRoot];
  [v5 frame];
  v6 = sub_10011ECB4();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(CRLCurvedShadow *)self expandedBoundsForRect:v6, v8, v10, v12];
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)boundsForRep:(id)a3
{
  v4 = [a3 styledLayout];
  v5 = [v4 geometryInRoot];
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(CRLCurvedShadow *)self expandedBoundsForRect:v7, v9, v11, v13];
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGImage)newShadowImageForRep:(id)a3 withUnscaledSize:(CGSize)a4 viewScale:(double)a5 drawSelector:(SEL)a6 unflipped:(BOOL)a7
{
  v7 = a7;
  height = a4.height;
  width = a4.width;
  v12 = a3;
  v13 = [(CRLShadow *)self color];
  [(CRLShadow *)self opacity];
  if (v14 == 0.0 || ([v13 alphaComponent], v17 == 0.0) || width == 0.0 || height == 0.0)
  {
LABEL_2:
    v15 = [(CRLShadow *)self i_newEmptyImage];
    goto LABEL_3;
  }

  if (qword_101A34D30 != -1)
  {
    sub_10135FD74();
  }

  v18 = sub_100121ED4(width, height, 1048576.0);
  v20 = v19;
  [(CRLCurvedShadow *)self boundsForRep:v12];
  v22 = v21;
  v24 = v23;
  v25 = sub_10050DF80(11, v18, v20);
  if (!v25)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135FF5C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135FF70();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101360000();
    }

    v35 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v35);
    }

    v36 = [NSString stringWithUTF8String:"[CRLCurvedShadow newShadowImageForRep:withUnscaledSize:viewScale:drawSelector:unflipped:]"];
    v37 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCurvedShadow.m"];
    [CRLAssertionHandler handleFailureInFunction:v36 file:v37 lineNumber:222 isFatal:0 description:"Cannot render curved shadow, the size is too large for the CGContext to render. Returning an empty image instead."];

    goto LABEL_2;
  }

  v26 = v25;
  v53 = v13;
  v27 = [v12 canvas];
  v28 = [v27 isPrinting];
  v29 = [v12 canvas];
  v30 = [v29 isDrawingIntoPDF];
  v31 = [v12 canvas];
  [v31 contentsScale];
  sub_10050DE7C(v26, v28, v30, 1, 0, v32);

  v33 = [v12 layout];
  v34 = v33;
  if (v33)
  {
    [v33 transformInRoot];
  }

  else
  {
    memset(&v56, 0, sizeof(v56));
  }

  v38 = sub_100139980(&v56);
  sub_10050F218(v26, v38);

  CGContextScaleCTM(v26, v18 / width, v18 / width);
  CGContextTranslateCTM(v26, -v22, -v24);
  memset(&v56, 0, sizeof(v56));
  v39 = [v12 styledLayout];
  v40 = v39;
  v13 = v53;
  if (v39)
  {
    [v39 transformInRoot];
  }

  else
  {
    memset(&v56, 0, sizeof(v56));
  }

  transform = v56;
  CGContextConcatCTM(v26, &transform);
  [v12 performSelector:a6 withObject:v26];
  Image = CGBitmapContextCreateImage(v26);
  CGContextRelease(v26);
  v42 = sub_10050DF80(3, v18, v20);
  if (!v42)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135FE7C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135FEA4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135FF34();
    }

    v47 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v47);
    }

    v48 = [NSString stringWithUTF8String:"[CRLCurvedShadow newShadowImageForRep:withUnscaledSize:viewScale:drawSelector:unflipped:]"];
    v49 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCurvedShadow.m"];
    [CRLAssertionHandler handleFailureInFunction:v48 file:v49 lineNumber:254 isFatal:0 description:"Cannot render curved shadow, the size is too large for the CGContext to render. Returning empty image instead"];

    CGImageRelease(Image);
    goto LABEL_2;
  }

  v43 = v42;
  if (v7)
  {
    memset(&transform, 0, sizeof(transform));
    v44 = [v12 layout];
    v45 = [v44 geometry];
    v46 = v45;
    if (v45)
    {
      [v45 transform];
    }

    else
    {
      memset(&transform, 0, sizeof(transform));
    }

    if (sub_10011FBE4(transform.a, transform.c, transform.b, transform.d) > 0.0)
    {
      v54.a = -1.0;
      v54.b = 0.0;
      v54.c = 0.0;
      v54.d = 1.0;
      v54.tx = v18;
      v54.ty = 0.0;
      CGContextConcatCTM(v43, &v54);
    }

    v54.b = 0.0;
    v54.c = 0.0;
    v54.a = 1.0;
    *&v54.d = xmmword_101464D00;
    v54.ty = v20;
    CGContextConcatCTM(v43, &v54);
  }

  if (Image)
  {
    [qword_101A34D28 drawCurvedShadow:self forImage:Image inContext:v43 forUnscaledSize:width withScaleFactor:{height, v18 / width}];
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135FD88();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135FDB0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135FE54();
    }

    v50 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v50);
    }

    v51 = [NSString stringWithUTF8String:"[CRLCurvedShadow newShadowImageForRep:withUnscaledSize:viewScale:drawSelector:unflipped:]"];
    v52 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCurvedShadow.m"];
    [CRLAssertionHandler handleFailureInFunction:v51 file:v52 lineNumber:270 isFatal:0 description:"invalid nil value for '%{public}s'", "imageWithoutShadow"];
  }

  v15 = CGBitmapContextCreateImage(v43);
  CGContextRelease(v43);
  CGImageRelease(Image);
LABEL_3:

  return v15;
}

@end