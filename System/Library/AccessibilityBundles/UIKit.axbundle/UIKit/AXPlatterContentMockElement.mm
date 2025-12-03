@interface AXPlatterContentMockElement
- (CGRect)accessibilityFrame;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)description;
- (uint64_t)sourceElement;
- (uint64_t)sourceView;
- (void)setSourceElement:(uint64_t)element;
- (void)setSourceView:(uint64_t)view;
@end

@implementation AXPlatterContentMockElement

- (id)accessibilityLabel
{
  sourceElement = [(AXPlatterContentMockElement *)self sourceElement];
  accessibilityLabel = [sourceElement accessibilityLabel];
  MEMORY[0x29EDC9740](sourceElement);

  return accessibilityLabel;
}

- (uint64_t)sourceElement
{
  if (self)
  {
    return *(self + 48);
  }

  else
  {
    return 0;
  }
}

- (id)accessibilityValue
{
  sourceElement = [(AXPlatterContentMockElement *)self sourceElement];
  accessibilityValue = [sourceElement accessibilityValue];
  MEMORY[0x29EDC9740](sourceElement);

  return accessibilityValue;
}

- (CGRect)accessibilityFrame
{
  sourceView = [(AXPlatterContentMockElement *)self sourceView];
  sourceElement = [(AXPlatterContentMockElement *)self sourceElement];
  [sourceElement accessibilityFrame];
  UIAccessibilityFrameToBounds();
  MEMORY[0x29EDC9740](sourceElement);
  MEMORY[0x29EDC9740](sourceView);
  accessibilityContainer = [(AXPlatterContentMockElement *)self accessibilityContainer];
  UIAccessibilityFrameForBounds();
  v14 = v2;
  v15 = v3;
  v16 = v4;
  v17 = v5;
  MEMORY[0x29EDC9740](accessibilityContainer);
  v6 = v14;
  v7 = v15;
  v8 = v16;
  v9 = v17;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (uint64_t)sourceView
{
  if (self)
  {
    return *(self + 56);
  }

  else
  {
    return 0;
  }
}

- (id)description
{
  selfCopy = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = AXPlatterContentMockElement;
  v4 = [(AXPlatterContentMockElement *)&v6 description];
  sourceElement = [(AXPlatterContentMockElement *)selfCopy sourceElement];
  v5 = [v4 stringByAppendingFormat:@" - sourceElement: %@", sourceElement];
  MEMORY[0x29EDC9740](sourceElement);
  MEMORY[0x29EDC9740](v4);

  return v5;
}

- (void)setSourceElement:(uint64_t)element
{
  if (element)
  {
    objc_storeStrong((element + 48), a2);
  }
}

- (void)setSourceView:(uint64_t)view
{
  if (view)
  {
    objc_storeStrong((view + 56), a2);
  }
}

@end