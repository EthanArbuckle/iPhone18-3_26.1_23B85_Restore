@interface LPLinkHTMLGenerator
- (DOMDocumentFragment)documentFragment;
- (LPLinkHTMLGenerator)initWithMetadataLoadedFromURL:(id)a3 document:(id)a4;
- (LPLinkHTMLGenerator)initWithPresentationProperties:(id)a3 URL:(id)a4 document:(id)a5;
- (LPLinkHTMLGenerator)initWithPresentationProperties:(id)a3 document:(id)a4;
- (LPLinkHTMLGenerator)initWithURL:(id)a3 document:(id)a4;
- (LPLinkHTMLGeneratorDelegate)delegate;
- (LPPointUnit)rootWidth;
- (id)_URLForImage:(id)a3;
- (id)_URLForResource:(id)a3 withMIMEType:(id)a4;
- (id)_createCaptionBar;
- (id)_createMediaBottomCaptionBar;
- (id)_createMediaComponent;
- (id)_createMediaTopCaptionBar;
- (id)_createQuoteComponent;
- (id)_presentationOverrideBackgroundColorForProperties:(id)a3;
- (void)_computePresentationPropertiesFromMetadata;
- (void)_fetchMetadata;
- (void)_rebuildView;
- (void)_setPresentationProperties:(id)a3;
- (void)clearCurrentLayout;
- (void)setApplyCornerRadiusToLink:(BOOL)a3;
- (void)setMetadata:(id)a3;
@end

@implementation LPLinkHTMLGenerator

- (LPLinkHTMLGenerator)initWithMetadataLoadedFromURL:(id)a3 document:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(LPLinkHTMLGenerator *)self initWithURL:v6 document:v7];
  v9 = v8;
  if (v8)
  {
    [(LPLinkHTMLGenerator *)v8 _fetchMetadata];
    v10 = v9;
  }

  return v9;
}

- (LPLinkHTMLGenerator)initWithURL:(id)a3 document:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = LPLinkHTMLGenerator;
  v9 = [(LPLinkHTMLGenerator *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_URL, a3);
    v10->_usesComputedPresentationProperties = 1;
    v10->_applyCornerRadiusToLink = 1;
    LPWebLock(v11, v12);
    objc_storeStrong(&v10->_parentDocument, a4);
    v13 = v10;
  }

  return v10;
}

- (LPLinkHTMLGenerator)initWithPresentationProperties:(id)a3 document:(id)a4
{
  v4 = [(LPLinkHTMLGenerator *)self initWithPresentationProperties:a3 URL:0 document:a4];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  return v5;
}

- (LPLinkHTMLGenerator)initWithPresentationProperties:(id)a3 URL:(id)a4 document:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = LPLinkHTMLGenerator;
  v11 = [(LPLinkHTMLGenerator *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_URL, a4);
    v12->_applyCornerRadiusToLink = 1;
    LPWebLock(v13, v14);
    objc_storeStrong(&v12->_parentDocument, a5);
    [(LPLinkHTMLGenerator *)v12 _setPresentationProperties:v8];
    v15 = v12;
  }

  return v12;
}

- (void)_fetchMetadata
{
  *&self->_mayReceiveAdditionalMetadata = 257;
  URL = self->_URL;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__LPLinkHTMLGenerator__fetchMetadata__block_invoke;
  v5[3] = &unk_1E7A357C8;
  v5[4] = self;
  v4 = [LPMetadataProvider requestMetadataForURL:URL completionHandler:v5];
  objc_storeWeak(&self->_pendingMetadataProvider, v4);
}

void __37__LPLinkHTMLGenerator__fetchMetadata__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__LPLinkHTMLGenerator__fetchMetadata__block_invoke_2;
  v5[3] = &unk_1E7A35478;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __37__LPLinkHTMLGenerator__fetchMetadata__block_invoke_2(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 8), 0);
  [*(a1 + 32) _setMetadata:*(a1 + 40) isFinal:1];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 96));
    [v4 linkHTMLGenerator:*(a1 + 32) didFetchMetadata:*(*(a1 + 32) + 104)];
  }
}

- (DOMDocumentFragment)documentFragment
{
  LPWebLock(self, a2);
  if (!self->_everBuiltView)
  {
    [(LPLinkHTMLGenerator *)self _rebuildView];
  }

  v3 = [(DOMElement *)self->_rootElement ownerDocument];
  v4 = [v3 createDocumentFragment];

  v5 = [v4 appendChild:self->_rootElement];

  return v4;
}

- (void)setApplyCornerRadiusToLink:(BOOL)a3
{
  if (self->_applyCornerRadiusToLink != a3)
  {
    self->_applyCornerRadiusToLink = a3;
    if (self->_everBuiltView)
    {
      [(LPLinkHTMLGenerator *)self _rebuildView];
    }
  }
}

- (id)_URLForResource:(id)a3 withMIMEType:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained linkHTMLGenerator:self URLForResource:v6 withMIMEType:v7];
  v10 = [v9 absoluteString];

  return v10;
}

- (id)_URLForImage:(id)a3
{
  v4 = a3;
  v5 = [v4 _alternateHTMLImageGenerator];

  if (v5)
  {
    v6 = [v4 _alternateHTMLImageGenerator];
    v7 = v6[2]();

    v4 = v7;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (v9 = WeakRetained, v10 = objc_loadWeakRetained(&self->_delegate), v11 = objc_opt_respondsToSelector(), v10, v9, (v11 & 1) != 0))
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    v13 = [v4 data];
    v14 = [v4 MIMEType];
    v15 = [v12 linkHTMLGenerator:self URLForResource:v13 withMIMEType:v14];
    v16 = [v15 absoluteString];
  }

  else
  {
    v17 = MEMORY[0x1E696AEC0];
    v12 = [v4 MIMEType];
    v13 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
    v14 = [v12 stringByAddingPercentEncodingWithAllowedCharacters:v13];
    v15 = [v4 data];
    v18 = [v15 base64EncodedStringWithOptions:0];
    v16 = [v17 stringWithFormat:@"data:%@base64, %@", v14, v18];;
  }

  return v16;
}

- (void)clearCurrentLayout
{
  LPWebLock(self, a2);
  while ([(DOMElement *)self->_rootElement childElementCount])
  {
    rootElement = self->_rootElement;
    v4 = [(DOMElement *)rootElement childNodes];
    v5 = [v4 item:0];
    v6 = [(DOMElement *)rootElement removeChild:v5];
  }
}

- (void)setMetadata:(id)a3
{
  objc_storeStrong(&self->_metadata, a3);
  [(LPLinkHTMLGenerator *)self _computePresentationPropertiesFromMetadata];
  if (self->_everBuiltView)
  {

    [(LPLinkHTMLGenerator *)self _rebuildView];
  }
}

- (void)_computePresentationPropertiesFromMetadata
{
  if (self->_usesComputedPresentationProperties)
  {
    v4 = objc_alloc_init(LPLinkMetadataPresentationTransformer);
    [(LPLinkMetadataPresentationTransformer *)v4 setMetadata:self->_metadata];
    [(LPLinkMetadataPresentationTransformer *)v4 setURL:self->_URL];
    [(LPLinkMetadataPresentationTransformer *)v4 setComplete:!self->_mayReceiveAdditionalMetadata];
    [(LPLinkMetadataPresentationTransformer *)v4 setAllowsTapToLoad:0];
    v3 = [(LPLinkMetadataPresentationTransformer *)v4 presentationProperties];
    [(LPLinkHTMLGenerator *)self _setPresentationProperties:v3];
  }
}

- (void)_setPresentationProperties:(id)a3
{
  v52 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v52 isPreliminary];
  }

  else
  {
    v4 = 0;
  }

  self->_isPreliminary = v4;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v52 style];
  }

  else
  {
    v5 = 0;
  }

  self->_style = v5;
  if (objc_opt_respondsToSelector())
  {
    v6 = [v52 topCaption];
  }

  else
  {
    v6 = 0;
  }

  v51 = v6;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v52 bottomCaption];
  }

  else
  {
    v7 = 0;
  }

  v50 = v7;
  if (objc_opt_respondsToSelector())
  {
    v8 = [v52 trailingTopCaption];
  }

  else
  {
    v8 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [v52 trailingBottomCaption];
    if (v6)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v9 = 0;
    if (v6)
    {
LABEL_25:
      v12 = objc_alloc_init(LPCaptionBarPresentationProperties);
      captionBar = self->_captionBar;
      self->_captionBar = v12;

      v14 = [(LPCaptionBarPresentationProperties *)self->_captionBar top];
      v15 = [v14 leading];
      [v15 setText:v6];

      v16 = [(LPCaptionBarPresentationProperties *)self->_captionBar bottom];
      v17 = [v16 leading];
      [v17 setText:v7];

      v18 = [(LPCaptionBarPresentationProperties *)self->_captionBar top];
      v19 = [v18 trailing];
      [v19 setText:v8];

      v11 = [(LPCaptionBarPresentationProperties *)self->_captionBar bottom];
      v20 = [v11 trailing];
      [v20 setText:v9];

      goto LABEL_27;
    }
  }

  if (v7 || v8 || v9)
  {
    goto LABEL_25;
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = [v52 captionBar];
    v11 = self->_captionBar;
    self->_captionBar = v10;
  }

  else
  {
    v11 = self->_captionBar;
    self->_captionBar = 0;
  }

LABEL_27:

  if (objc_opt_respondsToSelector())
  {
    v21 = [v52 icon];
    if (v21)
    {
      [(LPCaptionBarPresentationProperties *)self->_captionBar setTrailingIcon:v21];
    }
  }

  else
  {
    v21 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v22 = [v52 mediaTopCaption];
  }

  else
  {
    v22 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v23 = [v52 mediaBottomCaption];
  }

  else
  {
    v23 = 0;
  }

  if (v22 | v23)
  {
    v24 = objc_alloc_init(LPCaptionBarPresentationProperties);
    mediaBottomCaptionBar = self->_mediaBottomCaptionBar;
    self->_mediaBottomCaptionBar = v24;

    v26 = [(LPCaptionBarPresentationProperties *)self->_mediaBottomCaptionBar top];
    v27 = [v26 leading];
    [v27 setText:v22];

    v28 = [(LPCaptionBarPresentationProperties *)self->_mediaBottomCaptionBar bottom];
    v29 = [v28 leading];
    [v29 setText:v23];
  }

  else if (objc_opt_respondsToSelector())
  {
    v30 = [v52 mediaBottomCaptionBar];
    v28 = self->_mediaBottomCaptionBar;
    self->_mediaBottomCaptionBar = v30;
  }

  else
  {
    v28 = self->_mediaBottomCaptionBar;
    self->_mediaBottomCaptionBar = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v31 = [v52 mediaTopCaptionBar];
  }

  else
  {
    v31 = 0;
  }

  mediaTopCaptionBar = self->_mediaTopCaptionBar;
  self->_mediaTopCaptionBar = v31;

  if (objc_opt_respondsToSelector())
  {
    v33 = [v52 quotedText];
  }

  else
  {
    v33 = 0;
  }

  quotedText = self->_quotedText;
  self->_quotedText = v33;

  if (objc_opt_respondsToSelector())
  {
    v35 = [v52 image];
  }

  else
  {
    v35 = 0;
  }

  image = self->_image;
  self->_image = v35;

  if (objc_opt_respondsToSelector())
  {
    v37 = [v52 imageProperties];
  }

  else
  {
    v37 = 0;
  }

  imageProperties = self->_imageProperties;
  self->_imageProperties = v37;

  style = self->_style;
  v40 = [(LPCaptionBarPresentationProperties *)self->_captionBar trailingIcon];
  v41 = v40;
  if (!v40)
  {
    v41 = [(LPCaptionBarPresentationProperties *)self->_captionBar leadingIcon];
  }

  v42 = [LPTheme themeWithStyle:style icon:v41 platform:3 sizeClass:0 sizeClassParameters:0 hasButton:0 preferredContentSizeCategory:*MEMORY[0x1E69DDC70]];
  theme = self->_theme;
  self->_theme = v42;

  if (!v40)
  {
  }

  v44 = [(LPLinkHTMLGenerator *)self _presentationOverrideBackgroundColorForProperties:v52];
  v45 = v44;
  if (v44)
  {
    v46 = v44;
  }

  else
  {
    v46 = [(LPTheme *)self->_theme backgroundColor];
  }

  backgroundColor = self->_backgroundColor;
  self->_backgroundColor = v46;

  if (objc_opt_respondsToSelector())
  {
    v48 = [v52 dominantImageBackgroundColor];
  }

  else
  {
    v48 = 0;
  }

  dominantImageBackgroundColor = self->_dominantImageBackgroundColor;
  self->_dominantImageBackgroundColor = v48;
}

- (id)_presentationOverrideBackgroundColorForProperties:(id)a3
{
  v4 = a3;
  v5 = [(LPTheme *)self->_theme mediaImage];
  [v5 darkeningAmount];
  v6 = presentationOverrideBackgroundColorForProperties(v4);

  return v6;
}

- (LPPointUnit)rootWidth
{
  v3 = shouldUseSkinnyWidth(self->_style, self->_quotedText, self->_image, 0, 0);
  v4 = [(LPLinkHTMLGenerator *)self theme];
  v5 = [v4 captionBar];
  v6 = [v5 minimumWidth];
  [v6 value];
  v8 = v7;

  v9 = [(LPLinkHTMLGenerator *)self theme];
  v10 = [v9 mediaTopCaptionBar];
  v11 = [v10 minimumWidth];
  [v11 value];
  v13 = v12;

  v14 = [(LPLinkHTMLGenerator *)self theme];
  v15 = [v14 mediaBottomCaptionBar];
  v16 = [v15 minimumWidth];
  [v16 value];
  v18 = 300.0;
  if (v3)
  {
    v18 = 228.0;
  }

  v19 = fmax(fmax(fmax(v18, v8), v13), v17);

  v20 = [[LPPointUnit alloc] initWithValue:v19];

  return v20;
}

- (id)_createCaptionBar
{
  v3 = [LPEmailCompatibleHTMLCaptionBarComponent alloc];
  v4 = [(LPTheme *)self->_theme captionBar];
  v5 = [(LPEmailCompatibleHTMLCaptionBarComponent *)v3 initWithStyle:v4 presentationProperties:self->_captionBar themePath:@"captionBar" generator:self];

  return v5;
}

- (id)_createMediaTopCaptionBar
{
  v3 = [LPEmailCompatibleHTMLCaptionBarComponent alloc];
  v4 = [(LPTheme *)self->_theme mediaTopCaptionBar];
  v5 = [(LPEmailCompatibleHTMLCaptionBarComponent *)v3 initWithStyle:v4 presentationProperties:self->_mediaTopCaptionBar themePath:@"mediaTopCaptionBar" generator:self];

  return v5;
}

- (id)_createMediaBottomCaptionBar
{
  v3 = [LPEmailCompatibleHTMLCaptionBarComponent alloc];
  v4 = [(LPTheme *)self->_theme mediaBottomCaptionBar];
  v5 = [(LPEmailCompatibleHTMLCaptionBarComponent *)v3 initWithStyle:v4 presentationProperties:self->_mediaBottomCaptionBar themePath:@"mediaBottomCaptionBar" generator:self];

  return v5;
}

- (id)_createMediaComponent
{
  if (self->_image)
  {
    v3 = [LPEmailCompatibleHTMLImageComponent alloc];
    image = self->_image;
    v5 = [(LPTheme *)self->_theme mediaImage];
    v6 = [(LPEmailCompatibleHTMLImageComponent *)v3 initWithImage:image style:v5 themePath:@"mediaImage" generator:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_createQuoteComponent
{
  v3 = [LPEmailCompatibleHTMLQuoteComponent alloc];
  quotedText = self->_quotedText;
  v5 = [(LPTheme *)self->_theme quotedText];
  v6 = [(LPEmailCompatibleHTMLQuoteComponent *)v3 initWithText:quotedText style:v5 themePath:@"quotedText" generator:self];

  return v6;
}

- (void)_rebuildView
{
  LPWebLock(self, a2);
  if (!self->_rootElement)
  {
    v3 = [(LPLinkHTMLGenerator *)self _createRootElement];
    rootElement = self->_rootElement;
    self->_rootElement = v3;
  }

  v5 = [[LPCSSResolver alloc] initWithTheme:self->_theme];
  cssResolver = self->_cssResolver;
  self->_cssResolver = v5;

  [(LPLinkHTMLGenerator *)self clearCurrentLayout];
  v7 = [(LPCaptionBarPresentationProperties *)self->_captionBar hasAnyContent];
  quotedText = self->_quotedText;
  image = self->_image;
  v10 = [[LPEmailCompatibleHTMLLinkComponent alloc] initWithURL:self->_URL generator:self];
  linkComponent = self->_linkComponent;
  self->_linkComponent = &v10->super;

  v20 = [[LPEmailCompatibleHTMLTableComponent alloc] initWithThemePath:@"emailBaseTable" generator:self];
  if (image)
  {
    v12 = [(LPLinkHTMLGenerator *)self _createMediaComponent];
    if (v12)
    {
      [(LPEmailCompatibleHTMLTableComponent *)v20 addChildAsRow:v12];
    }
  }

  if (quotedText)
  {
    v13 = [(LPLinkHTMLGenerator *)self _createQuoteComponent];
    if (v13)
    {
      [(LPEmailCompatibleHTMLTableComponent *)v20 addChildAsRow:v13];
    }
  }

  if (v7)
  {
    if ([(LPCaptionBarPresentationProperties *)self->_mediaTopCaptionBar hasAnyContent])
    {
      v14 = [(LPLinkHTMLGenerator *)self _createMediaTopCaptionBar];
      [(LPEmailCompatibleHTMLTableComponent *)v20 addChildAsRow:v14];
    }

    if ([(LPCaptionBarPresentationProperties *)self->_mediaBottomCaptionBar hasAnyContent])
    {
      v15 = [(LPLinkHTMLGenerator *)self _createMediaBottomCaptionBar];
      [(LPEmailCompatibleHTMLTableComponent *)v20 addChildAsRow:v15];
    }

    v16 = [(LPLinkHTMLGenerator *)self _createCaptionBar];
    [(LPEmailCompatibleHTMLTableComponent *)v20 addChildAsRow:v16];
  }

  [(LPHTMLComponent *)self->_linkComponent addChild:v20];
  v17 = self->_rootElement;
  v18 = [(LPHTMLComponent *)self->_linkComponent element];
  v19 = [(DOMElement *)v17 appendChild:v18];

  self->_everBuiltView = 1;
}

- (LPLinkHTMLGeneratorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end