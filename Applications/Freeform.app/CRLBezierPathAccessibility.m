@interface CRLBezierPathAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (BOOL)_crlaxHasZeroArcs;
- (BOOL)_crlaxIsCircular;
- (BOOL)_crlaxIsDiamond;
- (BOOL)_crlaxIsLineSegment;
- (BOOL)_crlaxIsRectangular;
- (BOOL)_crlaxIsTriangular;
- (id)crlaxInferredLabelForSize:(CGSize)a3;
- (int64_t)_crlaxElementAtIndex:(int64_t)a3;
- (int64_t)_crlaxElementAtIndex:(int64_t)a3 associatedPoints:(CGPoint *)a4;
- (unint64_t)_crlaxElementCount;
- (unint64_t)_crlaxNumberOfArcs;
- (unint64_t)_crlaxNumberOfLineSegmentsConsecutive:(BOOL)a3;
- (unint64_t)_crlaxNumberOfSides;
@end

@implementation CRLBezierPathAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (id)crlaxInferredLabelForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ([(CRLBezierPathAccessibility *)self _crlaxIsLineSegment])
  {
    v6 = +[NSBundle mainBundle];
    v7 = v6;
    v8 = @"Line";
LABEL_16:
    v9 = [v6 localizedStringForKey:v8 value:0 table:0];
LABEL_17:

    goto LABEL_18;
  }

  if ([(CRLBezierPathAccessibility *)self _crlaxIsRectangular])
  {
    v7 = +[NSBundle mainBundle];
    if (height == width || vabdd_f64(height, width) < 0.00999999978)
    {
      v8 = @"Square";
    }

    else
    {
      v8 = @"Rectangle";
    }

LABEL_15:
    v6 = v7;
    goto LABEL_16;
  }

  if ([(CRLBezierPathAccessibility *)self _crlaxIsCircular])
  {
    v7 = +[NSBundle mainBundle];
    if (height == width || vabdd_f64(height, width) < 0.00999999978)
    {
      v8 = @"Circle";
    }

    else
    {
      v8 = @"Oval";
    }

    goto LABEL_15;
  }

  if ([(CRLBezierPathAccessibility *)self _crlaxIsTriangular])
  {
    v6 = +[NSBundle mainBundle];
    v7 = v6;
    v8 = @"Triangle";
    goto LABEL_16;
  }

  if ([(CRLBezierPathAccessibility *)self _crlaxIsDiamond])
  {
    v6 = +[NSBundle mainBundle];
    v7 = v6;
    v8 = @"Diamond";
    goto LABEL_16;
  }

  v13 = [(CRLBezierPathAccessibility *)self _crlaxNumberOfSides];
  if (v13)
  {
    v14 = v13;
    v7 = +[NSBundle mainBundle];
    v15 = [v7 localizedStringForKey:@"%@-sided shape" value:0 table:0];
    v16 = CRLAccessibilityLocalizedUnsignedInteger(v14);
    v9 = [NSString stringWithFormat:v15, v16];

LABEL_30:
    goto LABEL_17;
  }

  v17 = [(CRLBezierPathAccessibility *)self _crlaxNumberOfLineSegments];
  v18 = [(CRLBezierPathAccessibility *)self _crlaxHasZeroArcs];
  if (v18 && v17)
  {
    v7 = +[NSBundle mainBundle];
    v15 = [v7 localizedStringForKey:@"%@ line segments value:non-closed" table:{0, 0}];
    v19 = CRLAccessibilityLocalizedUnsignedInteger(v17);
    v9 = [NSString stringWithFormat:v15, v19];

    goto LABEL_30;
  }

  v9 = 0;
  if ((v18 & 1) == 0 && v17)
  {
    v20 = [(CRLBezierPathAccessibility *)self _crlaxNumberOfArcs];
    v7 = +[NSBundle mainBundle];
    v21 = [v7 localizedStringForKey:@"%1$@ line segments value:%2$@ arcs" table:{0, 0}];
    v22 = CRLAccessibilityLocalizedUnsignedInteger(v17);
    v23 = CRLAccessibilityLocalizedUnsignedInteger(v20);
    v9 = [NSString stringWithFormat:v21, v22, v23];

    goto LABEL_17;
  }

LABEL_18:
  if (![v9 length])
  {
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"Shape" value:0 table:0];

    v9 = v11;
  }

  return v9;
}

- (BOOL)_crlaxIsRectangular
{
  v2 = [(CRLBezierPathAccessibility *)self crlaxTarget];
  v3 = [v2 isRectangular];

  return v3;
}

- (BOOL)_crlaxIsTriangular
{
  v2 = [(CRLBezierPathAccessibility *)self crlaxTarget];
  v3 = [v2 isTriangular];

  return v3;
}

- (BOOL)_crlaxIsCircular
{
  v2 = [(CRLBezierPathAccessibility *)self crlaxTarget];
  v3 = [v2 isCircular];

  return v3;
}

- (BOOL)_crlaxIsDiamond
{
  v2 = [(CRLBezierPathAccessibility *)self crlaxTarget];
  v3 = [v2 isDiamond];

  return v3;
}

- (BOOL)_crlaxIsLineSegment
{
  v2 = [(CRLBezierPathAccessibility *)self crlaxTarget];
  v3 = [v2 isLineSegment];

  return v3;
}

- (unint64_t)_crlaxElementCount
{
  v2 = [(CRLBezierPathAccessibility *)self crlaxTarget];
  v3 = [v2 elementCount];

  return v3;
}

- (BOOL)_crlaxHasZeroArcs
{
  v2 = [(CRLBezierPathAccessibility *)self crlaxTarget];
  v3 = [v2 isFlat];

  return v3;
}

- (unint64_t)_crlaxNumberOfSides
{
  v3 = [(CRLBezierPathAccessibility *)self _crlaxElementCount];
  if (![(CRLBezierPathAccessibility *)self _crlaxHasZeroArcs])
  {
    return 0;
  }

  v4 = [(CRLBezierPathAccessibility *)self _crlaxNumberOfConsecutiveLineSegments];
  v5 = v4 + [(CRLBezierPathAccessibility *)self _crlaxLastElementIsClose];
  v11 = 0.0;
  v12 = 0.0;
  if ([(CRLBezierPathAccessibility *)self _crlaxLastElementIsMove])
  {
    v6 = -2;
  }

  else
  {
    v6 = -1;
  }

  v10 = 0.0;
  [(CRLBezierPathAccessibility *)self _crlaxElementAtIndex:0 associatedPoints:&v11, 0];
  [(CRLBezierPathAccessibility *)self _crlaxElementAtIndex:v6 + v3 associatedPoints:&v9];
  if (v12 == v10 && v11 == v9)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)_crlaxNumberOfLineSegmentsConsecutive:(BOOL)a3
{
  v5 = [(CRLBezierPathAccessibility *)self _crlaxElementCount];
  if (v5 < 2)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  for (i = 1; i != v6; ++i)
  {
    if ([(CRLBezierPathAccessibility *)self _crlaxElementAtIndex:i]== 1 || ![(CRLBezierPathAccessibility *)self _crlaxElementAtIndex:i])
    {
      ++v7;
    }

    else if (a3)
    {
      return v7;
    }
  }

  return v7;
}

- (unint64_t)_crlaxNumberOfArcs
{
  if ([(CRLBezierPathAccessibility *)self _crlaxElementCount]< 2)
  {
    return 0;
  }

  v3 = 0;
  v4 = 1;
  do
  {
    if ([(CRLBezierPathAccessibility *)self _crlaxElementAtIndex:v4]== 2)
    {
      ++v3;
    }

    ++v4;
  }

  while (v4 < [(CRLBezierPathAccessibility *)self _crlaxElementCount]);
  return v3;
}

- (int64_t)_crlaxElementAtIndex:(int64_t)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1004E8754;
  v5[3] = &unk_10183B670;
  v5[4] = self;
  v5[5] = &v6;
  v5[6] = a3;
  if (__CRLAccessibilityPerformSafeBlock(v5))
  {
    abort();
  }

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)_crlaxElementAtIndex:(int64_t)a3 associatedPoints:(CGPoint *)a4
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1004E8854;
  v6[3] = &unk_1018427D8;
  v6[4] = self;
  v6[5] = &v7;
  v6[6] = a3;
  v6[7] = a4;
  if (__CRLAccessibilityPerformSafeBlock(v6))
  {
    abort();
  }

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

@end