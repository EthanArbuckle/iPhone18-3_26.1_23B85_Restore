@interface CRLContainerRepAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (NSArray)crlaxChildReps;
@end

@implementation CRLContainerRepAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (NSArray)crlaxChildReps
{
  v8 = 0;
  v2 = [(CRLContainerRepAccessibility *)self crlaxTarget];
  v3 = [v2 childReps];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsClass(v4, v3, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

@end