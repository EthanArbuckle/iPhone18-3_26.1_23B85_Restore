@interface AXPlatterContentMockElement
- (CGRect)accessibilityFrame;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)description;
- (uint64_t)sourceElement;
- (uint64_t)sourceView;
- (void)setSourceElement:(uint64_t)a1;
- (void)setSourceView:(uint64_t)a1;
@end

@implementation AXPlatterContentMockElement

- (id)accessibilityLabel
{
  v3 = [(AXPlatterContentMockElement *)self sourceElement];
  v4 = [v3 accessibilityLabel];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (uint64_t)sourceElement
{
  if (a1)
  {
    return *(a1 + 48);
  }

  else
  {
    return 0;
  }
}

- (id)accessibilityValue
{
  v3 = [(AXPlatterContentMockElement *)self sourceElement];
  v4 = [v3 accessibilityValue];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (CGRect)accessibilityFrame
{
  v11 = [(AXPlatterContentMockElement *)self sourceView];
  v10 = [(AXPlatterContentMockElement *)self sourceElement];
  [v10 accessibilityFrame];
  UIAccessibilityFrameToBounds();
  MEMORY[0x29EDC9740](v10);
  MEMORY[0x29EDC9740](v11);
  v12 = [(AXPlatterContentMockElement *)self accessibilityContainer];
  UIAccessibilityFrameForBounds();
  v14 = v2;
  v15 = v3;
  v16 = v4;
  v17 = v5;
  MEMORY[0x29EDC9740](v12);
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
  if (a1)
  {
    return *(a1 + 56);
  }

  else
  {
    return 0;
  }
}

- (id)description
{
  v8 = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = AXPlatterContentMockElement;
  v4 = [(AXPlatterContentMockElement *)&v6 description];
  v3 = [(AXPlatterContentMockElement *)v8 sourceElement];
  v5 = [v4 stringByAppendingFormat:@" - sourceElement: %@", v3];
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](v4);

  return v5;
}

- (void)setSourceElement:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 48), a2);
  }
}

- (void)setSourceView:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 56), a2);
  }
}

@end