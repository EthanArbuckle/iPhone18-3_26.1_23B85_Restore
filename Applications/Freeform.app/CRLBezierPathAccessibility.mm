@interface CRLBezierPathAccessibility
+ (id)crlaxCastFrom:(id)from;
- (BOOL)_crlaxHasZeroArcs;
- (BOOL)_crlaxIsCircular;
- (BOOL)_crlaxIsDiamond;
- (BOOL)_crlaxIsLineSegment;
- (BOOL)_crlaxIsRectangular;
- (BOOL)_crlaxIsTriangular;
- (id)crlaxInferredLabelForSize:(CGSize)size;
- (int64_t)_crlaxElementAtIndex:(int64_t)index;
- (int64_t)_crlaxElementAtIndex:(int64_t)index associatedPoints:(CGPoint *)points;
- (unint64_t)_crlaxElementCount;
- (unint64_t)_crlaxNumberOfArcs;
- (unint64_t)_crlaxNumberOfLineSegmentsConsecutive:(BOOL)consecutive;
- (unint64_t)_crlaxNumberOfSides;
@end

@implementation CRLBezierPathAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (id)crlaxInferredLabelForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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

  _crlaxNumberOfSides = [(CRLBezierPathAccessibility *)self _crlaxNumberOfSides];
  if (_crlaxNumberOfSides)
  {
    v14 = _crlaxNumberOfSides;
    v7 = +[NSBundle mainBundle];
    v15 = [v7 localizedStringForKey:@"%@-sided shape" value:0 table:0];
    v16 = CRLAccessibilityLocalizedUnsignedInteger(v14);
    v9 = [NSString stringWithFormat:v15, v16];

LABEL_30:
    goto LABEL_17;
  }

  _crlaxNumberOfLineSegments = [(CRLBezierPathAccessibility *)self _crlaxNumberOfLineSegments];
  _crlaxHasZeroArcs = [(CRLBezierPathAccessibility *)self _crlaxHasZeroArcs];
  if (_crlaxHasZeroArcs && _crlaxNumberOfLineSegments)
  {
    v7 = +[NSBundle mainBundle];
    v15 = [v7 localizedStringForKey:@"%@ line segments value:non-closed" table:{0, 0}];
    v19 = CRLAccessibilityLocalizedUnsignedInteger(_crlaxNumberOfLineSegments);
    v9 = [NSString stringWithFormat:v15, v19];

    goto LABEL_30;
  }

  v9 = 0;
  if ((_crlaxHasZeroArcs & 1) == 0 && _crlaxNumberOfLineSegments)
  {
    _crlaxNumberOfArcs = [(CRLBezierPathAccessibility *)self _crlaxNumberOfArcs];
    v7 = +[NSBundle mainBundle];
    v21 = [v7 localizedStringForKey:@"%1$@ line segments value:%2$@ arcs" table:{0, 0}];
    v22 = CRLAccessibilityLocalizedUnsignedInteger(_crlaxNumberOfLineSegments);
    v23 = CRLAccessibilityLocalizedUnsignedInteger(_crlaxNumberOfArcs);
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
  crlaxTarget = [(CRLBezierPathAccessibility *)self crlaxTarget];
  isRectangular = [crlaxTarget isRectangular];

  return isRectangular;
}

- (BOOL)_crlaxIsTriangular
{
  crlaxTarget = [(CRLBezierPathAccessibility *)self crlaxTarget];
  isTriangular = [crlaxTarget isTriangular];

  return isTriangular;
}

- (BOOL)_crlaxIsCircular
{
  crlaxTarget = [(CRLBezierPathAccessibility *)self crlaxTarget];
  isCircular = [crlaxTarget isCircular];

  return isCircular;
}

- (BOOL)_crlaxIsDiamond
{
  crlaxTarget = [(CRLBezierPathAccessibility *)self crlaxTarget];
  isDiamond = [crlaxTarget isDiamond];

  return isDiamond;
}

- (BOOL)_crlaxIsLineSegment
{
  crlaxTarget = [(CRLBezierPathAccessibility *)self crlaxTarget];
  isLineSegment = [crlaxTarget isLineSegment];

  return isLineSegment;
}

- (unint64_t)_crlaxElementCount
{
  crlaxTarget = [(CRLBezierPathAccessibility *)self crlaxTarget];
  elementCount = [crlaxTarget elementCount];

  return elementCount;
}

- (BOOL)_crlaxHasZeroArcs
{
  crlaxTarget = [(CRLBezierPathAccessibility *)self crlaxTarget];
  isFlat = [crlaxTarget isFlat];

  return isFlat;
}

- (unint64_t)_crlaxNumberOfSides
{
  _crlaxElementCount = [(CRLBezierPathAccessibility *)self _crlaxElementCount];
  if (![(CRLBezierPathAccessibility *)self _crlaxHasZeroArcs])
  {
    return 0;
  }

  _crlaxNumberOfConsecutiveLineSegments = [(CRLBezierPathAccessibility *)self _crlaxNumberOfConsecutiveLineSegments];
  v5 = _crlaxNumberOfConsecutiveLineSegments + [(CRLBezierPathAccessibility *)self _crlaxLastElementIsClose];
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
  [(CRLBezierPathAccessibility *)self _crlaxElementAtIndex:v6 + _crlaxElementCount associatedPoints:&v9];
  if (v12 == v10 && v11 == v9)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)_crlaxNumberOfLineSegmentsConsecutive:(BOOL)consecutive
{
  _crlaxElementCount = [(CRLBezierPathAccessibility *)self _crlaxElementCount];
  if (_crlaxElementCount < 2)
  {
    return 0;
  }

  v6 = _crlaxElementCount;
  v7 = 0;
  for (i = 1; i != v6; ++i)
  {
    if ([(CRLBezierPathAccessibility *)self _crlaxElementAtIndex:i]== 1 || ![(CRLBezierPathAccessibility *)self _crlaxElementAtIndex:i])
    {
      ++v7;
    }

    else if (consecutive)
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

- (int64_t)_crlaxElementAtIndex:(int64_t)index
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
  v5[6] = index;
  if (__CRLAccessibilityPerformSafeBlock(v5))
  {
    abort();
  }

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)_crlaxElementAtIndex:(int64_t)index associatedPoints:(CGPoint *)points
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
  v6[6] = index;
  v6[7] = points;
  if (__CRLAccessibilityPerformSafeBlock(v6))
  {
    abort();
  }

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

@end