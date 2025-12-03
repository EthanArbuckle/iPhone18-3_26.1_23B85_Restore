@interface AXVKCImageTextSelectionViewAccessibilityElement
- (AXVKCImageTextSelectionViewAccessibilityElement)initWithAccessibilityContainer:(id)container textRange:(_NSRange)range;
- (CGRect)accessibilityFrame;
- (_NSRange)_accessibilitySelectedTextRange;
- (_NSRange)textRange;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)range;
@end

@implementation AXVKCImageTextSelectionViewAccessibilityElement

- (AXVKCImageTextSelectionViewAccessibilityElement)initWithAccessibilityContainer:(id)container textRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  containerCopy = container;
  v15.receiver = self;
  v15.super_class = AXVKCImageTextSelectionViewAccessibilityElement;
  v8 = [(AXVKCImageTextSelectionViewAccessibilityElement *)&v15 initWithAccessibilityContainer:containerCopy];
  v9 = v8;
  if (v8)
  {
    v8->_textRange.location = location;
    v8->_textRange.length = length;
    v14.receiver = v8;
    v14.super_class = AXVKCImageTextSelectionViewAccessibilityElement;
    v10 = *MEMORY[0x29EDC7FD0] | [(AXVKCImageTextSelectionViewAccessibilityElement *)&v14 accessibilityTraits];
    v11 = [containerCopy safeBoolForKey:@"selectable"];
    v12 = *MEMORY[0x29EDBDC00];
    if (!v11)
    {
      v12 = 0;
    }

    [(AXVKCImageTextSelectionViewAccessibilityElement *)v9 setAccessibilityTraits:v10 | v12];
  }

  return v9;
}

- (CGRect)accessibilityFrame
{
  v20 = 0;
  objc_opt_class();
  accessibilityContainer = [(AXVKCImageTextSelectionViewAccessibilityElement *)self accessibilityContainer];
  v4 = __UIAccessibilityCastAsSafeCategory();

  if (v4)
  {
    textRange = [(AXVKCImageTextSelectionViewAccessibilityElement *)self textRange];
    [v4 _accessibilityBoundsForRange:{textRange, v6}];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = AXVKCImageTextSelectionViewAccessibilityElement;
    [(AXVKCImageTextSelectionViewAccessibilityElement *)&v19 accessibilityFrame];
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;

  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (_NSRange)_accessibilitySelectedTextRange
{
  accessibilityContainer = [(AXVKCImageTextSelectionViewAccessibilityElement *)self accessibilityContainer];
  _accessibilitySelectedTextRange = [accessibilityContainer _accessibilitySelectedTextRange];
  v6 = v5;
  if (([accessibilityContainer safeBoolForKey:@"isEditable"] & 1) == 0)
  {
    v7 = [accessibilityContainer safeStringForKey:@"text"];
    v8 = [v7 length];

    if (_accessibilitySelectedTextRange == v8)
    {
      _accessibilitySelectedTextRange = 0;
    }
  }

  location = self->_textRange.location;
  _accessibilitySelectedTextRange2 = (_accessibilitySelectedTextRange - location);
  if (_accessibilitySelectedTextRange < location || _accessibilitySelectedTextRange > self->_textRange.length + location)
  {
    v14.receiver = self;
    v14.super_class = AXVKCImageTextSelectionViewAccessibilityElement;
    _accessibilitySelectedTextRange2 = [(AXVKCImageTextSelectionViewAccessibilityElement *)&v14 _accessibilitySelectedTextRange];
    v6 = v11;
  }

  v12 = _accessibilitySelectedTextRange2;
  v13 = v6;
  result.length = v13;
  result.location = v12;
  return result;
}

- (void)_accessibilitySetSelectedTextRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v5 = self->_textRange.location;
  accessibilityContainer = [(AXVKCImageTextSelectionViewAccessibilityElement *)self accessibilityContainer];
  [accessibilityContainer _accessibilitySetSelectedTextRange:{v5 + location, length}];
}

- (_NSRange)textRange
{
  p_textRange = &self->_textRange;
  location = self->_textRange.location;
  length = p_textRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end