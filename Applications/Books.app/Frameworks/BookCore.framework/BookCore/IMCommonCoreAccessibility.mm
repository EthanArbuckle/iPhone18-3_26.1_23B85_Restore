@interface IMCommonCoreAccessibility
+ (id)sharedInstance;
- (void)loadAccessibilitySupport;
- (void)performValidation;
@end

@implementation IMCommonCoreAccessibility

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6AA6C;
  block[3] = &unk_2C7CA8;
  block[4] = self;
  if (qword_342358 != -1)
  {
    dispatch_once(&qword_342358, block);
  }

  v2 = qword_342350;

  return v2;
}

- (void)performValidation
{
  __IMAccessibilityValidateInstanceMethodComplete(@"AEAnnotation", @"annotationIsUnderline", "B", v2, v3, v4, v5, v6, 0);
  __IMAccessibilityValidateProperty(@"AEAnnotation", "annotationRepresentativeText");
  __IMAccessibilityValidateProperty(@"AEAnnotation", "annotationNote");

  __IMAccessibilityValidateProperty(@"AEAnnotation", "annotationStyle");
}

- (void)loadAccessibilitySupport
{
  if (![(IMCommonCoreAccessibility *)self _isAccessibilitySupportLoaded])
  {
    if (IMAccessibilityShouldPerformValidationChecks())
    {
      [(IMCommonCoreAccessibility *)self performValidation];
      if ([(IMCommonCoreAccessibility *)self conformsToProtocol:&OBJC_PROTOCOL___IMCommonCoreAccessibilityExtras])
      {
        if (objc_opt_respondsToSelector())
        {
          [(IMCommonCoreAccessibility *)self performExtraValidation];
        }
      }
    }

    v3 = objc_opt_new();
    [(IMCommonCoreAccessibility *)self addSafeCategoryNamesToCollection:?];
    if ([(IMCommonCoreAccessibility *)self conformsToProtocol:&OBJC_PROTOCOL___IMCommonCoreAccessibilityExtras]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(IMCommonCoreAccessibility *)self addExtraSafeCategoryNamesToCollection:v3];
    }

    IMAccessibilityInstallSafeCategories(v3);
    [(IMCommonCoreAccessibility *)self _setAccessibilitySupportLoaded:1];
  }
}

@end