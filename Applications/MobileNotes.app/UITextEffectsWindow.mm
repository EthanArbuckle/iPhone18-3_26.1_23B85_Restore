@interface UITextEffectsWindow
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation UITextEffectsWindow

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if (_AXSAutomationEnabled())
  {
    v13.receiver = self;
    v13.super_class = UITextEffectsWindow;
    [(UITextEffectsWindow *)&v13 _accessibilityHitTest:v7 withEvent:x, y];
    v9 = LABEL_8:;
    goto LABEL_9;
  }

  NSClassFromString(@"UIRemoteKeyboardWindow");
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12.receiver = self;
    v12.super_class = UITextEffectsWindow;
    [(UITextEffectsWindow *)&v12 _accessibilityHitTest:v7 withEvent:x, y];
    goto LABEL_8;
  }

  v8 = [(UITextEffectsWindow *)self _icaxKeyboardImpl];
  [(UITextEffectsWindow *)self convertPoint:v8 toView:x, y];
  v9 = [v8 _accessibilityHitTest:v7 withEvent:?];
  if (!v9)
  {
    v11.receiver = self;
    v11.super_class = UITextEffectsWindow;
    v9 = [(UITextEffectsWindow *)&v11 _accessibilityHitTest:v7 withEvent:x, y];
  }

LABEL_9:

  return v9;
}

@end