@interface CRLStrokeAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (BOOL)crlaxStrokeIsEmpty;
- (CRLColorAccessibility)crlaxStrokeColor;
- (CRLStrokePatternAccessibility)crlaxStrokePattern;
- (NSString)crlaxStrokeColorDescription;
- (NSString)crlaxStrokeFullDescription;
- (NSString)crlaxStrokePatternDescription;
- (NSString)crlaxStrokeWidthDescription;
- (NSString)crlaxStyleInfoDescription;
- (double)crlaxStrokeWidth;
@end

@implementation CRLStrokeAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (CRLStrokePatternAccessibility)crlaxStrokePattern
{
  v8 = 0;
  v2 = [(CRLStrokeAccessibility *)self crlaxTarget];
  v3 = [v2 pattern];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (BOOL)crlaxStrokeIsEmpty
{
  v2 = [(CRLStrokeAccessibility *)self crlaxTarget];
  v3 = [v2 isNullStroke];

  return v3;
}

- (NSString)crlaxStrokePatternDescription
{
  if ([(CRLStrokeAccessibility *)self crlaxStrokeIsEmpty])
  {
    v3 = +[NSBundle mainBundle];
    [v3 localizedStringForKey:@"Empty stroke" value:0 table:0];
  }

  else
  {
    v3 = [(CRLStrokeAccessibility *)self crlaxStrokePattern];
    [v3 crlaxStyleInfoDescription];
  }
  v4 = ;

  return v4;
}

- (NSString)crlaxStrokeWidthDescription
{
  [(CRLStrokeAccessibility *)self crlaxStrokeWidth];
  v3 = v2;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"%.2f points wide" value:0 table:0];
  v6 = [NSString stringWithFormat:v5, v3];

  return v6;
}

- (NSString)crlaxStrokeColorDescription
{
  v2 = [(CRLStrokeAccessibility *)self crlaxStrokeColor];
  v3 = [v2 crlaxStyleInfoDescription];

  return v3;
}

- (NSString)crlaxStrokeFullDescription
{
  if ([(CRLStrokeAccessibility *)self crlaxStrokeIsEmpty]|| ([(CRLStrokeAccessibility *)self crlaxStrokeWidth], v3 <= 0.0))
  {
    v4 = +[NSBundle mainBundle];
    v14 = [v4 localizedStringForKey:@"None" value:0 table:0];
  }

  else
  {
    v4 = [(CRLStrokeAccessibility *)self crlaxStrokeColor];
    v5 = [v4 crlaxApproximateColorDescriptionWithOpacity];
    v6 = [(CRLStrokeAccessibility *)self crlaxStrokeWidthDescription];
    v7 = [(CRLStrokeAccessibility *)self crlaxStrokePattern];
    v16 = [v7 crlaxStyleInfoDescriptionOmittingStroke];
    v14 = __CRLAccessibilityStringForVariables(1, v5, v8, v9, v10, v11, v12, v13, v6);
  }

  return v14;
}

- (CRLColorAccessibility)crlaxStrokeColor
{
  v8 = 0;
  v2 = [(CRLStrokeAccessibility *)self crlaxTarget];
  v3 = [v2 color];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (double)crlaxStrokeWidth
{
  v2 = [(CRLStrokeAccessibility *)self crlaxTarget];
  [v2 width];
  v4 = v3;

  return v4;
}

- (NSString)crlaxStyleInfoDescription
{
  if ([(CRLStrokeAccessibility *)self crlaxStrokeIsEmpty])
  {
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"No stroke" value:0 table:0];
  }

  else
  {
    v3 = [(CRLStrokeAccessibility *)self crlaxStrokePatternDescription];
    v5 = [(CRLStrokeAccessibility *)self crlaxStrokeWidthDescription];
    v13 = [(CRLStrokeAccessibility *)self crlaxStrokeColorDescription];
    v4 = __CRLAccessibilityStringForVariables(1, v3, v6, v7, v8, v9, v10, v11, v5);
  }

  return v4;
}

@end