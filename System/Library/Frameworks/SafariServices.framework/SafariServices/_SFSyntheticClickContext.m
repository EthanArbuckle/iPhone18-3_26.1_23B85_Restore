@interface _SFSyntheticClickContext
- (_SFSyntheticClickContext)initWithWebView:(id)a3 navigationAction:(id)a4;
@end

@implementation _SFSyntheticClickContext

- (_SFSyntheticClickContext)initWithWebView:(id)a3 navigationAction:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = _SFSyntheticClickContext;
  v9 = [(_SFSyntheticClickContext *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_webView, a3);
    objc_storeStrong(&v10->_navigationAction, a4);
    v11 = v10;
  }

  return v10;
}

@end