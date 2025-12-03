@interface _WKAttributedStringNavigationDelegate
- (void)dealloc;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
- (void)webViewWebContentProcessDidTerminate:(id)terminate;
@end

@implementation _WKAttributedStringNavigationDelegate

- (void)dealloc
{
  self->_webContentProcessDidTerminate = 0;

  self->_decidePolicyForNavigationAction = 0;
  self->_didFailProvisionalNavigation = 0;

  self->_didFailNavigation = 0;
  self->_didFinishNavigation = 0;
  v3.receiver = self;
  v3.super_class = _WKAttributedStringNavigationDelegate;
  [(_WKAttributedStringNavigationDelegate *)&v3 dealloc];
}

- (void)webViewWebContentProcessDidTerminate:(id)terminate
{
  webContentProcessDidTerminate = self->_webContentProcessDidTerminate;
  if (webContentProcessDidTerminate)
  {
    webContentProcessDidTerminate[2](webContentProcessDidTerminate, terminate);
  }
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  decidePolicyForNavigationAction = self->_decidePolicyForNavigationAction;
  if (decidePolicyForNavigationAction)
  {
    decidePolicyForNavigationAction[2](decidePolicyForNavigationAction, action, handler);
  }

  else
  {
    (*(handler + 2))(handler, 1);
  }
}

- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error
{
  didFailProvisionalNavigation = self->_didFailProvisionalNavigation;
  if (didFailProvisionalNavigation)
  {
    didFailProvisionalNavigation[2](didFailProvisionalNavigation, view, navigation, error);
  }
}

- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error
{
  didFailNavigation = self->_didFailNavigation;
  if (didFailNavigation)
  {
    didFailNavigation[2](didFailNavigation, view, navigation, error);
  }
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  didFinishNavigation = self->_didFinishNavigation;
  if (didFinishNavigation)
  {
    didFinishNavigation[2](didFinishNavigation, view, navigation);
  }
}

@end