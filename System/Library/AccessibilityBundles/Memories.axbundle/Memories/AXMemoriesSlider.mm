@interface AXMemoriesSlider
- (CGRect)accessibilityFrame;
- (id)_accessibilityUserTestingElementBaseType;
- (id)_axContainingCollectionView;
- (id)accessibilityLabel;
- (int64_t)_axContainingSelectedItem;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)setSelectedDescription:(id)description;
@end

@implementation AXMemoriesSlider

- (void)setSelectedDescription:(id)description
{
  descriptionCopy = description;
  if ([descriptionCopy isEqualToString:@"●"])
  {
    v4 = accessibilityMemoriesLocalizedString(@"slider.value.neutral");
  }

  else
  {
    v4 = descriptionCopy;
  }

  selectedDescription = self->_selectedDescription;
  self->_selectedDescription = v4;
}

- (id)accessibilityLabel
{
  sliderType = [(AXMemoriesSlider *)self sliderType];
  if (!sliderType)
  {
    v3 = @"slider.description.mood";
    goto LABEL_5;
  }

  if (sliderType == 1)
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
  accessibilityContainer = [(AXMemoriesSlider *)self accessibilityContainer];
  v4 = [v2 viewControllerForView:accessibilityContainer];

  objc_opt_class();
  v5 = [v4 safeValueForKey:@"collectionView"];
  v6 = __UIAccessibilityCastAsClass();

  return v6;
}

- (int64_t)_axContainingSelectedItem
{
  v2 = MEMORY[0x29EDC7DA8];
  accessibilityContainer = [(AXMemoriesSlider *)self accessibilityContainer];
  v4 = [v2 viewControllerForView:accessibilityContainer];

  v5 = [v4 safeIntegerForKey:@"selectedItem"];
  return v5;
}

- (void)accessibilityIncrement
{
  _axContainingCollectionView = [(AXMemoriesSlider *)self _axContainingCollectionView];
  _axContainingSelectedItem = [(AXMemoriesSlider *)self _axContainingSelectedItem];
  if (_axContainingSelectedItem < [_axContainingCollectionView numberOfItemsInSection:0] - 1)
  {
    v4 = [MEMORY[0x29EDB9FE0] indexPathForItem:_axContainingSelectedItem + 1 inSection:0];
    [_axContainingCollectionView scrollToItemAtIndexPath:v4 atScrollPosition:16 animated:1];
  }
}

- (void)accessibilityDecrement
{
  _axContainingCollectionView = [(AXMemoriesSlider *)self _axContainingCollectionView];
  _axContainingSelectedItem = [(AXMemoriesSlider *)self _axContainingSelectedItem];
  if (_axContainingSelectedItem >= 1)
  {
    v4 = [MEMORY[0x29EDB9FE0] indexPathForItem:_axContainingSelectedItem - 1 inSection:0];
    [_axContainingCollectionView scrollToItemAtIndexPath:v4 atScrollPosition:16 animated:1];
  }
}

- (CGRect)accessibilityFrame
{
  _axContainingCollectionView = [(AXMemoriesSlider *)self _axContainingCollectionView];
  accessibilityContainer = [(AXMemoriesSlider *)self accessibilityContainer];
  [_axContainingCollectionView frame];
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