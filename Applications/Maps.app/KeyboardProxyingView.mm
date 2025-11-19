@interface KeyboardProxyingView
- (BOOL)shouldUpdateFocusInContext:(id)a3;
- (CGSize)intrinsicContentSize;
- (KeyboardProxyingView)initWithFrame:(CGRect)a3;
- (KeyboardProxyingViewDelegate)delegate;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation KeyboardProxyingView

- (KeyboardProxyingViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = KeyboardProxyingView;
  v6 = a4;
  v7 = a3;
  [(KeyboardProxyingView *)&v9 pressesBegan:v7 withEvent:v6];
  v8 = [(KeyboardProxyingView *)self delegate:v9.receiver];
  [v8 keyboardProxyingView:self pressesBegan:v7 withEvent:v6];
}

- (BOOL)shouldUpdateFocusInContext:(id)a3
{
  v4 = a3;
  v5 = [v4 previouslyFocusedItem];
  v6 = v5;
  if (v5 != self)
  {

LABEL_5:
    v8 = 1;
    goto LABEL_6;
  }

  v7 = -[KeyboardProxyingView isHeadingDirectional:](self, "isHeadingDirectional:", [v4 focusHeading]);

  if ((v7 & 1) == 0)
  {
    goto LABEL_5;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v5 = [a3 nextFocusedItem];
  v6 = v5 == self;

  if (self->_shouldAppearFocused != v6)
  {
    self->_shouldAppearFocused = v6;
    v7 = [(KeyboardProxyingView *)self delegate];
    [v7 keyboardProxyingView:self didUpdateFocusState:v5 == self];
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = 10.0;
  v3 = 10.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)dealloc
{
  if (self->_shouldAppearFocused)
  {
    self->_shouldAppearFocused = 0;
    v3 = [(KeyboardProxyingView *)self delegate];
    [v3 keyboardProxyingView:self didUpdateFocusState:0];
  }

  v4.receiver = self;
  v4.super_class = KeyboardProxyingView;
  [(KeyboardProxyingView *)&v4 dealloc];
}

- (KeyboardProxyingView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = KeyboardProxyingView;
  result = [(KeyboardProxyingView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_shouldAppearFocused = 1;
  }

  return result;
}

@end