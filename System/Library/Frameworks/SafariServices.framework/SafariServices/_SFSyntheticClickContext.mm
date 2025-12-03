@interface _SFSyntheticClickContext
- (_SFSyntheticClickContext)initWithWebView:(id)view navigationAction:(id)action;
@end

@implementation _SFSyntheticClickContext

- (_SFSyntheticClickContext)initWithWebView:(id)view navigationAction:(id)action
{
  viewCopy = view;
  actionCopy = action;
  v13.receiver = self;
  v13.super_class = _SFSyntheticClickContext;
  v9 = [(_SFSyntheticClickContext *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_webView, view);
    objc_storeStrong(&v10->_navigationAction, action);
    v11 = v10;
  }

  return v10;
}

@end