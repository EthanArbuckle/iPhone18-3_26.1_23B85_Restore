@interface CRLTabsAccessibility
+ (id)crlaxCastFrom:(id)from;
- (unint64_t)crlaxCount;
@end

@implementation CRLTabsAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (unint64_t)crlaxCount
{
  crlaxTarget = [(CRLTabsAccessibility *)self crlaxTarget];
  v3 = [crlaxTarget count];

  return v3;
}

@end