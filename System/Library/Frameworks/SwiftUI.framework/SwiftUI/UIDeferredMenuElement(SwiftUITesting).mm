@interface UIDeferredMenuElement(SwiftUITesting)
- (id)swiftUI_delegate;
- (id)swiftUI_fulfilledElements;
- (uint64_t)swiftUI_fulfillIfNecessary;
- (void)setSwiftUI_delegate:()SwiftUITesting;
@end

@implementation UIDeferredMenuElement(SwiftUITesting)

- (id)swiftUI_delegate
{
  if (objc_opt_respondsToSelector())
  {
    delegate = [self delegate];
  }

  else
  {
    delegate = 0;
  }

  return delegate;
}

- (void)setSwiftUI_delegate:()SwiftUITesting
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [self setDelegate:v4];
  }
}

- (id)swiftUI_fulfilledElements
{
  if (objc_opt_respondsToSelector())
  {
    fulfilledElements = [self fulfilledElements];
  }

  else
  {
    fulfilledElements = 0;
  }

  return fulfilledElements;
}

- (uint64_t)swiftUI_fulfillIfNecessary
{
  result = objc_opt_respondsToSelector();
  if (result)
  {

    return [self _fulfillIfNecessaryWithInitialResponder:0];
  }

  return result;
}

@end