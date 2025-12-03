@interface UICollectionViewListCellAccessibility__MusicUI__UIKit
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsInViewControllerClass:(id)class;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation UICollectionViewListCellAccessibility__MusicUI__UIKit

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicApplication.ArtistListViewController"];
  [validationsCopy validateClass:@"MusicApplication.ArtistListViewController" isKindOfClass:@"UIViewController"];
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
    text = [v3 text];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UICollectionViewListCellAccessibility__MusicUI__UIKit;
    text = [(UICollectionViewListCellAccessibility__MusicUI__UIKit *)&v7 accessibilityLabel];
  }

  return text;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = UICollectionViewListCellAccessibility__MusicUI__UIKit;
  accessibilityTraits = [(UICollectionViewListCellAccessibility__MusicUI__UIKit *)&v7 accessibilityTraits];
  _axIsListCellAccessibleInMusicApp = [(UICollectionViewListCellAccessibility__MusicUI__UIKit *)self _axIsListCellAccessibleInMusicApp];
  v5 = *MEMORY[0x29EDC7F70];
  if (!_axIsListCellAccessibleInMusicApp)
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits;
}

- (BOOL)_axIsInViewControllerClass:(id)class
{
  classCopy = class;
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __84__UICollectionViewListCellAccessibility__MusicUI__UIKit__axIsInViewControllerClass___block_invoke;
  v8[3] = &unk_29F2DD878;
  v9 = classCopy;
  v5 = classCopy;
  v6 = [(UICollectionViewListCellAccessibility__MusicUI__UIKit *)self _accessibilityFindViewAncestor:v8 startWithSelf:1];
  LOBYTE(self) = v6 != 0;

  return self;
}

@end