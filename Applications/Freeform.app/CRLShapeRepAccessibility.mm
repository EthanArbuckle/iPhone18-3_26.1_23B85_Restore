@interface CRLShapeRepAccessibility
+ (id)crlaxCastFrom:(id)from;
- (BOOL)containsPoint:(CGPoint)point withPrecision:(BOOL)precision;
- (BOOL)crlaxCanOccludeConnectionKnobDragging;
- (BOOL)crlaxIsIgnored;
- (CRLShapeItemAccessibility)crlaxShapeInfo;
- (NSString)crlaxLabel;
- (id)accessibilityHint;
- (id)crlaxKnobLabel;
- (id)crlaxSummaryDescription;
@end

@implementation CRLShapeRepAccessibility

- (id)accessibilityHint
{
  v16.receiver = self;
  v16.super_class = CRLShapeRepAccessibility;
  accessibilityHint = [(CRLCanvasRepAccessibility *)&v16 accessibilityHint];
  crlaxShapeInfo = [(CRLShapeRepAccessibility *)self crlaxShapeInfo];
  crlaxShapeStyleName = [crlaxShapeInfo crlaxShapeStyleName];

  crlaxShapeInfo2 = [(CRLShapeRepAccessibility *)self crlaxShapeInfo];
  crlaxShapeTypeHint = [crlaxShapeInfo2 crlaxShapeTypeHint];

  v14 = __CRLAccessibilityStringForVariables(1, crlaxShapeTypeHint, v8, v9, v10, v11, v12, v13, crlaxShapeStyleName);

  return v14;
}

- (id)crlaxSummaryDescription
{
  crlaxShapeInfo = [(CRLShapeRepAccessibility *)self crlaxShapeInfo];
  crlaxShapeStyleName = [crlaxShapeInfo crlaxShapeStyleName];

  return crlaxShapeStyleName;
}

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (NSString)crlaxLabel
{
  crlaxTarget = [(CRLShapeRepAccessibility *)self crlaxTarget];
  shapeInfo = [crlaxTarget shapeInfo];

  localizedName = [shapeInfo localizedName];
  accessibilityDescription = [shapeInfo accessibilityDescription];
  v12 = __CRLAccessibilityStringForVariables(1, localizedName, v6, v7, v8, v9, v10, v11, accessibilityDescription);

  return v12;
}

- (CRLShapeItemAccessibility)crlaxShapeInfo
{
  v8 = 0;
  crlaxTarget = [(CRLShapeRepAccessibility *)self crlaxTarget];
  shapeInfo = [crlaxTarget shapeInfo];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, shapeInfo, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (id)crlaxKnobLabel
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Shape" value:0 table:0];

  return v3;
}

- (BOOL)crlaxIsIgnored
{
  crlaxInteractiveCanvasController = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  crlaxShapeRepsAreIgnored = [crlaxInteractiveCanvasController crlaxShapeRepsAreIgnored];

  return crlaxShapeRepsAreIgnored;
}

- (BOOL)containsPoint:(CGPoint)point withPrecision:(BOOL)precision
{
  precisionCopy = precision;
  y = point.y;
  x = point.x;
  v8 = +[CRLAccessibility sharedInstance];
  needsAccessibilityElements = [v8 needsAccessibilityElements];

  if (needsAccessibilityElements)
  {
    [(CRLCanvasRepAccessibility *)self crlaxNaturalBounds];
    v14 = x;
    v15 = y;

    return CGRectContainsPoint(*&v10, *&v14);
  }

  else
  {
    v17.receiver = self;
    v17.super_class = CRLShapeRepAccessibility;
    return [(CRLShapeRepAccessibility *)&v17 containsPoint:precisionCopy withPrecision:x, y];
  }
}

- (BOOL)crlaxCanOccludeConnectionKnobDragging
{
  crlaxTarget = [(CRLShapeRepAccessibility *)self crlaxTarget];
  info = [crlaxTarget info];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

@end