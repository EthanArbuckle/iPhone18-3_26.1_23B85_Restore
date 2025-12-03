@interface UICollectionViewAccessibility__Music__UIKit
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityScrollDownPage;
- (BOOL)accessibilityScrollUpPage;
- (BOOL)accessibilityShouldSpeakItemReorderEvents;
- (BOOL)isAccessibilityOpaqueElementProvider;
- (UIEdgeInsets)_accessibilityVisibleContentInset;
- (id)_accessibilitySupplementaryViewSectionHeaderIdentifiers;
@end

@implementation UICollectionViewAccessibility__Music__UIKit

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"Music.NowPlayingViewController"];
  [validationsCopy validateClass:@"Music.LibraryMainViewController"];
  [validationsCopy validateClass:@"Music.PlaylistEditingViewController"];
  [validationsCopy validateClass:@"UICollectionView" hasInstanceMethod:@"collectionViewLayout" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UICollectionView" hasInstanceMethod:@"_accessibilitySupplementaryViewSectionHeaderIdentifiers" withFullSignature:{"@", 0}];
}

- (BOOL)accessibilityShouldSpeakItemReorderEvents
{
  v2 = [(UICollectionViewAccessibility__Music__UIKit *)self _accessibilityFindAncestor:&__block_literal_global_7 startWithSelf:1];
  v3 = v2 != 0;

  return v3;
}

- (UIEdgeInsets)_accessibilityVisibleContentInset
{
  v6.receiver = self;
  v6.super_class = UICollectionViewAccessibility__Music__UIKit;
  [(UICollectionViewAccessibility__Music__UIKit *)&v6 _accessibilityVisibleContentInset];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (BOOL)accessibilityScrollUpPage
{
  v3.receiver = self;
  v3.super_class = UICollectionViewAccessibility__Music__UIKit;
  return [(UICollectionViewAccessibility__Music__UIKit *)&v3 accessibilityScrollUpPage];
}

- (BOOL)accessibilityScrollDownPage
{
  v3.receiver = self;
  v3.super_class = UICollectionViewAccessibility__Music__UIKit;
  return [(UICollectionViewAccessibility__Music__UIKit *)&v3 accessibilityScrollDownPage];
}

- (BOOL)isAccessibilityOpaqueElementProvider
{
  selfCopy = self;
  v3 = [(UICollectionViewAccessibility__Music__UIKit *)self safeValueForKey:@"delegate"];
  v5.receiver = selfCopy;
  v5.super_class = UICollectionViewAccessibility__Music__UIKit;
  LOBYTE(selfCopy) = [(UICollectionViewAccessibility__Music__UIKit *)&v5 isAccessibilityOpaqueElementProvider];

  return selfCopy;
}

- (id)_accessibilitySupplementaryViewSectionHeaderIdentifiers
{
  v8.receiver = self;
  v8.super_class = UICollectionViewAccessibility__Music__UIKit;
  _accessibilitySupplementaryViewSectionHeaderIdentifiers = [(UICollectionViewAccessibility__Music__UIKit *)&v8 _accessibilitySupplementaryViewSectionHeaderIdentifiers];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  dataSource = [v3 dataSource];
  MEMORY[0x29C2E2910](@"Music.JSFlowcaseViewController");
  if (objc_opt_isKindOfClass())
  {
    v5 = [_accessibilitySupplementaryViewSectionHeaderIdentifiers ax_filteredArrayUsingBlock:&__block_literal_global_321_0];
  }

  else
  {
    v5 = _accessibilitySupplementaryViewSectionHeaderIdentifiers;
  }

  v6 = v5;

  return v6;
}

@end