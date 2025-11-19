@interface AXCCMenuModuleElement
- (BOOL)isAccessibilityElement;
- (CGRect)accessibilityFrame;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation AXCCMenuModuleElement

- (id)accessibilityLabel
{
  v3 = [(AXCCMenuModuleElement *)self provider];
  v4 = (v3)[2](v3, self);
  v5 = [v4 accessibilityLabel];

  return v5;
}

- (CGRect)accessibilityFrame
{
  v3 = [(AXCCMenuModuleElement *)self provider];
  v4 = (v3)[2](v3, self);
  [v4 accessibilityFrame];
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

- (id)accessibilityValue
{
  v3 = [(AXCCMenuModuleElement *)self provider];
  v4 = (v3)[2](v3, self);
  v5 = [v4 accessibilityValue];

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v3 = [(AXCCMenuModuleElement *)self provider];
  v4 = (v3)[2](v3, self);
  v5 = [v4 accessibilityTraits];

  return v5;
}

- (id)accessibilityHint
{
  v3 = [(AXCCMenuModuleElement *)self provider];
  v4 = (v3)[2](v3, self);
  v5 = [v4 accessibilityHint];

  return v5;
}

- (BOOL)isAccessibilityElement
{
  v3 = [(AXCCMenuModuleElement *)self provider];
  v4 = (v3)[2](v3, self);
  v5 = [v4 isAccessibilityElement];

  return v5;
}

@end