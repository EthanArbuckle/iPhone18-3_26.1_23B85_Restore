@interface CRLDropShadow
- (BOOL)isEqual:(id)equal;
- (CGImage)newShadowImageForRep:(id)rep withUnscaledSize:(CGSize)size viewScale:(double)scale drawSelector:(SEL)selector unflipped:(BOOL)unflipped;
- (CGRect)boundsForRep:(id)rep;
- (CGRect)boundsInNaturalSpaceForRep:(id)rep;
- (CRLDropShadow)initWithAngle:(double)angle offset:(double)offset radius:(double)radius opacity:(double)opacity color:(id)color enabled:(BOOL)enabled;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)newShadowClampedForSwatches;
- (unint64_t)hash;
@end

@implementation CRLDropShadow

- (CRLDropShadow)initWithAngle:(double)angle offset:(double)offset radius:(double)radius opacity:(double)opacity color:(id)color enabled:(BOOL)enabled
{
  v9.receiver = self;
  v9.super_class = CRLDropShadow;
  return [(CRLShadow *)&v9 i_initWithOpacity:color color:enabled angle:opacity offset:angle radius:offset enabled:radius];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, equalCopy);

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

- (id)mutableCopyWithZone:(_NSZone *)zone
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
  color = [(CRLShadow *)self color];
  v14 = [(CRLDropShadow *)v4 initWithAngle:color offset:[(CRLShadow *)self isEnabled] radius:v6 opacity:v8 color:v10 enabled:v12];

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
  color = [(CRLShadow *)self color];
  v17 = [(CRLDropShadow *)v11 initWithAngle:color offset:[(CRLShadow *)self isEnabled] radius:v13 opacity:v10 color:v8 enabled:v15];

  return v17;
}

- (CGRect)boundsInNaturalSpaceForRep:(id)rep
{
  layout = [rep layout];
  [layout shadowedNaturalBoundsWithoutOffset];
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

- (CGRect)boundsForRep:(id)rep
{
  layout = [rep layout];
  [layout shadowedNaturalBoundsWithoutOffset];
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

- (CGImage)newShadowImageForRep:(id)rep withUnscaledSize:(CGSize)size viewScale:(double)scale drawSelector:(SEL)selector unflipped:(BOOL)unflipped
{
  unflippedCopy = unflipped;
  height = size.height;
  width = size.width;
  repCopy = rep;
  v14 = fmin(scale, 1.0);
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
        color = [(CRLShadow *)self color];
        cGColor = [color CGColor];

        v36 = sub_10050DF80(11, v31, v29);
        if (v36)
        {
          v37 = v36;
          selectorCopy = selector;
          layout = [repCopy layout];
          v39 = layout;
          v40 = cGColor;
          if (layout)
          {
            [layout transformInRoot];
          }

          else
          {
            v80 = 0u;
            v81 = 0u;
            v79 = 0u;
          }

          v41 = sub_100139980(&v79);
          sub_10050F218(v37, v41);

          canvas = [repCopy canvas];
          isPrinting = [canvas isPrinting];
          canvas2 = [repCopy canvas];
          isDrawingIntoPDF = [canvas2 isDrawingIntoPDF];
          canvas3 = [repCopy canvas];
          [canvas3 contentsScale];
          sub_10050DE7C(v37, isPrinting, isDrawingIntoPDF, 1, 0, v47);

          [(CRLShadow *)self radius];
          v49 = v14 * v48;
          CGContextTranslateCTM(v37, -v30, -v33);
          CGContextTranslateCTM(v37, -(v32 + v14 * 10.0), -0.0);
          if (unflippedCopy)
          {
            v80 = 0u;
            v81 = 0u;
            v79 = 0u;
            layout2 = [repCopy layout];
            geometry = [layout2 geometry];
            v52 = geometry;
            if (geometry)
            {
              [geometry transform];
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
          if ([repCopy canDrawShadowInOneStepWithChildren:1])
          {
            [repCopy performSelector:selectorCopy withObject:v37];
          }

          else
          {
            [repCopy naturalBounds];
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
              layout3 = [repCopy layout];
              v68 = layout3;
              if (layout3)
              {
                [layout3 transformInRoot];
              }

              else
              {
                v80 = 0u;
                v81 = 0u;
                v79 = 0u;
              }

              v69 = sub_100139980(&v79);
              sub_10050F218(Context, v69);

              canvas4 = [repCopy canvas];
              isPrinting2 = [canvas4 isPrinting];
              canvas5 = [repCopy canvas];
              isDrawingIntoPDF2 = [canvas5 isDrawingIntoPDF];
              canvas6 = [repCopy canvas];
              [canvas6 contentsScale];
              sub_10050DE7C(Context, isPrinting2, isDrawingIntoPDF2, 0, 0, v75);

              CGContextScaleCTM(Context, v63, v64);
              [repCopy performSelector:selectorCopy withObject:Context];
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