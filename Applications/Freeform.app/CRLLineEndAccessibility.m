@interface CRLLineEndAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (BOOL)crlaxIsTypeNone;
- (NSString)crlaxStyleInfoDescription;
@end

@implementation CRLLineEndAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (BOOL)crlaxIsTypeNone
{
  v2 = [(CRLLineEndAccessibility *)self crlaxTarget];
  v3 = [CRLLineEnd lineEndTypeFromLineEnd:v2]== 10;

  return v3;
}

- (NSString)crlaxStyleInfoDescription
{
  v2 = [(CRLLineEndAccessibility *)self crlaxTarget];
  v3 = [v2 accessibilityDescription];

  return v3;
}

@end