@interface PosterLockupCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
@end

@implementation PosterLockupCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ProductPageExtension.PosterLockupCollectionViewCell" hasInstanceMethod:@"accessibilityFallbackTitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ProductPageExtension.PosterLockupCollectionViewCell" hasInstanceMethod:@"accessibilityFooterView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ProductPageExtension.PosterLockupCollectionViewCell" hasInstanceMethod:@"accessibilityOfferButton" withFullSignature:{"@", 0}];
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
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(PosterLockupCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilityOfferButton"];
  [v3 axSafelyAddObject:v4];

  return v3;
}

@end