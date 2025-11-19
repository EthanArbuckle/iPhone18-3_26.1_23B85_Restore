@interface MiroEditorClipCollectionViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityScroll:(int64_t)a3;
@end

@implementation MiroEditorClipCollectionViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MiroEditorFlowLayout"];
  [v3 validateClass:@"MiroEditorClipCollectionViewController" isKindOfClass:@"UICollectionViewController"];
  [v3 validateClass:@"MiroEditorFlowLayout" hasInstanceMethod:@"snappedIndexPath" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MiroEditorClipCollectionViewController" hasInstanceMethod:@"snapToIndexPath: animated:" withFullSignature:{"v", "@", "B", 0}];
}

- (BOOL)accessibilityScroll:(int64_t)a3
{
  v22 = 0;
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  v6 = [v5 collectionView];

  v7 = [v6 collectionViewLayout];
  MEMORY[0x29C2DE4B0](@"MiroEditorFlowLayout");
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  v8 = [v6 numberOfItemsInSection:0];
  v22 = 0;
  objc_opt_class();
  v9 = [v7 safeValueForKey:@"snappedIndexPath"];
  v10 = __UIAccessibilityCastAsClass();

  if (a3 == 2)
  {
    if ([v10 row] < v8 - 1)
    {
      v11 = [MEMORY[0x29EDB9FE0] indexPathForRow:objc_msgSend(v10 inSection:{"row") + 1, 0}];
      v12 = v20;
      v20[0] = MEMORY[0x29EDCA5F8];
      v20[1] = 3221225472;
      v13 = __75__MiroEditorClipCollectionViewControllerAccessibility_accessibilityScroll___block_invoke_2;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (a3 != 1 || [v10 row] < 1)
  {
LABEL_9:

LABEL_10:
    v19.receiver = self;
    v19.super_class = MiroEditorClipCollectionViewControllerAccessibility;
    v17 = [(MiroEditorClipCollectionViewControllerAccessibility *)&v19 accessibilityScroll:a3];
    goto LABEL_11;
  }

  v11 = [MEMORY[0x29EDB9FE0] indexPathForRow:objc_msgSend(v10 inSection:{"row") - 1, 0}];
  v12 = v21;
  v21[0] = MEMORY[0x29EDCA5F8];
  v21[1] = 3221225472;
  v13 = __75__MiroEditorClipCollectionViewControllerAccessibility_accessibilityScroll___block_invoke;
LABEL_8:
  v12[2] = v13;
  v12[3] = &unk_29F2D0B78;
  v12[4] = self;
  v12[5] = v11;
  v14 = v11;
  AXPerformSafeBlock();
  v15 = *MEMORY[0x29EDC7ED8];
  v16 = [v6 cellForItemAtIndexPath:v14];
  UIAccessibilityPostNotification(v15, v16);

  v17 = 1;
LABEL_11:

  return v17;
}

@end