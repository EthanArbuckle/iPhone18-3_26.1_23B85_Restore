@interface _SFBrowserDocumentActivityItemProvider
- (_SFBrowserDocumentActivityItemProvider)initWithBrowserDocument:(id)document;
@end

@implementation _SFBrowserDocumentActivityItemProvider

- (_SFBrowserDocumentActivityItemProvider)initWithBrowserDocument:(id)document
{
  documentCopy = document;
  webView = [documentCopy webView];
  v7 = [webView URL];
  webView2 = [documentCopy webView];
  title = [webView2 title];
  webView3 = [documentCopy webView];
  v14.receiver = self;
  v14.super_class = _SFBrowserDocumentActivityItemProvider;
  v11 = [(_SFActivityItemProvider *)&v14 initWithPlaceholderItem:documentCopy URL:v7 pageTitle:title webView:webView3];

  if (v11)
  {
    objc_storeStrong(&v11->_browserDocument, document);
    v12 = v11;
  }

  return v11;
}

@end