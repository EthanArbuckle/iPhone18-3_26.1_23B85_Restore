@interface AXGroupedTitleValueView
- (AXGroupedTitleValueView)initWithAccessibilityContainer:(id)a3 titleView:(id)a4 valueView:(id)a5;
- (BOOL)isAccessibilityElement;
@end

@implementation AXGroupedTitleValueView

- (AXGroupedTitleValueView)initWithAccessibilityContainer:(id)a3 titleView:(id)a4 valueView:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [NSArray axArrayByIgnoringNilElementsWithCount:2, v8, v9];
  v13.receiver = self;
  v13.super_class = AXGroupedTitleValueView;
  v11 = [(AXGroupedTitleValueView *)&v13 initWithAccessibilityContainer:self representedElements:v10];

  if (v11)
  {
    objc_storeStrong(&v11->_titleView, a4);
    objc_storeStrong(&v11->_valueView, a5);
  }

  return v11;
}

- (BOOL)isAccessibilityElement
{
  v3 = [self->_titleView accessibilityLabel];
  if ([v3 length])
  {
    v4 = [self->_valueView accessibilityLabel];
    v5 = [v4 length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end