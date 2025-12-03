@interface CRLWPSearchReferenceAccessibility
+ (id)crlaxCastFrom:(id)from;
- (CRLWPSelectionAccessibility)crlaxSelection;
@end

@implementation CRLWPSearchReferenceAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (CRLWPSelectionAccessibility)crlaxSelection
{
  v8 = 0;
  crlaxTarget = [(CRLWPSearchReferenceAccessibility *)self crlaxTarget];
  selection = [crlaxTarget selection];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, selection, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

@end