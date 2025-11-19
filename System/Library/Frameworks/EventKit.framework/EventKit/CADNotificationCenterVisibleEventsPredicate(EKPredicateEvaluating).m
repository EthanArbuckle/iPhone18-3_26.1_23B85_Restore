@interface CADNotificationCenterVisibleEventsPredicate(EKPredicateEvaluating)
- (BOOL)ekPredicateEvaluateWithObject:()EKPredicateEvaluating;
@end

@implementation CADNotificationCenterVisibleEventsPredicate(EKPredicateEvaluating)

- (BOOL)ekPredicateEvaluateWithObject:()EKPredicateEvaluating
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    if ([v4 invitationStatus])
    {
      v5 = [v4 invitationStatus] != 1;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end