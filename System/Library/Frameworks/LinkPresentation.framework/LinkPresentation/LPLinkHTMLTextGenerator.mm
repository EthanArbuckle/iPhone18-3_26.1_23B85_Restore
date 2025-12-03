@interface LPLinkHTMLTextGenerator
- (LPLinkHTMLTextGenerator)initWithPresentationProperties:(id)properties URL:(id)l;
- (LPLinkHTMLTextGenerator)initWithURL:(id)l;
- (LPLinkHTMLTextGeneratorDelegate)delegate;
- (NSString)HTMLFragmentString;
- (id)linkHTMLGenerator:(id)generator URLForResource:(id)resource withMIMEType:(id)type;
- (void)_cleanUpDOMDocumentBody;
- (void)_commonInitWithPresentationProperties:(id)properties URL:(id)l;
- (void)_generateDOMDocumentBody;
- (void)generateHTMLFragmentString:(id)string;
- (void)generateWebArchiveData:(id)data;
- (void)setMetadata:(id)metadata;
@end

@implementation LPLinkHTMLTextGenerator

- (LPLinkHTMLTextGenerator)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = LPLinkHTMLTextGenerator;
  v5 = [(LPLinkHTMLTextGenerator *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(LPLinkHTMLTextGenerator *)v5 _commonInitWithPresentationProperties:0 URL:lCopy];
    v7 = v6;
  }

  return v6;
}

- (LPLinkHTMLTextGenerator)initWithPresentationProperties:(id)properties URL:(id)l
{
  propertiesCopy = properties;
  lCopy = l;
  v12.receiver = self;
  v12.super_class = LPLinkHTMLTextGenerator;
  v8 = [(LPLinkHTMLTextGenerator *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(LPLinkHTMLTextGenerator *)v8 _commonInitWithPresentationProperties:propertiesCopy URL:lCopy];
    v10 = v9;
  }

  return v9;
}

- (void)_commonInitWithPresentationProperties:(id)properties URL:(id)l
{
  propertiesCopy = properties;
  lCopy = l;
  LPWebLock(lCopy, v7);
  v8 = objc_alloc_init(MEMORY[0x1E69E2FB8]);
  webView = self->_webView;
  self->_webView = v8;

  mainFrame = [(WebView *)self->_webView mainFrame];
  [mainFrame loadHTMLString:&stru_1F2447CF0 baseURL:0];

  v11 = [LPLinkHTMLGenerator alloc];
  mainFrame2 = [(WebView *)self->_webView mainFrame];
  dOMDocument = [mainFrame2 DOMDocument];
  if (propertiesCopy)
  {
    v14 = [(LPLinkHTMLGenerator *)v11 initWithPresentationProperties:propertiesCopy URL:lCopy document:dOMDocument];
  }

  else
  {
    v14 = [(LPLinkHTMLGenerator *)v11 initWithURL:lCopy document:dOMDocument];
  }

  DOMGenerator = self->_DOMGenerator;
  self->_DOMGenerator = v14;

  [(LPLinkHTMLGenerator *)self->_DOMGenerator setDelegate:self];
}

- (void)setMetadata:(id)metadata
{
  [(LPLinkHTMLGenerator *)self->_DOMGenerator setMetadata:metadata];
  generatedFragmentText = self->_generatedFragmentText;
  self->_generatedFragmentText = 0;
}

- (void)_generateDOMDocumentBody
{
  LPWebLock(self, a2);
  documentFragment = [(LPLinkHTMLGenerator *)self->_DOMGenerator documentFragment];
  mainFrame = [(WebView *)self->_webView mainFrame];
  dOMDocument = [mainFrame DOMDocument];
  body = [dOMDocument body];

  layoutDirection = self->_layoutDirection;
  if (layoutDirection)
  {
    unsignedIntegerValue = [(NSNumber *)layoutDirection unsignedIntegerValue];
    if (unsignedIntegerValue)
    {
      if (unsignedIntegerValue != 1)
      {
        goto LABEL_7;
      }

      v8 = @"rtl";
    }

    else
    {
      v8 = @"ltr";
    }

    [body setDir:v8];
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

  v15 = [body appendChild:documentFragment];
}

- (void)_cleanUpDOMDocumentBody
{
  mainFrame = [(WebView *)self->_webView mainFrame];
  dOMDocument = [mainFrame DOMDocument];
  body = [dOMDocument body];

  while (1)
  {

    if (![body hasChildNodes])
    {
      break;
    }

    mainFrame = [body lastChild];
    v4 = [body removeChild:mainFrame];
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
    mainFrame = [(WebView *)self->_webView mainFrame];
    dOMDocument = [mainFrame DOMDocument];
    body = [dOMDocument body];
    childNodes = [body childNodes];

    for (i = 0; i < [childNodes length]; i = (i + 1))
    {
      v11 = [childNodes item:i];
      markupString = [v11 markupString];
      [v5 appendString:markupString];
    }

    objc_storeStrong(p_generatedFragmentText, v5);
    [(LPLinkHTMLTextGenerator *)self _cleanUpDOMDocumentBody];

    generatedFragmentText = *p_generatedFragmentText;
  }

  v13 = [(NSString *)generatedFragmentText copy];

  return v13;
}

- (void)generateHTMLFragmentString:(id)string
{
  stringCopy = string;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__LPLinkHTMLTextGenerator_generateHTMLFragmentString___block_invoke;
  v6[3] = &unk_1E7A35428;
  v6[4] = self;
  v7 = stringCopy;
  v5 = stringCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __54__LPLinkHTMLTextGenerator_generateHTMLFragmentString___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) HTMLFragmentString];
  (*(v1 + 16))(v1);
}

- (void)generateWebArchiveData:(id)data
{
  dataCopy = data;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__LPLinkHTMLTextGenerator_generateWebArchiveData___block_invoke;
  v6[3] = &unk_1E7A356A0;
  v6[4] = self;
  v7 = dataCopy;
  v5 = dataCopy;
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

- (id)linkHTMLGenerator:(id)generator URLForResource:(id)resource withMIMEType:(id)type
{
  resourceCopy = resource;
  typeCopy = type;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (v10 = WeakRetained, v11 = objc_loadWeakRetained(&self->_delegate), v12 = objc_opt_respondsToSelector(), v11, v10, (v12 & 1) != 0))
  {
    uRLPathAllowedCharacterSet = objc_loadWeakRetained(&self->_delegate);
    v14 = [uRLPathAllowedCharacterSet linkHTMLTextGenerator:self URLForResource:resourceCopy withMIMEType:typeCopy];
  }

  else
  {
    v15 = MEMORY[0x1E695DFF8];
    v16 = MEMORY[0x1E696AEC0];
    uRLPathAllowedCharacterSet = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
    v17 = [typeCopy stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];
    v18 = [resourceCopy base64EncodedStringWithOptions:0];
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