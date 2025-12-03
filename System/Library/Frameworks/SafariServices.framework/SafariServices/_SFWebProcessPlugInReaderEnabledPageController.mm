@interface _SFWebProcessPlugInReaderEnabledPageController
- (BOOL)readerHasBeenActivatedRecently;
- (OpaqueJSValue)originalArticleFinder;
- (_SFWebProcessPlugInReaderEnabledPageController)initWithPlugIn:(id)in contextController:(id)controller;
- (id)_appBannerMetaElementInHeaderElement:(id)element;
- (id)_appBannerMetaTagObserverProxy;
- (id)_searchForSmartAppBannerMetaContent;
- (void)_clearReaderControllerInterface;
- (void)_detectAvailabilityAfterDelay:(double)delay loadEvent:(int)event;
- (void)_detectReaderAvailabilityAfterSameDocumentNavigation;
- (void)_setUpReaderActivityListenerProxy;
- (void)_setUpReaderControllerInterface;
- (void)activateFont:(id)font;
- (void)checkReaderAvailability;
- (void)collectArticleContent;
- (void)collectReaderContentForMail;
- (void)collectReadingListItemInfoWithBookmarkID:(id)d;
- (void)didCreateReaderPageContextHandle:(id)handle;
- (void)didDetermineAdditionalTextSamples:(id)samples;
- (void)didDetermineReaderAvailability:(id)availability;
- (void)getReaderArticleTitleWithReply:(id)reply;
- (void)insertSummaryTextPlaceholder;
- (void)loadNewReaderArticle;
- (void)prepareReaderContentForPrinting;
- (void)prepareToTransitionToReader;
- (void)previewReaderImageURLWithReply:(id)reply;
- (void)readerTextWasExtracted:(id)extracted withMetadata:(id)metadata wasDeterminingAvailability:(BOOL)availability;
- (void)setArticleLocale:(id)locale;
- (void)setArticleSummary:(id)summary withSummaryHeader:(id)header tableOfContentsHeader:(id)contentsHeader readerURLString:(id)string titles:(id)titles paths:(id)paths trailingText:(id)text tableOfContentsType:(int)self0 attribution:(id)self1;
- (void)setConfiguration:(id)configuration;
- (void)setConfigurationForTesting:(id)testing;
- (void)setOnDeviceSummaryButtonWithTitle:(id)title;
- (void)setReaderInitialTopScrollOffset:(int64_t)offset configuration:(id)configuration isViewingArchive:(BOOL)archive;
- (void)setReaderIsActive:(BOOL)active;
- (void)updateSummaryTextVisibility:(BOOL)visibility;
- (void)webProcessPlugInBrowserContextController:(id)controller didCommitLoadForFrame:(id)frame;
- (void)webProcessPlugInBrowserContextController:(id)controller didFinishDocumentLoadForFrame:(id)frame;
- (void)webProcessPlugInBrowserContextController:(id)controller didFinishLoadForFrame:(id)frame;
- (void)webProcessPlugInBrowserContextController:(id)controller didSameDocumentNavigation:(int64_t)navigation forFrame:(id)frame;
- (void)webProcessPlugInBrowserContextController:(id)controller didStartProvisionalLoadForFrame:(id)frame;
- (void)webProcessPlugInBrowserContextController:(id)controller globalObjectIsAvailableForFrame:(id)frame inScriptWorld:(id)world;
- (void)webProcessPlugInBrowserContextController:(id)controller renderingProgressDidChange:(unint64_t)change;
- (void)willDestroyBrowserContextController:(id)controller;
@end

@implementation _SFWebProcessPlugInReaderEnabledPageController

- (_SFWebProcessPlugInReaderEnabledPageController)initWithPlugIn:(id)in contextController:(id)controller
{
  inCopy = in;
  controllerCopy = controller;
  v18.receiver = self;
  v18.super_class = _SFWebProcessPlugInReaderEnabledPageController;
  v8 = [(_SFWebProcessPlugInAutoFillPageController *)&v18 initWithPlugIn:inCopy contextController:controllerCopy];
  v9 = v8;
  if (v8)
  {
    [(_SFWebProcessPlugInReaderEnabledPageController *)v8 _setUpReaderControllerInterface];
    v10 = [[SFWebProcessPlugInPageExtensionController alloc] initWithBrowserContextController:controllerCopy];
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

- (void)willDestroyBrowserContextController:(id)controller
{
  controllerCopy = controller;
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
  [(_SFWebProcessPlugInAutoFillPageController *)&v7 willDestroyBrowserContextController:controllerCopy];
}

- (void)didDetermineReaderAvailability:(id)availability
{
  availabilityCopy = availability;
  readerActivityListenerProxy = self->_readerActivityListenerProxy;
  if (!readerActivityListenerProxy)
  {
    [(_SFWebProcessPlugInReaderEnabledPageController *)self _setUpReaderActivityListenerProxy];
    readerActivityListenerProxy = self->_readerActivityListenerProxy;
  }

  [(SFReaderEventsListener *)readerActivityListenerProxy didDetermineReaderAvailability:availabilityCopy];
}

- (void)didDetermineAdditionalTextSamples:(id)samples
{
  samplesCopy = samples;
  readerActivityListenerProxy = self->_readerActivityListenerProxy;
  if (!readerActivityListenerProxy)
  {
    [(_SFWebProcessPlugInReaderEnabledPageController *)self _setUpReaderActivityListenerProxy];
    readerActivityListenerProxy = self->_readerActivityListenerProxy;
  }

  [(SFReaderEventsListener *)readerActivityListenerProxy didDetermineAdditionalTextSamples:samplesCopy];
}

- (void)readerTextWasExtracted:(id)extracted withMetadata:(id)metadata wasDeterminingAvailability:(BOOL)availability
{
  availabilityCopy = availability;
  extractedCopy = extracted;
  metadataCopy = metadata;
  readerActivityListenerProxy = self->_readerActivityListenerProxy;
  if (!readerActivityListenerProxy)
  {
    [(_SFWebProcessPlugInReaderEnabledPageController *)self _setUpReaderActivityListenerProxy];
    readerActivityListenerProxy = self->_readerActivityListenerProxy;
  }

  [(SFReaderEventsListener *)readerActivityListenerProxy readerTextWasExtracted:extractedCopy withMetadata:metadataCopy wasDeterminingAvailabilility:availabilityCopy];
}

- (void)_setUpReaderActivityListenerProxy
{
  browserContextController = [(WBSWebProcessPlugInPageController *)self browserContextController];
  _remoteObjectRegistry = [browserContextController _remoteObjectRegistry];

  v4 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F506EB00];
  v5 = [_remoteObjectRegistry remoteObjectProxyWithInterface:v4];
  readerActivityListenerProxy = self->_readerActivityListenerProxy;
  self->_readerActivityListenerProxy = v5;
}

- (void)_setUpReaderControllerInterface
{
  v3 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F5098000];
  availabilityControllerInterface = self->_availabilityControllerInterface;
  self->_availabilityControllerInterface = v3;

  browserContextController = [(WBSWebProcessPlugInPageController *)self browserContextController];
  _remoteObjectRegistry = [browserContextController _remoteObjectRegistry];
  [_remoteObjectRegistry registerExportedObject:self interface:self->_availabilityControllerInterface];
}

- (void)_clearReaderControllerInterface
{
  if (self->_readerAvailabilityController.__ptr_)
  {
    browserContextController = [(WBSWebProcessPlugInPageController *)self browserContextController];
    _remoteObjectRegistry = [browserContextController _remoteObjectRegistry];

    [_remoteObjectRegistry unregisterExportedObject:self interface:self->_availabilityControllerInterface];
    availabilityControllerInterface = self->_availabilityControllerInterface;
    self->_availabilityControllerInterface = 0;
  }
}

- (void)_detectAvailabilityAfterDelay:(double)delay loadEvent:(int)event
{
  ptr = self->_readerAvailabilityController.__ptr_;
  if ((*(ptr + 104) & 1) == 0)
  {
    v6 = *&event;
    SafariShared::ReaderAvailabilityController::setCanRunAvailabilityDetection(ptr);
    v8 = self->_readerAvailabilityController.__ptr_;
    v9.n128_f64[0] = delay;

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

- (void)setReaderInitialTopScrollOffset:(int64_t)offset configuration:(id)configuration isViewingArchive:(BOOL)archive
{
  self->_cachedReaderTopScrollOffset = offset;
  objc_storeStrong(&self->_initialReaderConfiguration, configuration);
  self->_viewingReadingListArchive = archive;
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  readerPageController = self->_readerPageController;
  if (readerPageController)
  {
    [(_SFReaderWebProcessPlugInPageController *)readerPageController setConfiguration:configurationCopy];
  }
}

- (void)activateFont:(id)font
{
  v9[1] = *MEMORY[0x1E69E9840];
  fontCopy = font;
  v4 = *MEMORY[0x1E6965768];
  v7[0] = *MEMORY[0x1E6965790];
  v7[1] = v4;
  v8[0] = fontCopy;
  v8[1] = MEMORY[0x1E695E118];
  v7[2] = *MEMORY[0x1E6965770];
  v8[2] = MEMORY[0x1E695E118];
  v5 = CTFontDescriptorCreateWithAttributes([MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3]);
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  CTFontDescriptorMatchFontDescriptorsWithProgressHandler(v6, 0, &__block_literal_global_41);
}

- (void)setReaderIsActive:(BOOL)active
{
  readerPageController = self->_readerPageController;
  if (readerPageController)
  {
    [(_SFReaderWebProcessPlugInPageController *)readerPageController setReaderIsActive:active];
  }
}

- (void)setArticleLocale:(id)locale
{
  localeCopy = locale;
  readerPageController = self->_readerPageController;
  if (readerPageController)
  {
    [(_SFReaderWebProcessPlugInPageController *)readerPageController setArticleLocale:localeCopy];
  }
}

- (void)setArticleSummary:(id)summary withSummaryHeader:(id)header tableOfContentsHeader:(id)contentsHeader readerURLString:(id)string titles:(id)titles paths:(id)paths trailingText:(id)text tableOfContentsType:(int)self0 attribution:(id)self1
{
  summaryCopy = summary;
  headerCopy = header;
  contentsHeaderCopy = contentsHeader;
  stringCopy = string;
  titlesCopy = titles;
  pathsCopy = paths;
  textCopy = text;
  attributionCopy = attribution;
  readerPageController = self->_readerPageController;
  if (readerPageController)
  {
    LODWORD(v25) = type;
    [(_SFReaderWebProcessPlugInPageController *)readerPageController setArticleSummary:summaryCopy withSummaryHeader:headerCopy tableOfContentsHeader:contentsHeaderCopy readerURLString:stringCopy titles:titlesCopy paths:pathsCopy trailingText:textCopy tableOfContentsType:v25 attribution:attributionCopy];
  }
}

- (void)previewReaderImageURLWithReply:(id)reply
{
  replyCopy = reply;
  ptr = self->_readerAvailabilityController.__ptr_;
  v7 = replyCopy;
  if (ptr)
  {
    v6 = SafariShared::ReaderAvailabilityController::previewReaderImageURL(ptr);
    v7[2](v7, v6);
  }

  else
  {
    replyCopy[2](replyCopy, 0);
  }
}

- (void)setOnDeviceSummaryButtonWithTitle:(id)title
{
  titleCopy = title;
  readerPageController = self->_readerPageController;
  if (readerPageController)
  {
    [(_SFReaderWebProcessPlugInPageController *)readerPageController setOnDeviceSummaryButtonWithTitle:titleCopy];
  }
}

- (void)getReaderArticleTitleWithReply:(id)reply
{
  replyCopy = reply;
  ptr = self->_readerAvailabilityController.__ptr_;
  v7 = replyCopy;
  if (ptr)
  {
    v6 = (*(*ptr + 16))(ptr);
    v7[2](v7, v6);
  }

  else
  {
    replyCopy[2](replyCopy, 0);
  }
}

- (void)updateSummaryTextVisibility:(BOOL)visibility
{
  readerPageController = self->_readerPageController;
  if (readerPageController)
  {
    [(_SFReaderWebProcessPlugInPageController *)readerPageController updateSummaryTextVisibility:visibility];
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

- (void)didCreateReaderPageContextHandle:(id)handle
{
  v4 = [_SFReaderWebProcessPlugInPageController readerPageControllerForContextHandle:handle];
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

- (void)collectReadingListItemInfoWithBookmarkID:(id)d
{
  dCopy = d;
  v4 = SafariServices::ReaderAvailabilityController::collectReadingListItemInformation(self->_readerAvailabilityController.__ptr_);
  if (v4)
  {
    [(SFReaderEventsListener *)self->_readerActivityListenerProxy didCollectReadingListItemInfo:v4 bookmarkID:dCopy];
  }
}

- (void)collectReaderContentForMail
{
  collectReaderContentFromPrintAndMailingFrame = [(_SFReaderWebProcessPlugInPageController *)self->_readerPageController collectReaderContentFromPrintAndMailingFrame];
  [(SFReaderEventsListener *)self->_readerActivityListenerProxy didCollectReaderContentForMail:?];
}

- (void)prepareReaderContentForPrinting
{
  printingMailingFrame = [(_SFReaderWebProcessPlugInPageController *)self->_readerPageController printingMailingFrame];
  readerActivityListenerProxy = self->_readerActivityListenerProxy;
  v6 = printingMailingFrame;
  handle = [printingMailingFrame handle];
  [(SFReaderEventsListener *)readerActivityListenerProxy didPrepareReaderContentForPrinting:handle];
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

- (void)setConfigurationForTesting:(id)testing
{
  testingCopy = testing;
  ptr = self->_readerAvailabilityController.__ptr_;
  if (ptr)
  {
    SafariServices::ReaderAvailabilityController::setConfigurationForTesting(ptr, testingCopy);
  }
}

- (void)webProcessPlugInBrowserContextController:(id)controller didStartProvisionalLoadForFrame:(id)frame
{
  controllerCopy = controller;
  frameCopy = frame;
  v10.receiver = self;
  v10.super_class = _SFWebProcessPlugInReaderEnabledPageController;
  [(_SFWebProcessPlugInAutoFillPageController *)&v10 webProcessPlugInBrowserContextController:controllerCopy didStartProvisionalLoadForFrame:frameCopy];
  mainFrame = [controllerCopy mainFrame];

  if (mainFrame == frameCopy)
  {
    ptr = self->_readerAvailabilityController.__ptr_;
    if (!ptr)
    {
      operator new();
    }

    SafariShared::ReaderAvailabilityController::setCanRunAvailabilityDetection(ptr);
  }
}

- (void)webProcessPlugInBrowserContextController:(id)controller globalObjectIsAvailableForFrame:(id)frame inScriptWorld:(id)world
{
  controllerCopy = controller;
  frameCopy = frame;
  worldCopy = world;
  mainFrame = [controllerCopy mainFrame];

  if (mainFrame == frameCopy)
  {
    [(SFWebProcessPlugInCertificateWarningController *)self->_certificateWarningController injectCertificateWarningBindingsForFrame:frameCopy inScriptWorld:worldCopy];
  }
}

- (void)webProcessPlugInBrowserContextController:(id)controller didCommitLoadForFrame:(id)frame
{
  controllerCopy = controller;
  frameCopy = frame;
  v10.receiver = self;
  v10.super_class = _SFWebProcessPlugInReaderEnabledPageController;
  [(_SFWebProcessPlugInAutoFillPageController *)&v10 webProcessPlugInBrowserContextController:controllerCopy didCommitLoadForFrame:frameCopy];
  mainFrame = [controllerCopy mainFrame];

  if (mainFrame == frameCopy)
  {
    ptr = self->_readerAvailabilityController.__ptr_;
    if (ptr)
    {
      SafariServices::ReaderAvailabilityController::clearAvailability(ptr);
    }

    [(SFWebProcessPlugInPageExtensionController *)self->_extensionController clearExtensionScriptWorlds];
  }
}

- (void)webProcessPlugInBrowserContextController:(id)controller didSameDocumentNavigation:(int64_t)navigation forFrame:(id)frame
{
  controllerCopy = controller;
  frameCopy = frame;
  v12.receiver = self;
  v12.super_class = _SFWebProcessPlugInReaderEnabledPageController;
  [(_SFWebProcessPlugInAutoFillPageController *)&v12 webProcessPlugInBrowserContextController:controllerCopy didSameDocumentNavigation:navigation forFrame:frameCopy];
  mainFrame = [controllerCopy mainFrame];

  if (mainFrame == frameCopy)
  {
    ptr = self->_readerAvailabilityController.__ptr_;
    if (ptr)
    {
      SafariServices::ReaderAvailabilityController::clearAvailability(ptr);
      [(_SFWebProcessPlugInReaderEnabledPageController *)self _detectReaderAvailabilityAfterSameDocumentNavigation];
    }
  }
}

- (void)webProcessPlugInBrowserContextController:(id)controller didFinishDocumentLoadForFrame:(id)frame
{
  controllerCopy = controller;
  frameCopy = frame;
  mainFrame = [controllerCopy mainFrame];

  if (mainFrame == frameCopy && self->_readerAvailabilityController.__ptr_)
  {
    if ([(_SFWebProcessPlugInReaderEnabledPageController *)self readerHasBeenActivatedRecently])
    {
      [(_SFWebProcessPlugInReaderEnabledPageController *)self _detectAvailabilityAfterDelay:1 loadEvent:0.1];
    }

    SafariShared::ReaderAvailabilityController::didFinishDocumentLoad(self->_readerAvailabilityController.__ptr_);
  }
}

- (void)webProcessPlugInBrowserContextController:(id)controller didFinishLoadForFrame:(id)frame
{
  controllerCopy = controller;
  frameCopy = frame;
  mainFrame = [controllerCopy mainFrame];

  if (mainFrame == frameCopy)
  {
    if (self->_readerAvailabilityController.__ptr_)
    {
      [(_SFWebProcessPlugInReaderEnabledPageController *)self _detectAvailabilityAfterDelay:2 loadEvent:0.1];
      SafariShared::ReaderAvailabilityController::didFinishLoad(self->_readerAvailabilityController.__ptr_);
    }

    _searchForSmartAppBannerMetaContent = [(_SFWebProcessPlugInReaderEnabledPageController *)self _searchForSmartAppBannerMetaContent];
    if (_searchForSmartAppBannerMetaContent)
    {
      _appBannerMetaTagObserverProxy = [(_SFWebProcessPlugInReaderEnabledPageController *)self _appBannerMetaTagObserverProxy];
      [_appBannerMetaTagObserverProxy didFindAppBannerWithContent:_searchForSmartAppBannerMetaContent];
    }
  }
}

- (BOOL)readerHasBeenActivatedRecently
{
  if (!self->_readerAvailabilityController.__ptr_)
  {
    return 0;
  }

  webProcessPlugIn = [(WBSWebProcessPlugInPageController *)self webProcessPlugIn];
  plugInController = [webProcessPlugIn plugInController];
  parameters = [plugInController parameters];
  v5 = [parameters valueForKey:*MEMORY[0x1E69C9570]];

  HasBeenActivatedRecently = SafariShared::ReaderAvailabilityController::readerHasBeenActivatedRecently(v5, v6);
  return HasBeenActivatedRecently;
}

- (void)webProcessPlugInBrowserContextController:(id)controller renderingProgressDidChange:(unint64_t)change
{
  changeCopy = change;
  controllerCopy = controller;
  if ((changeCopy & 0x100) != 0 && self->_readerAvailabilityController.__ptr_ && [(_SFWebProcessPlugInReaderEnabledPageController *)self readerHasBeenActivatedRecently])
  {
    [(_SFWebProcessPlugInReaderEnabledPageController *)self _detectAvailabilityAfterDelay:0 loadEvent:1.0];
  }
}

- (id)_appBannerMetaTagObserverProxy
{
  appBannerObserverProxy = self->_appBannerObserverProxy;
  if (!appBannerObserverProxy)
  {
    browserContextController = [(WBSWebProcessPlugInPageController *)self browserContextController];
    _remoteObjectRegistry = [browserContextController _remoteObjectRegistry];

    v6 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F50A8848];
    v7 = [_remoteObjectRegistry remoteObjectProxyWithInterface:v6];
    v8 = self->_appBannerObserverProxy;
    self->_appBannerObserverProxy = v7;

    appBannerObserverProxy = self->_appBannerObserverProxy;
  }

  return appBannerObserverProxy;
}

- (id)_appBannerMetaElementInHeaderElement:(id)element
{
  firstChild = [element firstChild];
  if (!firstChild)
  {
    nextSibling = 0;
    goto LABEL_11;
  }

  v4 = firstChild;
  while (1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

LABEL_7:
    nextSibling = [v4 nextSibling];

    v4 = nextSibling;
    if (!nextSibling)
    {
      goto LABEL_11;
    }
  }

  nextSibling = v4;
  tagName = [nextSibling tagName];
  v7 = [tagName caseInsensitiveCompare:@"META"];

  if (v7 || ([nextSibling getAttribute:@"name"], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "caseInsensitiveCompare:", @"apple-itunes-app"), v8, v9))
  {

    goto LABEL_7;
  }

LABEL_11:

  return nextSibling;
}

- (id)_searchForSmartAppBannerMetaContent
{
  browserContextController = [(WBSWebProcessPlugInPageController *)self browserContextController];
  mainFrameDocument = [browserContextController mainFrameDocument];

  body = [mainFrameDocument body];
  parentNode = [body parentNode];
  firstChild = [parentNode firstChild];

  if (!firstChild)
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
    nextSibling = [firstChild nextSibling];

    firstChild = nextSibling;
    if (!nextSibling)
    {
      goto LABEL_6;
    }
  }

  v8 = firstChild;
  tagName = [v8 tagName];
  v10 = [tagName caseInsensitiveCompare:@"HEAD"];

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