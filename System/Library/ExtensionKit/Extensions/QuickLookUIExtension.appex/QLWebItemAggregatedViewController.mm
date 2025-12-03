@interface QLWebItemAggregatedViewController
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (void)generatePDFDataUsingPrinterWithCompletion:(id)completion;
- (void)generatePDFURLUsingPrinterWithCompletion:(id)completion;
- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler;
@end

@implementation QLWebItemAggregatedViewController

- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler
{
  contentsCopy = contents;
  contextCopy = context;
  handlerCopy = handler;
  v11 = objc_opt_new();
  webViewController = self->_webViewController;
  self->_webViewController = v11;

  presentingDelegate = [(QLWebItemAggregatedViewController *)self presentingDelegate];
  [(QLWKWebItemViewController *)self->_webViewController setPresentingDelegate:presentingDelegate];

  objc_initWeak(&location, self);
  v14 = self->_webViewController;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100006E98;
  v17[3] = &unk_100024BE0;
  objc_copyWeak(&v20, &location);
  v15 = handlerCopy;
  v19 = v15;
  v16 = contextCopy;
  v18 = v16;
  [(QLWKWebItemViewController *)v14 loadPreviewControllerIfNeededWithContents:contentsCopy context:v16 completionHandler:v17];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)generatePDFURLUsingPrinterWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    context = [(QLWebItemAggregatedViewController *)self context];
    item = [context item];

    printer = [(QLWKWebItemViewController *)self->_webViewController printer];
    if (printer)
    {
      v8 = objc_alloc_init(UIPrintInteractionController);
      contents = [(QLWebItemAggregatedViewController *)self contents];
      [v8 setPrintingItem:contents];

      _renderer = [(QLWKWebItemViewController *)self->_webViewController _renderer];
      [v8 setPrintPageRenderer:_renderer];

      uuid = [item uuid];
      v12 = [NSURL _QLTemporaryFileURLWithType:UTTypePDF uuid:uuid];

      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000078F4;
      v15[3] = &unk_100024C30;
      v16 = item;
      v19 = completionCopy;
      v17 = printer;
      v18 = v12;
      v13 = v12;
      [v8 savePDFToURL:v13 showProgress:0 completionHandler:v15];
    }

    else
    {
      v14 = _qlsLogHandle;
      if (!_qlsLogHandle)
      {
        QLSInitLogging();
        v14 = _qlsLogHandle;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v21 = item;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "No printer to print for ScreenshotService for current item: %@. #Printing", buf, 0xCu);
      }

      v8 = [NSError errorWithDomain:NSCocoaErrorDomain code:2048 userInfo:0];
      (*(completionCopy + 2))(completionCopy, 0, v8);
    }
  }
}

- (void)generatePDFDataUsingPrinterWithCompletion:(id)completion
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100007BEC;
  v5[3] = &unk_100024C58;
  completionCopy = completion;
  v4 = completionCopy;
  [(QLWebItemAggregatedViewController *)self generatePDFURLUsingPrinterWithCompletion:v5];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end