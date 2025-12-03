@interface _SFReaderWebProcessPlugInPageController
+ (id)readerPageControllerForContextHandle:(id)handle;
- (OpaqueJSValue)originalArticleFinder;
- (_SFReaderWebProcessPlugInPageController)initWithPlugIn:(id)in contextController:(id)controller;
- (_SFWebProcessPlugInReaderEnabledPageController)originalPageController;
- (id)collectReaderContentFromPrintAndMailingFrame;
- (id)isolatedWorldForNextPageDetection;
- (id)printingMailingFrame;
- (void)_initializeReaderJSControllerForFrame:(id)frame;
- (void)insertSummaryTextPlaceholder;
- (void)loadNewArticle;
- (void)reloadArticle;
- (void)setArticleLocale:(id)locale;
- (void)setArticleSummary:(id)summary withSummaryHeader:(id)header tableOfContentsHeader:(id)contentsHeader readerURLString:(id)string titles:(id)titles paths:(id)paths trailingText:(id)text tableOfContentsType:(int)self0 attribution:(id)self1;
- (void)setConfiguration:(id)configuration;
- (void)setOnDeviceSummaryButtonWithTitle:(id)title;
- (void)setReaderIsActive:(BOOL)active;
- (void)updateSummaryTextVisibility:(BOOL)visibility;
- (void)webProcessPlugInBrowserContextController:(id)controller globalObjectIsAvailableForFrame:(id)frame inScriptWorld:(id)world;
- (void)willDestroyBrowserContextController:(id)controller;
@end

@implementation _SFReaderWebProcessPlugInPageController

- (_SFReaderWebProcessPlugInPageController)initWithPlugIn:(id)in contextController:(id)controller
{
  inCopy = in;
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = _SFReaderWebProcessPlugInPageController;
  v8 = [(WBSWebProcessPlugInPageController *)&v15 initWithPlugIn:inCopy contextController:controllerCopy];
  if (v8)
  {
    v9 = contextHandleToReaderPageController;
    if (!contextHandleToReaderPageController)
    {
      strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
      v11 = contextHandleToReaderPageController;
      contextHandleToReaderPageController = strongToWeakObjectsMapTable;

      v9 = contextHandleToReaderPageController;
    }

    handle = [controllerCopy handle];
    [v9 setObject:v8 forKey:handle];

    v13 = v8;
  }

  return v8;
}

- (void)willDestroyBrowserContextController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_originalPageController);
  [WeakRetained setReaderPageController:0];

  [(WKWebProcessPlugInScriptWorld *)self->_isolatedWorldForNextPageDetection clearWrappers];
  ptr = self->_readerJSController.__ptr_;
  self->_readerJSController.__ptr_ = 0;
  if (ptr)
  {
    (*(*ptr + 8))(ptr);
  }

  v7.receiver = self;
  v7.super_class = _SFReaderWebProcessPlugInPageController;
  [(WBSWebProcessPlugInPageController *)&v7 willDestroyBrowserContextController:controllerCopy];
}

+ (id)readerPageControllerForContextHandle:(id)handle
{
  v3 = [contextHandleToReaderPageController objectForKey:handle];

  return v3;
}

- (OpaqueJSValue)originalArticleFinder
{
  WeakRetained = objc_loadWeakRetained(&self->_originalPageController);
  originalArticleFinder = [WeakRetained originalArticleFinder];

  return originalArticleFinder;
}

- (void)_initializeReaderJSControllerForFrame:(id)frame
{
  frameCopy = frame;
  if (!self->_readerJSController.__ptr_)
  {
    operator new();
  }
}

- (void)loadNewArticle
{
  ptr = self->_readerJSController.__ptr_;
  if (ptr)
  {
    MEMORY[0x1EEE33390](ptr, a2);
  }
}

- (void)reloadArticle
{
  ptr = self->_readerJSController.__ptr_;
  if (ptr)
  {
    MEMORY[0x1EEE33490](ptr, a2);
  }
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  ptr = self->_readerJSController.__ptr_;
  if (ptr)
  {
    SafariShared::ReaderJSController::setConfiguration(ptr, configurationCopy);
  }
}

- (void)setReaderIsActive:(BOOL)active
{
  if (self->_readerJSController.__ptr_)
  {
    MEMORY[0x1EEE333B0]();
  }
}

- (void)setArticleLocale:(id)locale
{
  localeCopy = locale;
  ptr = self->_readerJSController.__ptr_;
  if (ptr)
  {
    SafariShared::ReaderJSController::setArticleLocale(ptr, localeCopy);
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
  if (self->_readerJSController.__ptr_)
  {
    SafariShared::ReaderJSController::setArticleSummary();
  }
}

- (void)setOnDeviceSummaryButtonWithTitle:(id)title
{
  titleCopy = title;
  ptr = self->_readerJSController.__ptr_;
  if (ptr)
  {
    SafariShared::ReaderJSController::setOnDeviceSummaryButtonWithTitle(ptr, titleCopy);
  }
}

- (void)updateSummaryTextVisibility:(BOOL)visibility
{
  if (self->_readerJSController.__ptr_)
  {
    MEMORY[0x1EEE333B8]();
  }
}

- (void)insertSummaryTextPlaceholder
{
  ptr = self->_readerJSController.__ptr_;
  if (ptr)
  {
    MEMORY[0x1EEE333C0](ptr, a2);
  }
}

- (id)isolatedWorldForNextPageDetection
{
  isolatedWorldForNextPageDetection = self->_isolatedWorldForNextPageDetection;
  if (!isolatedWorldForNextPageDetection)
  {
    world = [MEMORY[0x1E6985398] world];
    v5 = self->_isolatedWorldForNextPageDetection;
    self->_isolatedWorldForNextPageDetection = world;

    [(WKWebProcessPlugInScriptWorld *)self->_isolatedWorldForNextPageDetection makeAllShadowRootsOpen];
    [(WKWebProcessPlugInScriptWorld *)self->_isolatedWorldForNextPageDetection disableOverrideBuiltinsBehavior];
    isolatedWorldForNextPageDetection = self->_isolatedWorldForNextPageDetection;
  }

  return isolatedWorldForNextPageDetection;
}

- (id)collectReaderContentFromPrintAndMailingFrame
{
  ptr = self->_readerJSController.__ptr_;
  if (ptr)
  {
    ptr = SafariServices::WebProcessPlugInReaderJSController::contentInPrintingMailingFrame(ptr);
    v2 = vars8;
  }

  return ptr;
}

- (id)printingMailingFrame
{
  ptr = self->_readerJSController.__ptr_;
  if (ptr)
  {
    ptr = SafariServices::WebProcessPlugInReaderJSController::printingMailingFrame(ptr);
    v2 = vars8;
  }

  return ptr;
}

- (void)webProcessPlugInBrowserContextController:(id)controller globalObjectIsAvailableForFrame:(id)frame inScriptWorld:(id)world
{
  frameCopy = frame;
  mainFrame = [(WBSWebProcessPlugInPageController *)self mainFrame];

  if (mainFrame == frameCopy)
  {
    [(_SFReaderWebProcessPlugInPageController *)self _initializeReaderJSControllerForFrame:frameCopy];
  }
}

- (_SFWebProcessPlugInReaderEnabledPageController)originalPageController
{
  WeakRetained = objc_loadWeakRetained(&self->_originalPageController);

  return WeakRetained;
}

@end