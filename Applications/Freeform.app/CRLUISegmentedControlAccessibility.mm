@interface CRLUISegmentedControlAccessibility
+ (id)crlaxCastFrom:(id)from;
- (void)crlaxSetSegmentDescriptions:(id)descriptions;
@end

@implementation CRLUISegmentedControlAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (void)crlaxSetSegmentDescriptions:(id)descriptions
{
  descriptionsCopy = descriptions;
  selfCopy = self;
  v6 = [(CRLUISegmentedControlAccessibility *)selfCopy valueForKey:@"_segments"];
  v7 = [v6 count];
  v8 = [descriptionsCopy count];
  if (v8 == v7)
  {
    if (v7)
    {
      v9 = 0;
      while (1)
      {
        v26 = 0;
        v10 = [v6 objectAtIndex:v9];
        v11 = objc_opt_class();
        v12 = __CRLAccessibilityCastAsClass(v11, v10, 1, &v26);
        if (v26 == 1)
        {
          break;
        }

        v13 = v12;

        v25 = 0;
        v14 = [descriptionsCopy objectAtIndex:v9];
        v15 = objc_opt_class();
        v16 = __CRLAccessibilityCastAsClass(v15, v14, 1, &v25);
        if (v25 == 1)
        {
          break;
        }

        v17 = v16;

        [v13 setAccessibilityLabel:v17];
        if (v7 == ++v9)
        {
          goto LABEL_10;
        }
      }

LABEL_11:
      abort();
    }
  }

  else
  {
    v18 = v8;
    if (CRLAccessibilityShouldPerformValidationChecks())
    {
      ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
      if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Number of segments have changed from %lu to %lu", v20, v21, v22, v23, v24, v18))
      {
        goto LABEL_11;
      }
    }
  }

LABEL_10:
}

@end