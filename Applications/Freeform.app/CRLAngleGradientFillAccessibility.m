@interface CRLAngleGradientFillAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (NSString)crlaxStyleInfoDescription;
- (double)crlaxGradientAngleInDegrees;
@end

@implementation CRLAngleGradientFillAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (double)crlaxGradientAngleInDegrees
{
  v2 = [(CRLAngleGradientFillAccessibility *)self crlaxTarget];
  [v2 gradientAngleInDegrees];
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
    v8 = [(CRLGradientFillAccessibility *)&v11 crlaxStyleInfoDescription];
  }

  else
  {
    v4 = v3;
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"%1$@ value:%2$.0f degrees" table:{0, 0}];

    v12.receiver = self;
    v12.super_class = CRLAngleGradientFillAccessibility;
    v7 = [(CRLGradientFillAccessibility *)&v12 crlaxStyleInfoDescription];
    v8 = [NSString stringWithFormat:v6, v7, *&v4];
  }

  v9 = [v8 capitalizedString];

  return v9;
}

@end