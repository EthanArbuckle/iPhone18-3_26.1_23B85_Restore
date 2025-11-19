@interface _SFActivityItemProviderCollection
- (_SFActivityItemProvider)standaloneImageProvider;
- (_SFActivityItemProvider)webArchiveProvider;
- (_SFActivityItemProviderCollection)initWithWebView:(id)a3;
- (id)activityItemProvidersWithCustomizationController:(id)a3;
@end

@implementation _SFActivityItemProviderCollection

- (_SFActivityItemProviderCollection)initWithWebView:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _SFActivityItemProviderCollection;
  v6 = [(_SFActivityItemProviderCollection *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_webView, a3);
    v8 = v7;
  }

  return v7;
}

- (_SFActivityItemProvider)standaloneImageProvider
{
  standaloneImageProvider = self->_standaloneImageProvider;
  if (standaloneImageProvider)
  {
    goto LABEL_4;
  }

  if ([(_SFActivityItemProviderCollection *)self displayingStandaloneImage])
  {
    v4 = [[_SFImageActivityItemProvider alloc] initWithWebView:self->_webView];
    v5 = self->_standaloneImageProvider;
    self->_standaloneImageProvider = &v4->super;

    standaloneImageProvider = self->_standaloneImageProvider;
LABEL_4:
    v6 = standaloneImageProvider;
    goto LABEL_5;
  }

  v6 = 0;
LABEL_5:

  return v6;
}

- (_SFActivityItemProvider)webArchiveProvider
{
  webArchiveProvider = self->_webArchiveProvider;
  if (!webArchiveProvider)
  {
    v4 = [_SFWebArchiveActivityItemProvider alloc];
    v5 = [[_SFWebArchiveProvider alloc] initWithWebView:self->_webView];
    v6 = [(_SFWebArchiveActivityItemProvider *)v4 initWithWebArchiveProvider:v5];
    v7 = self->_webArchiveProvider;
    self->_webArchiveProvider = v6;

    webArchiveProvider = self->_webArchiveProvider;
  }

  v8 = webArchiveProvider;

  return v8;
}

- (id)activityItemProvidersWithCustomizationController:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  if ([v4 canShareAsLink])
  {
    v6 = [(_SFActivityItemProviderCollection *)self linkProvider];
    [v5 safari_addObjectUnlessNil:v6];
    v7 = [(_SFActivityItemProviderCollection *)self javaScriptExtensionProvider];
    [v5 safari_addObjectUnlessNil:v7];
  }

  else
  {
    v6 = 0;
  }

  v8 = [(_SFActivityItemProviderCollection *)self standaloneImageProvider];
  if ([v4 canShareAsStandaloneImage] && v8)
  {
    [v5 addObject:v8];
    v9 = [v6 excludedActivityTypes];
    v10 = [v9 setByAddingObject:*MEMORY[0x1E69CDAB0]];
  }

  else
  {
    v9 = [v6 excludedActivityTypes];
    v10 = [v9 safari_setByRemovingObject:*MEMORY[0x1E69CDAB0]];
  }

  v11 = v10;
  [v6 setExcludedActivityTypes:v10];

  if ([v4 canPrint])
  {
    v12 = [(_SFActivityItemProviderCollection *)self printProvider];
    [v5 safari_addObjectUnlessNil:v12];

    -[_SFPrintActivityItemProvider setCanVendPDFRepresentation:](self->_printProvider, "setCanVendPDFRepresentation:", [v4 canShareAsPDF]);
  }

  if ([v4 canShareAsDownload])
  {
    v13 = [(_SFActivityItemProviderCollection *)self downloadProvider];
    if (v13)
    {
      [v5 addObject:v13];
      v14 = [v6 excludedActivityTypes];
      v15 = [v14 setByAddingObject:*MEMORY[0x1E69CDA78]];
      [v6 setExcludedActivityTypes:v15];
    }
  }

  if ([v4 canShareAsWebArchive] && !-[_SFActivityItemProviderCollection displayingDigitalHealthLockoutView](self, "displayingDigitalHealthLockoutView"))
  {
    v16 = [(_SFActivityItemProviderCollection *)self webArchiveProvider];
    [v5 safari_addObjectUnlessNil:v16];
  }

  v17 = [(_SFActivityItemProviderCollection *)self documentProvider];
  [v5 safari_addObjectUnlessNil:v17];

  return v5;
}

@end