@interface AXCKMentionSubelement
- (AXCKMentionSubelement)initWithTextView:(id)view;
- (CGRect)accessibilityFrame;
- (UITextView)accessibilityContainerTextView;
- (_NSRange)range;
- (id)_textRangeForTextView:(id)view;
- (unint64_t)accessibilityTraits;
@end

@implementation AXCKMentionSubelement

- (unint64_t)accessibilityTraits
{
  objc_opt_class();
  accessibilityContainer = [(AXCKMentionSubelement *)self accessibilityContainer];
  v4 = __UIAccessibilityCastAsClass();

  if (v4)
  {
    isSelectable = [v4 isSelectable];
    v6 = MEMORY[0x29EDC7F70];
    if ((isSelectable & 1) == 0 && ![v4 isEditable])
    {
      v6 = MEMORY[0x29EDC7FA0];
    }
  }

  else
  {
    v6 = MEMORY[0x29EDC7F70];
  }

  v7 = *v6;

  return v7;
}

- (AXCKMentionSubelement)initWithTextView:(id)view
{
  v4.receiver = self;
  v4.super_class = AXCKMentionSubelement;
  return [(AXCKMentionSubelement *)&v4 initWithAccessibilityContainer:view];
}

- (id)_textRangeForTextView:(id)view
{
  viewCopy = view;
  beginningOfDocument = [viewCopy beginningOfDocument];
  v6 = [viewCopy positionFromPosition:beginningOfDocument offset:{-[AXCKMentionSubelement range](self, "range")}];
  range = [(AXCKMentionSubelement *)self range];
  [(AXCKMentionSubelement *)self range];
  v9 = [viewCopy positionFromPosition:beginningOfDocument offset:v8 + range];
  v10 = v9;
  v11 = 0;
  if (v6 && v9)
  {
    v11 = [viewCopy textRangeFromPosition:v6 toPosition:v9];
  }

  return v11;
}

- (CGRect)accessibilityFrame
{
  accessibilityContainer = [(AXCKMentionSubelement *)self accessibilityContainer];
  v4 = [(AXCKMentionSubelement *)self _textRangeForTextView:accessibilityContainer];
  v5 = v4;
  if (!accessibilityContainer)
  {
    v6 = *MEMORY[0x29EDB90E0];
    v7 = *(MEMORY[0x29EDB90E0] + 8);
    v8 = *(MEMORY[0x29EDB90E0] + 16);
    v9 = *(MEMORY[0x29EDB90E0] + 24);
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [(UIView *)accessibilityContainer bounds];
  if (v5)
  {
LABEL_3:
    [(UIView *)accessibilityContainer firstRectForRange:v5];
  }

LABEL_4:
  v18 = UIAccessibilityConvertFrameToScreenCoordinates(*&v6, accessibilityContainer);
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (UITextView)accessibilityContainerTextView
{
  WeakRetained = objc_loadWeakRetained(&self->_accessibilityContainerTextView);

  return WeakRetained;
}

- (_NSRange)range
{
  p_range = &self->_range;
  location = self->_range.location;
  length = p_range->length;
  result.length = length;
  result.location = location;
  return result;
}

@end