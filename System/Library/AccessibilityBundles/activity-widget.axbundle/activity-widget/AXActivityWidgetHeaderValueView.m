@interface AXActivityWidgetHeaderValueView
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation AXActivityWidgetHeaderValueView

- (id)accessibilityLabel
{
  v2 = [(AXActivityWidgetHeaderValueView *)self headerView];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(AXActivityWidgetHeaderValueView *)self valueView];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end