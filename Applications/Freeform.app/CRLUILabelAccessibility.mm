@interface CRLUILabelAccessibility
+ (id)crlaxCastFrom:(id)from;
- (BOOL)isAccessibilityElement;
@end

@implementation CRLUILabelAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (BOOL)isAccessibilityElement
{
  crlaxTarget = [(CRLUILabelAccessibility *)self crlaxTarget];
  text = [crlaxTarget text];
  v5 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v6 = [text stringByTrimmingCharactersInSet:v5];
  v7 = [v6 length];

  if (!v7)
  {
    return 0;
  }

  v9.receiver = self;
  v9.super_class = CRLUILabelAccessibility;
  return [(CRLUILabelAccessibility *)&v9 isAccessibilityElement];
}

@end