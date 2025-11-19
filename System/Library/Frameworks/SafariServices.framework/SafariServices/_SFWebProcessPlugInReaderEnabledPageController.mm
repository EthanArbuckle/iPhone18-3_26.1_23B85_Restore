@interface _SFWebProcessPlugInReaderEnabledPageController
- (BOOL)readerHasBeenActivatedRecently;
- (OpaqueJSValue)originalArticleFinder;
- (_SFWebProcessPlugInReaderEnabledPageController)initWithPlugIn:(id)a3 contextController:(id)a4;
- (id)_appBannerMetaElementInHeaderElement:(id)a3;
- (id)_appBannerMetaTagObserverProxy;
- (id)_searchForSmartAppBannerMetaContent;
- (void)_clearReaderControllerInterface;
- (void)_detectAvailabilityAfterDelay:(double)a3 loadEvent:(int)a4;
- (void)_detectReaderAvailabilityAfterSameDocumentNavigation;
- (void)_setUpReaderActivityListenerProxy;
- (void)_setUpReaderControllerInterface;
- (void)activateFont:(id)a3;
- (void)checkReaderAvailability;
- (void)collectArticleContent;
- (void)collectReaderContentForMail;
- (void)collectReadingListItemInfoWithBookmarkID:(id)a3;
- (void)didCreateReaderPageContextHandle:(id)a3;
- (void)didDetermineAdditionalTextSamples:(id)a3;
- (void)didDetermineReaderAvailability:(id)a3;
- (void)getReaderArticleTitleWithReply:(id)a3;
- (void)insertSummaryTextPlaceholder;
- (void)loadNewReaderArticle;
- (void)prepareReaderContentForPrinting;
- (void)prepareToTransitionToReader;
- (void)previewReaderImageURLWithReply:(id)a3;
- (void)readerTextWasExtracted:(id)a3 withMetadata:(id)a4 wasDeterminingAvailability:(BOOL)a5;
- (void)setArticleLocale:(id)a3;
- (void)setArticleSummary:(id)a3 withSummaryHeader:(id)a4 tableOfContentsHeader:(id)a5 readerURLString:(id)a6 titles:(id)a7 paths:(id)a8 trailingText:(id)a9 tableOfContentsType:(int)a10 attribution:(id)a11;
- (void)setConfiguration:(id)a3;
- (void)setConfigurationForTesting:(id)a3;
- (void)setOnDeviceSummaryButtonWithTitle:(id)a3;
- (void)setReaderInitialTopScrollOffset:(int64_t)a3 configuration:(id)a4 isViewingArchive:(BOOL)a5;
- (void)setReaderIsActive:(BOOL)a3;
- (void)updateSummaryTextVisibility:(BOOL)a3;
- (void)webProcessPlugInBrowserContextController:(id)a3 didCommitLoadForFrame:(id)a4;
- (void)webProcessPlugInBrowserContextController:(id)a3 didFinishDocumentLoadForFrame:(id)a4;
- (void)webProcessPlugInBrowserContextController:(id)a3 didFinishLoadForFrame:(id)a4;
- (void)webProcessPlugInBrowserContextController:(id)a3 didSameDocumentNavigation:(int64_t)a4 forFrame:(id)a5;
- (void)webProcessPlugInBrowserContextController:(id)a3 didStartProvisionalLoadForFrame:(id)a4;
- (void)webProcessPlugInBrowserContextController:(id)a3 globalObjectIsAvailableForFrame:(id)a4 inScriptWorld:(id)a5;
- (void)webProcessPlugInBrowserContextController:(id)a3 renderingProgressDidChange:(unint64_t)a4;
- (void)willDestroyBrowserContextController:(id)a3;
@end

@implementation _SFWebProcessPlugInReaderEnabledPageController

- (_SFWebProcessPlugInReaderEnabledPageController)initWithPlugIn:(id)a3 contextController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = _SFWebProcessPlugInReaderEnabledPageController;
  v8 = [(_SFWebProcessPlugInAutoFillPageController *)&v18 initWithPlugIn:v6 contextController:v7];
  v9 = v8;
  if (v8)
  {
    [(_SFWebProcessPlugInReaderEnabledPageController *)v8 _setUpReaderControllerInterface];
    v10 = [[SFWebProcessPlugInPageExtensionController alloc] initWithBrowserContextController:v7];
    extensionController = v9->_extensionController;
    v9->_extensionController = v10;

    v12 = [[SFWebProcessPlugInCertificateWarningController alloc] initWithPageController:v9];
    certificateWarningController = v9->_certificateWarningController;
    v9->_certificateWarningController = v12;

    v14 = [[_SFWebProcessSharingLinkExtractor alloc] initWithPageController:v9];
    sharingLinkExtractor = v9->_sharingLinkExtractor;
    v9->_sharingLinkExtractor = v14;

    v16 = v9;
  }

  return v9;
}

- (void)willDestroyBrowserContextController:(id)a3
{
  v4 = a3;
  [(_SFWebProcessPlugInReaderEnabledPageController *)self _clearReaderControllerInterface];
  ptr = self->_readerAvailabilityController.__ptr_;
  self->_readerAvailabilityController.__ptr_ = 0;
  if (ptr)
  {
    (*(*ptr + 8))(ptr);
  }

  [(_SFWebProcessPlugInReaderEnabledPageController *)self setReaderPageController:0];
  extensionController = self->_extensionController;
  self->_extensionController = 0;

  v7.receiver = self;
  v7.super_class = _SFWebProcessPlugInReaderEnabledPageController;
  [(_SFWebProcessPlugInAutoFillPageController *)&v7 willDestroyBrowserContextController:v4];
}

- (void)didDetermineReaderAvailability:(id)a3
{
  v5 = a3;
  readerActivityListenerProxy = self->_readerActivityListenerProxy;
  if (!readerActivityListenerProxy)
  {
    [(_SFWebProcessPlugInReaderEnabledPageController *)self _setUpReaderActivityListenerProxy];
    readerActivityListenerProxy = self->_readerActivityListenerProxy;
  }

  [(SFReaderEventsListener *)readerActivityListenerProxy didDetermineReaderAvailability:v5];
}

- (void)didDetermineAdditionalTextSamples:(id)a3
{
  v5 = a3;
  readerActivityListenerProxy = self->_readerActivityListenerProxy;
  if (!readerActivityListenerProxy)
  {
    [(_SFWebProcessPlugInReaderEnabledPageController *)self _setUpReaderActivityListenerProxy];
    readerActivityListenerProxy = self->_readerActivityListenerProxy;
  }

  [(SFReaderEventsListener *)readerActivityListenerProxy didDetermineAdditionalTextSamples:v5];
}

- (void)readerTextWasExtracted:(id)a3 withMetadata:(id)a4 wasDeterminingAvailability:(BOOL)a5
{
  v5 = a5;
  v10 = a3;
  v8 = a4;
  readerActivityListenerProxy = self->_readerActivityListenerProxy;
  if (!readerActivityListenerProxy)
  {
    [(_SFWebProcessPlugInReaderEnabledPageController *)self _setUpReaderActivityListenerProxy];
    readerActivityListenerProxy = self->_readerActivityListenerProxy;
  }

  [(SFReaderEventsListener *)readerActivityListenerProxy readerTextWasExtracted:v10 withMetadata:v8 wasDeterminingAvailabilility:v5];
}

- (void)_setUpReaderActivityListenerProxy
{
  v3 = [(WBSWebProcessPlugInPageController *)self browserContextController];
  v7 = [v3 _remoteObjectRegistry];

  v4 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F506EB00];
  v5 = [v7 remoteObjectProxyWithInterface:v4];
  readerActivityListenerProxy = self->_readerActivityListenerProxy;
  self->_readerActivityListenerProxy = v5;
}

- (void)_setUpReaderControllerInterface
{
  v3 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F5098000];
  availabilityControllerInterface = self->_availabilityControllerInterface;
  self->_availabilityControllerInterface = v3;

  v6 = [(WBSWebProcessPlugInPageController *)self browserContextController];
  v5 = [v6 _remoteObjectRegistry];
  [v5 registerExportedObject:self interface:self->_availabilityControllerInterface];
}

- (void)_clearReaderControllerInterface
{
  if (self->_readerAvailabilityController.__ptr_)
  {
    v3 = [(WBSWebProcessPlugInPageController *)self browserContextController];
    v5 = [v3 _remoteObjectRegistry];

    [v5 unregisterExportedObject:self interface:self->_availabilityControllerInterface];
    availabilityControllerInterface = self->_availabilityControllerInterface;
    self->_availabilityControllerInterface = 0;
  }
}

- (void)_detectAvailabilityAfterDelay:(double)a3 loadEvent:(int)a4
{
  ptr = self->_readerAvailabilityController.__ptr_;
  if ((*(ptr + 104) & 1) == 0)
  {
    v6 = *&a4;
    SafariShared::ReaderAvailabilityController::setCanRunAvailabilityDetection(ptr);
    v8 = self->_readerAvailabilityController.__ptr_;
    v9.n128_f64[0] = a3;

    MEMORY[0x1EEE33458](v8, v6, v9);
  }
}

- (void)_detectReaderAvailabilityAfterSameDocumentNavigation
{
  ptr = self->_readerAvailabilityController.__ptr_;
  if ((*(ptr + 104) & 1) == 0)
  {
    SafariShared::ReaderAvailabilityController::setCanRunAvailabilityDetection(ptr);
    v4 = self->_readerAvailabilityController.__ptr_;

    MEMORY[0x1EEE33478](v4);
  }
}

- (OpaqueJSValue)originalArticleFinder
{
  result = self->_readerAvailabilityController.__ptr_;
  if (result)
  {
    return MEMORY[0x1EEE33440](result, a2);
  }

  return result;
}

- (void)setReaderInitialTopScrollOffset:(int64_t)a3 configuration:(id)a4 isViewingArchive:(BOOL)a5
{
  self->_cachedReaderTopScrollOffset = a3;
  objc_storeStrong(&self->_initialReaderConfiguration, a4);
  self->_viewingReadingListArchive = a5;
}

- (void)setConfiguration:(id)a3
{
  v5 = a3;
  readerPageController = self->_readerPageController;
  if (readerPageController)
  {
    [(_SFReaderWebProcessPlugInPageController *)readerPageController setConfiguration:v5];
  }
}

- (void)activateFont:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = *MEMORY[0x1E6965768];
  v7[0] = *MEMORY[0x1E6965790];
  v7[1] = v4;
  v8[0] = v3;
  v8[1] = MEMORY[0x1E695E118];
  v7[2] = *MEMORY[0x1E6965770];
  v8[2] = MEMORY[0x1E695E118];
  v5 = CTFontDescriptorCreateWithAttributes([MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3]);
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  CTFontDescriptorMatchFontDescriptorsWithProgressHandler(v6, 0, &__block_literal_global_41);
}

- (void)setReaderIsActive:(BOOL)a3
{
  readerPageController = self->_readerPageController;
  if (readerPageController)
  {
    [(_SFReaderWebProcessPlugInPageController *)readerPageController setReaderIsActive:a3];
  }
}

- (void)setArticleLocale:(id)a3
{
  v5 = a3;
  readerPageController = self->_readerPageController;
  if (readerPageController)
  {
    [(_SFReaderWebProcessPlugInPageController *)readerPageController setArticleLocale:v5];
  }
}

- (void)setArticleSummary:(id)a3 withSummaryHeader:(id)a4 tableOfContentsHeader:(id)a5 readerURLString:(id)a6 titles:(id)a7 paths:(id)a8 trailingText:(id)a9 tableOfContentsType:(int)a10 attribution:(id)a11
{
  v26 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a11;
  readerPageController = self->_readerPageController;
  if (readerPageController)
  {
    LODWORD(v25) = a10;
    [(_SFReaderWebProcessPlugInPageController *)readerPageController setArticleSummary:v26 withSummaryHeader:v17 tableOfContentsHeader:v18 readerURLString:v19 titles:v20 paths:v21 trailingText:v22 tableOfContentsType:v25 attribution:v23];
  }
}

- (void)previewReaderImageURLWithReply:(id)a3
{
  v4 = a3;
  ptr = self->_readerAvailabilityController.__ptr_;
  v7 = v4;
  if (ptr)
  {
    v6 = SafariShared::ReaderAvailabilityController::previewReaderImageURL(ptr);
    v7[2](v7, v6);
  }

  else
  {
    v4[2](v4, 0);
  }
}

- (void)setOnDeviceSummaryButtonWithTitle:(id)a3
{
  v5 = a3;
  readerPageController = self->_readerPageController;
  if (readerPageController)
  {
    [(_SFReaderWebProcessPlugInPageController *)readerPageController setOnDeviceSummaryButtonWithTitle:v5];
  }
}

- (void)getReaderArticleTitleWithReply:(id)a3
{
  v4 = a3;
  ptr = self->_readerAvailabilityController.__ptr_;
  v7 = v4;
  if (ptr)
  {
    v6 = (*(*ptr + 16))(ptr);
    v7[2](v7, v6);
  }

  else
  {
    v4[2](v4, 0);
  }
}

- (void)updateSummaryTextVisibility:(BOOL)a3
{
  readerPageController = self->_readerPageController;
  if (readerPageController)
  {
    [(_SFReaderWebProcessPlugInPageController *)readerPageController updateSummaryTextVisibility:a3];
  }
}

- (void)insertSummaryTextPlaceholder
{
  readerPageController = self->_readerPageController;
  if (readerPageController)
  {
    [(_SFReaderWebProcessPlugInPageController *)readerPageController insertSummaryTextPlaceholder];
  }
}

- (void)checkReaderAvailability
{
  ptr = self->_readerAvailabilityController.__ptr_;
  if (ptr)
  {
    v4 = (*(*ptr + 136))(ptr, a2);
    v5 = objc_alloc_init(MEMORY[0x1E69C8FF8]);
    [v5 setReaderAvailable:v4];
    [(SFReaderEventsListener *)self->_readerActivityListenerProxy didDetermineReaderAvailabilityForDynamicCheck:v5];
  }
}

- (void)prepareToTransitionToReader
{
  ptr = self->_readerAvailabilityController.__ptr_;
  if (ptr)
  {
    MEMORY[0x1EEE33450](ptr, a2);
  }
}

- (void)didCreateReaderPageContextHandle:(id)a3
{
  v4 = [_SFReaderWebProcessPlugInPageController readerPageControllerForContextHandle:a3];
  if (v4)
  {
    [(_SFReaderWebProcessPlugInPageController *)self->_readerPageController setOriginalPageController:0];
    [v4 setOriginalPageController:self];
    [(_SFWebProcessPlugInReaderEnabledPageController *)self setReaderPageController:v4];
  }
}

- (void)loadNewReaderArticle
{
  if (self->_readerPageController)
  {
    [(_SFWebProcessPlugInReaderEnabledPageController *)self prepareToTransitionToReader];
    readerPageController = self->_readerPageController;

    [(_SFReaderWebProcessPlugInPageController *)readerPageController loadNewArticle];
  }
}

- (void)collectReadingListItemInfoWithBookmarkID:(id)a3
{
  v5 = a3;
  v4 = SafariServices::ReaderAvailabilityController::collectReadingListItemInformation(self->_readerAvailabilityController.__ptr_);
  if (v4)
  {
    [(SFReaderEventsListener *)self->_readerActivityListenerProxy didCollectReadingListItemInfo:v4 bookmarkID:v5];
  }
}

- (void)collectReaderContentForMail
{
  v3 = [(_SFReaderWebProcessPlugInPageController *)self->_readerPageController collectReaderContentFromPrintAndMailingFrame];
  [(SFReaderEventsListener *)self->_readerActivityListenerProxy didCollectReaderContentForMail:?];
}

- (void)prepareReaderContentForPrinting
{
  v3 = [(_SFReaderWebProcessPlugInPageController *)self->_readerPageController printingMailingFrame];
  readerActivityListenerProxy = self->_readerActivityListenerProxy;
  v6 = v3;
  v5 = [v3 handle];
  [(SFReaderEventsListener *)readerActivityListenerProxy didPrepareReaderContentForPrinting:v5];
}

- (void)collectArticleContent
{
  v4 = SafariServices::ReaderAvailabilityController::articleContent(self->_readerAvailabilityController.__ptr_);
  readerActivityListenerProxy = self->_readerActivityListenerProxy;
  if (!readerActivityListenerProxy)
  {
    [(_SFWebProcessPlugInReaderEnabledPageController *)self _setUpReaderActivityListenerProxy];
    readerActivityListenerProxy = self->_readerActivityListenerProxy;
  }

  [(SFReaderEventsListener *)readerActivityListenerProxy didCollectArticleContent:v4];
}

- (void)setConfigurationForTesting:(id)a3
{
  v5 = a3;
  ptr = self->_readerAvailabilityController.__ptr_;
  if (ptr)
  {
    SafariServices::ReaderAvailabilityController::setConfigurationForTesting(ptr, v5);
  }
}

- (void)webProcessPlugInBrowserContextController:(id)a3 didStartProvisionalLoadForFrame:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10.receiver = self;
  v10.super_class = _SFWebProcessPlugInReaderEnabledPageController;
  [(_SFWebProcessPlugInAutoFillPageController *)&v10 webProcessPlugInBrowserContextController:v6 didStartProvisionalLoadForFrame:v7];
  v8 = [v6 mainFrame];

  if (v8 == v7)
  {
    ptr = self->_readerAvailabilityController.__ptr_;
    if (!ptr)
    {
      operator new();
    }

    SafariShared::ReaderAvailabilityController::setCanRunAvailabilityDetection(ptr);
  }
}

- (void)webProcessPlugInBrowserContextController:(id)a3 globalObjectIsAvailableForFrame:(id)a4 inScriptWorld:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v11 mainFrame];

  if (v10 == v8)
  {
    [(SFWebProcessPlugInCertificateWarningController *)self->_certificateWarningController injectCertificateWarningBindingsForFrame:v8 inScriptWorld:v9];
  }
}

- (void)webProcessPlugInBrowserContextController:(id)a3 didCommitLoadForFrame:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10.receiver = self;
  v10.super_class = _SFWebProcessPlugInReaderEnabledPageController;
  [(_SFWebProcessPlugInAutoFillPageController *)&v10 webProcessPlugInBrowserContextController:v6 didCommitLoadForFrame:v7];
  v8 = [v6 mainFrame];

  if (v8 == v7)
  {
    ptr = self->_readerAvailabilityController.__ptr_;
    if (ptr)
    {
      SafariServices::ReaderAvailabilityController::clearAvailability(ptr);
    }

    [(SFWebProcessPlugInPageExtensionController *)self->_extensionController clearExtensionScriptWorlds];
  }
}

- (void)webProcessPlugInBrowserContextController:(id)a3 didSameDocumentNavigation:(int64_t)a4 forFrame:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12.receiver = self;
  v12.super_class = _SFWebProcessPlugInReaderEnabledPageController;
  [(_SFWebProcessPlugInAutoFillPageController *)&v12 webProcessPlugInBrowserContextController:v8 didSameDocumentNavigation:a4 forFrame:v9];
  v10 = [v8 mainFrame];

  if (v10 == v9)
  {
    ptr = self->_readerAvailabilityController.__ptr_;
    if (ptr)
    {
      SafariServices::ReaderAvailabilityController::clearAvailability(ptr);
      [(_SFWebProcessPlugInReaderEnabledPageController *)self _detectReaderAvailabilityAfterSameDocumentNavigation];
    }
  }
}

- (void)webProcessPlugInBrowserContextController:(id)a3 didFinishDocumentLoadForFrame:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [v8 mainFrame];

  if (v7 == v6 && self->_readerAvailabilityController.__ptr_)
  {
    if ([(_SFWebProcessPlugInReaderEnabledPageController *)self readerHasBeenActivatedRecently])
    {
      [(_SFWebProcessPlugInReaderEnabledPageController *)self _detectAvailabilityAfterDelay:1 loadEvent:0.1];
    }

    SafariShared::ReaderAvailabilityController::didFinishDocumentLoad(self->_readerAvailabilityController.__ptr_);
  }
}

- (void)webProcessPlugInBrowserContextController:(id)a3 didFinishLoadForFrame:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [v10 mainFrame];

  if (v7 == v6)
  {
    if (self->_readerAvailabilityController.__ptr_)
    {
      [(_SFWebProcessPlugInReaderEnabledPageController *)self _detectAvailabilityAfterDelay:2 loadEvent:0.1];
      SafariShared::ReaderAvailabilityController::didFinishLoad(self->_readerAvailabilityController.__ptr_);
    }

    v8 = [(_SFWebProcessPlugInReaderEnabledPageController *)self _searchForSmartAppBannerMetaContent];
    if (v8)
    {
      v9 = [(_SFWebProcessPlugInReaderEnabledPageController *)self _appBannerMetaTagObserverProxy];
      [v9 didFindAppBannerWithContent:v8];
    }
  }
}

- (BOOL)readerHasBeenActivatedRecently
{
  if (!self->_readerAvailabilityController.__ptr_)
  {
    return 0;
  }

  v2 = [(WBSWebProcessPlugInPageController *)self webProcessPlugIn];
  v3 = [v2 plugInController];
  v4 = [v3 parameters];
  v5 = [v4 valueForKey:*MEMORY[0x1E69C9570]];

  HasBeenActivatedRecently = SafariShared::ReaderAvailabilityController::readerHasBeenActivatedRecently(v5, v6);
  return HasBeenActivatedRecently;
}

- (void)webProcessPlugInBrowserContextController:(id)a3 renderingProgressDidChange:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  if ((v4 & 0x100) != 0 && self->_readerAvailabilityController.__ptr_ && [(_SFWebProcessPlugInReaderEnabledPageController *)self readerHasBeenActivatedRecently])
  {
    [(_SFWebProcessPlugInReaderEnabledPageController *)self _detectAvailabilityAfterDelay:0 loadEvent:1.0];
  }
}

- (id)_appBannerMetaTagObserverProxy
{
  appBannerObserverProxy = self->_appBannerObserverProxy;
  if (!appBannerObserverProxy)
  {
    v4 = [(WBSWebProcessPlugInPageController *)self browserContextController];
    v5 = [v4 _remoteObjectRegistry];

    v6 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F50A8848];
    v7 = [v5 remoteObjectProxyWithInterface:v6];
    v8 = self->_appBannerObserverProxy;
    self->_appBannerObserverProxy = v7;

    appBannerObserverProxy = self->_appBannerObserverProxy;
  }

  return appBannerObserverProxy;
}

- (id)_appBannerMetaElementInHeaderElement:(id)a3
{
  v3 = [a3 firstChild];
  if (!v3)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v4 = v3;
  while (1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

LABEL_7:
    v5 = [v4 nextSibling];

    v4 = v5;
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  v5 = v4;
  v6 = [v5 tagName];
  v7 = [v6 caseInsensitiveCompare:@"META"];

  if (v7 || ([v5 getAttribute:@"name"], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "caseInsensitiveCompare:", @"apple-itunes-app"), v8, v9))
  {

    goto LABEL_7;
  }

LABEL_11:

  return v5;
}

- (id)_searchForSmartAppBannerMetaContent
{
  v3 = [(WBSWebProcessPlugInPageController *)self browserContextController];
  v4 = [v3 mainFrameDocument];

  v5 = [v4 body];
  v6 = [v5 parentNode];
  v7 = [v6 firstChild];

  if (!v7)
  {
LABEL_6:
    v12 = 0;
    goto LABEL_8;
  }

  while (1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

LABEL_5:
    v11 = [v7 nextSibling];

    v7 = v11;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v8 = v7;
  v9 = [v8 tagName];
  v10 = [v9 caseInsensitiveCompare:@"HEAD"];

  if (v10)
  {

    goto LABEL_5;
  }

  v13 = [(_SFWebProcessPlugInReaderEnabledPageController *)self _appBannerMetaElementInHeaderElement:v8];
  v12 = [v13 getAttribute:@"content"];

LABEL_8:

  return v12;
}

@end