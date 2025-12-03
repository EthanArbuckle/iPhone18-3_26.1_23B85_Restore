@interface CRLSubselectionAccessibility
+ (id)crlaxCastFrom:(id)from;
- (NSSet)crlaxInfos;
- (NSSet)crlaxUnlockedInfos;
@end

@implementation CRLSubselectionAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (NSSet)crlaxInfos
{
  v3 = NSProtocolFromString(@"CRLCanvasSelection");
  v4 = [(CRLSubselectionAccessibility *)self conformsToProtocol:v3];

  if (v4)
  {
    v17 = 0;
    v5 = [(CRLSubselectionAccessibility *)self crlaxValueForKey:@"infos"];
    v6 = objc_opt_class();
    v7 = __CRLAccessibilityCastAsClass(v6, v5, 1, &v17);
    if (v17 != 1)
    {
      v8 = v7;

      goto LABEL_7;
    }

LABEL_10:
    abort();
  }

  if (CRLAccessibilityShouldPerformValidationChecks())
  {
    ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
    v10 = objc_opt_class();
    if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"%@ does not implement CRLCanvasSelection protocol, we should not be asking it for infos", v11, v12, v13, v14, v15, v10))
    {
      goto LABEL_10;
    }
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (NSSet)crlaxUnlockedInfos
{
  v3 = NSProtocolFromString(@"CRLCanvasSelection");
  v4 = [(CRLSubselectionAccessibility *)self conformsToProtocol:v3];

  if (v4)
  {
    v17 = 0;
    v5 = [(CRLSubselectionAccessibility *)self crlaxValueForKey:@"unlockedInfos"];
    v6 = objc_opt_class();
    v7 = __CRLAccessibilityCastAsClass(v6, v5, 1, &v17);
    if (v17 != 1)
    {
      v8 = v7;

      goto LABEL_7;
    }

LABEL_10:
    abort();
  }

  if (CRLAccessibilityShouldPerformValidationChecks())
  {
    ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
    v10 = objc_opt_class();
    if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"%@ does not implement CRLCanvasSelection protocol, we should not be asking it for infos", v11, v12, v13, v14, v15, v10))
    {
      goto LABEL_10;
    }
  }

  v8 = 0;
LABEL_7:

  return v8;
}

@end