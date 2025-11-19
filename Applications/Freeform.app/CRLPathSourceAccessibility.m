@interface CRLPathSourceAccessibility
+ (id)crlaxCastFrom:(id)a3;
+ (id)pathSourceForShapeType:(int64_t)a3 naturalSize:(CGSize)a4;
- (BOOL)crlaxIsCircular;
- (BOOL)crlaxIsRectangular;
- (CGSize)crlaxNaturalSize;
- (NSString)crlaxLabel;
- (id)_crlaxInferredLabel;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_crlaxUpdatePathSourceLabelForType:(int64_t)a3;
@end

@implementation CRLPathSourceAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

+ (id)pathSourceForShapeType:(int64_t)a3 naturalSize:(CGSize)a4
{
  v11 = 0;
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___CRLPathSourceAccessibility;
  v5 = objc_msgSendSuper2(&v10, "pathSourceForShapeType:naturalSize:", a4.width, a4.height);
  v6 = objc_opt_class();
  v7 = __CRLAccessibilityCastAsSafeCategory(v6, v5, 1, &v11);
  if (v11 == 1)
  {
    abort();
  }

  v8 = v7;

  [v8 _crlaxUpdatePathSourceLabelForType:a3];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = CRLPathSourceAccessibility;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1002E2A2C;
  v6[3] = &unk_10183AE28;
  v4 = [(CRLPathSourceAccessibility *)&v9 copyWithZone:a3];
  v7 = v4;
  v8 = self;
  if (__CRLAccessibilityPerformSafeBlock(v6))
  {
    abort();
  }

  return v4;
}

- (NSString)crlaxLabel
{
  v3 = [(CRLPathSourceAccessibility *)self _crlaxStoredLabel];
  if (!v3)
  {
    v4 = [(CRLPathSourceAccessibility *)self crlaxTarget];
    v3 = [v4 inferredAccessibilityDescription];

    if (CRLAccessibilityShouldPerformValidationChecks())
    {
      if (!v3)
      {
        ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
        if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"_crlaxInferredLabel did not return an inferred label for object: %@", v6, v7, v8, v9, v10, self))
        {
          abort();
        }

        v3 = 0;
      }
    }
  }

  return v3;
}

- (BOOL)crlaxIsCircular
{
  v2 = [(CRLPathSourceAccessibility *)self crlaxTarget];
  v3 = [v2 isCircular];

  return v3;
}

- (BOOL)crlaxIsRectangular
{
  v2 = [(CRLPathSourceAccessibility *)self crlaxTarget];
  v3 = [v2 isRectangular];

  return v3;
}

- (CGSize)crlaxNaturalSize
{
  v2 = [(CRLPathSourceAccessibility *)self crlaxTarget];
  [v2 naturalSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)_crlaxInferredLabel
{
  if (CRLAccessibilityShouldPerformValidationChecks())
  {
    ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v10 = __CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Class should override _crlaxInferredLabel: %@", v5, v6, v7, v8, v9, v4);

    if (v10)
    {
      abort();
    }
  }

  return 0;
}

- (void)_crlaxUpdatePathSourceLabelForType:(int64_t)a3
{
  if ((a3 - 1) > 0x13)
  {
    v6 = 0;
  }

  else
  {
    v4 = *(&off_101853500 + a3 - 1);
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:v4 value:0 table:0];
  }

  [(CRLPathSourceAccessibility *)self _crlaxSetStoredLabel:v6];
}

@end