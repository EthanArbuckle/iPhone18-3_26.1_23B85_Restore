@interface CRLCalloutPathSource
+ (id)calloutWithCornerRadius:(double)a3 tailPosition:(CGPoint)a4 tailSize:(double)a5 naturalSize:(CGSize)a6;
+ (id)quoteBubbleWithTailPosition:(CGPoint)a3 tailSize:(double)a4 naturalSize:(CGSize)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isOval;
- (CGPoint)getControlKnobPosition:(unint64_t)a3;
- (CGPoint)p_adjustedCenterForPath:(id)a3;
- (CGPoint)p_getControlKnobPointForRoundedRect;
- (CGPoint)p_tailCenter;
- (CGPoint)p_tailPosition;
- (CGPoint)rawTailPosition;
- (CGPoint)tailKnobPosition;
- (CGPoint)tailSizeKnobPosition;
- (CGSize)naturalSize;
- (CRLCalloutPathSource)initWithCornerRadius:(double)a3 tailPosition:(CGPoint)a4 tailSize:(double)a5 naturalSize:(CGSize)a6 tailAtCenter:(BOOL)a7;
- (double)clampedCalloutTailSize;
- (double)clampedCornerRadius;
- (double)maxTailSize;
- (id)copy;
- (id)crlaxLabelComponentForKnobTag:(unint64_t)a3;
- (id)crlaxValueForKnobTag:(unint64_t)a3;
- (id)description;
- (id)getFeedbackStringForKnob:(unint64_t)a3;
- (id)inferredAccessibilityDescription;
- (id)inferredAccessibilityDescriptionNoShapeNames;
- (id)inferredLocalizedAccessibilityDescriptionPlaceholder;
- (id)name;
- (id)p_basePath;
- (id)p_buildPath;
- (unint64_t)hash;
- (void)p_getTailPath:(id)a3 center:(CGPoint *)a4 tailSize:(double *)a5 intersections:(CGPoint)a6[2];
- (void)p_setControlKnobPointForRoundedRect:(CGPoint)a3;
- (void)scaleToNaturalSize:(CGSize)a3;
- (void)setControlKnobPosition:(unint64_t)a3 toPoint:(CGPoint)a4;
- (void)setCornerRadius:(double)a3;
- (void)setTailKnobPosition:(CGPoint)a3;
- (void)setTailSize:(double)a3;
- (void)setTailSizeKnobPosition:(CGPoint)a3;
@end

@implementation CRLCalloutPathSource

- (CRLCalloutPathSource)initWithCornerRadius:(double)a3 tailPosition:(CGPoint)a4 tailSize:(double)a5 naturalSize:(CGSize)a6 tailAtCenter:(BOOL)a7
{
  v7 = a7;
  height = a6.height;
  width = a6.width;
  y = a4.y;
  x = a4.x;
  v17.receiver = self;
  v17.super_class = CRLCalloutPathSource;
  v14 = [(CRLCalloutPathSource *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(CRLCalloutPathSource *)v14 p_setNaturalSize:width, height];
    [(CRLCalloutPathSource *)v15 p_setCornerRadius:a3];
    [(CRLCalloutPathSource *)v15 p_setTailPosition:x, y];
    [(CRLCalloutPathSource *)v15 p_setTailSize:a5];
    [(CRLCalloutPathSource *)v15 p_setTailAtCenter:v7];
  }

  return v15;
}

+ (id)calloutWithCornerRadius:(double)a3 tailPosition:(CGPoint)a4 tailSize:(double)a5 naturalSize:(CGSize)a6
{
  v6 = [[a1 alloc] initWithCornerRadius:0 tailPosition:a3 tailSize:a4.x naturalSize:a4.y tailAtCenter:{a5, a6.width, a6.height}];

  return v6;
}

+ (id)quoteBubbleWithTailPosition:(CGPoint)a3 tailSize:(double)a4 naturalSize:(CGSize)a5
{
  v5 = [[a1 alloc] initWithCornerRadius:1 tailPosition:a5.width + 10.0 tailSize:a3.x naturalSize:a3.y tailAtCenter:{a4, a5.width, a5.height}];

  return v5;
}

- (id)copy
{
  v5.receiver = self;
  v5.super_class = CRLCalloutPathSource;
  v3 = [(CRLCalloutPathSource *)&v5 copy];
  [v3 p_setNaturalSize:{self->_naturalSize.width, self->_naturalSize.height}];
  [v3 p_setCornerRadius:self->_cornerRadius];
  [v3 p_setTailPosition:{self->_tailPosition.x, self->_tailPosition.y}];
  [v3 p_setTailSize:self->_tailSize];
  [v3 p_setTailAtCenter:self->_isTailAtCenter];
  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v16 = 1;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = CRLCalloutPathSource;
    if ([(CRLPathSource *)&v18 isEqual:v4])
    {
      v5 = objc_opt_class();
      v6 = sub_100014370(v5, v4);
      v7 = v6;
      if (v6 && ([v6 naturalSize], sub_10011ECC8(self->_naturalSize.width, self->_naturalSize.height, v8, v9)) && ((cornerRadius = self->_cornerRadius, objc_msgSend(v7, "cornerRadius"), cornerRadius == v11) || vabdd_f64(cornerRadius, v11) < 0.00999999978) && (objc_msgSend(v7, "p_tailPosition"), sub_10011ECC8(self->_tailPosition.x, self->_tailPosition.y, v12, v13)))
      {
        tailSize = self->_tailSize;
        [v7 tailSize];
        v16 = vabdd_f64(tailSize, v15) < 0.00999999978 || tailSize == v15;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 hash];

  return v4;
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = CRLCalloutPathSource;
  v3 = [(CRLCalloutPathSource *)&v11 description];
  v4 = [v3 mutableCopy];

  cornerRadius = self->_cornerRadius;
  v6 = NSStringFromCGPoint(self->_tailPosition);
  tailSize = self->_tailSize;
  v8 = NSStringFromCGSize(self->_naturalSize);
  v9 = [NSString stringWithFormat:@" corner radius=%f; tail position=%@, tail size=%f natural size=%@", *&cornerRadius, v6, *&tailSize, v8];;
  [v4 appendString:v9];

  return v4;
}

- (CGPoint)getControlKnobPosition:(unint64_t)a3
{
  switch(a3)
  {
    case 0xEuLL:
      [(CRLCalloutPathSource *)self tailSizeKnobPosition];
      break;
    case 0xDuLL:
      [(CRLCalloutPathSource *)self p_getControlKnobPointForRoundedRect];
      break;
    case 0xCuLL:
      [(CRLCalloutPathSource *)self tailKnobPosition];
      break;
    default:
      x = CGPointZero.x;
      y = CGPointZero.y;
      break;
  }

  result.y = y;
  result.x = x;
  return result;
}

- (void)setControlKnobPosition:(unint64_t)a3 toPoint:(CGPoint)a4
{
  switch(a3)
  {
    case 0xEuLL:
      [(CRLCalloutPathSource *)self setTailSizeKnobPosition:a4.x, a4.y];
      break;
    case 0xDuLL:
      [(CRLCalloutPathSource *)self p_setControlKnobPointForRoundedRect:a4.x, a4.y];
      break;
    case 0xCuLL:
      [(CRLCalloutPathSource *)self setTailKnobPosition:a4.x, a4.y];
      break;
  }
}

- (id)getFeedbackStringForKnob:(unint64_t)a3
{
  if (a3 == 13)
  {
    [(CRLCalloutPathSource *)self cornerRadius];
    v5 = v4;
    [(CRLCalloutPathSource *)self maxCornerRadius];
    if (v5 >= v6)
    {
      v7 = +[NSBundle mainBundle];
      v9 = [v7 localizedStringForKey:@"Oval" value:0 table:0];
    }

    else
    {
      v7 = +[NSBundle mainBundle];
      v8 = [v7 localizedStringForKey:@"Radius: %d pt" value:0 table:0];
      v9 = [NSString localizedStringWithFormat:v8, self->_cornerRadius];
    }
  }

  else
  {
    v9 = &stru_1018BCA28;
  }

  return v9;
}

- (void)setCornerRadius:(double)a3
{
  [(CRLCalloutPathSource *)self p_setCornerRadius:a3];
  cornerRadius = self->_cornerRadius;
  v5 = 0.0;
  if (cornerRadius >= 0.0)
  {
    [(CRLCalloutPathSource *)self maxCornerRadius];
    if (cornerRadius < v6)
    {
      return;
    }

    [(CRLCalloutPathSource *)self maxCornerRadius];
    v5 = v7 + 1.0;
  }

  self->_cornerRadius = v5;
}

- (BOOL)isOval
{
  cornerRadius = self->_cornerRadius;
  [(CRLCalloutPathSource *)self maxCornerRadius];
  return cornerRadius >= v3;
}

- (double)clampedCornerRadius
{
  [(CRLCalloutPathSource *)self cornerRadius];
  v4 = v3;
  [(CRLCalloutPathSource *)self maxCornerRadius];
  return fmin(v4, v5);
}

- (void)setTailSize:(double)a3
{
  [(CRLCalloutPathSource *)self p_setTailSize:a3];
  height = self->_naturalSize.height;
  if (height < self->_naturalSize.width)
  {
    height = self->_naturalSize.width;
  }

  tailSize = self->_tailSize;
  if (tailSize > height || (height = -height, tailSize < height))
  {
    self->_tailSize = height;
  }
}

- (CGPoint)tailSizeKnobPosition
{
  [(CRLCalloutPathSource *)self naturalSize];
  v4 = v3;
  v6 = v5;
  v7 = [(CRLCalloutPathSource *)self p_basePath];
  [(CRLCalloutPathSource *)self p_getTailPath:v7 center:0 tailSize:0 intersections:&v14];
  if (v14 + v15 >= v16 + v17)
  {
    v8 = v17;
  }

  else
  {
    v8 = v15;
  }

  if (v14 + v15 >= v16 + v17)
  {
    v9 = v16;
  }

  else
  {
    v9 = v14;
  }

  if ([(CRLPathSource *)self hasHorizontalFlip])
  {
    v10 = v4 - v9;
  }

  else
  {
    v10 = v9;
  }

  if ([(CRLPathSource *)self hasVerticalFlip])
  {
    v11 = v6 - v8;
  }

  else
  {
    v11 = v8;
  }

  v12 = v10;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (double)maxTailSize
{
  [(CRLCalloutPathSource *)self p_tailPosition];
  v4 = v3;
  v6 = v5;
  v7 = [(CRLCalloutPathSource *)self p_basePath];
  [(CRLCalloutPathSource *)self p_adjustedCenterForPath:v7];
  v9 = v8;
  v11 = v10;
  v12 = sub_100120090(v4, v6, v8, v10);
  v39[0] = v4;
  v39[1] = v6;
  v39[2] = v9;
  v39[3] = v11;
  v32 = 0.0;
  v33 = 0.0;
  v13 = [v7 elementCount];
  if (v13 < 1)
  {
    v25 = 0.0;
    v26 = 0.0;
    goto LABEL_11;
  }

  v15 = v13;
  v16 = sub_10011F31C(v9, v11, v4);
  v18 = sub_10011F2FC(v16, v17);
  v20 = v19;
  for (i = 0; i != v15; ++i)
  {
    v22 = [v7 elementAtIndex:i allPoints:&v34];
    if (v22 == 2)
    {
      sub_100308434(v39, &v33, &v32, v34.f64[0], v34.f64[1], v18, v20, v4, v6, v12);
      sub_100308434(v39, &v33, &v32, v37, v38, v18, v20, v4, v6, v12);
      v23 = sub_10011F20C(&v34, 0.5);
    }

    else
    {
      if (v22 != 1)
      {
        continue;
      }

      sub_100308434(v39, &v33, &v32, v34.f64[0], v34.f64[1], v18, v20, v4, v6, v12);
      v23 = v35;
      v24 = v36;
    }

    v14 = sub_100308434(v39, &v33, &v32, v23, v24, v18, v20, v4, v6, v12);
  }

  v25 = v32;
  v26 = v33;
LABEL_11:
  [(CRLCalloutPathSource *)self minTailSize];
  v28 = v27;

  v29 = fmin(v26, -v25) * 0.899999976;
  v30 = v28;
  return fmaxf(v29, v30);
}

- (double)clampedCalloutTailSize
{
  [(CRLCalloutPathSource *)self tailSize];
  v4 = v3;
  [(CRLCalloutPathSource *)self maxTailSize];
  return fmin(v4, v5);
}

- (void)setTailSizeKnobPosition:(CGPoint)a3
{
  x = a3.x;
  [(CRLCalloutPathSource *)self naturalSize];
  v6 = v5;
  if ([(CRLPathSource *)self hasHorizontalFlip])
  {
    x = v6 - x;
  }

  [(CRLPathSource *)self hasVerticalFlip];
  v29 = 0.0;
  v30 = 0.0;
  v7 = [(CRLCalloutPathSource *)self p_basePath];
  [(CRLCalloutPathSource *)self p_getTailPath:v7 center:&v29 tailSize:0 intersections:v31];
  [(CRLCalloutPathSource *)self p_tailPosition];
  v9 = v8;
  v11 = v10;
  v12 = sub_10011F31C(v8, v10, x);
  v14 = sub_10011F2FC(v12, v13);
  v16 = v15;
  v17 = v29;
  v18 = v30;
  v19 = sub_10011F31C(v9, v11, v29);
  v21 = sub_10011F2FC(v19, v20);
  v23 = v22;
  v28 = sub_10011F328(v14, v16, v21, v22);
  v24 = sub_10012104C(1, v21, v23);
  v26 = fabs(sub_10011F328(v14, v16, v24, v25));
  v27 = v26 * (sub_100120090(v9, v11, v17, v18) / v28);
  if (fabs(v27) < 1.0)
  {
    v27 = 1.0;
  }

  self->_tailSize = v27;
}

- (void)setTailKnobPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(CRLCalloutPathSource *)self naturalSize];
  v7 = v6;
  v9 = v8;
  if ([(CRLPathSource *)self hasHorizontalFlip])
  {
    x = v7 - x;
  }

  if ([(CRLPathSource *)self hasVerticalFlip])
  {
    v10 = v9 - y;
  }

  else
  {
    v10 = y;
  }

  [(CRLCalloutPathSource *)self p_setTailPosition:x, v10];
}

- (CGPoint)tailKnobPosition
{
  x = self->_tailPosition.x;
  y = self->_tailPosition.y;
  [(CRLCalloutPathSource *)self naturalSize];
  v6 = v5;
  v8 = v7;
  if ([(CRLPathSource *)self hasHorizontalFlip])
  {
    v9 = v6 - x;
  }

  else
  {
    v9 = x;
  }

  if ([(CRLPathSource *)self hasVerticalFlip])
  {
    v10 = v8 - y;
  }

  else
  {
    v10 = y;
  }

  v11 = v9;
  result.y = v10;
  result.x = v11;
  return result;
}

- (void)scaleToNaturalSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(CRLPathSource *)self uniformScaleForScalingToNaturalSize:?];
  v7 = v6;
  [(CRLCalloutPathSource *)self naturalSize];
  v9 = v8;
  v10 = [(CRLCalloutPathSource *)self isOval];
  p_tailPosition = &self->_tailPosition;
  x = CGPointZero.x;
  if (self->_tailPosition.x > v9 * 0.5)
  {
    v13 = width / v9 + -1.0;
    if (fabs(v13) > 0.001)
    {
      x = (width - v9) * ((width / v9 - v7) / v13);
    }
  }

  self->_tailSize = v7 * self->_tailSize;
  v14 = sub_10011F340(p_tailPosition->x, self->_tailPosition.y, v7);
  p_tailPosition->x = sub_10011F334(v14, v15, x);
  self->_tailPosition.y = v16;
  [(CRLCalloutPathSource *)self p_setNaturalSize:width, height];
  [(CRLCalloutPathSource *)self maxCornerRadius];
  if (v10)
  {
    v18 = v17 + 1.0;
  }

  else
  {
    v18 = fmin(v17 + -0.001, v7 * self->_cornerRadius);
  }

  self->_cornerRadius = v18;
}

- (CGPoint)p_tailCenter
{
  if (self->_isTailAtCenter)
  {
    v3 = self->_naturalSize.width * 0.5;
    v4 = self->_naturalSize.height * 0.5;
  }

  else
  {
    [(CRLCalloutPathSource *)self p_tailPosition];
    v3 = v5;
    v7 = v6;
    [(CRLCalloutPathSource *)self cornerRadius];
    v4 = v8;
    if (v3 <= v8 || v3 >= self->_naturalSize.width - v8)
    {
      if (v7 <= v8 || v7 >= self->_naturalSize.height - v8)
      {
        v9 = v3 > v8;
        v3 = v8;
        if (v9)
        {
          v3 = self->_naturalSize.width - v8;
        }

        if (v7 > v8)
        {
          v4 = self->_naturalSize.height - v8;
        }
      }

      else
      {
        v3 = self->_naturalSize.width * 0.5;
        v4 = v7;
      }
    }

    else
    {
      v4 = self->_naturalSize.height * 0.5;
    }
  }

  v10 = v3;
  result.y = v4;
  result.x = v10;
  return result;
}

- (id)name
{
  v2 = [(CRLCalloutPathSource *)self isTailAtCenter];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (v2)
  {
    v5 = @"Quote Bubble";
  }

  else
  {
    v5 = @"Callout";
  }

  v6 = [v3 localizedStringForKey:v5 value:0 table:0];

  return v6;
}

- (CGPoint)p_tailPosition
{
  x = self->_tailPosition.x;
  y = self->_tailPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)p_adjustedCenterForPath:(id)a3
{
  v4 = a3;
  [(CRLCalloutPathSource *)self p_tailCenter];
  v6 = v5;
  v8 = v7;
  [(CRLCalloutPathSource *)self p_tailPosition];
  v17[0] = v9;
  v17[1] = v10;
  *&v17[2] = v6;
  *&v17[3] = v8;
  v11 = objc_alloc_init(NSMutableArray);
  [v4 addIntersectionsWithLine:v17 to:v11];

  if ([v11 count])
  {
    v12 = [v11 lastObject];
    [v12 point];
    v6 = v13;
    v8 = v14;
  }

  v15 = v6;
  v16 = v8;
  result.y = v16;
  result.x = v15;
  return result;
}

- (void)p_getTailPath:(id)a3 center:(CGPoint *)a4 tailSize:(double *)a5 intersections:(CGPoint)a6[2]
{
  v10 = a3;
  [(CRLCalloutPathSource *)self tailSize];
  v12 = v11;
  [(CRLCalloutPathSource *)self p_tailPosition];
  v14 = v13;
  v16 = v15;
  [(CRLCalloutPathSource *)self p_adjustedCenterForPath:v10];
  v18 = v17;
  v20 = v19;
  [(CRLCalloutPathSource *)self maxTailSize];
  v22 = fmin(fabs(v12), v21);
  v23 = sub_10011F31C(v14, v16, v18);
  v25 = sub_10011F2FC(v23, v24);
  v86 = v22;
  v27 = sub_10011F340(v25, v26, v22);
  v29 = sub_10012104C(1, v27, v28);
  v89[0] = v14;
  v89[1] = v16;
  v30 = sub_10011F334(v18, v20, v29);
  v32 = sub_10011F31C(v30, v31, v14);
  v34 = sub_10011F340(v32, v33, 20.0);
  v89[2] = sub_10011F334(v14, v16, v34);
  v89[3] = v35;
  v88[0] = v14;
  v88[1] = v16;
  v87 = v20;
  v36 = sub_10011F31C(v18, v20, v29);
  v38 = sub_10011F31C(v36, v37, v14);
  v40 = sub_10011F340(v38, v39, 20.0);
  v88[2] = sub_10011F334(v14, v16, v40);
  v88[3] = v41;
  v42 = objc_alloc_init(NSMutableArray);
  v43 = objc_alloc_init(NSMutableArray);
  [v10 addIntersectionsWithLine:v89 to:v42];
  [v10 addIntersectionsWithLine:v88 to:v43];
  if ([v42 count])
  {
    v44 = [v42 objectAtIndexedSubscript:0];
    [v44 point];
    v46 = v45;
    v48 = v47;

    v49 = [v42 lastObject];
    [v49 point];
    v51 = v50;
    v53 = v52;

    v54 = sub_100120090(v46, v48, v14, v16);
    v55 = sub_100120090(v51, v53, v14, v16);
    v56 = v54 < v55;
    if (v54 >= v55)
    {
      v57 = v53;
    }

    else
    {
      v57 = v48;
    }

    if (v56)
    {
      v58 = v46;
    }

    else
    {
      v58 = v51;
    }

    v59 = sub_10011F31C(v58, v57, v14);
    v61 = sub_10011F2FC(v59, v60);
    v62 = sub_10011F334(v58, v57, v61);
  }

  else
  {
    v62 = sub_10040907C([v10 CGPath], v89);
  }

  v64 = v62;
  v65 = v63;
  if ([v43 count])
  {
    v66 = [v43 objectAtIndexedSubscript:0];
    [v66 point];
    v85 = v64;
    v68 = v67;
    v70 = v69;

    v71 = [v43 lastObject];
    [v71 point];
    v73 = v72;
    v84 = v18;
    v75 = v74;

    v76 = sub_100120090(v68, v70, v14, v16);
    if (v76 >= sub_100120090(v73, v75, v14, v16))
    {
      v68 = v73;
    }

    else
    {
      v75 = v70;
    }

    v77 = sub_10011F31C(v68, v75, v14);
    v79 = sub_10011F2FC(v77, v78);
    v80 = v68;
    v81 = v75;
    v18 = v84;
    v64 = v85;
    v82 = sub_10011F334(v80, v81, v79);
  }

  else
  {
    v82 = sub_10040907C([v10 CGPath], v88);
  }

  a6->x = v64;
  a6->y = v65;
  a6[1].x = v82;
  a6[1].y = v83;
  if (a4)
  {
    a4->x = v18;
    a4->y = v87;
  }

  if (a5)
  {
    *a5 = v86;
  }
}

- (id)p_basePath
{
  [(CRLCalloutPathSource *)self naturalSize];
  v4 = v3;
  v6 = v5;
  [(CRLCalloutPathSource *)self cornerRadius];
  v8 = v7;
  [(CRLCalloutPathSource *)self maxCornerRadius];
  v10 = v9;
  v11 = +[CRLBezierPath bezierPath];
  [(CRLCalloutPathSource *)self cornerRadius];
  v13 = v12;
  [(CRLCalloutPathSource *)self maxCornerRadius];
  if (v13 >= v14)
  {
    [v11 appendBezierPathWithOvalInRect:{-0.5, -0.5, 1.0, 1.0}];
    [v11 closePath];
    memset(&v29, 0, sizeof(v29));
    CGAffineTransformMakeScale(&v29, self->_naturalSize.width, self->_naturalSize.height);
    v27 = v29;
    CGAffineTransformTranslate(&v28, &v27, 0.5, 0.5);
    v29 = v28;
    v27 = v28;
    CGAffineTransformRotate(&v28, &v27, 0.785398163);
    v29 = v28;
    [v11 transformUsingAffineTransform:&v28];
  }

  else
  {
    y = CGPointZero.y;
    v16 = fmin(v8, v10);
    v17 = sub_10011F334(0.0, v6, 0.0);
    v19 = v18;
    [v11 moveToPoint:?];
    v20 = sub_10011F334(CGPointZero.x, y, v16);
    [v11 appendBezierPathWithArcFromPoint:CGPointZero.x toPoint:y radius:{v20, v21, v16}];
    v22 = sub_10011F31C(v4, 0.0, 0.0);
    [v11 appendBezierPathWithArcFromPoint:v4 toPoint:0.0 radius:{v22, v23, v16}];
    v24 = sub_10011F31C(v4, v6, v16);
    [v11 appendBezierPathWithArcFromPoint:v4 toPoint:v6 radius:{v24, v25, v16}];
    [v11 appendBezierPathWithArcFromPoint:0.0 toPoint:v6 radius:{v17, v19, v16}];
    [v11 closePath];
  }

  return v11;
}

- (id)p_buildPath
{
  v3 = [(CRLCalloutPathSource *)self p_basePath];
  [(CRLCalloutPathSource *)self p_tailPosition];
  v5 = v4;
  v7 = v6;
  if ([v3 containsPoint:?])
  {
    v8 = v3;
  }

  else
  {
    [(CRLCalloutPathSource *)self p_getTailPath:v3 center:0 tailSize:0 intersections:v14];
    v9 = +[CRLBezierPath bezierPath];
    [v9 moveToPoint:{v14[0], v14[1]}];
    [v9 lineToPoint:{v5, v7}];
    [v9 lineToPoint:{v14[2], v14[3]}];
    v10 = [NSArray arrayWithObjects:v3, v9, 0];
    v11 = [CRLBezierPath uniteBezierPaths:v10];

    if ([v11 elementCount])
    {
      v12 = v11;
    }

    else
    {
      v12 = v3;
    }

    v8 = v12;
  }

  return v8;
}

- (void)p_setControlKnobPointForRoundedRect:(CGPoint)a3
{
  x = a3.x;
  [(CRLCalloutPathSource *)self maxCornerRadius:a3.x];
  v6 = sub_1004C3240(x, 0.0, v5);

  [(CRLCalloutPathSource *)self setCornerRadius:v6];
}

- (CGPoint)p_getControlKnobPointForRoundedRect
{
  cornerRadius = self->_cornerRadius;
  [(CRLCalloutPathSource *)self maxCornerRadius];
  v4 = sub_1004C3240(cornerRadius, 0.0, v3);
  v5 = v4;
  v6 = 0.0;
  result.y = v6;
  result.x = v5;
  return result;
}

- (id)inferredAccessibilityDescriptionNoShapeNames
{
  v3 = [(CRLPathSource *)self userDefinedName];
  if (![v3 length])
  {
    v4 = [(CRLCalloutPathSource *)self inferredAccessibilityDescription];

    v3 = v4;
  }

  return v3;
}

- (id)inferredAccessibilityDescription
{
  v2 = [(CRLCalloutPathSource *)self isTailAtCenter];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (v2)
  {
    v5 = @"Quote bubble";
  }

  else
  {
    v5 = @"Callout";
  }

  v6 = [v3 localizedStringForKey:v5 value:0 table:0];

  return v6;
}

- (id)inferredLocalizedAccessibilityDescriptionPlaceholder
{
  v2 = [(CRLCalloutPathSource *)self isTailAtCenter];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (v2)
  {
    v5 = @"Describe the selected quote bubble.";
  }

  else
  {
    v5 = @"Describe the selected callout.";
  }

  v6 = [v3 localizedStringForKey:v5 value:0 table:0];

  return v6;
}

- (id)crlaxLabelComponentForKnobTag:(unint64_t)a3
{
  if (a3 - 12 > 2)
  {
    v5 = 0;
  }

  else
  {
    v3 = *(&off_101855348 + a3 - 12);
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:0 table:0];
  }

  return v5;
}

- (id)crlaxValueForKnobTag:(unint64_t)a3
{
  if (a3 == 14)
  {
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"%d points" value:0 table:0];
    tailSize = self->_tailSize;
    cornerRadius = llroundf(tailSize);
  }

  else
  {
    if (a3 != 13)
    {
      v11 = 0;
      goto LABEL_10;
    }

    [(CRLCalloutPathSource *)self cornerRadius];
    v5 = v4;
    [(CRLCalloutPathSource *)self maxCornerRadius];
    if (v5 >= v6)
    {
      v7 = +[NSBundle mainBundle];
      v11 = [v7 localizedStringForKey:@"Oval" value:0 table:0];
      goto LABEL_9;
    }

    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"%d points" value:0 table:0];
    cornerRadius = self->_cornerRadius;
  }

  v11 = [NSString localizedStringWithFormat:v8, cornerRadius];

LABEL_9:
LABEL_10:

  return v11;
}

- (CGPoint)rawTailPosition
{
  x = self->_tailPosition.x;
  y = self->_tailPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)naturalSize
{
  width = self->_naturalSize.width;
  height = self->_naturalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end