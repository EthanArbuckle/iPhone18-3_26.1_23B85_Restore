@interface CRLConnectionLinePathSourceAccessibility
+ (id)crlaxCastFrom:(id)from;
- (id)_crlaxInferredLabel;
@end

@implementation CRLConnectionLinePathSourceAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (id)_crlaxInferredLabel
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Curved connection line" value:0 table:0];

  return v3;
}

@end