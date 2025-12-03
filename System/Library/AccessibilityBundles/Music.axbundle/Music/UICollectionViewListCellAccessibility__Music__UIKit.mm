@interface UICollectionViewListCellAccessibility__Music__UIKit
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsInViewControllerClass:(id)class;
- (BOOL)_axIsListCellAccessibleInMusicApp;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation UICollectionViewListCellAccessibility__Music__UIKit

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"Music.LibraryMainViewController"];
  [validationsCopy validateClass:@"Music.NowPlayingViewController"];
  [validationsCopy validateClass:@"Music.PlaylistEditingViewController"];
  [validationsCopy validateClass:@"Music.LibraryMainViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"Music.NowPlayingViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"Music.PlaylistEditingViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"UICollectionViewListCell" isKindOfClass:@"UICollectionViewCell"];
  [validationsCopy validateClass:@"UICollectionViewCell" hasInstanceMethod:@"contentView" withFullSignature:{"@", 0}];
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
    array = [MEMORY[0x29EDB8DE8] array];
    v21 = 0;
    objc_opt_class();
    v4 = __UIAccessibilityCastAsClass();
    contentView = [v4 contentView];
    accessibilityElements = [contentView accessibilityElements];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = accessibilityElements;
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

          accessibilityLabel = [*(*(&v17 + 1) + 8 * i) accessibilityLabel];
          [array axSafelyAddObject:accessibilityLabel];
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v9);
    }

    accessibilityLabel2 = MEMORY[0x29C2E2940](array);
  }

  else
  {
    v16.receiver = self;
    v16.super_class = UICollectionViewListCellAccessibility__Music__UIKit;
    accessibilityLabel2 = [(UICollectionViewListCellAccessibility__Music__UIKit *)&v16 accessibilityLabel];
  }

  v14 = *MEMORY[0x29EDCA608];

  return accessibilityLabel2;
}

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = UICollectionViewListCellAccessibility__Music__UIKit;
  accessibilityTraits = [(UICollectionViewListCellAccessibility__Music__UIKit *)&v8 accessibilityTraits];
  if ([(UICollectionViewListCellAccessibility__Music__UIKit *)self _axIsListCellAccessibleInMusicApp])
  {
    objc_opt_class();
    v4 = __UIAccessibilityCastAsClass();
    accessibilityTraits |= *MEMORY[0x29EDC7F70];
    if ([v4 isSelected])
    {
      configurationState = [v4 configurationState];
      isEditing = [configurationState isEditing];

      if (isEditing)
      {
        accessibilityTraits |= *MEMORY[0x29EDC7FC0];
      }

      else
      {
        accessibilityTraits &= ~*MEMORY[0x29EDC7FC0];
      }
    }
  }

  return accessibilityTraits;
}

- (BOOL)_axIsListCellAccessibleInMusicApp
{
  if ([(UICollectionViewListCellAccessibility__Music__UIKit *)self _axIsInViewControllerClass:@"Music.LibraryMainViewController"]|| [(UICollectionViewListCellAccessibility__Music__UIKit *)self _axIsInViewControllerClass:@"Music.NowPlayingViewController"])
  {
    return 1;
  }

  return [(UICollectionViewListCellAccessibility__Music__UIKit *)self _axIsInViewControllerClass:@"Music.PlaylistEditingViewController"];
}

- (BOOL)_axIsInViewControllerClass:(id)class
{
  classCopy = class;
  dictionary = [(UICollectionViewListCellAccessibility__Music__UIKit *)self _accessibilityValueForKey:@"_axIsInViewControllerClass"];
  v6 = [dictionary objectForKey:classCopy];
  v7 = v6;
  if (v6)
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    v9 = MEMORY[0x29C2E2910](classCopy);
    v13[0] = MEMORY[0x29EDCA5F8];
    v13[1] = 3221225472;
    v13[2] = __82__UICollectionViewListCellAccessibility__Music__UIKit__axIsInViewControllerClass___block_invoke;
    v13[3] = &__block_descriptor_40_e12_B24__0_8_B16lu32l8;
    v13[4] = v9;
    v10 = [(UICollectionViewListCellAccessibility__Music__UIKit *)self _accessibilityFindViewAncestor:v13 startWithSelf:1];
    if (!dictionary)
    {
      dictionary = [MEMORY[0x29EDB8E00] dictionary];
      [(UICollectionViewListCellAccessibility__Music__UIKit *)self _accessibilitySetRetainedValue:dictionary forKey:@"_axIsInViewControllerClass"];
    }

    bOOLValue = v10 != 0;
    v11 = [MEMORY[0x29EDBA070] numberWithInt:v10 != 0];
    [dictionary setObject:v11 forKeyedSubscript:classCopy];
  }

  return bOOLValue;
}

@end