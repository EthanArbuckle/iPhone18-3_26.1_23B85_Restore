@interface CRLTabsAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (unint64_t)crlaxCount;
@end

@implementation CRLTabsAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (unint64_t)crlaxCount
{
  v2 = [(CRLTabsAccessibility *)self crlaxTarget];
  v3 = [v2 count];

  return v3;
}

@end