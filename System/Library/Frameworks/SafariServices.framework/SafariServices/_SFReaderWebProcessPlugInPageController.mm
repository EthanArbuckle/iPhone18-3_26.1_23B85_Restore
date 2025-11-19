@interface _SFReaderWebProcessPlugInPageController
+ (id)readerPageControllerForContextHandle:(id)a3;
- (OpaqueJSValue)originalArticleFinder;
- (_SFReaderWebProcessPlugInPageController)initWithPlugIn:(id)a3 contextController:(id)a4;
- (_SFWebProcessPlugInReaderEnabledPageController)originalPageController;
- (id)collectReaderContentFromPrintAndMailingFrame;
- (id)isolatedWorldForNextPageDetection;
- (id)printingMailingFrame;
- (void)_initializeReaderJSControllerForFrame:(id)a3;
- (void)insertSummaryTextPlaceholder;
- (void)loadNewArticle;
- (void)reloadArticle;
- (void)setArticleLocale:(id)a3;
- (void)setArticleSummary:(id)a3 withSummaryHeader:(id)a4 tableOfContentsHeader:(id)a5 readerURLString:(id)a6 titles:(id)a7 paths:(id)a8 trailingText:(id)a9 tableOfContentsType:(int)a10 attribution:(id)a11;
- (void)setConfiguration:(id)a3;
- (void)setOnDeviceSummaryButtonWithTitle:(id)a3;
- (void)setReaderIsActive:(BOOL)a3;
- (void)updateSummaryTextVisibility:(BOOL)a3;
- (void)webProcessPlugInBrowserContextController:(id)a3 globalObjectIsAvailableForFrame:(id)a4 inScriptWorld:(id)a5;
- (void)willDestroyBrowserContextController:(id)a3;
@end

@implementation _SFReaderWebProcessPlugInPageController

- (_SFReaderWebProcessPlugInPageController)initWithPlugIn:(id)a3 contextController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = _SFReaderWebProcessPlugInPageController;
  v8 = [(WBSWebProcessPlugInPageController *)&v15 initWithPlugIn:v6 contextController:v7];
  if (v8)
  {
    v9 = contextHandleToReaderPageController;
    if (!contextHandleToReaderPageController)
    {
      v10 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
      v11 = contextHandleToReaderPageController;
      contextHandleToReaderPageController = v10;

      v9 = contextHandleToReaderPageController;
    }

    v12 = [v7 handle];
    [v9 setObject:v8 forKey:v12];

    v13 = v8;
  }

  return v8;
}

- (void)willDestroyBrowserContextController:(id)a3
{
  v4 = a3;
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
  [(WBSWebProcessPlugInPageController *)&v7 willDestroyBrowserContextController:v4];
}

+ (id)readerPageControllerForContextHandle:(id)a3
{
  v3 = [contextHandleToReaderPageController objectForKey:a3];

  return v3;
}

- (OpaqueJSValue)originalArticleFinder
{
  WeakRetained = objc_loadWeakRetained(&self->_originalPageController);
  v3 = [WeakRetained originalArticleFinder];

  return v3;
}

- (void)_initializeReaderJSControllerForFrame:(id)a3
{
  v4 = a3;
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

- (void)setConfiguration:(id)a3
{
  v5 = a3;
  ptr = self->_readerJSController.__ptr_;
  if (ptr)
  {
    SafariShared::ReaderJSController::setConfiguration(ptr, v5);
  }
}

- (void)setReaderIsActive:(BOOL)a3
{
  if (self->_readerJSController.__ptr_)
  {
    MEMORY[0x1EEE333B0]();
  }
}

- (void)setArticleLocale:(id)a3
{
  v5 = a3;
  ptr = self->_readerJSController.__ptr_;
  if (ptr)
  {
    SafariShared::ReaderJSController::setArticleLocale(ptr, v5);
  }
}

- (void)setArticleSummary:(id)a3 withSummaryHeader:(id)a4 tableOfContentsHeader:(id)a5 readerURLString:(id)a6 titles:(id)a7 paths:(id)a8 trailingText:(id)a9 tableOfContentsType:(int)a10 attribution:(id)a11
{
  v24 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a11;
  if (self->_readerJSController.__ptr_)
  {
    SafariShared::ReaderJSController::setArticleSummary();
  }
}

- (void)setOnDeviceSummaryButtonWithTitle:(id)a3
{
  v5 = a3;
  ptr = self->_readerJSController.__ptr_;
  if (ptr)
  {
    SafariShared::ReaderJSController::setOnDeviceSummaryButtonWithTitle(ptr, v5);
  }
}

- (void)updateSummaryTextVisibility:(BOOL)a3
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
    v4 = [MEMORY[0x1E6985398] world];
    v5 = self->_isolatedWorldForNextPageDetection;
    self->_isolatedWorldForNextPageDetection = v4;

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

- (void)webProcessPlugInBrowserContextController:(id)a3 globalObjectIsAvailableForFrame:(id)a4 inScriptWorld:(id)a5
{
  v7 = a4;
  v6 = [(WBSWebProcessPlugInPageController *)self mainFrame];

  if (v6 == v7)
  {
    [(_SFReaderWebProcessPlugInPageController *)self _initializeReaderJSControllerForFrame:v7];
  }
}

- (_SFWebProcessPlugInReaderEnabledPageController)originalPageController
{
  WeakRetained = objc_loadWeakRetained(&self->_originalPageController);

  return WeakRetained;
}

@end