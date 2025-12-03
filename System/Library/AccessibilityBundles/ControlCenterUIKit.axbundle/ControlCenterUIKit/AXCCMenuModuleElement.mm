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
  provider = [(AXCCMenuModuleElement *)self provider];
  v4 = (provider)[2](provider, self);
  accessibilityLabel = [v4 accessibilityLabel];

  return accessibilityLabel;
}

- (CGRect)accessibilityFrame
{
  provider = [(AXCCMenuModuleElement *)self provider];
  v4 = (provider)[2](provider, self);
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
  provider = [(AXCCMenuModuleElement *)self provider];
  v4 = (provider)[2](provider, self);
  accessibilityValue = [v4 accessibilityValue];

  return accessibilityValue;
}

- (unint64_t)accessibilityTraits
{
  provider = [(AXCCMenuModuleElement *)self provider];
  v4 = (provider)[2](provider, self);
  accessibilityTraits = [v4 accessibilityTraits];

  return accessibilityTraits;
}

- (id)accessibilityHint
{
  provider = [(AXCCMenuModuleElement *)self provider];
  v4 = (provider)[2](provider, self);
  accessibilityHint = [v4 accessibilityHint];

  return accessibilityHint;
}

- (BOOL)isAccessibilityElement
{
  provider = [(AXCCMenuModuleElement *)self provider];
  v4 = (provider)[2](provider, self);
  isAccessibilityElement = [v4 isAccessibilityElement];

  return isAccessibilityElement;
}

@end