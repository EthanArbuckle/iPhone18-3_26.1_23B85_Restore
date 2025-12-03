@interface PosterLockupCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
@end

@implementation PosterLockupCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AppStore.PosterLockupCollectionViewCell" hasInstanceMethod:@"accessibilityFallbackTitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AppStore.PosterLockupCollectionViewCell" hasInstanceMethod:@"accessibilityFooterView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AppStore.PosterLockupCollectionViewCell" hasInstanceMethod:@"accessibilityOfferButton" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(PosterLockupCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilityFallbackTitle"];
  v6 = [(PosterLockupCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilityFooterView"];
  v4 = __UIAXStringForVariables();

  return v4;
}

- (id)_accessibilitySupplementaryFooterViews
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(PosterLockupCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilityOfferButton"];
  [array axSafelyAddObject:v4];

  return array;
}

@end