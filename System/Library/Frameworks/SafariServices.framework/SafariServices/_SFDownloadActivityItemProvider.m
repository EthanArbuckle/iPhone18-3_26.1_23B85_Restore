@interface _SFDownloadActivityItemProvider
- (_SFDownloadActivityItemProvider)initWithQuickLookDocument:(id)a3 URL:(id)a4 webView:(id)a5;
- (id)item;
@end

@implementation _SFDownloadActivityItemProvider

- (_SFDownloadActivityItemProvider)initWithQuickLookDocument:(id)a3 URL:(id)a4 webView:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9 && ([MEMORY[0x1E695DEF0] data], v12 = objc_claimAutoreleasedReturnValue(), v18.receiver = self, v18.super_class = _SFDownloadActivityItemProvider, self = -[_SFActivityItemProvider initWithPlaceholderItem:URL:pageTitle:webView:](&v18, sel_initWithPlaceholderItem_URL_pageTitle_webView_, v12, v10, 0, v11), v12, self))
  {
    objc_storeStrong(&self->_quickLookDocument, a3);
    v13 = [v9 createTemporaryFile];
    if (v13)
    {
      v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:v13];
      placeholderURL = self->_placeholderURL;
      self->_placeholderURL = v14;
    }

    self = self;

    v16 = self;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)item
{
  v3 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  v4 = [(SFQuickLookDocument *)self->_quickLookDocument fileName];
  [v3 setSuggestedName:v4];

  v5 = [(SFQuickLookDocument *)self->_quickLookDocument inferredUTI];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39___SFDownloadActivityItemProvider_item__block_invoke;
  v7[3] = &unk_1E8493BB0;
  v7[4] = self;
  [v3 registerItemForTypeIdentifier:v5 loadHandler:v7];

  return v3;
}

@end