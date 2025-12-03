@interface CRLAngleGradientFillAccessibility
+ (id)crlaxCastFrom:(id)from;
- (NSString)crlaxStyleInfoDescription;
- (double)crlaxGradientAngleInDegrees;
@end

@implementation CRLAngleGradientFillAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (double)crlaxGradientAngleInDegrees
{
  crlaxTarget = [(CRLAngleGradientFillAccessibility *)self crlaxTarget];
  [crlaxTarget gradientAngleInDegrees];
  v4 = v3;

  return v4;
}

- (NSString)crlaxStyleInfoDescription
{
  [(CRLAngleGradientFillAccessibility *)self crlaxGradientAngleInDegrees];
  if (v3 == 0.0)
  {
    v11.receiver = self;
    v11.super_class = CRLAngleGradientFillAccessibility;
    crlaxStyleInfoDescription = [(CRLGradientFillAccessibility *)&v11 crlaxStyleInfoDescription];
  }

  else
  {
    v4 = v3;
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"%1$@ value:%2$.0f degrees" table:{0, 0}];

    v12.receiver = self;
    v12.super_class = CRLAngleGradientFillAccessibility;
    crlaxStyleInfoDescription2 = [(CRLGradientFillAccessibility *)&v12 crlaxStyleInfoDescription];
    crlaxStyleInfoDescription = [NSString stringWithFormat:v6, crlaxStyleInfoDescription2, *&v4];
  }

  capitalizedString = [crlaxStyleInfoDescription capitalizedString];

  return capitalizedString;
}

@end