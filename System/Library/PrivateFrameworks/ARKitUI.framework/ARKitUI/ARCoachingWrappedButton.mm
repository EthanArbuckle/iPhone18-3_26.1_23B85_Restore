@interface ARCoachingWrappedButton
- (void)sendAction:(SEL)action to:(id)to forEvent:(id)event;
@end

@implementation ARCoachingWrappedButton

- (void)sendAction:(SEL)action to:(id)to forEvent:(id)event
{
  eventCopy = event;
  toCopy = to;
  wrapperButton = [(ARCoachingWrappedButton *)self wrapperButton];
  [wrapperButton sendAction:action to:toCopy forEvent:eventCopy];
}

@end