@interface _SFActivityItemProviderCollection
- (_SFActivityItemProvider)standaloneImageProvider;
- (_SFActivityItemProvider)webArchiveProvider;
- (_SFActivityItemProviderCollection)initWithWebView:(id)view;
- (id)activityItemProvidersWithCustomizationController:(id)controller;
@end

@implementation _SFActivityItemProviderCollection

- (_SFActivityItemProviderCollection)initWithWebView:(id)view
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = _SFActivityItemProviderCollection;
  v6 = [(_SFActivityItemProviderCollection *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_webView, view);
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

- (id)activityItemProvidersWithCustomizationController:(id)controller
{
  controllerCopy = controller;
  array = [MEMORY[0x1E695DF70] array];
  if ([controllerCopy canShareAsLink])
  {
    linkProvider = [(_SFActivityItemProviderCollection *)self linkProvider];
    [array safari_addObjectUnlessNil:linkProvider];
    javaScriptExtensionProvider = [(_SFActivityItemProviderCollection *)self javaScriptExtensionProvider];
    [array safari_addObjectUnlessNil:javaScriptExtensionProvider];
  }

  else
  {
    linkProvider = 0;
  }

  standaloneImageProvider = [(_SFActivityItemProviderCollection *)self standaloneImageProvider];
  if ([controllerCopy canShareAsStandaloneImage] && standaloneImageProvider)
  {
    [array addObject:standaloneImageProvider];
    excludedActivityTypes = [linkProvider excludedActivityTypes];
    v10 = [excludedActivityTypes setByAddingObject:*MEMORY[0x1E69CDAB0]];
  }

  else
  {
    excludedActivityTypes = [linkProvider excludedActivityTypes];
    v10 = [excludedActivityTypes safari_setByRemovingObject:*MEMORY[0x1E69CDAB0]];
  }

  v11 = v10;
  [linkProvider setExcludedActivityTypes:v10];

  if ([controllerCopy canPrint])
  {
    printProvider = [(_SFActivityItemProviderCollection *)self printProvider];
    [array safari_addObjectUnlessNil:printProvider];

    -[_SFPrintActivityItemProvider setCanVendPDFRepresentation:](self->_printProvider, "setCanVendPDFRepresentation:", [controllerCopy canShareAsPDF]);
  }

  if ([controllerCopy canShareAsDownload])
  {
    downloadProvider = [(_SFActivityItemProviderCollection *)self downloadProvider];
    if (downloadProvider)
    {
      [array addObject:downloadProvider];
      excludedActivityTypes2 = [linkProvider excludedActivityTypes];
      v15 = [excludedActivityTypes2 setByAddingObject:*MEMORY[0x1E69CDA78]];
      [linkProvider setExcludedActivityTypes:v15];
    }
  }

  if ([controllerCopy canShareAsWebArchive] && !-[_SFActivityItemProviderCollection displayingDigitalHealthLockoutView](self, "displayingDigitalHealthLockoutView"))
  {
    webArchiveProvider = [(_SFActivityItemProviderCollection *)self webArchiveProvider];
    [array safari_addObjectUnlessNil:webArchiveProvider];
  }

  documentProvider = [(_SFActivityItemProviderCollection *)self documentProvider];
  [array safari_addObjectUnlessNil:documentProvider];

  return array;
}

@end