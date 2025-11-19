@interface CRLImageFillAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (CRLColorAccessibility)crlaxTintColor;
- (CRLDataAccessibility)crlaxImageData;
- (NSString)crlaxFillTechniqueDescription;
- (NSString)crlaxStyleInfoDescription;
- (unint64_t)crlaxFillTechnique;
@end

@implementation CRLImageFillAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (NSString)crlaxFillTechniqueDescription
{
  v2 = [(CRLImageFillAccessibility *)self crlaxFillTechnique];
  if (v2 > 4)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_10183ADB0[v2];
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:0 table:0];
  }

  return v5;
}

- (unint64_t)crlaxFillTechnique
{
  v2 = [(CRLImageFillAccessibility *)self crlaxTarget];
  v3 = [v2 technique];

  return v3;
}

- (CRLDataAccessibility)crlaxImageData
{
  v8 = 0;
  v2 = [(CRLImageFillAccessibility *)self crlaxTarget];
  v3 = [v2 imageData];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (CRLColorAccessibility)crlaxTintColor
{
  v8 = 0;
  v2 = [(CRLImageFillAccessibility *)self crlaxTarget];
  v3 = [v2 tintColor];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (NSString)crlaxStyleInfoDescription
{
  v3 = +[NSMutableArray array];
  v4 = [(CRLImageFillAccessibility *)self crlaxImageData];
  v5 = [v4 crlaxLabel];

  if (v5 && [v5 length])
  {
    [v3 addObject:v5];
  }

  v6 = [(CRLImageFillAccessibility *)self crlaxFillTechniqueDescription];
  v7 = v6;
  if (v6 && [v6 length])
  {
    [v3 addObject:v7];
  }

  v8 = [(CRLImageFillAccessibility *)self crlaxTintColor];
  v9 = [v8 crlaxStyleInfoDescription];

  if (v9 && [v9 length])
  {
    [v3 addObject:v9];
  }

  v17 = __CRLAccessibilityStringForArraysAndVariables(v3, v10, v11, v12, v13, v14, v15, v16, @"__CRLAccessibilityStringForArraysAndVariablesSentinel");

  return v17;
}

@end