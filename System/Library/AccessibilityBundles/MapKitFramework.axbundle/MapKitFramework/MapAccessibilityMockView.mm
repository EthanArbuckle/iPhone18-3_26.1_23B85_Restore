@interface MapAccessibilityMockView
- (CGRect)accessibilityFrame;
@end

@implementation MapAccessibilityMockView

- (CGRect)accessibilityFrame
{
  [(UIView *)self->_view accessibilityFrame];
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  if (CGRectIsEmpty(v16))
  {
    accessibilityContainer = [(MapAccessibilityMockView *)self accessibilityContainer];
    [accessibilityContainer accessibilityFrame];
    x = v8;
    y = v9;
    width = v10;
    height = v11;
  }

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

@end