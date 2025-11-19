@interface BCCardSetView
- (BCCardSetViewAccessibilityDelegate)accessibilityDelegate;
- (BOOL)accessibilityPerformEscape;
- (id)accessibilityElements;
@end

@implementation BCCardSetView

- (BOOL)accessibilityPerformEscape
{
  v2 = self;
  v3 = [(BCCardSetView *)self accessibilityDelegate];
  LOBYTE(v2) = [v3 accessibilityDismissCardSetView:v2];

  return v2;
}

- (id)accessibilityElements
{
  v3 = [NSMutableArray alloc];
  v10.receiver = self;
  v10.super_class = BCCardSetView;
  v4 = [(BCCardSetView *)&v10 accessibilityElements];
  v5 = [v3 initWithArray:v4];

  if (!v5)
  {
    v5 = objc_alloc_init(NSMutableArray);
  }

  v6 = [(BCCardSetView *)self subviews];
  [v5 addObjectsFromArray:v6];

  v7 = [(BCCardSetView *)self accessibilityDelegate];
  v8 = [v7 additionalAccessibilityElementsForCardSetView];
  [v5 addObjectsFromArray:v8];

  return v5;
}

- (BCCardSetViewAccessibilityDelegate)accessibilityDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_accessibilityDelegate);

  return WeakRetained;
}

@end