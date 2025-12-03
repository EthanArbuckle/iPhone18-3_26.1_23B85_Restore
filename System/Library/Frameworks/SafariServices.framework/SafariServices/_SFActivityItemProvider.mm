@interface _SFActivityItemProvider
- (WKWebView)webView;
- (_SFActivityItemProvider)initWithPlaceholderItem:(id)item URL:(id)l pageTitle:(id)title webView:(id)view;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewController:(id)controller subjectForActivityType:(id)type;
- (id)activityViewController:(id)controller thumbnailImageForActivityType:(id)type suggestedSize:(CGSize)size;
- (void)main;
@end

@implementation _SFActivityItemProvider

- (_SFActivityItemProvider)initWithPlaceholderItem:(id)item URL:(id)l pageTitle:(id)title webView:(id)view
{
  lCopy = l;
  titleCopy = title;
  viewCopy = view;
  v20.receiver = self;
  v20.super_class = _SFActivityItemProvider;
  v14 = [(UIActivityItemProvider *)&v20 initWithPlaceholderItem:item];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_url, l);
    objc_storeStrong(&v15->_pageTitle, title);
    v16 = [MEMORY[0x1E695DFD8] set];
    excludedActivityTypes = v15->_excludedActivityTypes;
    v15->_excludedActivityTypes = v16;

    objc_storeWeak(&v15->_webView, viewCopy);
    v18 = v15;
  }

  return v15;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  if ([(NSSet *)self->_excludedActivityTypes containsObject:type])
  {
    item = 0;
  }

  else
  {
    item = [(_SFActivityItemProvider *)self item];
  }

  return item;
}

- (void)main
{
  excludedActivityTypes = [(_SFActivityItemProvider *)self excludedActivityTypes];
  activityType = [(UIActivityItemProvider *)self activityType];
  v5 = [excludedActivityTypes containsObject:activityType];

  if ((v5 & 1) == 0)
  {
    v6.receiver = self;
    v6.super_class = _SFActivityItemProvider;
    [(UIActivityItemProvider *)&v6 main];
  }
}

- (id)activityViewController:(id)controller subjectForActivityType:(id)type
{
  if ([type isEqualToString:*MEMORY[0x1E69CDA78]])
  {
    safari_userVisibleString = [(NSURL *)self->_url safari_userVisibleString];
    v6 = [safari_userVisibleString safari_simplifiedUserVisibleURLStringWithSimplifications:511 forDisplayOnly:1 simplifiedStringOffset:0];
  }

  else
  {
    v6 = self->_pageTitle;
  }

  return v6;
}

- (id)activityViewController:(id)controller thumbnailImageForActivityType:(id)type suggestedSize:(CGSize)size
{
  thumbnailHandler = self->_thumbnailHandler;
  if (thumbnailHandler)
  {
    thumbnailHandler = (thumbnailHandler)[2](thumbnailHandler, type, controller, size, *&size.height);
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