@interface CRLScalarPathSourceAccessibility
+ (id)crlaxCastFrom:(id)from;
- (id)crlaxHint;
- (unint64_t)_crlaxNumberOfSides;
@end

@implementation CRLScalarPathSourceAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (id)crlaxHint
{
  crlaxTarget = [(CRLScalarPathSourceAccessibility *)self crlaxTarget];
  type = [crlaxTarget type];

  if (type == 1)
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
  crlaxTarget = [(CRLScalarPathSourceAccessibility *)self crlaxTarget];
  [crlaxTarget scalar];
  v4 = llround(v3);

  return v4;
}

@end