@interface AXMemoriesSlider
- (CGRect)accessibilityFrame;
- (id)_accessibilityUserTestingElementBaseType;
- (id)_axContainingCollectionView;
- (id)accessibilityLabel;
- (int64_t)_axContainingSelectedItem;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)setSelectedDescription:(id)a3;
@end

@implementation AXMemoriesSlider

- (void)setSelectedDescription:(id)a3
{
  v6 = a3;
  if ([v6 isEqualToString:@"●"])
  {
    v4 = accessibilityMemoriesLocalizedString(@"slider.value.neutral");
  }

  else
  {
    v4 = v6;
  }

  selectedDescription = self->_selectedDescription;
  self->_selectedDescription = v4;
}

- (id)accessibilityLabel
{
  v2 = [(AXMemoriesSlider *)self sliderType];
  if (!v2)
  {
    v3 = @"slider.description.mood";
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v3 = @"slider.description.duration";
LABEL_5:
    v4 = accessibilityMemoriesLocalizedString(v3);
    goto LABEL_7;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (id)_axContainingCollectionView
{
  v2 = MEMORY[0x29EDC7DA8];
  v3 = [(AXMemoriesSlider *)self accessibilityContainer];
  v4 = [v2 viewControllerForView:v3];

  objc_opt_class();
  v5 = [v4 safeValueForKey:@"collectionView"];
  v6 = __UIAccessibilityCastAsClass();

  return v6;
}

- (int64_t)_axContainingSelectedItem
{
  v2 = MEMORY[0x29EDC7DA8];
  v3 = [(AXMemoriesSlider *)self accessibilityContainer];
  v4 = [v2 viewControllerForView:v3];

  v5 = [v4 safeIntegerForKey:@"selectedItem"];
  return v5;
}

- (void)accessibilityIncrement
{
  v5 = [(AXMemoriesSlider *)self _axContainingCollectionView];
  v3 = [(AXMemoriesSlider *)self _axContainingSelectedItem];
  if (v3 < [v5 numberOfItemsInSection:0] - 1)
  {
    v4 = [MEMORY[0x29EDB9FE0] indexPathForItem:v3 + 1 inSection:0];
    [v5 scrollToItemAtIndexPath:v4 atScrollPosition:16 animated:1];
  }
}

- (void)accessibilityDecrement
{
  v5 = [(AXMemoriesSlider *)self _axContainingCollectionView];
  v3 = [(AXMemoriesSlider *)self _axContainingSelectedItem];
  if (v3 >= 1)
  {
    v4 = [MEMORY[0x29EDB9FE0] indexPathForItem:v3 - 1 inSection:0];
    [v5 scrollToItemAtIndexPath:v4 atScrollPosition:16 animated:1];
  }
}

- (CGRect)accessibilityFrame
{
  v3 = [(AXMemoriesSlider *)self _axContainingCollectionView];
  v4 = [(AXMemoriesSlider *)self accessibilityContainer];
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

- (id)_accessibilityUserTestingElementBaseType
{
  v2 = objc_opt_class();

  return [v2 description];
}

@end