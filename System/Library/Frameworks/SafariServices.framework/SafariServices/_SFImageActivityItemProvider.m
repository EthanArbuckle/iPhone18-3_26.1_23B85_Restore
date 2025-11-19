@interface _SFImageActivityItemProvider
- (_SFImageActivityItemProvider)initWithWebView:(id)a3;
- (id)_imageData;
- (id)item;
@end

@implementation _SFImageActivityItemProvider

- (_SFImageActivityItemProvider)initWithWebView:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DEF0] data];
  v14.receiver = self;
  v14.super_class = _SFImageActivityItemProvider;
  v6 = [(_SFActivityItemProvider *)&v14 initWithPlaceholderItem:v5 URL:0 pageTitle:0 webView:v4];

  if (v6)
  {
    v7 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E69CDA78]];
    [(_SFActivityItemProvider *)v6 setExcludedActivityTypes:v7];

    v8 = *MEMORY[0x1E6963718];
    v9 = [v4 _MIMEType];
    PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(v8, v9, 0);
    documentUTI = v6->_documentUTI;
    v6->_documentUTI = &PreferredIdentifierForTag->isa;

    v12 = v6;
  }

  return v6;
}

- (id)item
{
  imageOnlyDocumentData = self->_imageOnlyDocumentData;
  if (!imageOnlyDocumentData)
  {
    v4 = [(_SFImageActivityItemProvider *)self _imageData];
    v5 = self->_imageOnlyDocumentData;
    self->_imageOnlyDocumentData = v4;

    imageOnlyDocumentData = self->_imageOnlyDocumentData;
  }

  return imageOnlyDocumentData;
}

- (id)_imageData
{
  documentUTI = self->_documentUTI;
  if (documentUTI && UTTypeConformsTo(documentUTI, *MEMORY[0x1E69637F8]))
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__13;
    v15 = __Block_byref_object_dispose__13;
    v16 = 0;
    v4 = [(_SFActivityItemProvider *)self webView];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __42___SFImageActivityItemProvider__imageData__block_invoke;
    v10[3] = &unk_1E8496410;
    v10[4] = &v17;
    v10[5] = &v11;
    [v4 _getMainResourceDataWithCompletionHandler:v10];

    if ((v18[3] & 1) == 0)
    {
      v5 = *MEMORY[0x1E695D918];
      do
      {
        v6 = [MEMORY[0x1E695DFD0] currentRunLoop];
        v7 = [MEMORY[0x1E695DF00] distantFuture];
        [v6 runMode:v5 beforeDate:v7];
      }

      while ((v18[3] & 1) == 0);
    }

    v8 = v12[5];
    _Block_object_dispose(&v11, 8);

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end