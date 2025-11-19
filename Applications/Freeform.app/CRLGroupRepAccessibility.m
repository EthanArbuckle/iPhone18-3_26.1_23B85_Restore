@interface CRLGroupRepAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (BOOL)crlaxAllowedToEditChildren;
- (CRLGroupItemAccessibility)crlaxInfoAccessibility;
- (NSArray)crlaxChildReps;
- (id)childRepsForHitTesting;
- (id)crlaxLabel;
@end

@implementation CRLGroupRepAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (NSArray)crlaxChildReps
{
  v2 = [(CRLGroupRepAccessibility *)self crlaxTarget];
  v3 = [v2 childReps];

  return v3;
}

- (id)crlaxLabel
{
  v14 = 0;
  v2 = [(CRLGroupRepAccessibility *)self crlaxTarget];
  v3 = [v2 info];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsClass(v4, v3, 1, &v14);
  if (v14 == 1)
  {
    abort();
  }

  v6 = v5;

  v7 = [v6 accessibilityDescription];

  v8 = [v7 length];
  v9 = +[NSBundle mainBundle];
  v10 = v9;
  if (v8)
  {
    v11 = [v9 localizedStringForKey:@"%@ value:group" table:{0, 0}];

    v12 = [NSString localizedStringWithFormat:v11, v7];
    v10 = v11;
  }

  else
  {
    v12 = [v9 localizedStringForKey:@"Group" value:0 table:0];
  }

  return v12;
}

- (BOOL)crlaxAllowedToEditChildren
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10034E270;
  v4[3] = &unk_101839FF8;
  v4[4] = self;
  v4[5] = &v5;
  if (__CRLAccessibilityPerformSafeBlock(v4))
  {
    abort();
  }

  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (CRLGroupItemAccessibility)crlaxInfoAccessibility
{
  v8 = 0;
  v2 = [(CRLGroupRepAccessibility *)self crlaxTarget];
  v3 = [v2 info];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (id)childRepsForHitTesting
{
  v7.receiver = self;
  v7.super_class = CRLGroupRepAccessibility;
  v3 = [(CRLGroupRepAccessibility *)&v7 childRepsForHitTesting];
  v4 = +[CRLAccessibility sharedInstance];
  if ([v4 needsAccessibilityElements])
  {
    v5 = [(CRLGroupRepAccessibility *)self crlaxAllowedToEditChildren];

    if (v5)
    {
      goto LABEL_5;
    }

    v4 = v3;
    v3 = 0;
  }

LABEL_5:

  return v3;
}

@end