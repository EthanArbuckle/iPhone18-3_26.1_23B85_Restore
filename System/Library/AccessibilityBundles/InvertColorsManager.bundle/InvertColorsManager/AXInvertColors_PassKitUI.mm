@interface AXInvertColors_PassKitUI
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_PassKitUI

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKPaymentTransactionView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"PKPhoneHeroImageView"];
  [validationsCopy validateClass:@"PKPassView"];
  [validationsCopy validateClass:@"PKPeerPaymentBubbleView"];
  [validationsCopy validateClass:@"PKPaymentTransactionView" hasInstanceVariable:@"_primaryImageView" withType:"UIImageView"];
  [validationsCopy validateClass:@"PKCompactNavigationContainerController" hasClassMethod:@"dimmingColor" withFullSignature:{"@", 0}];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"PKPhoneHeroImageViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PKPassViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PKPeerPaymentBubbleViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PKPaymentTransactionViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PKCompactNavigationContainerControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end