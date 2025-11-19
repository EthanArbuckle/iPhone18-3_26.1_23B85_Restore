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
    v2 = [a1 delegate];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setSwiftUI_delegate:()SwiftUITesting
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [a1 setDelegate:v4];
  }
}

- (id)swiftUI_fulfilledElements
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 fulfilledElements];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)swiftUI_fulfillIfNecessary
{
  result = objc_opt_respondsToSelector();
  if (result)
  {

    return [a1 _fulfillIfNecessaryWithInitialResponder:0];
  }

  return result;
}

@end