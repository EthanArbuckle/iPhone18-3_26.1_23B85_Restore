@interface QLWebItemAggregatedViewController
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (void)generatePDFDataUsingPrinterWithCompletion:(id)a3;
- (void)generatePDFURLUsingPrinterWithCompletion:(id)a3;
- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5;
@end

@implementation QLWebItemAggregatedViewController

- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  webViewController = self->_webViewController;
  self->_webViewController = v11;

  v13 = [(QLWebItemAggregatedViewController *)self presentingDelegate];
  [(QLWKWebItemViewController *)self->_webViewController setPresentingDelegate:v13];

  objc_initWeak(&location, self);
  v14 = self->_webViewController;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100006E98;
  v17[3] = &unk_100024BE0;
  objc_copyWeak(&v20, &location);
  v15 = v10;
  v19 = v15;
  v16 = v9;
  v18 = v16;
  [(QLWKWebItemViewController *)v14 loadPreviewControllerIfNeededWithContents:v8 context:v16 completionHandler:v17];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)generatePDFURLUsingPrinterWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(QLWebItemAggregatedViewController *)self context];
    v6 = [v5 item];

    v7 = [(QLWKWebItemViewController *)self->_webViewController printer];
    if (v7)
    {
      v8 = objc_alloc_init(UIPrintInteractionController);
      v9 = [(QLWebItemAggregatedViewController *)self contents];
      [v8 setPrintingItem:v9];

      v10 = [(QLWKWebItemViewController *)self->_webViewController _renderer];
      [v8 setPrintPageRenderer:v10];

      v11 = [v6 uuid];
      v12 = [NSURL _QLTemporaryFileURLWithType:UTTypePDF uuid:v11];

      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000078F4;
      v15[3] = &unk_100024C30;
      v16 = v6;
      v19 = v4;
      v17 = v7;
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
        v21 = v6;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "No printer to print for ScreenshotService for current item: %@. #Printing", buf, 0xCu);
      }

      v8 = [NSError errorWithDomain:NSCocoaErrorDomain code:2048 userInfo:0];
      (*(v4 + 2))(v4, 0, v8);
    }
  }
}

- (void)generatePDFDataUsingPrinterWithCompletion:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100007BEC;
  v5[3] = &unk_100024C58;
  v6 = a3;
  v4 = v6;
  [(QLWebItemAggregatedViewController *)self generatePDFURLUsingPrinterWithCompletion:v5];
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end