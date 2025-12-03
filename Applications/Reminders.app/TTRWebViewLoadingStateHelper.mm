@interface TTRWebViewLoadingStateHelper
- (void)dealloc;
- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
@end

@implementation TTRWebViewLoadingStateHelper

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v6 = 1;
  selfCopy = self;

  PassthroughSubject.send(completion:)();

  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(TTRWebViewLoadingStateHelper *)&v5 dealloc];
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  if (navigation)
  {
    selfCopy = self;
    navigationCopy = navigation;
    PassthroughSubject.send(_:)();
  }

  else
  {
    __break(1u);
  }
}

- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error
{
  if (navigation)
  {
    errorCopy = error;
    selfCopy = self;
    navigationCopy = navigation;
    PassthroughSubject.send(_:)();
  }

  else
  {
    __break(1u);
  }
}

@end