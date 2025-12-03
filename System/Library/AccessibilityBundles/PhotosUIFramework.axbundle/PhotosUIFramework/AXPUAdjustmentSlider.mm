@interface AXPUAdjustmentSlider
- (AXPUAdjustmentSlider)initWithAccessibilityContainer:(id)container;
- (BOOL)accessibilityActivate;
- (CGRect)accessibilityFrame;
- (id)_accessibilityUserTestingElementBaseType;
- (id)_axAdjustmentInfo;
- (id)_axContainerCollectionView;
- (id)_axContainerViewController;
- (id)_axContainingSelectedIndexPath;
- (id)_axDataSource;
- (id)_axSelectedAdjustmentCell;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)_axAdjustValue:(BOOL)value;
@end

@implementation AXPUAdjustmentSlider

- (AXPUAdjustmentSlider)initWithAccessibilityContainer:(id)container
{
  v5.receiver = self;
  v5.super_class = AXPUAdjustmentSlider;
  v3 = [(AXPUAdjustmentSlider *)&v5 initWithAccessibilityContainer:container];
  [(AXPUAdjustmentSlider *)v3 _setAXPreviousSelectedIndexPathSection:-1];

  return v3;
}

- (id)_axAdjustmentInfo
{
  [(AXPUAdjustmentSlider *)self _axContainingSelectedIndexPath];
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__0;
  v9 = __Block_byref_object_dispose__0;
  v4 = v10 = 0;
  AXPerformSafeBlock();
  v2 = v6[5];

  _Block_object_dispose(&v5, 8);

  return v2;
}

void __41__AXPUAdjustmentSlider__axAdjustmentInfo__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _axDataSource];
  v2 = [v5 infoForItemAtIndexPath:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_axSelectedAdjustmentCell
{
  _axContainerCollectionView = [(AXPUAdjustmentSlider *)self _axContainerCollectionView];
  _axContainingSelectedIndexPath = [(AXPUAdjustmentSlider *)self _axContainingSelectedIndexPath];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__0;
  v13 = __Block_byref_object_dispose__0;
  v14 = 0;
  v7 = _axContainerCollectionView;
  v8 = _axContainingSelectedIndexPath;
  AXPerformSafeBlock();
  v5 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v5;
}

uint64_t __49__AXPUAdjustmentSlider__axSelectedAdjustmentCell__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cellForItemAtIndexPath:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (id)_axDataSource
{
  _axContainerViewController = [(AXPUAdjustmentSlider *)self _axContainerViewController];
  v3 = [_axContainerViewController safeValueForKey:@"dataSource"];

  return v3;
}

- (id)_axContainerViewController
{
  v2 = MEMORY[0x29EDC7DA8];
  accessibilityContainer = [(AXPUAdjustmentSlider *)self accessibilityContainer];
  v4 = [v2 viewControllerForView:accessibilityContainer];

  return v4;
}

- (id)_axContainerCollectionView
{
  _axContainerViewController = [(AXPUAdjustmentSlider *)self _axContainerViewController];
  objc_opt_class();
  v3 = [_axContainerViewController safeValueForKey:@"collectionView"];
  v4 = __UIAccessibilityCastAsClass();

  return v4;
}

- (id)_axContainingSelectedIndexPath
{
  _axContainerViewController = [(AXPUAdjustmentSlider *)self _axContainerViewController];
  v3 = [_axContainerViewController safeValueForKey:@"selectedIndexPath"];

  return v3;
}

- (void)_axAdjustValue:(BOOL)value
{
  valueCopy = value;
  _axContainerCollectionView = [(AXPUAdjustmentSlider *)self _axContainerCollectionView];
  _axContainingSelectedIndexPath = [(AXPUAdjustmentSlider *)self _axContainingSelectedIndexPath];
  numberOfSections = [_axContainerCollectionView numberOfSections];
  if (numberOfSections >= 1)
  {
    v8 = numberOfSections;
    section = [_axContainingSelectedIndexPath section];
    if (section < v8)
    {
      v10 = section;
      [(AXPUAdjustmentSlider *)self _setAXPreviousSelectedIndexPathSection:section];
      v11 = [_axContainingSelectedIndexPath row];
      if (valueCopy)
      {
        if (v11 < [_axContainerCollectionView numberOfItemsInSection:v10] - 1)
        {
          v12 = MEMORY[0x29EDB9FE0];
          v13 = [_axContainingSelectedIndexPath row] + 1;
LABEL_13:
          v15 = v12;
          goto LABEL_14;
        }

        if (++v10 < v8)
        {
          v15 = MEMORY[0x29EDB9FE0];
          v13 = 0;
LABEL_14:
          v16 = [v15 indexPathForItem:v13 inSection:v10];
          v17 = v16;
          if (v16)
          {
            item = [v16 item];
            if (item < [_axContainerCollectionView numberOfItemsInSection:v10])
            {
              _axContainerViewController = [(AXPUAdjustmentSlider *)self _axContainerViewController];
              if ([_axContainerViewController safeIntegerForKey:@"layoutDirection"])
              {
                v20 = 2;
              }

              else
              {
                v20 = 16;
              }

              [_axContainerCollectionView selectItemAtIndexPath:v17 animated:0 scrollPosition:0];
              [_axContainerCollectionView scrollToItemAtIndexPath:v17 atScrollPosition:v20 animated:0];
              v22 = _axContainerViewController;
              v17 = v17;
              v21 = _axContainerViewController;
              AXPerformSafeBlock();
            }
          }

          goto LABEL_21;
        }

LABEL_20:
        v17 = 0;
LABEL_21:

        goto LABEL_22;
      }

      if (v11 < 1)
      {
        if (!v10)
        {
          goto LABEL_20;
        }

        --v10;
        v12 = MEMORY[0x29EDB9FE0];
        v14 = [_axContainerCollectionView numberOfItemsInSection:v10];
      }

      else
      {
        v12 = MEMORY[0x29EDB9FE0];
        v14 = [_axContainingSelectedIndexPath row];
      }

      v13 = v14 - 1;
      goto LABEL_13;
    }
  }

LABEL_22:
}

uint64_t __39__AXPUAdjustmentSlider__axAdjustValue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setSelectedIndexPath:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _updateSliderForControlAtIndexPath:v3];
}

- (id)accessibilityLabel
{
  _axContainerCollectionView = [(AXPUAdjustmentSlider *)self _axContainerCollectionView];
  numberOfSections = [_axContainerCollectionView numberOfSections];
  v5 = accessibilityPULocalizedString(@"adjustments.slider");
  if (numberOfSections <= 1)
  {
    _axAdjustmentInfo = [(AXPUAdjustmentSlider *)self _axAdjustmentInfo];
    v9 = [_axAdjustmentInfo safeValueForKey:@"localizedSectionName"];
    v7 = __UIAXStringForVariables();

    v5 = v7;
  }

  return v5;
}

- (id)accessibilityValue
{
  _axSelectedAdjustmentCell = [(AXPUAdjustmentSlider *)self _axSelectedAdjustmentCell];
  _axAdjustmentInfo = [(AXPUAdjustmentSlider *)self _axAdjustmentInfo];
  v5 = [_axAdjustmentInfo safeStringForKey:@"localizedName"];
  _axPreviousSelectedIndexPathSection = [(AXPUAdjustmentSlider *)self _axPreviousSelectedIndexPathSection];
  _axContainingSelectedIndexPath = [(AXPUAdjustmentSlider *)self _axContainingSelectedIndexPath];
  if ([_axContainingSelectedIndexPath section] == _axPreviousSelectedIndexPathSection)
  {
    v8 = 0;
  }

  else
  {
    _axContainerCollectionView = [(AXPUAdjustmentSlider *)self _axContainerCollectionView];
    if ([_axContainerCollectionView numberOfItemsInSection:{objc_msgSend(_axContainingSelectedIndexPath, "section")}] < 2)
    {
      v8 = 0;
    }

    else
    {
      v8 = [_axAdjustmentInfo safeValueForKey:@"localizedSectionName"];
    }
  }

  if ([_axSelectedAdjustmentCell safeBoolForKey:@"isEnabled"])
  {
    accessibilityLabel = [_axSelectedAdjustmentCell accessibilityLabel];
  }

  else
  {
    accessibilityLabel = 0;
  }

  accessibilityValue = [_axSelectedAdjustmentCell accessibilityValue];
  _axContainerCollectionView2 = [(AXPUAdjustmentSlider *)self _axContainerCollectionView];
  [_axContainerCollectionView2 numberOfSections];
  v13 = __UIAXStringForVariables();

  return v13;
}

- (CGRect)accessibilityFrame
{
  _axContainerCollectionView = [(AXPUAdjustmentSlider *)self _axContainerCollectionView];
  accessibilityContainer = [(AXPUAdjustmentSlider *)self accessibilityContainer];
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

- (id)_accessibilityUserTestingElementBaseType
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (BOOL)accessibilityActivate
{
  _axSelectedAdjustmentCell = [(AXPUAdjustmentSlider *)self _axSelectedAdjustmentCell];
  v11.receiver = self;
  v11.super_class = AXPUAdjustmentSlider;
  accessibilityActivate = [(AXPUAdjustmentSlider *)&v11 accessibilityActivate];
  if ([_axSelectedAdjustmentCell safeBoolForKey:@"isEnabled"])
  {
    v5 = @"adjustments.tool.off";
  }

  else
  {
    v5 = @"adjustments.tool.on";
  }

  v6 = accessibilityPULocalizedString(v5);
  v7 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v6];
  [v7 setAttribute:&unk_2A22932C8 forKey:*MEMORY[0x29EDBD860]];
  v10 = v7;
  v8 = v7;
  AXPerformBlockOnMainThread();

  return accessibilityActivate;
}

@end