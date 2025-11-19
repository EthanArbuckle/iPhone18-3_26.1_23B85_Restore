@interface TTRWebViewLoadingStateHelper
- (void)dealloc;
- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
@end

@implementation TTRWebViewLoadingStateHelper

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v6 = 1;
  v4 = self;

  PassthroughSubject.send(completion:)();

  v5.receiver = v4;
  v5.super_class = ObjectType;
  [(TTRWebViewLoadingStateHelper *)&v5 dealloc];
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  if (a4)
  {
    v5 = self;
    v6 = a4;
    PassthroughSubject.send(_:)();
  }

  else
  {
    __break(1u);
  }
}

- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5
{
  if (a4)
  {
    v7 = a5;
    v8 = self;
    v9 = a4;
    PassthroughSubject.send(_:)();
  }

  else
  {
    __break(1u);
  }
}

@end