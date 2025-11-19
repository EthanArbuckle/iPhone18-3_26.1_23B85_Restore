@interface UICollectionViewListCellAccessibility__MusicUI__UIKit
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axIsInViewControllerClass:(id)a3;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation UICollectionViewListCellAccessibility__MusicUI__UIKit

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicApplication.ArtistListViewController"];
  [v3 validateClass:@"MusicApplication.ArtistListViewController" isKindOfClass:@"UIViewController"];
}

- (BOOL)isAccessibilityElement
{
  if ([(UICollectionViewListCellAccessibility__MusicUI__UIKit *)self _axIsListCellAccessibleInMusicApp])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = UICollectionViewListCellAccessibility__MusicUI__UIKit;
  return [(UICollectionViewListCellAccessibility__MusicUI__UIKit *)&v4 isAccessibilityElement];
}

- (id)accessibilityLabel
{
  if ([(UICollectionViewListCellAccessibility__MusicUI__UIKit *)self _axIsListCellAccessibleInMusicApp]&& ([(UICollectionViewListCellAccessibility__MusicUI__UIKit *)self _accessibilityDescendantOfType:objc_opt_class()], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [v3 text];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UICollectionViewListCellAccessibility__MusicUI__UIKit;
    v5 = [(UICollectionViewListCellAccessibility__MusicUI__UIKit *)&v7 accessibilityLabel];
  }

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = UICollectionViewListCellAccessibility__MusicUI__UIKit;
  v3 = [(UICollectionViewListCellAccessibility__MusicUI__UIKit *)&v7 accessibilityTraits];
  v4 = [(UICollectionViewListCellAccessibility__MusicUI__UIKit *)self _axIsListCellAccessibleInMusicApp];
  v5 = *MEMORY[0x29EDC7F70];
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v3;
}

- (BOOL)_axIsInViewControllerClass:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __84__UICollectionViewListCellAccessibility__MusicUI__UIKit__axIsInViewControllerClass___block_invoke;
  v8[3] = &unk_29F2DD878;
  v9 = v4;
  v5 = v4;
  v6 = [(UICollectionViewListCellAccessibility__MusicUI__UIKit *)self _accessibilityFindViewAncestor:v8 startWithSelf:1];
  LOBYTE(self) = v6 != 0;

  return self;
}

@end