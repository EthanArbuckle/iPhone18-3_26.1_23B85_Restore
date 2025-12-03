@interface PDFTextWidgetTextView
- (id)accessibilityLabel;
- (id)accessibilityParent;
- (id)accessibilityTitleUIElement;
- (id)keyCommands;
- (void)autoFillDidInsertWithExplicitInvocationMode:(BOOL)mode;
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
  delegate = [(PDFTextWidgetTextView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate handleTab];
  }
}

- (void)handleBackTab
{
  delegate = [(PDFTextWidgetTextView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate handleBackTab];
  }
}

- (void)autoFillDidInsertWithExplicitInvocationMode:(BOOL)mode
{
  modeCopy = mode;
  delegate = [(PDFTextWidgetTextView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate autoFillDidInsertWithExplicitInvocationMode:modeCopy];
  }
}

- (id)accessibilityParent
{
  delegate = [(PDFTextWidgetTextView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    accessibilityParent = [delegate accessibilityParent];
  }

  else
  {
    accessibilityParent = 0;
  }

  return accessibilityParent;
}

- (id)accessibilityLabel
{
  delegate = [(PDFTextWidgetTextView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    accessibilityLabel = [delegate accessibilityLabel];
  }

  else
  {
    accessibilityLabel = 0;
  }

  return accessibilityLabel;
}

- (id)accessibilityTitleUIElement
{
  delegate = [(PDFTextWidgetTextView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    accessibilityTitleUIElement = [delegate accessibilityTitleUIElement];
  }

  else
  {
    accessibilityTitleUIElement = 0;
  }

  return accessibilityTitleUIElement;
}

@end