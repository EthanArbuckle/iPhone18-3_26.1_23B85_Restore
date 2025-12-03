@interface UITextEffectsWindow
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation UITextEffectsWindow

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if (_AXSAutomationEnabled())
  {
    v13.receiver = self;
    v13.super_class = UITextEffectsWindow;
    [(UITextEffectsWindow *)&v13 _accessibilityHitTest:eventCopy withEvent:x, y];
    v9 = LABEL_8:;
    goto LABEL_9;
  }

  NSClassFromString(@"UIRemoteKeyboardWindow");
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12.receiver = self;
    v12.super_class = UITextEffectsWindow;
    [(UITextEffectsWindow *)&v12 _accessibilityHitTest:eventCopy withEvent:x, y];
    goto LABEL_8;
  }

  _icaxKeyboardImpl = [(UITextEffectsWindow *)self _icaxKeyboardImpl];
  [(UITextEffectsWindow *)self convertPoint:_icaxKeyboardImpl toView:x, y];
  v9 = [_icaxKeyboardImpl _accessibilityHitTest:eventCopy withEvent:?];
  if (!v9)
  {
    v11.receiver = self;
    v11.super_class = UITextEffectsWindow;
    v9 = [(UITextEffectsWindow *)&v11 _accessibilityHitTest:eventCopy withEvent:x, y];
  }

LABEL_9:

  return v9;
}

@end