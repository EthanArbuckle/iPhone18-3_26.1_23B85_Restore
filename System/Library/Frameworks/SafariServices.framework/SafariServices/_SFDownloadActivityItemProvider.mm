@interface _SFDownloadActivityItemProvider
- (_SFDownloadActivityItemProvider)initWithQuickLookDocument:(id)document URL:(id)l webView:(id)view;
- (id)item;
@end

@implementation _SFDownloadActivityItemProvider

- (_SFDownloadActivityItemProvider)initWithQuickLookDocument:(id)document URL:(id)l webView:(id)view
{
  documentCopy = document;
  lCopy = l;
  viewCopy = view;
  if (documentCopy && ([MEMORY[0x1E695DEF0] data], v12 = objc_claimAutoreleasedReturnValue(), v18.receiver = self, v18.super_class = _SFDownloadActivityItemProvider, self = -[_SFActivityItemProvider initWithPlaceholderItem:URL:pageTitle:webView:](&v18, sel_initWithPlaceholderItem_URL_pageTitle_webView_, v12, lCopy, 0, viewCopy), v12, self))
  {
    objc_storeStrong(&self->_quickLookDocument, document);
    createTemporaryFile = [documentCopy createTemporaryFile];
    if (createTemporaryFile)
    {
      v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:createTemporaryFile];
      placeholderURL = self->_placeholderURL;
      self->_placeholderURL = v14;
    }

    self = self;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)item
{
  v3 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  fileName = [(SFQuickLookDocument *)self->_quickLookDocument fileName];
  [v3 setSuggestedName:fileName];

  inferredUTI = [(SFQuickLookDocument *)self->_quickLookDocument inferredUTI];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39___SFDownloadActivityItemProvider_item__block_invoke;
  v7[3] = &unk_1E8493BB0;
  v7[4] = self;
  [v3 registerItemForTypeIdentifier:inferredUTI loadHandler:v7];

  return v3;
}

@end