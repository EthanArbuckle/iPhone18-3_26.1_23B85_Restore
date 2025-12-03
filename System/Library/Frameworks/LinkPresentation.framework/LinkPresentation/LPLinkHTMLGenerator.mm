@interface LPLinkHTMLGenerator
- (DOMDocumentFragment)documentFragment;
- (LPLinkHTMLGenerator)initWithMetadataLoadedFromURL:(id)l document:(id)document;
- (LPLinkHTMLGenerator)initWithPresentationProperties:(id)properties URL:(id)l document:(id)document;
- (LPLinkHTMLGenerator)initWithPresentationProperties:(id)properties document:(id)document;
- (LPLinkHTMLGenerator)initWithURL:(id)l document:(id)document;
- (LPLinkHTMLGeneratorDelegate)delegate;
- (LPPointUnit)rootWidth;
- (id)_URLForImage:(id)image;
- (id)_URLForResource:(id)resource withMIMEType:(id)type;
- (id)_createCaptionBar;
- (id)_createMediaBottomCaptionBar;
- (id)_createMediaComponent;
- (id)_createMediaTopCaptionBar;
- (id)_createQuoteComponent;
- (id)_presentationOverrideBackgroundColorForProperties:(id)properties;
- (void)_computePresentationPropertiesFromMetadata;
- (void)_fetchMetadata;
- (void)_rebuildView;
- (void)_setPresentationProperties:(id)properties;
- (void)clearCurrentLayout;
- (void)setApplyCornerRadiusToLink:(BOOL)link;
- (void)setMetadata:(id)metadata;
@end

@implementation LPLinkHTMLGenerator

- (LPLinkHTMLGenerator)initWithMetadataLoadedFromURL:(id)l document:(id)document
{
  lCopy = l;
  documentCopy = document;
  v8 = [(LPLinkHTMLGenerator *)self initWithURL:lCopy document:documentCopy];
  v9 = v8;
  if (v8)
  {
    [(LPLinkHTMLGenerator *)v8 _fetchMetadata];
    v10 = v9;
  }

  return v9;
}

- (LPLinkHTMLGenerator)initWithURL:(id)l document:(id)document
{
  lCopy = l;
  documentCopy = document;
  v15.receiver = self;
  v15.super_class = LPLinkHTMLGenerator;
  v9 = [(LPLinkHTMLGenerator *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_URL, l);
    v10->_usesComputedPresentationProperties = 1;
    v10->_applyCornerRadiusToLink = 1;
    LPWebLock(v11, v12);
    objc_storeStrong(&v10->_parentDocument, document);
    v13 = v10;
  }

  return v10;
}

- (LPLinkHTMLGenerator)initWithPresentationProperties:(id)properties document:(id)document
{
  v4 = [(LPLinkHTMLGenerator *)self initWithPresentationProperties:properties URL:0 document:document];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  return v5;
}

- (LPLinkHTMLGenerator)initWithPresentationProperties:(id)properties URL:(id)l document:(id)document
{
  propertiesCopy = properties;
  lCopy = l;
  documentCopy = document;
  v17.receiver = self;
  v17.super_class = LPLinkHTMLGenerator;
  v11 = [(LPLinkHTMLGenerator *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_URL, l);
    v12->_applyCornerRadiusToLink = 1;
    LPWebLock(v13, v14);
    objc_storeStrong(&v12->_parentDocument, document);
    [(LPLinkHTMLGenerator *)v12 _setPresentationProperties:propertiesCopy];
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

  ownerDocument = [(DOMElement *)self->_rootElement ownerDocument];
  createDocumentFragment = [ownerDocument createDocumentFragment];

  v5 = [createDocumentFragment appendChild:self->_rootElement];

  return createDocumentFragment;
}

- (void)setApplyCornerRadiusToLink:(BOOL)link
{
  if (self->_applyCornerRadiusToLink != link)
  {
    self->_applyCornerRadiusToLink = link;
    if (self->_everBuiltView)
    {
      [(LPLinkHTMLGenerator *)self _rebuildView];
    }
  }
}

- (id)_URLForResource:(id)resource withMIMEType:(id)type
{
  resourceCopy = resource;
  typeCopy = type;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained linkHTMLGenerator:self URLForResource:resourceCopy withMIMEType:typeCopy];
  absoluteString = [v9 absoluteString];

  return absoluteString;
}

- (id)_URLForImage:(id)image
{
  imageCopy = image;
  _alternateHTMLImageGenerator = [imageCopy _alternateHTMLImageGenerator];

  if (_alternateHTMLImageGenerator)
  {
    _alternateHTMLImageGenerator2 = [imageCopy _alternateHTMLImageGenerator];
    v7 = _alternateHTMLImageGenerator2[2]();

    imageCopy = v7;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (v9 = WeakRetained, v10 = objc_loadWeakRetained(&self->_delegate), v11 = objc_opt_respondsToSelector(), v10, v9, (v11 & 1) != 0))
  {
    mIMEType2 = objc_loadWeakRetained(&self->_delegate);
    data = [imageCopy data];
    mIMEType = [imageCopy MIMEType];
    data2 = [mIMEType2 linkHTMLGenerator:self URLForResource:data withMIMEType:mIMEType];
    absoluteString = [data2 absoluteString];
  }

  else
  {
    v17 = MEMORY[0x1E696AEC0];
    mIMEType2 = [imageCopy MIMEType];
    data = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
    mIMEType = [mIMEType2 stringByAddingPercentEncodingWithAllowedCharacters:data];
    data2 = [imageCopy data];
    v18 = [data2 base64EncodedStringWithOptions:0];
    absoluteString = [v17 stringWithFormat:@"data:%@base64, %@", mIMEType, v18];;
  }

  return absoluteString;
}

- (void)clearCurrentLayout
{
  LPWebLock(self, a2);
  while ([(DOMElement *)self->_rootElement childElementCount])
  {
    rootElement = self->_rootElement;
    childNodes = [(DOMElement *)rootElement childNodes];
    v5 = [childNodes item:0];
    v6 = [(DOMElement *)rootElement removeChild:v5];
  }
}

- (void)setMetadata:(id)metadata
{
  objc_storeStrong(&self->_metadata, metadata);
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
    presentationProperties = [(LPLinkMetadataPresentationTransformer *)v4 presentationProperties];
    [(LPLinkHTMLGenerator *)self _setPresentationProperties:presentationProperties];
  }
}

- (void)_setPresentationProperties:(id)properties
{
  propertiesCopy = properties;
  if (objc_opt_respondsToSelector())
  {
    isPreliminary = [propertiesCopy isPreliminary];
  }

  else
  {
    isPreliminary = 0;
  }

  self->_isPreliminary = isPreliminary;
  if (objc_opt_respondsToSelector())
  {
    style = [propertiesCopy style];
  }

  else
  {
    style = 0;
  }

  self->_style = style;
  if (objc_opt_respondsToSelector())
  {
    topCaption = [propertiesCopy topCaption];
  }

  else
  {
    topCaption = 0;
  }

  v51 = topCaption;
  if (objc_opt_respondsToSelector())
  {
    bottomCaption = [propertiesCopy bottomCaption];
  }

  else
  {
    bottomCaption = 0;
  }

  v50 = bottomCaption;
  if (objc_opt_respondsToSelector())
  {
    trailingTopCaption = [propertiesCopy trailingTopCaption];
  }

  else
  {
    trailingTopCaption = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    trailingBottomCaption = [propertiesCopy trailingBottomCaption];
    if (topCaption)
    {
      goto LABEL_25;
    }
  }

  else
  {
    trailingBottomCaption = 0;
    if (topCaption)
    {
LABEL_25:
      v12 = objc_alloc_init(LPCaptionBarPresentationProperties);
      captionBar = self->_captionBar;
      self->_captionBar = v12;

      v14 = [(LPCaptionBarPresentationProperties *)self->_captionBar top];
      leading = [v14 leading];
      [leading setText:topCaption];

      bottom = [(LPCaptionBarPresentationProperties *)self->_captionBar bottom];
      leading2 = [bottom leading];
      [leading2 setText:bottomCaption];

      v18 = [(LPCaptionBarPresentationProperties *)self->_captionBar top];
      trailing = [v18 trailing];
      [trailing setText:trailingTopCaption];

      bottom2 = [(LPCaptionBarPresentationProperties *)self->_captionBar bottom];
      trailing2 = [bottom2 trailing];
      [trailing2 setText:trailingBottomCaption];

      goto LABEL_27;
    }
  }

  if (bottomCaption || trailingTopCaption || trailingBottomCaption)
  {
    goto LABEL_25;
  }

  if (objc_opt_respondsToSelector())
  {
    captionBar = [propertiesCopy captionBar];
    bottom2 = self->_captionBar;
    self->_captionBar = captionBar;
  }

  else
  {
    bottom2 = self->_captionBar;
    self->_captionBar = 0;
  }

LABEL_27:

  if (objc_opt_respondsToSelector())
  {
    icon = [propertiesCopy icon];
    if (icon)
    {
      [(LPCaptionBarPresentationProperties *)self->_captionBar setTrailingIcon:icon];
    }
  }

  else
  {
    icon = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    mediaTopCaption = [propertiesCopy mediaTopCaption];
  }

  else
  {
    mediaTopCaption = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    mediaBottomCaption = [propertiesCopy mediaBottomCaption];
  }

  else
  {
    mediaBottomCaption = 0;
  }

  if (mediaTopCaption | mediaBottomCaption)
  {
    v24 = objc_alloc_init(LPCaptionBarPresentationProperties);
    mediaBottomCaptionBar = self->_mediaBottomCaptionBar;
    self->_mediaBottomCaptionBar = v24;

    v26 = [(LPCaptionBarPresentationProperties *)self->_mediaBottomCaptionBar top];
    leading3 = [v26 leading];
    [leading3 setText:mediaTopCaption];

    bottom3 = [(LPCaptionBarPresentationProperties *)self->_mediaBottomCaptionBar bottom];
    leading4 = [bottom3 leading];
    [leading4 setText:mediaBottomCaption];
  }

  else if (objc_opt_respondsToSelector())
  {
    mediaBottomCaptionBar = [propertiesCopy mediaBottomCaptionBar];
    bottom3 = self->_mediaBottomCaptionBar;
    self->_mediaBottomCaptionBar = mediaBottomCaptionBar;
  }

  else
  {
    bottom3 = self->_mediaBottomCaptionBar;
    self->_mediaBottomCaptionBar = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    mediaTopCaptionBar = [propertiesCopy mediaTopCaptionBar];
  }

  else
  {
    mediaTopCaptionBar = 0;
  }

  mediaTopCaptionBar = self->_mediaTopCaptionBar;
  self->_mediaTopCaptionBar = mediaTopCaptionBar;

  if (objc_opt_respondsToSelector())
  {
    quotedText = [propertiesCopy quotedText];
  }

  else
  {
    quotedText = 0;
  }

  quotedText = self->_quotedText;
  self->_quotedText = quotedText;

  if (objc_opt_respondsToSelector())
  {
    image = [propertiesCopy image];
  }

  else
  {
    image = 0;
  }

  image = self->_image;
  self->_image = image;

  if (objc_opt_respondsToSelector())
  {
    imageProperties = [propertiesCopy imageProperties];
  }

  else
  {
    imageProperties = 0;
  }

  imageProperties = self->_imageProperties;
  self->_imageProperties = imageProperties;

  style = self->_style;
  trailingIcon = [(LPCaptionBarPresentationProperties *)self->_captionBar trailingIcon];
  leadingIcon = trailingIcon;
  if (!trailingIcon)
  {
    leadingIcon = [(LPCaptionBarPresentationProperties *)self->_captionBar leadingIcon];
  }

  v42 = [LPTheme themeWithStyle:style icon:leadingIcon platform:3 sizeClass:0 sizeClassParameters:0 hasButton:0 preferredContentSizeCategory:*MEMORY[0x1E69DDC70]];
  theme = self->_theme;
  self->_theme = v42;

  if (!trailingIcon)
  {
  }

  v44 = [(LPLinkHTMLGenerator *)self _presentationOverrideBackgroundColorForProperties:propertiesCopy];
  v45 = v44;
  if (v44)
  {
    backgroundColor = v44;
  }

  else
  {
    backgroundColor = [(LPTheme *)self->_theme backgroundColor];
  }

  backgroundColor = self->_backgroundColor;
  self->_backgroundColor = backgroundColor;

  if (objc_opt_respondsToSelector())
  {
    dominantImageBackgroundColor = [propertiesCopy dominantImageBackgroundColor];
  }

  else
  {
    dominantImageBackgroundColor = 0;
  }

  dominantImageBackgroundColor = self->_dominantImageBackgroundColor;
  self->_dominantImageBackgroundColor = dominantImageBackgroundColor;
}

- (id)_presentationOverrideBackgroundColorForProperties:(id)properties
{
  propertiesCopy = properties;
  mediaImage = [(LPTheme *)self->_theme mediaImage];
  [mediaImage darkeningAmount];
  v6 = presentationOverrideBackgroundColorForProperties(propertiesCopy);

  return v6;
}

- (LPPointUnit)rootWidth
{
  v3 = shouldUseSkinnyWidth(self->_style, self->_quotedText, self->_image, 0, 0);
  theme = [(LPLinkHTMLGenerator *)self theme];
  captionBar = [theme captionBar];
  minimumWidth = [captionBar minimumWidth];
  [minimumWidth value];
  v8 = v7;

  theme2 = [(LPLinkHTMLGenerator *)self theme];
  mediaTopCaptionBar = [theme2 mediaTopCaptionBar];
  minimumWidth2 = [mediaTopCaptionBar minimumWidth];
  [minimumWidth2 value];
  v13 = v12;

  theme3 = [(LPLinkHTMLGenerator *)self theme];
  mediaBottomCaptionBar = [theme3 mediaBottomCaptionBar];
  minimumWidth3 = [mediaBottomCaptionBar minimumWidth];
  [minimumWidth3 value];
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
  captionBar = [(LPTheme *)self->_theme captionBar];
  v5 = [(LPEmailCompatibleHTMLCaptionBarComponent *)v3 initWithStyle:captionBar presentationProperties:self->_captionBar themePath:@"captionBar" generator:self];

  return v5;
}

- (id)_createMediaTopCaptionBar
{
  v3 = [LPEmailCompatibleHTMLCaptionBarComponent alloc];
  mediaTopCaptionBar = [(LPTheme *)self->_theme mediaTopCaptionBar];
  v5 = [(LPEmailCompatibleHTMLCaptionBarComponent *)v3 initWithStyle:mediaTopCaptionBar presentationProperties:self->_mediaTopCaptionBar themePath:@"mediaTopCaptionBar" generator:self];

  return v5;
}

- (id)_createMediaBottomCaptionBar
{
  v3 = [LPEmailCompatibleHTMLCaptionBarComponent alloc];
  mediaBottomCaptionBar = [(LPTheme *)self->_theme mediaBottomCaptionBar];
  v5 = [(LPEmailCompatibleHTMLCaptionBarComponent *)v3 initWithStyle:mediaBottomCaptionBar presentationProperties:self->_mediaBottomCaptionBar themePath:@"mediaBottomCaptionBar" generator:self];

  return v5;
}

- (id)_createMediaComponent
{
  if (self->_image)
  {
    v3 = [LPEmailCompatibleHTMLImageComponent alloc];
    image = self->_image;
    mediaImage = [(LPTheme *)self->_theme mediaImage];
    v6 = [(LPEmailCompatibleHTMLImageComponent *)v3 initWithImage:image style:mediaImage themePath:@"mediaImage" generator:self];
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
  quotedText = [(LPTheme *)self->_theme quotedText];
  v6 = [(LPEmailCompatibleHTMLQuoteComponent *)v3 initWithText:quotedText style:quotedText themePath:@"quotedText" generator:self];

  return v6;
}

- (void)_rebuildView
{
  LPWebLock(self, a2);
  if (!self->_rootElement)
  {
    _createRootElement = [(LPLinkHTMLGenerator *)self _createRootElement];
    rootElement = self->_rootElement;
    self->_rootElement = _createRootElement;
  }

  v5 = [[LPCSSResolver alloc] initWithTheme:self->_theme];
  cssResolver = self->_cssResolver;
  self->_cssResolver = v5;

  [(LPLinkHTMLGenerator *)self clearCurrentLayout];
  hasAnyContent = [(LPCaptionBarPresentationProperties *)self->_captionBar hasAnyContent];
  quotedText = self->_quotedText;
  image = self->_image;
  v10 = [[LPEmailCompatibleHTMLLinkComponent alloc] initWithURL:self->_URL generator:self];
  linkComponent = self->_linkComponent;
  self->_linkComponent = &v10->super;

  v20 = [[LPEmailCompatibleHTMLTableComponent alloc] initWithThemePath:@"emailBaseTable" generator:self];
  if (image)
  {
    _createMediaComponent = [(LPLinkHTMLGenerator *)self _createMediaComponent];
    if (_createMediaComponent)
    {
      [(LPEmailCompatibleHTMLTableComponent *)v20 addChildAsRow:_createMediaComponent];
    }
  }

  if (quotedText)
  {
    _createQuoteComponent = [(LPLinkHTMLGenerator *)self _createQuoteComponent];
    if (_createQuoteComponent)
    {
      [(LPEmailCompatibleHTMLTableComponent *)v20 addChildAsRow:_createQuoteComponent];
    }
  }

  if (hasAnyContent)
  {
    if ([(LPCaptionBarPresentationProperties *)self->_mediaTopCaptionBar hasAnyContent])
    {
      _createMediaTopCaptionBar = [(LPLinkHTMLGenerator *)self _createMediaTopCaptionBar];
      [(LPEmailCompatibleHTMLTableComponent *)v20 addChildAsRow:_createMediaTopCaptionBar];
    }

    if ([(LPCaptionBarPresentationProperties *)self->_mediaBottomCaptionBar hasAnyContent])
    {
      _createMediaBottomCaptionBar = [(LPLinkHTMLGenerator *)self _createMediaBottomCaptionBar];
      [(LPEmailCompatibleHTMLTableComponent *)v20 addChildAsRow:_createMediaBottomCaptionBar];
    }

    _createCaptionBar = [(LPLinkHTMLGenerator *)self _createCaptionBar];
    [(LPEmailCompatibleHTMLTableComponent *)v20 addChildAsRow:_createCaptionBar];
  }

  [(LPHTMLComponent *)self->_linkComponent addChild:v20];
  v17 = self->_rootElement;
  element = [(LPHTMLComponent *)self->_linkComponent element];
  v19 = [(DOMElement *)v17 appendChild:element];

  self->_everBuiltView = 1;
}

- (LPLinkHTMLGeneratorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end