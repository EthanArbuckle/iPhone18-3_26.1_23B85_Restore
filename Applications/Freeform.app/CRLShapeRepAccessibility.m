@interface CRLShapeRepAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (BOOL)containsPoint:(CGPoint)a3 withPrecision:(BOOL)a4;
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
  v3 = [(CRLCanvasRepAccessibility *)&v16 accessibilityHint];
  v4 = [(CRLShapeRepAccessibility *)self crlaxShapeInfo];
  v5 = [v4 crlaxShapeStyleName];

  v6 = [(CRLShapeRepAccessibility *)self crlaxShapeInfo];
  v7 = [v6 crlaxShapeTypeHint];

  v14 = __CRLAccessibilityStringForVariables(1, v7, v8, v9, v10, v11, v12, v13, v5);

  return v14;
}

- (id)crlaxSummaryDescription
{
  v2 = [(CRLShapeRepAccessibility *)self crlaxShapeInfo];
  v3 = [v2 crlaxShapeStyleName];

  return v3;
}

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (NSString)crlaxLabel
{
  v2 = [(CRLShapeRepAccessibility *)self crlaxTarget];
  v3 = [v2 shapeInfo];

  v4 = [v3 localizedName];
  v5 = [v3 accessibilityDescription];
  v12 = __CRLAccessibilityStringForVariables(1, v4, v6, v7, v8, v9, v10, v11, v5);

  return v12;
}

- (CRLShapeItemAccessibility)crlaxShapeInfo
{
  v8 = 0;
  v2 = [(CRLShapeRepAccessibility *)self crlaxTarget];
  v3 = [v2 shapeInfo];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v8);
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
  v2 = [(CRLCanvasRepAccessibility *)self crlaxInteractiveCanvasController];
  v3 = [v2 crlaxShapeRepsAreIgnored];

  return v3;
}

- (BOOL)containsPoint:(CGPoint)a3 withPrecision:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = +[CRLAccessibility sharedInstance];
  v9 = [v8 needsAccessibilityElements];

  if (v9)
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
    return [(CRLShapeRepAccessibility *)&v17 containsPoint:v4 withPrecision:x, y];
  }
}

- (BOOL)crlaxCanOccludeConnectionKnobDragging
{
  v2 = [(CRLShapeRepAccessibility *)self crlaxTarget];
  v3 = [v2 info];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

@end