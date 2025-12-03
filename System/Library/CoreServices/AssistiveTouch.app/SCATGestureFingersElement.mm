@interface SCATGestureFingersElement
- (BOOL)scatPerformAction:(int)action;
- (SCATGestureFingersElementDelegate)delegate;
- (void)scatDidBecomeFocused:(BOOL)focused;
@end

@implementation SCATGestureFingersElement

- (void)scatDidBecomeFocused:(BOOL)focused
{
  focusedCopy = focused;
  delegate = [(SCATGestureFingersElement *)self delegate];
  [delegate fingersElement:self didBecomeFocused:focusedCopy];
}

- (BOOL)scatPerformAction:(int)action
{
  if (action == 2010)
  {
    delegate = [(SCATGestureFingersElement *)self delegate];
    [delegate didActivateFingersElement:self];
  }

  return action == 2010;
}

- (SCATGestureFingersElementDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end