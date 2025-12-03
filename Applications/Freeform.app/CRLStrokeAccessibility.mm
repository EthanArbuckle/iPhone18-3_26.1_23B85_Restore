@interface CRLStrokeAccessibility
+ (id)crlaxCastFrom:(id)from;
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

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (CRLStrokePatternAccessibility)crlaxStrokePattern
{
  v8 = 0;
  crlaxTarget = [(CRLStrokeAccessibility *)self crlaxTarget];
  pattern = [crlaxTarget pattern];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, pattern, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (BOOL)crlaxStrokeIsEmpty
{
  crlaxTarget = [(CRLStrokeAccessibility *)self crlaxTarget];
  isNullStroke = [crlaxTarget isNullStroke];

  return isNullStroke;
}

- (NSString)crlaxStrokePatternDescription
{
  if ([(CRLStrokeAccessibility *)self crlaxStrokeIsEmpty])
  {
    crlaxStrokePattern = +[NSBundle mainBundle];
    [crlaxStrokePattern localizedStringForKey:@"Empty stroke" value:0 table:0];
  }

  else
  {
    crlaxStrokePattern = [(CRLStrokeAccessibility *)self crlaxStrokePattern];
    [crlaxStrokePattern crlaxStyleInfoDescription];
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
  crlaxStrokeColor = [(CRLStrokeAccessibility *)self crlaxStrokeColor];
  crlaxStyleInfoDescription = [crlaxStrokeColor crlaxStyleInfoDescription];

  return crlaxStyleInfoDescription;
}

- (NSString)crlaxStrokeFullDescription
{
  if ([(CRLStrokeAccessibility *)self crlaxStrokeIsEmpty]|| ([(CRLStrokeAccessibility *)self crlaxStrokeWidth], v3 <= 0.0))
  {
    crlaxStrokeColor = +[NSBundle mainBundle];
    v14 = [crlaxStrokeColor localizedStringForKey:@"None" value:0 table:0];
  }

  else
  {
    crlaxStrokeColor = [(CRLStrokeAccessibility *)self crlaxStrokeColor];
    crlaxApproximateColorDescriptionWithOpacity = [crlaxStrokeColor crlaxApproximateColorDescriptionWithOpacity];
    crlaxStrokeWidthDescription = [(CRLStrokeAccessibility *)self crlaxStrokeWidthDescription];
    crlaxStrokePattern = [(CRLStrokeAccessibility *)self crlaxStrokePattern];
    crlaxStyleInfoDescriptionOmittingStroke = [crlaxStrokePattern crlaxStyleInfoDescriptionOmittingStroke];
    v14 = __CRLAccessibilityStringForVariables(1, crlaxApproximateColorDescriptionWithOpacity, v8, v9, v10, v11, v12, v13, crlaxStrokeWidthDescription);
  }

  return v14;
}

- (CRLColorAccessibility)crlaxStrokeColor
{
  v8 = 0;
  crlaxTarget = [(CRLStrokeAccessibility *)self crlaxTarget];
  color = [crlaxTarget color];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, color, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (double)crlaxStrokeWidth
{
  crlaxTarget = [(CRLStrokeAccessibility *)self crlaxTarget];
  [crlaxTarget width];
  v4 = v3;

  return v4;
}

- (NSString)crlaxStyleInfoDescription
{
  if ([(CRLStrokeAccessibility *)self crlaxStrokeIsEmpty])
  {
    crlaxStrokePatternDescription = +[NSBundle mainBundle];
    v4 = [crlaxStrokePatternDescription localizedStringForKey:@"No stroke" value:0 table:0];
  }

  else
  {
    crlaxStrokePatternDescription = [(CRLStrokeAccessibility *)self crlaxStrokePatternDescription];
    crlaxStrokeWidthDescription = [(CRLStrokeAccessibility *)self crlaxStrokeWidthDescription];
    crlaxStrokeColorDescription = [(CRLStrokeAccessibility *)self crlaxStrokeColorDescription];
    v4 = __CRLAccessibilityStringForVariables(1, crlaxStrokePatternDescription, v6, v7, v8, v9, v10, v11, crlaxStrokeWidthDescription);
  }

  return v4;
}

@end