@interface CRLContainerRepAccessibility
+ (id)crlaxCastFrom:(id)from;
- (NSArray)crlaxChildReps;
@end

@implementation CRLContainerRepAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (NSArray)crlaxChildReps
{
  v8 = 0;
  crlaxTarget = [(CRLContainerRepAccessibility *)self crlaxTarget];
  childReps = [crlaxTarget childReps];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsClass(v4, childReps, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

@end