@interface _SFAddToHomeScreenActivity
- (BOOL)canPerformWithActivityItems:(id)items;
- (_SFAddToHomeScreenActivity)initWithWebView:(id)view;
- (void)prepareWithActivityItems:(id)items;
@end

@implementation _SFAddToHomeScreenActivity

- (_SFAddToHomeScreenActivity)initWithWebView:(id)view
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = _SFAddToHomeScreenActivity;
  v6 = [(UIActivity *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_webView, view);
    v8 = v7;
  }

  return v7;
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (!self->_webView)
  {
    return 0;
  }

  v8[0] = self->_webView;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v7.receiver = self;
  v7.super_class = _SFAddToHomeScreenActivity;
  v5 = [(UIAddToHomeScreenActivity *)&v7 canPerformWithActivityItems:v4];

  return v5;
}

- (void)prepareWithActivityItems:(id)items
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (self->_webView)
  {
    v6[0] = self->_webView;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    v5.receiver = self;
    v5.super_class = _SFAddToHomeScreenActivity;
    [(UIAddToHomeScreenActivity *)&v5 prepareWithActivityItems:v4];
  }
}

@end