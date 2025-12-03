@interface ASVWrappedButton
- (void)sendAction:(SEL)action to:(id)to forEvent:(id)event;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation ASVWrappedButton

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v6.receiver = self;
  v6.super_class = ASVWrappedButton;
  [(ASVWrappedButton *)&v6 setHighlighted:?];
  wrapperButton = [(ASVWrappedButton *)self wrapperButton];
  [wrapperButton setHighlighted:highlightedCopy];
}

- (void)sendAction:(SEL)action to:(id)to forEvent:(id)event
{
  eventCopy = event;
  toCopy = to;
  wrapperButton = [(ASVWrappedButton *)self wrapperButton];
  [wrapperButton sendAction:action to:toCopy forEvent:eventCopy];
}

@end