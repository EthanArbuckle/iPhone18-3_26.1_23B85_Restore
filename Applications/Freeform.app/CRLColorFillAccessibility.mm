@interface CRLColorFillAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (CRLColorAccessibility)crlaxColor;
- (NSString)crlaxColorFillName;
- (NSString)crlaxColorFillNameWithOpacity;
@end

@implementation CRLColorFillAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (NSString)crlaxColorFillName
{
  v2 = [(CRLColorFillAccessibility *)self crlaxColor];
  v3 = [v2 crlaxStyleInfoDescription];

  return v3;
}

- (NSString)crlaxColorFillNameWithOpacity
{
  v3 = [(CRLColorFillAccessibility *)self crlaxColor];
  v4 = [v3 crlaxTarget];
  v5 = [v4 isClear];

  if (v5)
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"Clear" value:0 table:0];
  }

  else
  {
    v8 = [(CRLColorFillAccessibility *)self crlaxColor];
    v9 = [v8 crlaxTarget];
    v10 = [v9 isOpaque];

    v6 = [(CRLColorFillAccessibility *)self crlaxColorFillName];
    if (v10)
    {
      goto LABEL_6;
    }

    v11 = [(CRLColorFillAccessibility *)self crlaxColor];
    v12 = [v11 crlaxTarget];
    [v12 alphaComponent];
    v13 = [CRLColorAccessibility crlaxOpacityDescriptionStringForAlphaComponent:?];
    v7 = __CRLAccessibilityStringForVariables(1, v6, v14, v15, v16, v17, v18, v19, v13);
  }

  v6 = v7;
LABEL_6:

  return v6;
}

- (CRLColorAccessibility)crlaxColor
{
  v8 = 0;
  v2 = [(CRLColorFillAccessibility *)self crlaxTarget];
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

@end