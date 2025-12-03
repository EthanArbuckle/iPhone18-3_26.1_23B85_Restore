@interface UICollectionViewAccessibility__MusicApplication__UIKit
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityIsShelfCollectionView;
- (BOOL)accessibilityScrollDownPage;
- (BOOL)accessibilityScrollUpPage;
- (BOOL)accessibilityShouldSpeakItemReorderEvents;
- (UIEdgeInsets)_accessibilityVisibleContentInset;
- (id)_accessibilitySupplementaryViewSectionHeaderIdentifiers;
@end

@implementation UICollectionViewAccessibility__MusicApplication__UIKit

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicApplication.ShelfCollectionViewLayout"];
  [validationsCopy validateClass:@"MusicApplication.NowPlayingViewController"];
  [validationsCopy validateClass:@"MusicApplication.PlaylistDetailSongsViewController"];
  [validationsCopy validateClass:@"MusicApplication.SocialProfilesShelfCollectionViewLayout"];
  [validationsCopy validateClass:@"MusicApplication.ShelfCollectionViewLayout"];
  [validationsCopy validateClass:@"UICollectionView" hasInstanceMethod:@"collectionViewLayout" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.JSShelfViewController"];
  [validationsCopy validateClass:@"UICollectionView" hasInstanceMethod:@"_accessibilitySupplementaryViewSectionHeaderIdentifiers" withFullSignature:{"@", 0}];
}

- (BOOL)accessibilityShouldSpeakItemReorderEvents
{
  v2 = [(UICollectionViewAccessibility__MusicApplication__UIKit *)self _accessibilityFindAncestor:&__block_literal_global_9 startWithSelf:1];
  v3 = v2 != 0;

  return v3;
}

- (UIEdgeInsets)_accessibilityVisibleContentInset
{
  if ([(UICollectionViewAccessibility__MusicApplication__UIKit *)self _accessibilityIsShelfCollectionView])
  {
    v3 = *MEMORY[0x29EDC80C8];
    v4 = *(MEMORY[0x29EDC80C8] + 8);
    v5 = *(MEMORY[0x29EDC80C8] + 16);
    v6 = *(MEMORY[0x29EDC80C8] + 24);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UICollectionViewAccessibility__MusicApplication__UIKit;
    [(UICollectionViewAccessibility__MusicApplication__UIKit *)&v7 _accessibilityVisibleContentInset];
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (BOOL)accessibilityScrollUpPage
{
  if ([(UICollectionViewAccessibility__MusicApplication__UIKit *)self _accessibilityIsShelfCollectionView])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = UICollectionViewAccessibility__MusicApplication__UIKit;
  return [(UICollectionViewAccessibility__MusicApplication__UIKit *)&v4 accessibilityScrollUpPage];
}

- (BOOL)accessibilityScrollDownPage
{
  if ([(UICollectionViewAccessibility__MusicApplication__UIKit *)self _accessibilityIsShelfCollectionView])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = UICollectionViewAccessibility__MusicApplication__UIKit;
  return [(UICollectionViewAccessibility__MusicApplication__UIKit *)&v4 accessibilityScrollDownPage];
}

- (id)_accessibilitySupplementaryViewSectionHeaderIdentifiers
{
  v8.receiver = self;
  v8.super_class = UICollectionViewAccessibility__MusicApplication__UIKit;
  _accessibilitySupplementaryViewSectionHeaderIdentifiers = [(UICollectionViewAccessibility__MusicApplication__UIKit *)&v8 _accessibilitySupplementaryViewSectionHeaderIdentifiers];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  dataSource = [v3 dataSource];
  MEMORY[0x29C2E2DD0](@"MusicApplication.JSShelfViewController");
  if (objc_opt_isKindOfClass() & 1) != 0 || (MEMORY[0x29C2E2DD0](@"MusicApplication.JSFlowcaseViewController"), (objc_opt_isKindOfClass()))
  {
    v5 = [_accessibilitySupplementaryViewSectionHeaderIdentifiers ax_filteredArrayUsingBlock:&__block_literal_global_322];
  }

  else
  {
    v5 = _accessibilitySupplementaryViewSectionHeaderIdentifiers;
  }

  v6 = v5;

  return v6;
}

- (BOOL)_accessibilityIsShelfCollectionView
{
  v2 = [(UICollectionViewAccessibility__MusicApplication__UIKit *)self safeValueForKey:@"collectionViewLayout"];
  MEMORY[0x29C2E2DD0](@"MusicApplication.SocialProfilesShelfCollectionViewLayout");
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    MEMORY[0x29C2E2DD0](@"MusicApplication.ShelfCollectionViewLayout");
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

@end