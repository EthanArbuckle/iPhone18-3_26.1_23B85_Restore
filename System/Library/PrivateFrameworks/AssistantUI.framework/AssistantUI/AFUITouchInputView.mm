@interface AFUITouchInputView
- (AFUITouchInputViewDelegate)delegate;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation AFUITouchInputView

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5 = [(AFUITouchInputView *)self delegate:a3];
  [v5 touchesBeganForInputView:self];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5 = [(AFUITouchInputView *)self delegate:a3];
  [v5 touchesEndedForInputView:self];
}

- (AFUITouchInputViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end