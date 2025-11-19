@interface SCATGestureFingersElement
- (BOOL)scatPerformAction:(int)a3;
- (SCATGestureFingersElementDelegate)delegate;
- (void)scatDidBecomeFocused:(BOOL)a3;
@end

@implementation SCATGestureFingersElement

- (void)scatDidBecomeFocused:(BOOL)a3
{
  v3 = a3;
  v5 = [(SCATGestureFingersElement *)self delegate];
  [v5 fingersElement:self didBecomeFocused:v3];
}

- (BOOL)scatPerformAction:(int)a3
{
  if (a3 == 2010)
  {
    v5 = [(SCATGestureFingersElement *)self delegate];
    [v5 didActivateFingersElement:self];
  }

  return a3 == 2010;
}

- (SCATGestureFingersElementDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end