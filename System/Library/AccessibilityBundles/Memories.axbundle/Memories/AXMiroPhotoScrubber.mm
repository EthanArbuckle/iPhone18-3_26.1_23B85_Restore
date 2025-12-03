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
  _axContainerCollectionView = [(AXMiroPhotoScrubber *)self _axContainerCollectionView];
  _axCurrentIndexPath = [(AXMiroPhotoScrubber *)self _axCurrentIndexPath];
  v5 = [_axContainerCollectionView cellForItemAtIndexPath:_axCurrentIndexPath];
  v6 = MEMORY[0x29EDBA0F8];
  v7 = accessibilityMemoriesLocalizedString(@"memory.content.scrubber.index");
  [_axCurrentIndexPath row];
  v8 = AXFormatInteger();
  [_axContainerCollectionView numberOfItemsInSection:0];
  v9 = AXFormatInteger();
  v10 = [v6 stringWithFormat:v7, v8, v9];
  accessibilityLabel = [v5 accessibilityLabel];
  accessibilityValue = [v5 accessibilityValue];
  v12 = __UIAXStringForVariables();

  return v12;
}

- (id)_axContainerCollectionView
{
  v2 = MEMORY[0x29EDC7DA8];
  accessibilityContainer = [(AXMiroPhotoScrubber *)self accessibilityContainer];
  v4 = [v2 viewControllerForView:accessibilityContainer];

  objc_opt_class();
  v5 = [v4 safeValueForKey:@"collectionView"];
  v6 = __UIAccessibilityCastAsClass();

  return v6;
}

- (id)_axCurrentIndexPath
{
  _axContainerCollectionView = [(AXMiroPhotoScrubber *)self _axContainerCollectionView];
  collectionViewLayout = [_axContainerCollectionView collectionViewLayout];
  MEMORY[0x29C2DE4B0](@"MiroEditorFlowLayout");
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v4 = [collectionViewLayout safeValueForKey:@"snappedIndexPath"];
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
  _axCurrentIndexPath = [(AXMiroPhotoScrubber *)self _axCurrentIndexPath];
  _axContainerCollectionView = [(AXMiroPhotoScrubber *)self _axContainerCollectionView];
  v5 = [_axContainerCollectionView numberOfItemsInSection:0];
  if ([_axCurrentIndexPath row] < v5 - 1)
  {
    v6 = _axContainerCollectionView;
    v7 = _axCurrentIndexPath;
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
  _axCurrentIndexPath = [(AXMiroPhotoScrubber *)self _axCurrentIndexPath];
  if ([_axCurrentIndexPath row] >= 1)
  {
    _axContainerCollectionView = [(AXMiroPhotoScrubber *)self _axContainerCollectionView];
    v6 = _axCurrentIndexPath;
    v5 = _axContainerCollectionView;
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
  _axContainerCollectionView = [(AXMiroPhotoScrubber *)self _axContainerCollectionView];
  accessibilityContainer = [(AXMiroPhotoScrubber *)self accessibilityContainer];
  [_axContainerCollectionView frame];
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