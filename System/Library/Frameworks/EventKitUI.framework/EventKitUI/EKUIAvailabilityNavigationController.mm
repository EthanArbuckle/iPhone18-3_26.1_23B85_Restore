@interface EKUIAvailabilityNavigationController
- (BOOL)wantsDismissOnSizeClassChangeWithNewTraitCollection:(id)collection;
- (EKUIAvailabilityNavigationController)initWithRootViewController:(id)controller;
- (int64_t)modalPresentationStyle;
@end

@implementation EKUIAvailabilityNavigationController

- (EKUIAvailabilityNavigationController)initWithRootViewController:(id)controller
{
  v4.receiver = self;
  v4.super_class = EKUIAvailabilityNavigationController;
  result = [(EKUIAvailabilityNavigationController *)&v4 initWithRootViewController:controller];
  if (result)
  {
    result->_modalPresentationStyle = -2;
  }

  return result;
}

- (BOOL)wantsDismissOnSizeClassChangeWithNewTraitCollection:(id)collection
{
  collectionCopy = collection;
  v4 = EKUIUseLargeFormatPhoneUI() && [collectionCopy horizontalSizeClass] == 2;

  return v4;
}

- (int64_t)modalPresentationStyle
{
  view = [(EKUIAvailabilityNavigationController *)self view];
  if (EKUICurrentWidthSizeClassIsCompactInViewHierarchy(view))
  {
    view2 = [(EKUIAvailabilityNavigationController *)self view];
    IsCompact = EKUICurrentHeightSizeClassIsCompact(view2);

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