@interface CRLConnectionLinePathSourceAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (id)_crlaxInferredLabel;
@end

@implementation CRLConnectionLinePathSourceAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (id)_crlaxInferredLabel
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Curved connection line" value:0 table:0];

  return v3;
}

@end