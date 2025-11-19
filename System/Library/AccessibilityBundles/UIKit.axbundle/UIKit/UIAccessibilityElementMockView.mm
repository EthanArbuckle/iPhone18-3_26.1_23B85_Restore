@interface UIAccessibilityElementMockView
- (BOOL)_accessibilityCanPerformEscapeAction;
- (BOOL)_accessibilityScrollToVisible;
- (BOOL)accessibilityRespondsToUserInteraction;
- (BOOL)accessibilityScroll:(int64_t)a3;
- (BOOL)becomeFirstResponder;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (CGPoint)_accessibilityMaxScrubberPosition;
- (CGPoint)_accessibilityMinScrubberPosition;
- (CGPoint)accessibilityActivationPoint;
- (CGRect)_accessibilityBoundsForRange:(_NSRange)a3;
- (CGRect)accessibilityFrame;
- (_NSRange)_accessibilityCharacterRangeForPosition:(unint64_t)a3;
- (_NSRange)_accessibilityLineRangeForPosition:(unint64_t)a3;
- (_NSRange)_accessibilityRangeForLineNumberAndColumn:(id)a3;
- (_NSRange)_accessibilitySelectedTextRange;
- (_NSRange)_accessibilityVisibleTextRange;
- (_NSRange)accessibilityRowRange;
- (double)_accessibilityMaxValue;
- (double)_accessibilityMinValue;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)description;
- (id)setDelegate:(id *)result;
- (int64_t)accessibilityCompareGeometry:(id)a3;
- (int64_t)indexOfAccessibilityElement:(id)a3;
- (uint64_t)setSubviewIndex:(uint64_t)result;
- (uint64_t)subviewIndex;
- (uint64_t)view;
- (unint64_t)accessibilityTraits;
- (void)_accessibilitySetValue:(id)a3;
- (void)dealloc;
- (void)revalidate;
- (void)setAccessibilityContainer:(id)a3;
- (void)setView:(id *)a1;
@end

@implementation UIAccessibilityElementMockView

- (void)setView:(id *)a1
{
  v5 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v5)
  {
    [v5[8] setAccessibilityContainer:?];
    [location setAccessibilityContainer:0];
    objc_storeStrong(v5 + 8, location);
    v2 = v5[8];
    v3 = [v5 accessibilityContainer];
    [v2 setAccessibilityContainer:?];
    MEMORY[0x29EDC9740](v3);
  }

  objc_storeStrong(&location, 0);
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v5 = [(UIView *)v9->_view canPerformAction:v7 withSender:location];
  objc_storeStrong(&location, 0);
  return v5;
}

- (void)_accessibilitySetValue:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(UIView *)v4->_view _accessibilitySetValue:location[0]];
  objc_storeStrong(location, 0);
}

- (BOOL)accessibilityScroll:(int64_t)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  v10 = 0;
  location = MEMORY[0x29EDC9748](self->_view);
  while (1)
  {
    v7 = 0;
    if ((v10 & 1) == 0)
    {
      objc_opt_class();
      v7 = 0;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = location != 0;
      }
    }

    if (!v7)
    {
      break;
    }

    v10 = [location accessibilityScroll:v11];
    if (v10 & 1) == 0 && (objc_opt_respondsToSelector())
    {
      if (v11 == 1)
      {
        v8 = 3;
      }

      else if (v11 == 2)
      {
        v8 = 2;
      }

      else
      {
        v8 = v11 == 4;
      }

      v10 = [location _accessibilityScrollPageInDirection:v8];
    }

    v3 = [location superview];
    v4 = location;
    location = v3;
    MEMORY[0x29EDC9740](v4);
  }

  if (v10)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }

  v6 = v10;
  objc_storeStrong(&location, 0);
  return v6 & 1;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  v8 = a3;
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  v5 = [(UIView *)v7->_view _accessibilityHitTest:location[0] withEvent:v8.x, v8.y];
  objc_storeStrong(location, 0);

  return v5;
}

- (void)revalidate
{
  v7 = a1;
  if (a1)
  {
    v1 = AXRetainAutorelease();
    WeakRetained = objc_loadWeakRetained((v7 + 48));
    MEMORY[0x29EDC9740](WeakRetained);
    if (WeakRetained)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        location = [*(v7 + 64) superview];
        if (!location || ([*(v7 + 64) isHiddenOrHasHiddenAncestor] & 1) != 0)
        {
          [*(v7 + 64) setAccessibilityContainer:{0x2A1792000uLL, 0}];
          objc_storeStrong((v7 + *(v2 + 3184)), obj);
          v4 = objc_loadWeakRetained((v7 + 48));
          [v4 updateMockView:v7];
          MEMORY[0x29EDC9740](v4);
        }

        objc_storeStrong(&location, 0);
      }

      else
      {
        objc_storeStrong((v7 + 64), 0);
      }
    }
  }
}

- (_NSRange)accessibilityRowRange
{
  [(UIAccessibilityElementMockView *)self revalidate];
  v2 = [(UIView *)self->_view accessibilityRowRange];
  result.length = v3;
  result.location = v2;
  return result;
}

- (double)_accessibilityMaxValue
{
  [(UIAccessibilityElementMockView *)self revalidate];
  [(UIView *)self->_view _accessibilityMaxValue];
  return result;
}

- (double)_accessibilityMinValue
{
  [(UIAccessibilityElementMockView *)self revalidate];
  [(UIView *)self->_view _accessibilityMinValue];
  return result;
}

- (CGPoint)accessibilityActivationPoint
{
  [(UIAccessibilityElementMockView *)self revalidate];
  [(UIView *)self->_view accessibilityActivationPoint];
  *&v11 = v2;
  *(&v11 + 1) = v3;
  v10 = [(UIView *)self->_view superview];
  *&v4 = MEMORY[0x29EDC9740](v10).n128_u64[0];
  if (v10)
  {
    v13 = v11;
  }

  else
  {
    v9 = [(UIAccessibilityElementMockView *)self accessibilityContainer];
    [v9 accessibilityActivationPoint];
    *&v13 = v5;
    *(&v13 + 1) = v6;
    MEMORY[0x29EDC9740](v9);
  }

  v8 = *(&v13 + 1);
  v7 = *&v13;
  result.y = v8;
  result.x = v7;
  return result;
}

- (CGRect)accessibilityFrame
{
  [(UIAccessibilityElementMockView *)self revalidate];
  [(UIView *)self->_view accessibilityFrame];
  *&v14 = v16.origin.x;
  *(&v14 + 1) = *&v16.origin.y;
  *&v15 = v16.size.width;
  *(&v15 + 1) = *&v16.size.height;
  if (CGRectIsEmpty(v16))
  {
    v10 = [(UIAccessibilityElementMockView *)self accessibilityContainer];
    [v10 accessibilityFrame];
    *&v11 = v2;
    *(&v11 + 1) = v3;
    *&v12 = v4;
    *(&v12 + 1) = v5;
    v14 = v11;
    v15 = v12;
    MEMORY[0x29EDC9740](v10);
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
  v7 = self;
  v6 = a2;
  [(UIAccessibilityElementMockView *)self revalidate];
  v4.receiver = v7;
  v4.super_class = UIAccessibilityElementMockView;
  v5 = [(UIAccessibilityElementMockView *)&v4 accessibilityTraits];
  v3 = v5;
  return v3 | [(UIView *)v7->_view accessibilityTraits];
}

- (BOOL)_accessibilityScrollToVisible
{
  v7 = self;
  v6 = a2;
  v4 = [(UIAccessibilityElementMockView *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  *&v2 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  if (!v4)
  {
    return [(UIView *)v7->_view _accessibilityScrollToVisible]& 1;
  }

  v5.receiver = v7;
  v5.super_class = UIAccessibilityElementMockView;
  return [(UIAccessibilityElementMockView *)&v5 _accessibilityScrollToVisible];
}

- (CGPoint)_accessibilityMinScrubberPosition
{
  [(UIView *)self->_view _accessibilityMinScrubberPosition:a2];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)_accessibilityMaxScrubberPosition
{
  [(UIView *)self->_view _accessibilityMaxScrubberPosition:a2];
  result.y = v3;
  result.x = v2;
  return result;
}

- (_NSRange)_accessibilitySelectedTextRange
{
  v2 = [(UIView *)self->_view _accessibilitySelectedTextRange:a2];
  result.length = v3;
  result.location = v2;
  return result;
}

- (_NSRange)_accessibilityVisibleTextRange
{
  v2 = [(UIView *)self->_view _accessibilityVisibleTextRange:a2];
  result.length = v3;
  result.location = v2;
  return result;
}

- (BOOL)_accessibilityCanPerformEscapeAction
{
  if (([(UIView *)self->_view safeBoolForKey:@"_accessibilityUIViewCanPerformEscapeAction"]& 1) != 0)
  {
    return 1;
  }

  if (!_accessibilityCanPerformEscapeAction_BaseNSObjectMethod)
  {
    v2 = objc_opt_class();
    _accessibilityCanPerformEscapeAction_BaseNSObjectMethod = class_getInstanceMethod(v2, sel_accessibilityPerformEscape);
  }

  v3 = objc_opt_class();
  return class_getInstanceMethod(v3, sel_accessibilityPerformEscape) != _accessibilityCanPerformEscapeAction_BaseNSObjectMethod;
}

- (BOOL)becomeFirstResponder
{
  if (objc_opt_respondsToSelector())
  {
    return [(UIView *)self->_view becomeFirstResponder]& 1;
  }

  else
  {
    return 0;
  }
}

- (void)setAccessibilityContainer:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = UIAccessibilityElementMockView;
  [(UIAccessibilityElementMockView *)&v3 setAccessibilityContainer:location[0]];
  [(UIView *)v5->_view setAccessibilityContainer:location[0]];
  objc_storeStrong(location, 0);
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  [(UIView *)self->_view setAccessibilityContainer:0];
  v2.receiver = v4;
  v2.super_class = UIAccessibilityElementMockView;
  [(UIAccessibilityElementMockView *)&v2 dealloc];
}

- (int64_t)accessibilityCompareGeometry:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(UIView *)v6->_view accessibilityCompareGeometry:location[0]];
  objc_storeStrong(location, 0);
  return v4;
}

- (id)description
{
  v11 = self;
  v10[1] = a2;
  v10[0] = MEMORY[0x29EDC9748](self->_view);
  v9 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"$%@$", v10[0]];
  v7.receiver = v11;
  v7.super_class = UIAccessibilityElementMockView;
  location = [(UIAccessibilityElementMockView *)&v7 description];
  v5 = MEMORY[0x29EDBA0F8];
  v6 = v9;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 0;
  }

  else
  {
    v4 = location;
  }

  v3 = [v5 stringWithFormat:@"%@ %@", v6, v4];
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(v10, 0);

  return v3;
}

- (int64_t)indexOfAccessibilityElement:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(UIAccessibilityElementMockView *)v6 revalidate];
  v4 = [(UIView *)v6->_view indexOfAccessibilityElement:location[0]];
  objc_storeStrong(location, 0);
  return v4;
}

- (BOOL)accessibilityRespondsToUserInteraction
{
  [(UIAccessibilityElementMockView *)self revalidate];
  v4 = 0;
  v2 = [(UIAccessibilityElementMockView *)self accessibilityTraits];
  if ((v2 & *MEMORY[0x29EDC7578]) == 0)
  {
    v4 = [(UIView *)self->_view accessibilityRespondsToUserInteraction];
  }

  return v4 & 1;
}

- (CGRect)_accessibilityBoundsForRange:(_NSRange)a3
{
  [(UIView *)self->_view _accessibilityBoundsForRange:a3.location, a3.length, a2, self, a3.location, a3.length];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (_NSRange)_accessibilityCharacterRangeForPosition:(unint64_t)a3
{
  v3 = [(UIView *)self->_view _accessibilityCharacterRangeForPosition:a3];
  result.length = v4;
  result.location = v3;
  return result;
}

- (_NSRange)_accessibilityLineRangeForPosition:(unint64_t)a3
{
  v3 = [(UIView *)self->_view _accessibilityLineRangeForPosition:a3];
  result.length = v4;
  result.location = v3;
  return result;
}

- (_NSRange)_accessibilityRangeForLineNumberAndColumn:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = [(UIView *)v7->_view _accessibilityRangeForLineNumberAndColumn:location[0]];
  v9 = v3;
  objc_storeStrong(location, 0);
  v4 = v8;
  v5 = v9;
  result.length = v5;
  result.location = v4;
  return result;
}

- (id)setDelegate:(id *)result
{
  if (result)
  {
    return objc_storeWeak(result + 6, a2);
  }

  return result;
}

- (uint64_t)subviewIndex
{
  if (a1)
  {
    return *(a1 + 56);
  }

  else
  {
    return 0;
  }
}

- (uint64_t)setSubviewIndex:(uint64_t)result
{
  if (result)
  {
    *(result + 56) = a2;
  }

  return result;
}

- (uint64_t)view
{
  if (a1)
  {
    return *(a1 + 64);
  }

  else
  {
    return 0;
  }
}

@end