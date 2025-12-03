@interface BCCardSetView
- (BCCardSetViewAccessibilityDelegate)accessibilityDelegate;
- (BOOL)accessibilityPerformEscape;
- (id)accessibilityElements;
@end

@implementation BCCardSetView

- (BOOL)accessibilityPerformEscape
{
  selfCopy = self;
  accessibilityDelegate = [(BCCardSetView *)self accessibilityDelegate];
  LOBYTE(selfCopy) = [accessibilityDelegate accessibilityDismissCardSetView:selfCopy];

  return selfCopy;
}

- (id)accessibilityElements
{
  v3 = [NSMutableArray alloc];
  v10.receiver = self;
  v10.super_class = BCCardSetView;
  accessibilityElements = [(BCCardSetView *)&v10 accessibilityElements];
  v5 = [v3 initWithArray:accessibilityElements];

  if (!v5)
  {
    v5 = objc_alloc_init(NSMutableArray);
  }

  subviews = [(BCCardSetView *)self subviews];
  [v5 addObjectsFromArray:subviews];

  accessibilityDelegate = [(BCCardSetView *)self accessibilityDelegate];
  additionalAccessibilityElementsForCardSetView = [accessibilityDelegate additionalAccessibilityElementsForCardSetView];
  [v5 addObjectsFromArray:additionalAccessibilityElementsForCardSetView];

  return v5;
}

- (BCCardSetViewAccessibilityDelegate)accessibilityDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_accessibilityDelegate);

  return WeakRetained;
}

@end