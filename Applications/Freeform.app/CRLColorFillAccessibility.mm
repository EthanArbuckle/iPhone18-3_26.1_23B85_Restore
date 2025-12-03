@interface CRLColorFillAccessibility
+ (id)crlaxCastFrom:(id)from;
- (CRLColorAccessibility)crlaxColor;
- (NSString)crlaxColorFillName;
- (NSString)crlaxColorFillNameWithOpacity;
@end

@implementation CRLColorFillAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (NSString)crlaxColorFillName
{
  crlaxColor = [(CRLColorFillAccessibility *)self crlaxColor];
  crlaxStyleInfoDescription = [crlaxColor crlaxStyleInfoDescription];

  return crlaxStyleInfoDescription;
}

- (NSString)crlaxColorFillNameWithOpacity
{
  crlaxColor = [(CRLColorFillAccessibility *)self crlaxColor];
  crlaxTarget = [crlaxColor crlaxTarget];
  isClear = [crlaxTarget isClear];

  if (isClear)
  {
    crlaxColorFillName = +[NSBundle mainBundle];
    v7 = [crlaxColorFillName localizedStringForKey:@"Clear" value:0 table:0];
  }

  else
  {
    crlaxColor2 = [(CRLColorFillAccessibility *)self crlaxColor];
    crlaxTarget2 = [crlaxColor2 crlaxTarget];
    isOpaque = [crlaxTarget2 isOpaque];

    crlaxColorFillName = [(CRLColorFillAccessibility *)self crlaxColorFillName];
    if (isOpaque)
    {
      goto LABEL_6;
    }

    crlaxColor3 = [(CRLColorFillAccessibility *)self crlaxColor];
    crlaxTarget3 = [crlaxColor3 crlaxTarget];
    [crlaxTarget3 alphaComponent];
    v13 = [CRLColorAccessibility crlaxOpacityDescriptionStringForAlphaComponent:?];
    v7 = __CRLAccessibilityStringForVariables(1, crlaxColorFillName, v14, v15, v16, v17, v18, v19, v13);
  }

  crlaxColorFillName = v7;
LABEL_6:

  return crlaxColorFillName;
}

- (CRLColorAccessibility)crlaxColor
{
  v8 = 0;
  crlaxTarget = [(CRLColorFillAccessibility *)self crlaxTarget];
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

@end