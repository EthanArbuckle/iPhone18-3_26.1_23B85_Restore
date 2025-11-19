@interface UICollectionViewListCellAccessibility__Music__UIKit
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axIsInViewControllerClass:(id)a3;
- (BOOL)_axIsListCellAccessibleInMusicApp;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation UICollectionViewListCellAccessibility__Music__UIKit

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"Music.LibraryMainViewController"];
  [v3 validateClass:@"Music.NowPlayingViewController"];
  [v3 validateClass:@"Music.PlaylistEditingViewController"];
  [v3 validateClass:@"Music.LibraryMainViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"Music.NowPlayingViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"Music.PlaylistEditingViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"UICollectionViewListCell" isKindOfClass:@"UICollectionViewCell"];
  [v3 validateClass:@"UICollectionViewCell" hasInstanceMethod:@"contentView" withFullSignature:{"@", 0}];
}

- (BOOL)isAccessibilityElement
{
  if ([(UICollectionViewListCellAccessibility__Music__UIKit *)self _axIsListCellAccessibleInMusicApp])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = UICollectionViewListCellAccessibility__Music__UIKit;
  return [(UICollectionViewListCellAccessibility__Music__UIKit *)&v4 isAccessibilityElement];
}

- (id)accessibilityLabel
{
  v23 = *MEMORY[0x29EDCA608];
  if ([(UICollectionViewListCellAccessibility__Music__UIKit *)self _axIsListCellAccessibleInMusicApp])
  {
    v3 = [MEMORY[0x29EDB8DE8] array];
    v21 = 0;
    objc_opt_class();
    v4 = __UIAccessibilityCastAsClass();
    v5 = [v4 contentView];
    v6 = [v5 accessibilityElements];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v17 + 1) + 8 * i) accessibilityLabel];
          [v3 axSafelyAddObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v9);
    }

    v13 = MEMORY[0x29C2E2940](v3);
  }

  else
  {
    v16.receiver = self;
    v16.super_class = UICollectionViewListCellAccessibility__Music__UIKit;
    v13 = [(UICollectionViewListCellAccessibility__Music__UIKit *)&v16 accessibilityLabel];
  }

  v14 = *MEMORY[0x29EDCA608];

  return v13;
}

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = UICollectionViewListCellAccessibility__Music__UIKit;
  v3 = [(UICollectionViewListCellAccessibility__Music__UIKit *)&v8 accessibilityTraits];
  if ([(UICollectionViewListCellAccessibility__Music__UIKit *)self _axIsListCellAccessibleInMusicApp])
  {
    objc_opt_class();
    v4 = __UIAccessibilityCastAsClass();
    v3 |= *MEMORY[0x29EDC7F70];
    if ([v4 isSelected])
    {
      v5 = [v4 configurationState];
      v6 = [v5 isEditing];

      if (v6)
      {
        v3 |= *MEMORY[0x29EDC7FC0];
      }

      else
      {
        v3 &= ~*MEMORY[0x29EDC7FC0];
      }
    }
  }

  return v3;
}

- (BOOL)_axIsListCellAccessibleInMusicApp
{
  if ([(UICollectionViewListCellAccessibility__Music__UIKit *)self _axIsInViewControllerClass:@"Music.LibraryMainViewController"]|| [(UICollectionViewListCellAccessibility__Music__UIKit *)self _axIsInViewControllerClass:@"Music.NowPlayingViewController"])
  {
    return 1;
  }

  return [(UICollectionViewListCellAccessibility__Music__UIKit *)self _axIsInViewControllerClass:@"Music.PlaylistEditingViewController"];
}

- (BOOL)_axIsInViewControllerClass:(id)a3
{
  v4 = a3;
  v5 = [(UICollectionViewListCellAccessibility__Music__UIKit *)self _accessibilityValueForKey:@"_axIsInViewControllerClass"];
  v6 = [v5 objectForKey:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 BOOLValue];
  }

  else
  {
    v9 = MEMORY[0x29C2E2910](v4);
    v13[0] = MEMORY[0x29EDCA5F8];
    v13[1] = 3221225472;
    v13[2] = __82__UICollectionViewListCellAccessibility__Music__UIKit__axIsInViewControllerClass___block_invoke;
    v13[3] = &__block_descriptor_40_e12_B24__0_8_B16lu32l8;
    v13[4] = v9;
    v10 = [(UICollectionViewListCellAccessibility__Music__UIKit *)self _accessibilityFindViewAncestor:v13 startWithSelf:1];
    if (!v5)
    {
      v5 = [MEMORY[0x29EDB8E00] dictionary];
      [(UICollectionViewListCellAccessibility__Music__UIKit *)self _accessibilitySetRetainedValue:v5 forKey:@"_axIsInViewControllerClass"];
    }

    v8 = v10 != 0;
    v11 = [MEMORY[0x29EDBA070] numberWithInt:v10 != 0];
    [v5 setObject:v11 forKeyedSubscript:v4];
  }

  return v8;
}

@end