@interface AXSB_UIScreenSafeCategory
- (id)_preferredFocusedWindow;
@end

@implementation AXSB_UIScreenSafeCategory

- (id)_preferredFocusedWindow
{
  if (AXProcessIsSpringBoard() && _UIAccessibilityFullKeyboardAccessEnabled() && ([(AXSB_UIScreenSafeCategory *)self _isCarScreen]& 1) == 0)
  {
    v5 = +[AXSpringBoardServerHelper sharedServerHelper];
    presentationWindow = [v5 presentationWindow];
    v7 = presentationWindow;
    if (presentationWindow)
    {
      _preferredFocusedWindow = presentationWindow;
    }

    else
    {
      v10.receiver = self;
      v10.super_class = AXSB_UIScreenSafeCategory;
      _preferredFocusedWindow = [(AXSB_UIScreenSafeCategory *)&v10 _preferredFocusedWindow];
    }

    _preferredFocusedWindow2 = _preferredFocusedWindow;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = AXSB_UIScreenSafeCategory;
    _preferredFocusedWindow2 = [(AXSB_UIScreenSafeCategory *)&v9 _preferredFocusedWindow];
  }

  return _preferredFocusedWindow2;
}

@end