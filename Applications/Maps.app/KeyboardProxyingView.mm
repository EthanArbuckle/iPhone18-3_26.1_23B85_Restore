@interface KeyboardProxyingView
- (BOOL)shouldUpdateFocusInContext:(id)context;
- (CGSize)intrinsicContentSize;
- (KeyboardProxyingView)initWithFrame:(CGRect)frame;
- (KeyboardProxyingViewDelegate)delegate;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)pressesBegan:(id)began withEvent:(id)event;
@end

@implementation KeyboardProxyingView

- (KeyboardProxyingViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = KeyboardProxyingView;
  eventCopy = event;
  beganCopy = began;
  [(KeyboardProxyingView *)&v9 pressesBegan:beganCopy withEvent:eventCopy];
  v8 = [(KeyboardProxyingView *)self delegate:v9.receiver];
  [v8 keyboardProxyingView:self pressesBegan:beganCopy withEvent:eventCopy];
}

- (BOOL)shouldUpdateFocusInContext:(id)context
{
  contextCopy = context;
  previouslyFocusedItem = [contextCopy previouslyFocusedItem];
  v6 = previouslyFocusedItem;
  if (previouslyFocusedItem != self)
  {

LABEL_5:
    v8 = 1;
    goto LABEL_6;
  }

  v7 = -[KeyboardProxyingView isHeadingDirectional:](self, "isHeadingDirectional:", [contextCopy focusHeading]);

  if ((v7 & 1) == 0)
  {
    goto LABEL_5;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  nextFocusedItem = [context nextFocusedItem];
  v6 = nextFocusedItem == self;

  if (self->_shouldAppearFocused != v6)
  {
    self->_shouldAppearFocused = v6;
    delegate = [(KeyboardProxyingView *)self delegate];
    [delegate keyboardProxyingView:self didUpdateFocusState:nextFocusedItem == self];
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
    delegate = [(KeyboardProxyingView *)self delegate];
    [delegate keyboardProxyingView:self didUpdateFocusState:0];
  }

  v4.receiver = self;
  v4.super_class = KeyboardProxyingView;
  [(KeyboardProxyingView *)&v4 dealloc];
}

- (KeyboardProxyingView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = KeyboardProxyingView;
  result = [(KeyboardProxyingView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_shouldAppearFocused = 1;
  }

  return result;
}

@end