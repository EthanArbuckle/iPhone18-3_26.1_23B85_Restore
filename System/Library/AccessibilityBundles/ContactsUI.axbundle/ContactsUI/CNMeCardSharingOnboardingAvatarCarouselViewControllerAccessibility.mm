@interface CNMeCardSharingOnboardingAvatarCarouselViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
@end

@implementation CNMeCardSharingOnboardingAvatarCarouselViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CNMeCardSharingOnboardingAvatarCarouselViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"CNMeCardSharingOnboardingAvatarCarouselViewController" conformsToProtocol:@"UICollectionViewDataSource"];
  [validationsCopy validateClass:@"CNMeCardSharingOnboardingAvatarCarouselViewController" hasInstanceMethod:@"items" withFullSignature:{"@", 0}];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = CNMeCardSharingOnboardingAvatarCarouselViewControllerAccessibility;
  v8 = [(CNMeCardSharingOnboardingAvatarCarouselViewControllerAccessibility *)&v13 collectionView:viewCopy cellForItemAtIndexPath:pathCopy];
  objc_opt_class();
  v9 = __UIAccessibilityCastAsSafeCategory();
  if (v9)
  {
    v10 = [(CNMeCardSharingOnboardingAvatarCarouselViewControllerAccessibility *)self safeArrayForKey:@"items"];
    v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];
    [v9 _axSetCarouselItem:v11];
  }

  return v8;
}

@end