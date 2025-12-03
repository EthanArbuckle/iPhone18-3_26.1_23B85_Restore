@interface CRLLineEndAccessibility
+ (id)crlaxCastFrom:(id)from;
- (BOOL)crlaxIsTypeNone;
- (NSString)crlaxStyleInfoDescription;
@end

@implementation CRLLineEndAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (BOOL)crlaxIsTypeNone
{
  crlaxTarget = [(CRLLineEndAccessibility *)self crlaxTarget];
  v3 = [CRLLineEnd lineEndTypeFromLineEnd:crlaxTarget]== 10;

  return v3;
}

- (NSString)crlaxStyleInfoDescription
{
  crlaxTarget = [(CRLLineEndAccessibility *)self crlaxTarget];
  accessibilityDescription = [crlaxTarget accessibilityDescription];

  return accessibilityDescription;
}

@end