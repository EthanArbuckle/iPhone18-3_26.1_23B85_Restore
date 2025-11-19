@interface LPLinkHTMLTextGenerator
- (LPLinkHTMLTextGenerator)initWithPresentationProperties:(id)a3 URL:(id)a4;
- (LPLinkHTMLTextGenerator)initWithURL:(id)a3;
- (LPLinkHTMLTextGeneratorDelegate)delegate;
- (NSString)HTMLFragmentString;
- (id)linkHTMLGenerator:(id)a3 URLForResource:(id)a4 withMIMEType:(id)a5;
- (void)_cleanUpDOMDocumentBody;
- (void)_commonInitWithPresentationProperties:(id)a3 URL:(id)a4;
- (void)_generateDOMDocumentBody;
- (void)generateHTMLFragmentString:(id)a3;
- (void)generateWebArchiveData:(id)a3;
- (void)setMetadata:(id)a3;
@end

@implementation LPLinkHTMLTextGenerator

- (LPLinkHTMLTextGenerator)initWithURL:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = LPLinkHTMLTextGenerator;
  v5 = [(LPLinkHTMLTextGenerator *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(LPLinkHTMLTextGenerator *)v5 _commonInitWithPresentationProperties:0 URL:v4];
    v7 = v6;
  }

  return v6;
}

- (LPLinkHTMLTextGenerator)initWithPresentationProperties:(id)a3 URL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = LPLinkHTMLTextGenerator;
  v8 = [(LPLinkHTMLTextGenerator *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(LPLinkHTMLTextGenerator *)v8 _commonInitWithPresentationProperties:v6 URL:v7];
    v10 = v9;
  }

  return v9;
}

- (void)_commonInitWithPresentationProperties:(id)a3 URL:(id)a4
{
  v16 = a3;
  v6 = a4;
  LPWebLock(v6, v7);
  v8 = objc_alloc_init(MEMORY[0x1E69E2FB8]);
  webView = self->_webView;
  self->_webView = v8;

  v10 = [(WebView *)self->_webView mainFrame];
  [v10 loadHTMLString:&stru_1F2447CF0 baseURL:0];

  v11 = [LPLinkHTMLGenerator alloc];
  v12 = [(WebView *)self->_webView mainFrame];
  v13 = [v12 DOMDocument];
  if (v16)
  {
    v14 = [(LPLinkHTMLGenerator *)v11 initWithPresentationProperties:v16 URL:v6 document:v13];
  }

  else
  {
    v14 = [(LPLinkHTMLGenerator *)v11 initWithURL:v6 document:v13];
  }

  DOMGenerator = self->_DOMGenerator;
  self->_DOMGenerator = v14;

  [(LPLinkHTMLGenerator *)self->_DOMGenerator setDelegate:self];
}

- (void)setMetadata:(id)a3
{
  [(LPLinkHTMLGenerator *)self->_DOMGenerator setMetadata:a3];
  generatedFragmentText = self->_generatedFragmentText;
  self->_generatedFragmentText = 0;
}

- (void)_generateDOMDocumentBody
{
  LPWebLock(self, a2);
  v16 = [(LPLinkHTMLGenerator *)self->_DOMGenerator documentFragment];
  v3 = [(WebView *)self->_webView mainFrame];
  v4 = [v3 DOMDocument];
  v5 = [v4 body];

  layoutDirection = self->_layoutDirection;
  if (layoutDirection)
  {
    v7 = [(NSNumber *)layoutDirection unsignedIntegerValue];
    if (v7)
    {
      if (v7 != 1)
      {
        goto LABEL_7;
      }

      v8 = @"rtl";
    }

    else
    {
      v8 = @"ltr";
    }

    [v5 setDir:v8];
  }

LABEL_7:
  htmlPrefix = self->_htmlPrefix;
  if (htmlPrefix)
  {
    webView = self->_webView;
    v11 = MEMORY[0x1E696AEC0];
    v12 = [(NSString *)htmlPrefix stringByReplacingOccurrencesOfString:@"'" withString:@"\\'"];
    v13 = [v11 stringWithFormat:@"(function () { const parser = new DOMParser() const doc = parser.parseFromString('%@', 'text/html'); Array.from(doc.body.childNodes).forEach((child)=>{document.body.appendChild(child)}) })()", v12];;
    v14 = [(WebView *)webView stringByEvaluatingJavaScriptFromString:v13];
  }

  v15 = [v5 appendChild:v16];
}

- (void)_cleanUpDOMDocumentBody
{
  v2 = [(WebView *)self->_webView mainFrame];
  v3 = [v2 DOMDocument];
  v5 = [v3 body];

  while (1)
  {

    if (![v5 hasChildNodes])
    {
      break;
    }

    v2 = [v5 lastChild];
    v4 = [v5 removeChild:v2];
  }
}

- (NSString)HTMLFragmentString
{
  p_generatedFragmentText = &self->_generatedFragmentText;
  generatedFragmentText = self->_generatedFragmentText;
  if (!generatedFragmentText)
  {
    [(LPLinkHTMLTextGenerator *)self _generateDOMDocumentBody];
    v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v6 = [(WebView *)self->_webView mainFrame];
    v7 = [v6 DOMDocument];
    v8 = [v7 body];
    v9 = [v8 childNodes];

    for (i = 0; i < [v9 length]; i = (i + 1))
    {
      v11 = [v9 item:i];
      v12 = [v11 markupString];
      [v5 appendString:v12];
    }

    objc_storeStrong(p_generatedFragmentText, v5);
    [(LPLinkHTMLTextGenerator *)self _cleanUpDOMDocumentBody];

    generatedFragmentText = *p_generatedFragmentText;
  }

  v13 = [(NSString *)generatedFragmentText copy];

  return v13;
}

- (void)generateHTMLFragmentString:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__LPLinkHTMLTextGenerator_generateHTMLFragmentString___block_invoke;
  v6[3] = &unk_1E7A35428;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __54__LPLinkHTMLTextGenerator_generateHTMLFragmentString___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) HTMLFragmentString];
  (*(v1 + 16))(v1);
}

- (void)generateWebArchiveData:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__LPLinkHTMLTextGenerator_generateWebArchiveData___block_invoke;
  v6[3] = &unk_1E7A356A0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __50__LPLinkHTMLTextGenerator_generateWebArchiveData___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _generateDOMDocumentBody];
  v2 = [*(*(a1 + 32) + 8) mainFrame];
  v3 = [v2 DOMDocument];
  v4 = [v3 webArchive];
  v5 = [v4 data];

  [*(a1 + 32) _cleanUpDOMDocumentBody];
  (*(*(a1 + 40) + 16))();
}

- (id)linkHTMLGenerator:(id)a3 URLForResource:(id)a4 withMIMEType:(id)a5
{
  v7 = a4;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (v10 = WeakRetained, v11 = objc_loadWeakRetained(&self->_delegate), v12 = objc_opt_respondsToSelector(), v11, v10, (v12 & 1) != 0))
  {
    v13 = objc_loadWeakRetained(&self->_delegate);
    v14 = [v13 linkHTMLTextGenerator:self URLForResource:v7 withMIMEType:v8];
  }

  else
  {
    v15 = MEMORY[0x1E695DFF8];
    v16 = MEMORY[0x1E696AEC0];
    v13 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
    v17 = [v8 stringByAddingPercentEncodingWithAllowedCharacters:v13];
    v18 = [v7 base64EncodedStringWithOptions:0];
    v19 = [v16 stringWithFormat:@"data:%@base64, %@", v17, v18];;
    v14 = [v15 URLWithString:v19];
  }

  return v14;
}

- (LPLinkHTMLTextGeneratorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end