@interface _SFActivityItemProvider
- (WKWebView)webView;
- (_SFActivityItemProvider)initWithPlaceholderItem:(id)a3 URL:(id)a4 pageTitle:(id)a5 webView:(id)a6;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewController:(id)a3 subjectForActivityType:(id)a4;
- (id)activityViewController:(id)a3 thumbnailImageForActivityType:(id)a4 suggestedSize:(CGSize)a5;
- (void)main;
@end

@implementation _SFActivityItemProvider

- (_SFActivityItemProvider)initWithPlaceholderItem:(id)a3 URL:(id)a4 pageTitle:(id)a5 webView:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = _SFActivityItemProvider;
  v14 = [(UIActivityItemProvider *)&v20 initWithPlaceholderItem:a3];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_url, a4);
    objc_storeStrong(&v15->_pageTitle, a5);
    v16 = [MEMORY[0x1E695DFD8] set];
    excludedActivityTypes = v15->_excludedActivityTypes;
    v15->_excludedActivityTypes = v16;

    objc_storeWeak(&v15->_webView, v13);
    v18 = v15;
  }

  return v15;
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  if ([(NSSet *)self->_excludedActivityTypes containsObject:a4])
  {
    v5 = 0;
  }

  else
  {
    v5 = [(_SFActivityItemProvider *)self item];
  }

  return v5;
}

- (void)main
{
  v3 = [(_SFActivityItemProvider *)self excludedActivityTypes];
  v4 = [(UIActivityItemProvider *)self activityType];
  v5 = [v3 containsObject:v4];

  if ((v5 & 1) == 0)
  {
    v6.receiver = self;
    v6.super_class = _SFActivityItemProvider;
    [(UIActivityItemProvider *)&v6 main];
  }
}

- (id)activityViewController:(id)a3 subjectForActivityType:(id)a4
{
  if ([a4 isEqualToString:*MEMORY[0x1E69CDA78]])
  {
    v5 = [(NSURL *)self->_url safari_userVisibleString];
    v6 = [v5 safari_simplifiedUserVisibleURLStringWithSimplifications:511 forDisplayOnly:1 simplifiedStringOffset:0];
  }

  else
  {
    v6 = self->_pageTitle;
  }

  return v6;
}

- (id)activityViewController:(id)a3 thumbnailImageForActivityType:(id)a4 suggestedSize:(CGSize)a5
{
  thumbnailHandler = self->_thumbnailHandler;
  if (thumbnailHandler)
  {
    thumbnailHandler = (thumbnailHandler)[2](thumbnailHandler, a4, a3, a5, *&a5.height);
    v5 = vars8;
  }

  return thumbnailHandler;
}

- (WKWebView)webView
{
  WeakRetained = objc_loadWeakRetained(&self->_webView);

  return WeakRetained;
}

@end