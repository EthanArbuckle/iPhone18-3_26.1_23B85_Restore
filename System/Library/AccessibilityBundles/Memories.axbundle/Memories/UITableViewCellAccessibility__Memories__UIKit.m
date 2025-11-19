@interface UITableViewCellAccessibility__Memories__UIKit
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
@end

@implementation UITableViewCellAccessibility__Memories__UIKit

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UICollectionViewControllerWrapperView"];
  [v3 validateClass:@"UIView" hasInstanceMethod:@"subviews" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UICollectionViewControllerWrapperView" hasInstanceMethod:@"_collectionViewController" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  v27 = *MEMORY[0x29EDCA608];
  v3 = [(UITableViewCellAccessibility__Memories__UIKit *)self accessibilityIdentification];
  v4 = [v3 isEqualToString:@"AccessibilityMiroTitleCollectionCell"];

  if (v4)
  {
    v24 = 0;
    objc_opt_class();
    v5 = [(UITableViewCellAccessibility__Memories__UIKit *)self safeValueForKey:@"subviews"];
    v6 = __UIAccessibilityCastAsClass();

    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          MEMORY[0x29C2DE4B0](@"UICollectionViewControllerWrapperView");
          if (objc_opt_isKindOfClass())
          {
            v24 = 0;
            objc_opt_class();
            v14 = [v12 safeValueForKey:@"_collectionViewController"];
            v15 = __UIAccessibilityCastAsClass();

            if (v24 == 1)
            {
              abort();
            }

            v16 = [v15 collectionView];
            v25 = v16;
            v13 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v25 count:1];

            goto LABEL_15;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

  v19.receiver = self;
  v19.super_class = UITableViewCellAccessibility__Memories__UIKit;
  v13 = [(UITableViewCellAccessibility__Memories__UIKit *)&v19 accessibilityElements];
LABEL_15:
  v17 = *MEMORY[0x29EDCA608];

  return v13;
}

@end