@interface _WKAttributedStringNavigationDelegate
- (void)dealloc;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
- (void)webViewWebContentProcessDidTerminate:(id)a3;
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

- (void)webViewWebContentProcessDidTerminate:(id)a3
{
  webContentProcessDidTerminate = self->_webContentProcessDidTerminate;
  if (webContentProcessDidTerminate)
  {
    webContentProcessDidTerminate[2](webContentProcessDidTerminate, a3);
  }
}

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5
{
  decidePolicyForNavigationAction = self->_decidePolicyForNavigationAction;
  if (decidePolicyForNavigationAction)
  {
    decidePolicyForNavigationAction[2](decidePolicyForNavigationAction, a4, a5);
  }

  else
  {
    (*(a5 + 2))(a5, 1);
  }
}

- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5
{
  didFailProvisionalNavigation = self->_didFailProvisionalNavigation;
  if (didFailProvisionalNavigation)
  {
    didFailProvisionalNavigation[2](didFailProvisionalNavigation, a3, a4, a5);
  }
}

- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5
{
  didFailNavigation = self->_didFailNavigation;
  if (didFailNavigation)
  {
    didFailNavigation[2](didFailNavigation, a3, a4, a5);
  }
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  didFinishNavigation = self->_didFinishNavigation;
  if (didFinishNavigation)
  {
    didFinishNavigation[2](didFinishNavigation, a3, a4);
  }
}

@end