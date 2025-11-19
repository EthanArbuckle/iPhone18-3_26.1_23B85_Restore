@interface AXMiroPhotoScrubber
- (CGRect)accessibilityFrame;
- (id)_axContainerCollectionView;
- (id)_axCurrentIndexPath;
- (id)accessibilityValue;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation AXMiroPhotoScrubber

- (id)accessibilityValue
{
  v3 = [(AXMiroPhotoScrubber *)self _axContainerCollectionView];
  v4 = [(AXMiroPhotoScrubber *)self _axCurrentIndexPath];
  v5 = [v3 cellForItemAtIndexPath:v4];
  v6 = MEMORY[0x29EDBA0F8];
  v7 = accessibilityMemoriesLocalizedString(@"memory.content.scrubber.index");
  [v4 row];
  v8 = AXFormatInteger();
  [v3 numberOfItemsInSection:0];
  v9 = AXFormatInteger();
  v10 = [v6 stringWithFormat:v7, v8, v9];
  v11 = [v5 accessibilityLabel];
  v14 = [v5 accessibilityValue];
  v12 = __UIAXStringForVariables();

  return v12;
}

- (id)_axContainerCollectionView
{
  v2 = MEMORY[0x29EDC7DA8];
  v3 = [(AXMiroPhotoScrubber *)self accessibilityContainer];
  v4 = [v2 viewControllerForView:v3];

  objc_opt_class();
  v5 = [v4 safeValueForKey:@"collectionView"];
  v6 = __UIAccessibilityCastAsClass();

  return v6;
}

- (id)_axCurrentIndexPath
{
  v2 = [(AXMiroPhotoScrubber *)self _axContainerCollectionView];
  v3 = [v2 collectionViewLayout];
  MEMORY[0x29C2DE4B0](@"MiroEditorFlowLayout");
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v4 = [v3 safeValueForKey:@"snappedIndexPath"];
    v5 = __UIAccessibilityCastAsClass();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)accessibilityIncrement
{
  v3 = [(AXMiroPhotoScrubber *)self _axCurrentIndexPath];
  v4 = [(AXMiroPhotoScrubber *)self _axContainerCollectionView];
  v5 = [v4 numberOfItemsInSection:0];
  if ([v3 row] < v5 - 1)
  {
    v6 = v4;
    v7 = v3;
    AXPerformSafeBlock();
  }
}

void __45__AXMiroPhotoScrubber_accessibilityIncrement__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x29EDC7DA8];
  v3 = [*(a1 + 32) accessibilityContainer];
  v4 = [v2 viewControllerForView:v3];
  v5 = *(a1 + 40);
  v6 = [MEMORY[0x29EDB9FE0] indexPathForRow:objc_msgSend(*(a1 + 48) inSection:{"row") + 1, 0}];
  [v4 collectionView:v5 didSelectItemAtIndexPath:v6];

  v7 = *MEMORY[0x29EDC7ED8];

  UIAccessibilityPostNotification(v7, 0);
}

- (void)accessibilityDecrement
{
  v3 = [(AXMiroPhotoScrubber *)self _axCurrentIndexPath];
  if ([v3 row] >= 1)
  {
    v4 = [(AXMiroPhotoScrubber *)self _axContainerCollectionView];
    v6 = v3;
    v5 = v4;
    AXPerformSafeBlock();
  }
}

void __45__AXMiroPhotoScrubber_accessibilityDecrement__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x29EDC7DA8];
  v3 = [*(a1 + 32) accessibilityContainer];
  v4 = [v2 viewControllerForView:v3];
  v5 = *(a1 + 40);
  v6 = [MEMORY[0x29EDB9FE0] indexPathForRow:objc_msgSend(*(a1 + 48) inSection:{"row") - 1, 0}];
  [v4 collectionView:v5 didSelectItemAtIndexPath:v6];

  v7 = *MEMORY[0x29EDC7ED8];

  UIAccessibilityPostNotification(v7, 0);
}

- (CGRect)accessibilityFrame
{
  v3 = [(AXMiroPhotoScrubber *)self _axContainerCollectionView];
  v4 = [(AXMiroPhotoScrubber *)self accessibilityContainer];
  [v3 frame];
  UIAccessibilityFrameForBounds();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

@end