@interface _SFBrowserDocumentActivityItemProvider
- (_SFBrowserDocumentActivityItemProvider)initWithBrowserDocument:(id)a3;
@end

@implementation _SFBrowserDocumentActivityItemProvider

- (_SFBrowserDocumentActivityItemProvider)initWithBrowserDocument:(id)a3
{
  v5 = a3;
  v6 = [v5 webView];
  v7 = [v6 URL];
  v8 = [v5 webView];
  v9 = [v8 title];
  v10 = [v5 webView];
  v14.receiver = self;
  v14.super_class = _SFBrowserDocumentActivityItemProvider;
  v11 = [(_SFActivityItemProvider *)&v14 initWithPlaceholderItem:v5 URL:v7 pageTitle:v9 webView:v10];

  if (v11)
  {
    objc_storeStrong(&v11->_browserDocument, a3);
    v12 = v11;
  }

  return v11;
}

@end