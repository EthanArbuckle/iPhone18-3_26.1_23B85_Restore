@interface AXActivityWidgetHeaderValueView
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation AXActivityWidgetHeaderValueView

- (id)accessibilityLabel
{
  headerView = [(AXActivityWidgetHeaderValueView *)self headerView];
  accessibilityLabel = [headerView accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  valueView = [(AXActivityWidgetHeaderValueView *)self valueView];
  accessibilityLabel = [valueView accessibilityLabel];

  return accessibilityLabel;
}

@end