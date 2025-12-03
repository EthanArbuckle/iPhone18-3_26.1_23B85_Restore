@interface PLUIAccessibilityMockSlider
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (CGRect)accessibilityFrame;
- (id)mockSliderDelegate;
- (unint64_t)accessibilityTraits;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)setView:(id)view;
@end

@implementation PLUIAccessibilityMockSlider

- (void)setView:(id)view
{
  viewCopy = view;
  [(UIView *)viewCopy setAccessibilityContainer:0];
  view = self->_view;
  self->_view = viewCopy;
  v6 = viewCopy;

  v7 = self->_view;
  accessibilityContainer = [(PLUIAccessibilityMockSlider *)self accessibilityContainer];
  [(UIView *)v7 setAccessibilityContainer:accessibilityContainer];
}

- (CGRect)accessibilityFrame
{
  [(UIView *)self->_view accessibilityFrame];
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  if (CGRectIsEmpty(v16))
  {
    accessibilityContainer = [(PLUIAccessibilityMockSlider *)self accessibilityContainer];
    [accessibilityContainer accessibilityFrame];
    x = v8;
    y = v9;
    width = v10;
    height = v11;
  }

  if (width >= 16.0)
  {
    v12 = width;
  }

  else
  {
    v12 = 16.0;
  }

  if (width >= 16.0)
  {
    v13 = x;
  }

  else
  {
    v13 = x + (16.0 - width) * -0.5;
  }

  v14 = y;
  v15 = height;
  result.size.height = v15;
  result.size.width = v12;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (unint64_t)accessibilityTraits
{
  v3 = *MEMORY[0x29EDC7FA0];
  accessibilityTraits = [(UIView *)self->_view accessibilityTraits];
  v9.receiver = self;
  v9.super_class = PLUIAccessibilityMockSlider;
  v5 = [(PLUIAccessibilityMockSlider *)&v9 accessibilityTraits]| accessibilityTraits;
  v6 = *MEMORY[0x29EDC7FA8];
  if ((*MEMORY[0x29EDC7FA8] & ~v5) != 0)
  {
    v6 = 0;
  }

  if ((*MEMORY[0x29EDC7FF0] & ~v5) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = *MEMORY[0x29EDC7FF0];
  }

  return *MEMORY[0x29EDC7F60] | v3 | v6 | v7;
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  if (scroll == 4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_mockSliderDelegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v6 = objc_loadWeakRetained(&self->_mockSliderDelegate);
      [v6 _accessibilityIncrementMockSlider:self largeStep:1];
      goto LABEL_7;
    }

    return 1;
  }

  if (scroll == 3)
  {
    v4 = objc_loadWeakRetained(&self->_mockSliderDelegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_mockSliderDelegate);
      [v6 _accessibilityDecrementMockSlider:self largeStep:1];
LABEL_7:

      return 1;
    }

    return 1;
  }

  return 0;
}

- (void)accessibilityIncrement
{
  WeakRetained = objc_loadWeakRetained(&self->_mockSliderDelegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_mockSliderDelegate);
    [v5 _accessibilityIncrementMockSlider:self largeStep:0];
  }
}

- (void)accessibilityDecrement
{
  WeakRetained = objc_loadWeakRetained(&self->_mockSliderDelegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_mockSliderDelegate);
    [v5 _accessibilityDecrementMockSlider:self largeStep:0];
  }
}

- (id)mockSliderDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mockSliderDelegate);

  return WeakRetained;
}

@end