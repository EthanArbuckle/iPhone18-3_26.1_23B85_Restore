@interface CRLScalarPathSourceAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (id)crlaxHint;
- (unint64_t)_crlaxNumberOfSides;
@end

@implementation CRLScalarPathSourceAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (id)crlaxHint
{
  v3 = [(CRLScalarPathSourceAccessibility *)self crlaxTarget];
  v4 = [v3 type];

  if (v4 == 1)
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"A polygon with %@ sides" value:0 table:0];
    v7 = CRLAccessibilityLocalizedUnsignedInteger([(CRLScalarPathSourceAccessibility *)self _crlaxNumberOfSides]);
    v8 = [NSString stringWithFormat:v6, v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)_crlaxNumberOfSides
{
  v2 = [(CRLScalarPathSourceAccessibility *)self crlaxTarget];
  [v2 scalar];
  v4 = llround(v3);

  return v4;
}

@end