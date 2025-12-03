@interface AFUITouchInputView
- (AFUITouchInputViewDelegate)delegate;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation AFUITouchInputView

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v5 = [(AFUITouchInputView *)self delegate:began];
  [v5 touchesBeganForInputView:self];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5 = [(AFUITouchInputView *)self delegate:ended];
  [v5 touchesEndedForInputView:self];
}

- (AFUITouchInputViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end