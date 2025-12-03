@interface UIAccessibilityElementMockSlider
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (CGPoint)_accessibilityMaxScrubberPosition;
- (CGPoint)_accessibilityMinScrubberPosition;
- (CGRect)accessibilityFrame;
- (id)setDelegate:(id *)result;
- (unint64_t)accessibilityTraits;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)setView:(id *)view;
@end

@implementation UIAccessibilityElementMockSlider

- (void)setView:(id *)view
{
  viewCopy = view;
  location = 0;
  objc_storeStrong(&location, a2);
  if (viewCopy)
  {
    [location setAccessibilityContainer:0];
    objc_storeStrong(viewCopy + 6, location);
    v2 = viewCopy[6];
    accessibilityContainer = [viewCopy accessibilityContainer];
    [v2 setAccessibilityContainer:?];
    MEMORY[0x29EDC9740](accessibilityContainer);
  }

  objc_storeStrong(&location, 0);
}

- (CGRect)accessibilityFrame
{
  [(UIView *)self->_view accessibilityFrame];
  *&v14 = v16.origin.x;
  *(&v14 + 1) = *&v16.origin.y;
  *&v15 = v16.size.width;
  *(&v15 + 1) = *&v16.size.height;
  if (CGRectIsEmpty(v16))
  {
    accessibilityContainer = [(UIAccessibilityElementMockSlider *)self accessibilityContainer];
    [accessibilityContainer accessibilityFrame];
    *&v11 = v2;
    *(&v11 + 1) = v3;
    *&v12 = v4;
    *(&v12 + 1) = v5;
    v14 = v11;
    v15 = v12;
    MEMORY[0x29EDC9740](accessibilityContainer);
  }

  v7 = *(&v14 + 1);
  v6 = *&v14;
  v9 = *(&v15 + 1);
  v8 = *&v15;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v7 = a2;
  v6 = *MEMORY[0x29EDC7FA0];
  accessibilityTraits = [(UIView *)self->_view accessibilityTraits];
  v4.receiver = selfCopy;
  v4.super_class = UIAccessibilityElementMockSlider;
  v5 = accessibilityTraits | [(UIAccessibilityElementMockSlider *)&v4 accessibilityTraits];
  if ((v5 & *MEMORY[0x29EDC7FA8]) == *MEMORY[0x29EDC7FA8])
  {
    v6 |= *MEMORY[0x29EDC7FA8];
  }

  return v6 | *MEMORY[0x29EDC7F60];
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  if (scroll == 3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = objc_opt_respondsToSelector();
    MEMORY[0x29EDC9740](WeakRetained);
    if (v9)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 _accessibilityDecrementMockSlider:self largeStep:1];
      MEMORY[0x29EDC9740](v7);
    }

    return 1;
  }

  else if (scroll == 4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();
    MEMORY[0x29EDC9740](v5);
    if (v6)
    {
      v4 = objc_loadWeakRetained(&self->_delegate);
      [v4 _accessibilityIncrementMockSlider:self largeStep:1];
      MEMORY[0x29EDC9740](v4);
    }

    return 1;
  }

  else
  {
    return 0;
  }
}

- (void)accessibilityIncrement
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();
  MEMORY[0x29EDC9740](WeakRetained);
  if (v4)
  {
    v2 = objc_loadWeakRetained(&self->_delegate);
    [v2 _accessibilityIncrementMockSlider:self largeStep:0];
    MEMORY[0x29EDC9740](v2);
  }
}

- (void)accessibilityDecrement
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();
  MEMORY[0x29EDC9740](WeakRetained);
  if (v4)
  {
    v2 = objc_loadWeakRetained(&self->_delegate);
    [v2 _accessibilityDecrementMockSlider:self largeStep:0];
    MEMORY[0x29EDC9740](v2);
  }
}

- (CGPoint)_accessibilityMinScrubberPosition
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained _accessibilityMinScrubberPosition];
  v7 = v2;
  v8 = v3;
  MEMORY[0x29EDC9740](WeakRetained);
  v4 = v7;
  v5 = v8;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)_accessibilityMaxScrubberPosition
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained _accessibilityMaxScrubberPosition];
  v7 = v2;
  v8 = v3;
  MEMORY[0x29EDC9740](WeakRetained);
  v4 = v7;
  v5 = v8;
  result.y = v5;
  result.x = v4;
  return result;
}

- (id)setDelegate:(id *)result
{
  if (result)
  {
    return objc_storeWeak(result + 7, a2);
  }

  return result;
}

@end