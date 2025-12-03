@interface CRLImageFillAccessibility
+ (id)crlaxCastFrom:(id)from;
- (CRLColorAccessibility)crlaxTintColor;
- (CRLDataAccessibility)crlaxImageData;
- (NSString)crlaxFillTechniqueDescription;
- (NSString)crlaxStyleInfoDescription;
- (unint64_t)crlaxFillTechnique;
@end

@implementation CRLImageFillAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (NSString)crlaxFillTechniqueDescription
{
  crlaxFillTechnique = [(CRLImageFillAccessibility *)self crlaxFillTechnique];
  if (crlaxFillTechnique > 4)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_10183ADB0[crlaxFillTechnique];
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:0 table:0];
  }

  return v5;
}

- (unint64_t)crlaxFillTechnique
{
  crlaxTarget = [(CRLImageFillAccessibility *)self crlaxTarget];
  technique = [crlaxTarget technique];

  return technique;
}

- (CRLDataAccessibility)crlaxImageData
{
  v8 = 0;
  crlaxTarget = [(CRLImageFillAccessibility *)self crlaxTarget];
  imageData = [crlaxTarget imageData];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, imageData, 1, &v8);
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
  crlaxTarget = [(CRLImageFillAccessibility *)self crlaxTarget];
  tintColor = [crlaxTarget tintColor];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, tintColor, 1, &v8);
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
  crlaxImageData = [(CRLImageFillAccessibility *)self crlaxImageData];
  crlaxLabel = [crlaxImageData crlaxLabel];

  if (crlaxLabel && [crlaxLabel length])
  {
    [v3 addObject:crlaxLabel];
  }

  crlaxFillTechniqueDescription = [(CRLImageFillAccessibility *)self crlaxFillTechniqueDescription];
  v7 = crlaxFillTechniqueDescription;
  if (crlaxFillTechniqueDescription && [crlaxFillTechniqueDescription length])
  {
    [v3 addObject:v7];
  }

  crlaxTintColor = [(CRLImageFillAccessibility *)self crlaxTintColor];
  crlaxStyleInfoDescription = [crlaxTintColor crlaxStyleInfoDescription];

  if (crlaxStyleInfoDescription && [crlaxStyleInfoDescription length])
  {
    [v3 addObject:crlaxStyleInfoDescription];
  }

  v17 = __CRLAccessibilityStringForArraysAndVariables(v3, v10, v11, v12, v13, v14, v15, v16, @"__CRLAccessibilityStringForArraysAndVariablesSentinel");

  return v17;
}

@end