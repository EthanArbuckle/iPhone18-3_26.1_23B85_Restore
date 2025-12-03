@interface AXGroupedTitleValueView
- (AXGroupedTitleValueView)initWithAccessibilityContainer:(id)container titleView:(id)view valueView:(id)valueView;
- (BOOL)isAccessibilityElement;
@end

@implementation AXGroupedTitleValueView

- (AXGroupedTitleValueView)initWithAccessibilityContainer:(id)container titleView:(id)view valueView:(id)valueView
{
  viewCopy = view;
  valueViewCopy = valueView;
  valueViewCopy = [NSArray axArrayByIgnoringNilElementsWithCount:2, viewCopy, valueViewCopy];
  v13.receiver = self;
  v13.super_class = AXGroupedTitleValueView;
  v11 = [(AXGroupedTitleValueView *)&v13 initWithAccessibilityContainer:self representedElements:valueViewCopy];

  if (v11)
  {
    objc_storeStrong(&v11->_titleView, view);
    objc_storeStrong(&v11->_valueView, valueView);
  }

  return v11;
}

- (BOOL)isAccessibilityElement
{
  accessibilityLabel = [self->_titleView accessibilityLabel];
  if ([accessibilityLabel length])
  {
    accessibilityLabel2 = [self->_valueView accessibilityLabel];
    v5 = [accessibilityLabel2 length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end