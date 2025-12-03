@interface _SFLinkWithPreviewActivityItemProvider
- (_SFLinkWithPreviewActivityItemProvider)initWithPlaceholderItem:(id)item URL:(id)l pageTitle:(id)title webView:(id)view;
- (id)activityViewControllerLinkMetadata:(id)metadata;
@end

@implementation _SFLinkWithPreviewActivityItemProvider

- (_SFLinkWithPreviewActivityItemProvider)initWithPlaceholderItem:(id)item URL:(id)l pageTitle:(id)title webView:(id)view
{
  v17.receiver = self;
  v17.super_class = _SFLinkWithPreviewActivityItemProvider;
  v6 = [(_SFActivityItemProvider *)&v17 initWithPlaceholderItem:item URL:l pageTitle:title webView:view];
  v7 = v6;
  if (v6)
  {
    v8 = MEMORY[0x1E69C97E8];
    v9 = [(_SFActivityItemProvider *)v6 url];
    webView = [(_SFActivityItemProvider *)v7 webView];
    mEMORY[0x1E69B1C68] = [MEMORY[0x1E69B1C68] sharedSiteMetadataManager];
    linkPresentationIconCache = [mEMORY[0x1E69B1C68] linkPresentationIconCache];
    v13 = [v8 linkMetadataForURL:v9 webView:webView iconCache:linkPresentationIconCache];
    cachedLinkMetadata = v7->_cachedLinkMetadata;
    v7->_cachedLinkMetadata = v13;

    v15 = v7;
  }

  return v7;
}

- (id)activityViewControllerLinkMetadata:(id)metadata
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77___SFLinkWithPreviewActivityItemProvider_activityViewControllerLinkMetadata___block_invoke;
  v6[3] = &unk_1E8492AC0;
  v6[4] = self;
  v4 = __77___SFLinkWithPreviewActivityItemProvider_activityViewControllerLinkMetadata___block_invoke(v6);
  [(LPLinkMetadata *)self->_cachedLinkMetadata setSelectedText:v4];

  return self->_cachedLinkMetadata;
}

@end