@interface CRLWPSearchReferenceAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (CRLWPSelectionAccessibility)crlaxSelection;
@end

@implementation CRLWPSearchReferenceAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (CRLWPSelectionAccessibility)crlaxSelection
{
  v8 = 0;
  v2 = [(CRLWPSearchReferenceAccessibility *)self crlaxTarget];
  v3 = [v2 selection];

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