@interface AVTStickerRecentsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axMarkupCell:(id)a3 indexPath:(id)a4;
@end

@implementation AVTStickerRecentsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AVTStickerRecentsViewController" hasInstanceMethod:@"collectionView:cellForItemAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"AVTStickerRecentsViewController" hasInstanceMethod:@"displayItems" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVTStickerRecentsViewController" hasInstanceMethod:@"buttonItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVTStickerRecentsViewController" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
  [v3 validateProtocol:@"AVTStickerRecentsItem" hasRequiredInstanceMethod:@"localizedDescription"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v20 = *MEMORY[0x29EDCA608];
  v18.receiver = self;
  v18.super_class = AVTStickerRecentsViewControllerAccessibility;
  [(AVTStickerRecentsViewControllerAccessibility *)&v18 _accessibilityLoadAccessibilityInformation];
  v17 = 0;
  objc_opt_class();
  v3 = [(AVTStickerRecentsViewControllerAccessibility *)self safeValueForKey:@"collectionView"];
  v4 = __UIAccessibilityCastAsClass();

  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 visibleCells];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v4 indexPathForCell:v10];
        [(AVTStickerRecentsViewControllerAccessibility *)self _axMarkupCell:v10 indexPath:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x29EDCA608];
}

- (void)_axMarkupCell:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 setIsAccessibilityElement:1];
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3221225472;
  v13[2] = __72__AVTStickerRecentsViewControllerAccessibility__axMarkupCell_indexPath___block_invoke;
  v13[3] = &unk_29F2A39F0;
  objc_copyWeak(&v15, &location);
  v8 = v7;
  v14 = v8;
  [v6 _setAccessibilityLabelBlock:v13];
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __72__AVTStickerRecentsViewControllerAccessibility__axMarkupCell_indexPath___block_invoke_2;
  v10[3] = &unk_29F2A3AE0;
  objc_copyWeak(&v12, &location);
  v9 = v8;
  v11 = v9;
  [v6 _setAccessibilityTraitsBlock:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

id __72__AVTStickerRecentsViewControllerAccessibility__axMarkupCell_indexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained safeArrayForKey:@"displayItems"];
  v4 = [v3 objectAtIndex:{objc_msgSend(*(a1 + 32), "row")}];

  v5 = [WeakRetained safeValueForKey:@"buttonItem"];
  if (v4 == v5)
  {
    accessibilityLocalizedString(@"more.stickers");
  }

  else
  {
    [v4 safeValueForKey:@"localizedDescription"];
  }
  v6 = ;

  return v6;
}

uint64_t __72__AVTStickerRecentsViewControllerAccessibility__axMarkupCell_indexPath___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained safeArrayForKey:@"displayItems"];
  v4 = [v3 objectAtIndex:{objc_msgSend(*(a1 + 32), "row")}];

  v5 = [WeakRetained safeValueForKey:@"buttonItem"];
  v6 = MEMORY[0x29EDC7F70];
  if (v4 != v5)
  {
    v6 = MEMORY[0x29EDC7F90];
  }

  v7 = *v6;

  return v7;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v9.receiver = self;
  v9.super_class = AVTStickerRecentsViewControllerAccessibility;
  v6 = a4;
  v7 = [(AVTStickerRecentsViewControllerAccessibility *)&v9 collectionView:a3 cellForItemAtIndexPath:v6];
  [(AVTStickerRecentsViewControllerAccessibility *)self _axMarkupCell:v7 indexPath:v6, v9.receiver, v9.super_class];

  return v7;
}

@end