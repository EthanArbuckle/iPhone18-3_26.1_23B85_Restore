@interface EKUIAvailabilityNavigationController
- (BOOL)wantsDismissOnSizeClassChangeWithNewTraitCollection:(id)a3;
- (EKUIAvailabilityNavigationController)initWithRootViewController:(id)a3;
- (int64_t)modalPresentationStyle;
@end

@implementation EKUIAvailabilityNavigationController

- (EKUIAvailabilityNavigationController)initWithRootViewController:(id)a3
{
  v4.receiver = self;
  v4.super_class = EKUIAvailabilityNavigationController;
  result = [(EKUIAvailabilityNavigationController *)&v4 initWithRootViewController:a3];
  if (result)
  {
    result->_modalPresentationStyle = -2;
  }

  return result;
}

- (BOOL)wantsDismissOnSizeClassChangeWithNewTraitCollection:(id)a3
{
  v3 = a3;
  v4 = EKUIUseLargeFormatPhoneUI() && [v3 horizontalSizeClass] == 2;

  return v4;
}

- (int64_t)modalPresentationStyle
{
  v3 = [(EKUIAvailabilityNavigationController *)self view];
  if (EKUICurrentWidthSizeClassIsCompactInViewHierarchy(v3))
  {
    v4 = [(EKUIAvailabilityNavigationController *)self view];
    IsCompact = EKUICurrentHeightSizeClassIsCompact(v4);

    if (IsCompact)
    {
      return 3;
    }
  }

  else
  {
  }

  if (self->_modalPresentationStyle == -2)
  {
    return 2;
  }

  else
  {
    return self->_modalPresentationStyle;
  }
}

@end