@interface PDFTextWidgetTextView
- (id)accessibilityLabel;
- (id)accessibilityParent;
- (id)accessibilityTitleUIElement;
- (id)keyCommands;
- (void)autoFillDidInsertWithExplicitInvocationMode:(BOOL)a3;
- (void)handleBackTab;
- (void)handleTab;
@end

@implementation PDFTextWidgetTextView

- (id)keyCommands
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\t" modifierFlags:0 action:sel_handleTab];
  v6[0] = v2;
  v3 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\t" modifierFlags:0x20000 action:sel_handleBackTab];
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

- (void)handleTab
{
  v2 = [(PDFTextWidgetTextView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 handleTab];
  }
}

- (void)handleBackTab
{
  v2 = [(PDFTextWidgetTextView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 handleBackTab];
  }
}

- (void)autoFillDidInsertWithExplicitInvocationMode:(BOOL)a3
{
  v3 = a3;
  v4 = [(PDFTextWidgetTextView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 autoFillDidInsertWithExplicitInvocationMode:v3];
  }
}

- (id)accessibilityParent
{
  v2 = [(PDFTextWidgetTextView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 accessibilityParent];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)accessibilityLabel
{
  v2 = [(PDFTextWidgetTextView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 accessibilityLabel];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)accessibilityTitleUIElement
{
  v2 = [(PDFTextWidgetTextView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 accessibilityTitleUIElement];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end